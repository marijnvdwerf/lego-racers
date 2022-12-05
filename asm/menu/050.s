.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800D8610
/* F6700 800D8610 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F6704 800D8614 AFB00010 */  sw         $s0, 0x10($sp)
/* F6708 800D8618 00808021 */  addu       $s0, $a0, $zero
/* F670C 800D861C 00002821 */  addu       $a1, $zero, $zero
/* F6710 800D8620 AFBF0014 */  sw         $ra, 0x14($sp)
/* F6714 800D8624 AE0000A0 */  sw         $zero, 0xA0($s0)
/* F6718 800D8628 AE000000 */  sw         $zero, 0x0($s0)
/* F671C 800D862C AE000004 */  sw         $zero, 0x4($s0)
/* F6720 800D8630 AE000008 */  sw         $zero, 0x8($s0)
/* F6724 800D8634 AE000E58 */  sw         $zero, 0xE58($s0)
/* F6728 800D8638 AE000E5C */  sw         $zero, 0xE5C($s0)
/* F672C 800D863C AE0000D0 */  sw         $zero, 0xD0($s0)
/* F6730 800D8640 AE0000D4 */  sw         $zero, 0xD4($s0)
/* F6734 800D8644 A60000DE */  sh         $zero, 0xDE($s0)
/* F6738 800D8648 AE000F20 */  sw         $zero, 0xF20($s0)
/* F673C 800D864C AE000F84 */  sw         $zero, 0xF84($s0)
/* F6740 800D8650 AE000F88 */  sw         $zero, 0xF88($s0)
/* F6744 800D8654 0C03699C */  jal        func_menu_800DA670
/* F6748 800D8658 AE00009C */   sw        $zero, 0x9C($s0)
/* F674C 800D865C 24020001 */  addiu      $v0, $zero, 0x1
/* F6750 800D8660 A20000D8 */  sb         $zero, 0xD8($s0)
/* F6754 800D8664 A20200DA */  sb         $v0, 0xDA($s0)
/* F6758 800D8668 AE0000E0 */  sw         $zero, 0xE0($s0)
/* F675C 800D866C 8FBF0014 */  lw         $ra, 0x14($sp)
/* F6760 800D8670 8FB00010 */  lw         $s0, 0x10($sp)
/* F6764 800D8674 03E00008 */  jr         $ra
/* F6768 800D8678 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800D867C
/* F676C 800D867C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F6770 800D8680 AFB00010 */  sw         $s0, 0x10($sp)
/* F6774 800D8684 00808021 */  addu       $s0, $a0, $zero
/* F6778 800D8688 2604000C */  addiu      $a0, $s0, 0xC
/* F677C 800D868C AFBF001C */  sw         $ra, 0x1C($sp)
/* F6780 800D8690 AFB20018 */  sw         $s2, 0x18($sp)
/* F6784 800D8694 0C016038 */  jal        func_800580E0
/* F6788 800D8698 AFB10014 */   sw        $s1, 0x14($sp)
/* F678C 800D869C 261200A4 */  addiu      $s2, $s0, 0xA4
/* F6790 800D86A0 0C0381D9 */  jal        func_menu_800E0764
/* F6794 800D86A4 02402021 */   addu      $a0, $s2, $zero
/* F6798 800D86A8 261100BC */  addiu      $s1, $s0, 0xBC
/* F679C 800D86AC 0C037986 */  jal        func_menu_800DE618
/* F67A0 800D86B0 02202021 */   addu      $a0, $s1, $zero
/* F67A4 800D86B4 0C016038 */  jal        func_800580E0
/* F67A8 800D86B8 26040E90 */   addiu     $a0, $s0, 0xE90
/* F67AC 800D86BC 260400E4 */  addiu      $a0, $s0, 0xE4
/* F67B0 800D86C0 00002821 */  addu       $a1, $zero, $zero
/* F67B4 800D86C4 24060CE4 */  addiu      $a2, $zero, 0xCE4
/* F67B8 800D86C8 AE510010 */  sw         $s1, 0x10($s2)
/* F67BC 800D86CC AE32000C */  sw         $s2, 0xC($s1)
/* F67C0 800D86D0 AE000DC8 */  sw         $zero, 0xDC8($s0)
/* F67C4 800D86D4 AE000DCC */  sw         $zero, 0xDCC($s0)
/* F67C8 800D86D8 0C000697 */  jal        func_80001A5C
/* F67CC 800D86DC AE000DD0 */   sw        $zero, 0xDD0($s0)
/* F67D0 800D86E0 0C036184 */  jal        func_menu_800D8610
/* F67D4 800D86E4 02002021 */   addu      $a0, $s0, $zero
/* F67D8 800D86E8 02001021 */  addu       $v0, $s0, $zero
/* F67DC 800D86EC 8FBF001C */  lw         $ra, 0x1C($sp)
/* F67E0 800D86F0 8FB20018 */  lw         $s2, 0x18($sp)
/* F67E4 800D86F4 8FB10014 */  lw         $s1, 0x14($sp)
/* F67E8 800D86F8 8FB00010 */  lw         $s0, 0x10($sp)
/* F67EC 800D86FC 03E00008 */  jr         $ra
/* F67F0 800D8700 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800D8704
/* F67F4 800D8704 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F67F8 800D8708 AFB10014 */  sw         $s1, 0x14($sp)
/* F67FC 800D870C 00808821 */  addu       $s1, $a0, $zero
/* F6800 800D8710 AFB00010 */  sw         $s0, 0x10($sp)
/* F6804 800D8714 AFBF0018 */  sw         $ra, 0x18($sp)
/* F6808 800D8718 0C0362CF */  jal        func_menu_800D8B3C
/* F680C 800D871C 00A08021 */   addu      $s0, $a1, $zero
/* F6810 800D8720 262400BC */  addiu      $a0, $s1, 0xBC
/* F6814 800D8724 0C03798B */  jal        func_menu_800DE62C
/* F6818 800D8728 24050002 */   addiu     $a1, $zero, 0x2
/* F681C 800D872C 262400A4 */  addiu      $a0, $s1, 0xA4
/* F6820 800D8730 0C0381E0 */  jal        func_menu_800E0780
/* F6824 800D8734 24050002 */   addiu     $a1, $zero, 0x2
/* F6828 800D8738 32100001 */  andi       $s0, $s0, 0x1
/* F682C 800D873C 12000003 */  beqz       $s0, .Lmenu_800D874C
/* F6830 800D8740 00000000 */   nop
/* F6834 800D8744 0C01FB5C */  jal        func_8007ED70
/* F6838 800D8748 02202021 */   addu      $a0, $s1, $zero
.Lmenu_800D874C:
/* F683C 800D874C 8FBF0018 */  lw         $ra, 0x18($sp)
/* F6840 800D8750 8FB10014 */  lw         $s1, 0x14($sp)
/* F6844 800D8754 8FB00010 */  lw         $s0, 0x10($sp)
/* F6848 800D8758 03E00008 */  jr         $ra
/* F684C 800D875C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800D8760
/* F6850 800D8760 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F6854 800D8764 AFB00010 */  sw         $s0, 0x10($sp)
/* F6858 800D8768 00808021 */  addu       $s0, $a0, $zero
/* F685C 800D876C 00A02021 */  addu       $a0, $a1, $zero
/* F6860 800D8770 AFBF0014 */  sw         $ra, 0x14($sp)
/* F6864 800D8774 10800005 */  beqz       $a0, .Lmenu_800D878C
/* F6868 800D8778 AE04009C */   sw        $a0, 0x9C($s0)
/* F686C 800D877C 0C035518 */  jal        func_menu_800D5460
/* F6870 800D8780 00000000 */   nop
/* F6874 800D8784 080361E4 */  j          .Lmenu_800D8790
/* F6878 800D8788 AE020078 */   sw        $v0, 0x78($s0)
.Lmenu_800D878C:
/* F687C 800D878C AE000078 */  sw         $zero, 0x78($s0)
.Lmenu_800D8790:
/* F6880 800D8790 8FBF0014 */  lw         $ra, 0x14($sp)
/* F6884 800D8794 8FB00010 */  lw         $s0, 0x10($sp)
/* F6888 800D8798 03E00008 */  jr         $ra
/* F688C 800D879C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800D87A0
/* F6890 800D87A0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* F6894 800D87A4 00803821 */  addu       $a3, $a0, $zero
/* F6898 800D87A8 AFB00020 */  sw         $s0, 0x20($sp)
/* F689C 800D87AC 00A08021 */  addu       $s0, $a1, $zero
/* F68A0 800D87B0 AFBF0024 */  sw         $ra, 0x24($sp)
/* F68A4 800D87B4 8E03003C */  lw         $v1, 0x3C($s0)
/* F68A8 800D87B8 24020672 */  addiu      $v0, $zero, 0x672
/* F68AC 800D87BC 84640048 */  lh         $a0, 0x48($v1)
/* F68B0 800D87C0 24060002 */  addiu      $a2, $zero, 0x2
/* F68B4 800D87C4 AFA20010 */  sw         $v0, 0x10($sp)
/* F68B8 800D87C8 24020236 */  addiu      $v0, $zero, 0x236
/* F68BC 800D87CC AFA20014 */  sw         $v0, 0x14($sp)
/* F68C0 800D87D0 AFA00018 */  sw         $zero, 0x18($sp)
/* F68C4 800D87D4 8CE50004 */  lw         $a1, 0x4($a3)
/* F68C8 800D87D8 24070CE4 */  addiu      $a3, $zero, 0xCE4
/* F68CC 800D87DC 8C62004C */  lw         $v0, 0x4C($v1)
/* F68D0 800D87E0 0040F809 */  jalr       $v0
/* F68D4 800D87E4 02042021 */   addu      $a0, $s0, $a0
/* F68D8 800D87E8 3C01800D */  lui        $at, %hi(D_menu_800CAA20)
/* F68DC 800D87EC C420AA20 */  lwc1       $f0, %lo(D_menu_800CAA20)($at)
/* F68E0 800D87F0 E6000034 */  swc1       $f0, 0x34($s0)
/* F68E4 800D87F4 8FBF0024 */  lw         $ra, 0x24($sp)
/* F68E8 800D87F8 8FB00020 */  lw         $s0, 0x20($sp)
/* F68EC 800D87FC 03E00008 */  jr         $ra
/* F68F0 800D8800 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800D8804
/* F68F4 800D8804 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F68F8 800D8808 AFB00010 */  sw         $s0, 0x10($sp)
/* F68FC 800D880C 00808021 */  addu       $s0, $a0, $zero
/* F6900 800D8810 AFBF0014 */  sw         $ra, 0x14($sp)
/* F6904 800D8814 8E050008 */  lw         $a1, 0x8($s0)
/* F6908 800D8818 0C0361E8 */  jal        func_menu_800D87A0
/* F690C 800D881C 00000000 */   nop
/* F6910 800D8820 0C03621E */  jal        func_menu_800D8878
/* F6914 800D8824 02002021 */   addu      $a0, $s0, $zero
/* F6918 800D8828 8FBF0014 */  lw         $ra, 0x14($sp)
/* F691C 800D882C 8FB00010 */  lw         $s0, 0x10($sp)
/* F6920 800D8830 03E00008 */  jr         $ra
/* F6924 800D8834 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800D8838
/* F6928 800D8838 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F692C 800D883C AFB00010 */  sw         $s0, 0x10($sp)
/* F6930 800D8840 00808021 */  addu       $s0, $a0, $zero
/* F6934 800D8844 AFBF0014 */  sw         $ra, 0x14($sp)
/* F6938 800D8848 8E030008 */  lw         $v1, 0x8($s0)
/* F693C 800D884C 8C62003C */  lw         $v0, 0x3C($v1)
/* F6940 800D8850 84440050 */  lh         $a0, 0x50($v0)
/* F6944 800D8854 8C420054 */  lw         $v0, 0x54($v0)
/* F6948 800D8858 0040F809 */  jalr       $v0
/* F694C 800D885C 00642021 */   addu      $a0, $v1, $a0
/* F6950 800D8860 0C03623E */  jal        func_menu_800D88F8
/* F6954 800D8864 02002021 */   addu      $a0, $s0, $zero
/* F6958 800D8868 8FBF0014 */  lw         $ra, 0x14($sp)
/* F695C 800D886C 8FB00010 */  lw         $s0, 0x10($sp)
/* F6960 800D8870 03E00008 */  jr         $ra
/* F6964 800D8874 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800D8878
/* F6968 800D8878 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F696C 800D887C AFB00010 */  sw         $s0, 0x10($sp)
/* F6970 800D8880 00808021 */  addu       $s0, $a0, $zero
/* F6974 800D8884 3C028012 */  lui        $v0, %hi(D_menu_80126998)
/* F6978 800D8888 8C446998 */  lw         $a0, %lo(D_menu_80126998)($v0)
/* F697C 800D888C AFBF0014 */  sw         $ra, 0x14($sp)
/* F6980 800D8890 0C01FB65 */  jal        func_8007ED94
/* F6984 800D8894 00000000 */   nop
/* F6988 800D8898 3C040001 */  lui        $a0, (0x19C80 >> 16)
/* F698C 800D889C 0C00943C */  jal        func_800250F0
/* F6990 800D88A0 34849C80 */   ori       $a0, $a0, (0x19C80 & 0xFFFF)
/* F6994 800D88A4 24046720 */  addiu      $a0, $zero, 0x6720
/* F6998 800D88A8 0C00943C */  jal        func_800250F0
/* F699C 800D88AC AE020DC8 */   sw        $v0, 0xDC8($s0)
/* F69A0 800D88B0 240419C8 */  addiu      $a0, $zero, 0x19C8
/* F69A4 800D88B4 0C00943C */  jal        func_800250F0
/* F69A8 800D88B8 AE020DCC */   sw        $v0, 0xDCC($s0)
/* F69AC 800D88BC 0C01FB72 */  jal        func_8007EDC8
/* F69B0 800D88C0 AE020DD0 */   sw        $v0, 0xDD0($s0)
/* F69B4 800D88C4 00002021 */  addu       $a0, $zero, $zero
.Lmenu_800D88C8:
/* F69B8 800D88C8 8E020DC8 */  lw         $v0, 0xDC8($s0)
/* F69BC 800D88CC 00041940 */  sll        $v1, $a0, 5
/* F69C0 800D88D0 00621821 */  addu       $v1, $v1, $v0
/* F69C4 800D88D4 A4640006 */  sh         $a0, 0x6($v1)
/* F69C8 800D88D8 24840001 */  addiu      $a0, $a0, 0x1
/* F69CC 800D88DC 28820CE4 */  slti       $v0, $a0, 0xCE4
/* F69D0 800D88E0 1440FFF9 */  bnez       $v0, .Lmenu_800D88C8
/* F69D4 800D88E4 00000000 */   nop
/* F69D8 800D88E8 8FBF0014 */  lw         $ra, 0x14($sp)
/* F69DC 800D88EC 8FB00010 */  lw         $s0, 0x10($sp)
/* F69E0 800D88F0 03E00008 */  jr         $ra
/* F69E4 800D88F4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800D88F8
/* F69E8 800D88F8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F69EC 800D88FC AFB00010 */  sw         $s0, 0x10($sp)
/* F69F0 800D8900 00808021 */  addu       $s0, $a0, $zero
/* F69F4 800D8904 AFBF0014 */  sw         $ra, 0x14($sp)
/* F69F8 800D8908 8E040DC8 */  lw         $a0, 0xDC8($s0)
/* F69FC 800D890C 10800003 */  beqz       $a0, .Lmenu_800D891C
/* F6A00 800D8910 00000000 */   nop
/* F6A04 800D8914 0C009444 */  jal        func_80025110
/* F6A08 800D8918 00000000 */   nop
.Lmenu_800D891C:
/* F6A0C 800D891C 8E040DCC */  lw         $a0, 0xDCC($s0)
/* F6A10 800D8920 10800003 */  beqz       $a0, .Lmenu_800D8930
/* F6A14 800D8924 00000000 */   nop
/* F6A18 800D8928 0C009444 */  jal        func_80025110
/* F6A1C 800D892C 00000000 */   nop
.Lmenu_800D8930:
/* F6A20 800D8930 8E040DD0 */  lw         $a0, 0xDD0($s0)
/* F6A24 800D8934 50800004 */  beql       $a0, $zero, .Lmenu_800D8948
/* F6A28 800D8938 AE000DC8 */   sw        $zero, 0xDC8($s0)
/* F6A2C 800D893C 0C009444 */  jal        func_80025110
/* F6A30 800D8940 00000000 */   nop
/* F6A34 800D8944 AE000DC8 */  sw         $zero, 0xDC8($s0)
.Lmenu_800D8948:
/* F6A38 800D8948 AE000DCC */  sw         $zero, 0xDCC($s0)
/* F6A3C 800D894C AE000DD0 */  sw         $zero, 0xDD0($s0)
/* F6A40 800D8950 8FBF0014 */  lw         $ra, 0x14($sp)
/* F6A44 800D8954 8FB00010 */  lw         $s0, 0x10($sp)
/* F6A48 800D8958 03E00008 */  jr         $ra
/* F6A4C 800D895C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800D8960
/* F6A50 800D8960 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* F6A54 800D8964 AFB20028 */  sw         $s2, 0x28($sp)
/* F6A58 800D8968 00809021 */  addu       $s2, $a0, $zero
/* F6A5C 800D896C AFB00020 */  sw         $s0, 0x20($sp)
/* F6A60 800D8970 00A08021 */  addu       $s0, $a1, $zero
/* F6A64 800D8974 AFB3002C */  sw         $s3, 0x2C($sp)
/* F6A68 800D8978 00C09821 */  addu       $s3, $a2, $zero
/* F6A6C 800D897C AFB10024 */  sw         $s1, 0x24($sp)
/* F6A70 800D8980 AFBF0030 */  sw         $ra, 0x30($sp)
/* F6A74 800D8984 F7B40038 */  sdc1       $f20, 0x38($sp)
/* F6A78 800D8988 0C0362CC */  jal        func_menu_800D8B30
/* F6A7C 800D898C 00E08821 */   addu      $s1, $a3, $zero
/* F6A80 800D8990 10400003 */  beqz       $v0, .Lmenu_800D89A0
/* F6A84 800D8994 00000000 */   nop
/* F6A88 800D8998 0C0362CF */  jal        func_menu_800D8B3C
/* F6A8C 800D899C 02402021 */   addu      $a0, $s2, $zero
.Lmenu_800D89A0:
/* F6A90 800D89A0 8FA50050 */  lw         $a1, 0x50($sp)
/* F6A94 800D89A4 0C0361D8 */  jal        func_menu_800D8760
/* F6A98 800D89A8 02402021 */   addu      $a0, $s2, $zero
/* F6A9C 800D89AC AE5100A0 */  sw         $s1, 0xA0($s2)
/* F6AA0 800D89B0 AE500000 */  sw         $s0, 0x0($s2)
/* F6AA4 800D89B4 8E020000 */  lw         $v0, 0x0($s0)
/* F6AA8 800D89B8 84440030 */  lh         $a0, 0x30($v0)
/* F6AAC 800D89BC 8C420034 */  lw         $v0, 0x34($v0)
/* F6AB0 800D89C0 0040F809 */  jalr       $v0
/* F6AB4 800D89C4 02042021 */   addu      $a0, $s0, $a0
/* F6AB8 800D89C8 02402021 */  addu       $a0, $s2, $zero
/* F6ABC 800D89CC AE420008 */  sw         $v0, 0x8($s2)
/* F6AC0 800D89D0 0C036201 */  jal        func_menu_800D8804
/* F6AC4 800D89D4 AE530004 */   sw        $s3, 0x4($s2)
/* F6AC8 800D89D8 3C01800D */  lui        $at, %hi(D_menu_800CAA24)
/* F6ACC 800D89DC C434AA24 */  lwc1       $f20, %lo(D_menu_800CAA24)($at)
/* F6AD0 800D89E0 8E450008 */  lw         $a1, 0x8($s2)
/* F6AD4 800D89E4 4406A000 */  mfc1       $a2, $f20
/* F6AD8 800D89E8 0C016059 */  jal        func_80058164
/* F6ADC 800D89EC 2644000C */   addiu     $a0, $s2, 0xC
/* F6AE0 800D89F0 8E430000 */  lw         $v1, 0x0($s2)
/* F6AE4 800D89F4 8C620000 */  lw         $v0, 0x0($v1)
/* F6AE8 800D89F8 84440030 */  lh         $a0, 0x30($v0)
/* F6AEC 800D89FC 8C420034 */  lw         $v0, 0x34($v0)
/* F6AF0 800D8A00 0040F809 */  jalr       $v0
/* F6AF4 800D8A04 00642021 */   addu      $a0, $v1, $a0
/* F6AF8 800D8A08 02602821 */  addu       $a1, $s3, $zero
/* F6AFC 800D8A0C AE420F20 */  sw         $v0, 0xF20($s2)
/* F6B00 800D8A10 8C47003C */  lw         $a3, 0x3C($v0)
/* F6B04 800D8A14 24060001 */  addiu      $a2, $zero, 0x1
/* F6B08 800D8A18 84E40048 */  lh         $a0, 0x48($a3)
/* F6B0C 800D8A1C 240300C0 */  addiu      $v1, $zero, 0xC0
/* F6B10 800D8A20 AFA30010 */  sw         $v1, 0x10($sp)
/* F6B14 800D8A24 24030070 */  addiu      $v1, $zero, 0x70
/* F6B18 800D8A28 AFA30014 */  sw         $v1, 0x14($sp)
/* F6B1C 800D8A2C 24030002 */  addiu      $v1, $zero, 0x2
/* F6B20 800D8A30 AFA30018 */  sw         $v1, 0x18($sp)
/* F6B24 800D8A34 00442021 */  addu       $a0, $v0, $a0
/* F6B28 800D8A38 8CE2004C */  lw         $v0, 0x4C($a3)
/* F6B2C 800D8A3C 0040F809 */  jalr       $v0
/* F6B30 800D8A40 24070180 */   addiu     $a3, $zero, 0x180
/* F6B34 800D8A44 4406A000 */  mfc1       $a2, $f20
/* F6B38 800D8A48 8E420F20 */  lw         $v0, 0xF20($s2)
/* F6B3C 800D8A4C 3C01800D */  lui        $at, %hi(D_menu_800CAA28)
/* F6B40 800D8A50 C420AA28 */  lwc1       $f0, %lo(D_menu_800CAA28)($at)
/* F6B44 800D8A54 26500E90 */  addiu      $s0, $s2, 0xE90
/* F6B48 800D8A58 E4400034 */  swc1       $f0, 0x34($v0)
/* F6B4C 800D8A5C 8E450F20 */  lw         $a1, 0xF20($s2)
/* F6B50 800D8A60 0C016059 */  jal        func_80058164
/* F6B54 800D8A64 02002021 */   addu      $a0, $s0, $zero
/* F6B58 800D8A68 8E420F20 */  lw         $v0, 0xF20($s2)
/* F6B5C 800D8A6C AE02006C */  sw         $v0, 0x6C($s0)
/* F6B60 800D8A70 8E42009C */  lw         $v0, 0x9C($s2)
/* F6B64 800D8A74 8C430008 */  lw         $v1, 0x8($v0)
/* F6B68 800D8A78 8C6200EC */  lw         $v0, 0xEC($v1)
/* F6B6C 800D8A7C 24050001 */  addiu      $a1, $zero, 0x1
/* F6B70 800D8A80 84440068 */  lh         $a0, 0x68($v0)
/* F6B74 800D8A84 8C42006C */  lw         $v0, 0x6C($v0)
/* F6B78 800D8A88 0040F809 */  jalr       $v0
/* F6B7C 800D8A8C 00642021 */   addu      $a0, $v1, $a0
/* F6B80 800D8A90 00408821 */  addu       $s1, $v0, $zero
/* F6B84 800D8A94 00002821 */  addu       $a1, $zero, $zero
/* F6B88 800D8A98 8E220008 */  lw         $v0, 0x8($s1)
/* F6B8C 800D8A9C 8E500F20 */  lw         $s0, 0xF20($s2)
/* F6B90 800D8AA0 84440058 */  lh         $a0, 0x58($v0)
/* F6B94 800D8AA4 8C42005C */  lw         $v0, 0x5C($v0)
/* F6B98 800D8AA8 0040F809 */  jalr       $v0
/* F6B9C 800D8AAC 02242021 */   addu      $a0, $s1, $a0
/* F6BA0 800D8AB0 02002021 */  addu       $a0, $s0, $zero
/* F6BA4 800D8AB4 00002821 */  addu       $a1, $zero, $zero
/* F6BA8 800D8AB8 0C01543D */  jal        func_800550F4
/* F6BAC 800D8ABC 00403021 */   addu      $a2, $v0, $zero
/* F6BB0 800D8AC0 24050001 */  addiu      $a1, $zero, 0x1
/* F6BB4 800D8AC4 8E220008 */  lw         $v0, 0x8($s1)
/* F6BB8 800D8AC8 8E500F20 */  lw         $s0, 0xF20($s2)
/* F6BBC 800D8ACC 84440058 */  lh         $a0, 0x58($v0)
/* F6BC0 800D8AD0 8C42005C */  lw         $v0, 0x5C($v0)
/* F6BC4 800D8AD4 0040F809 */  jalr       $v0
/* F6BC8 800D8AD8 02242021 */   addu      $a0, $s1, $a0
/* F6BCC 800D8ADC 02002021 */  addu       $a0, $s0, $zero
/* F6BD0 800D8AE0 24050001 */  addiu      $a1, $zero, 0x1
/* F6BD4 800D8AE4 0C01543D */  jal        func_800550F4
/* F6BD8 800D8AE8 00403021 */   addu      $a2, $v0, $zero
/* F6BDC 800D8AEC 0C036994 */  jal        func_menu_800DA650
/* F6BE0 800D8AF0 02402021 */   addu      $a0, $s2, $zero
/* F6BE4 800D8AF4 264400BC */  addiu      $a0, $s2, 0xBC
/* F6BE8 800D8AF8 2405000A */  addiu      $a1, $zero, 0xA
/* F6BEC 800D8AFC 0C0379AA */  jal        func_menu_800DE6A8
/* F6BF0 800D8B00 24060006 */   addiu     $a2, $zero, 0x6
/* F6BF4 800D8B04 264400A4 */  addiu      $a0, $s2, 0xA4
/* F6BF8 800D8B08 0C038202 */  jal        func_menu_800E0808
/* F6BFC 800D8B0C 24050040 */   addiu     $a1, $zero, 0x40
/* F6C00 800D8B10 8FBF0030 */  lw         $ra, 0x30($sp)
/* F6C04 800D8B14 8FB3002C */  lw         $s3, 0x2C($sp)
/* F6C08 800D8B18 8FB20028 */  lw         $s2, 0x28($sp)
/* F6C0C 800D8B1C 8FB10024 */  lw         $s1, 0x24($sp)
/* F6C10 800D8B20 8FB00020 */  lw         $s0, 0x20($sp)
/* F6C14 800D8B24 D7B40038 */  ldc1       $f20, 0x38($sp)
/* F6C18 800D8B28 03E00008 */  jr         $ra
/* F6C1C 800D8B2C 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_menu_800D8B30
/* F6C20 800D8B30 8C820000 */  lw         $v0, 0x0($a0)
/* F6C24 800D8B34 03E00008 */  jr         $ra
/* F6C28 800D8B38 0002102B */   sltu      $v0, $zero, $v0

glabel func_menu_800D8B3C
/* F6C2C 800D8B3C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F6C30 800D8B40 AFB00010 */  sw         $s0, 0x10($sp)
/* F6C34 800D8B44 00808021 */  addu       $s0, $a0, $zero
/* F6C38 800D8B48 AFBF0014 */  sw         $ra, 0x14($sp)
/* F6C3C 800D8B4C 0C03799C */  jal        func_menu_800DE670
/* F6C40 800D8B50 260400BC */   addiu     $a0, $s0, 0xBC
/* F6C44 800D8B54 0C0381F1 */  jal        func_menu_800E07C4
/* F6C48 800D8B58 260400A4 */   addiu     $a0, $s0, 0xA4
/* F6C4C 800D8B5C 0C01607E */  jal        func_800581F8
/* F6C50 800D8B60 2604000C */   addiu     $a0, $s0, 0xC
/* F6C54 800D8B64 0C01607E */  jal        func_800581F8
/* F6C58 800D8B68 26040E90 */   addiu     $a0, $s0, 0xE90
/* F6C5C 800D8B6C 8E030000 */  lw         $v1, 0x0($s0)
/* F6C60 800D8B70 10600012 */  beqz       $v1, .Lmenu_800D8BBC
/* F6C64 800D8B74 00000000 */   nop
/* F6C68 800D8B78 8E050008 */  lw         $a1, 0x8($s0)
/* F6C6C 800D8B7C 10A00006 */  beqz       $a1, .Lmenu_800D8B98
/* F6C70 800D8B80 00000000 */   nop
/* F6C74 800D8B84 8C620000 */  lw         $v0, 0x0($v1)
/* F6C78 800D8B88 84440098 */  lh         $a0, 0x98($v0)
/* F6C7C 800D8B8C 8C42009C */  lw         $v0, 0x9C($v0)
/* F6C80 800D8B90 0040F809 */  jalr       $v0
/* F6C84 800D8B94 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800D8B98:
/* F6C88 800D8B98 8E050F20 */  lw         $a1, 0xF20($s0)
/* F6C8C 800D8B9C 10A00007 */  beqz       $a1, .Lmenu_800D8BBC
/* F6C90 800D8BA0 00000000 */   nop
/* F6C94 800D8BA4 8E030000 */  lw         $v1, 0x0($s0)
/* F6C98 800D8BA8 8C620000 */  lw         $v0, 0x0($v1)
/* F6C9C 800D8BAC 84440098 */  lh         $a0, 0x98($v0)
/* F6CA0 800D8BB0 8C42009C */  lw         $v0, 0x9C($v0)
/* F6CA4 800D8BB4 0040F809 */  jalr       $v0
/* F6CA8 800D8BB8 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800D8BBC:
/* F6CAC 800D8BBC 0C03623E */  jal        func_menu_800D88F8
/* F6CB0 800D8BC0 02002021 */   addu      $a0, $s0, $zero
/* F6CB4 800D8BC4 0C036184 */  jal        func_menu_800D8610
/* F6CB8 800D8BC8 02002021 */   addu      $a0, $s0, $zero
/* F6CBC 800D8BCC 8FBF0014 */  lw         $ra, 0x14($sp)
/* F6CC0 800D8BD0 8FB00010 */  lw         $s0, 0x10($sp)
/* F6CC4 800D8BD4 03E00008 */  jr         $ra
/* F6CC8 800D8BD8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800D8BDC
/* F6CCC 800D8BDC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* F6CD0 800D8BE0 AFB00020 */  sw         $s0, 0x20($sp)
/* F6CD4 800D8BE4 00808021 */  addu       $s0, $a0, $zero
/* F6CD8 800D8BE8 00A04821 */  addu       $t1, $a1, $zero
/* F6CDC 800D8BEC AFBF0024 */  sw         $ra, 0x24($sp)
/* F6CE0 800D8BF0 95220010 */  lhu        $v0, 0x10($t1)
/* F6CE4 800D8BF4 8FA5003C */  lw         $a1, 0x3C($sp)
/* F6CE8 800D8BF8 28420800 */  slti       $v0, $v0, 0x800
/* F6CEC 800D8BFC 10400017 */  beqz       $v0, .Lmenu_800D8C5C
/* F6CF0 800D8C00 00C05021 */   addu      $t2, $a2, $zero
/* F6CF4 800D8C04 3C068003 */  lui        $a2, %hi(D_8002FAB0)
/* F6CF8 800D8C08 3C038003 */  lui        $v1, %hi(D_8002F2B0)
/* F6CFC 800D8C0C 8CC4FAB0 */  lw         $a0, %lo(D_8002FAB0)($a2)
/* F6D00 800D8C10 2463F2B0 */  addiu      $v1, $v1, %lo(D_8002F2B0)
/* F6D04 800D8C14 24840001 */  addiu      $a0, $a0, 0x1
/* F6D08 800D8C18 308403FF */  andi       $a0, $a0, 0x3FF
/* F6D0C 800D8C1C 00041040 */  sll        $v0, $a0, 1
/* F6D10 800D8C20 00431021 */  addu       $v0, $v0, $v1
/* F6D14 800D8C24 94450000 */  lhu        $a1, 0x0($v0)
/* F6D18 800D8C28 3C02CCCC */  lui        $v0, (0xCCCCCCCD >> 16)
/* F6D1C 800D8C2C 3442CCCD */  ori        $v0, $v0, (0xCCCCCCCD & 0xFFFF)
/* F6D20 800D8C30 00A20019 */  multu      $a1, $v0
/* F6D24 800D8C34 24080001 */  addiu      $t0, $zero, 0x1
/* F6D28 800D8C38 ACC4FAB0 */  sw         $a0, %lo(D_8002FAB0)($a2)
/* F6D2C 800D8C3C 00005810 */  mfhi       $t3
/* F6D30 800D8C40 000B18C2 */  srl        $v1, $t3, 3
/* F6D34 800D8C44 00031080 */  sll        $v0, $v1, 2
/* F6D38 800D8C48 00431021 */  addu       $v0, $v0, $v1
/* F6D3C 800D8C4C 01021004 */  sllv       $v0, $v0, $t0
/* F6D40 800D8C50 00A22823 */  subu       $a1, $a1, $v0
/* F6D44 800D8C54 08036318 */  j          .Lmenu_800D8C60
/* F6D48 800D8C58 30A5FFFF */   andi      $a1, $a1, 0xFFFF
.Lmenu_800D8C5C:
/* F6D4C 800D8C5C 00004021 */  addu       $t0, $zero, $zero
.Lmenu_800D8C60:
/* F6D50 800D8C60 8FA20038 */  lw         $v0, 0x38($sp)
/* F6D54 800D8C64 260400BC */  addiu      $a0, $s0, 0xBC
/* F6D58 800D8C68 AFA50014 */  sw         $a1, 0x14($sp)
/* F6D5C 800D8C6C 01202821 */  addu       $a1, $t1, $zero
/* F6D60 800D8C70 AFA20010 */  sw         $v0, 0x10($sp)
/* F6D64 800D8C74 8FA20040 */  lw         $v0, 0x40($sp)
/* F6D68 800D8C78 01403021 */  addu       $a2, $t2, $zero
/* F6D6C 800D8C7C AFA8001C */  sw         $t0, 0x1C($sp)
/* F6D70 800D8C80 0C037B82 */  jal        func_menu_800DEE08
/* F6D74 800D8C84 AFA20018 */   sw        $v0, 0x18($sp)
/* F6D78 800D8C88 10400004 */  beqz       $v0, .Lmenu_800D8C9C
/* F6D7C 800D8C8C 00000000 */   nop
/* F6D80 800D8C90 8E0200D4 */  lw         $v0, 0xD4($s0)
/* F6D84 800D8C94 24420001 */  addiu      $v0, $v0, 0x1
/* F6D88 800D8C98 AE0200D4 */  sw         $v0, 0xD4($s0)
.Lmenu_800D8C9C:
/* F6D8C 800D8C9C 8FBF0024 */  lw         $ra, 0x24($sp)
/* F6D90 800D8CA0 8FB00020 */  lw         $s0, 0x20($sp)
/* F6D94 800D8CA4 03E00008 */  jr         $ra
/* F6D98 800D8CA8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800D8CAC
/* F6D9C 800D8CAC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* F6DA0 800D8CB0 AFB5002C */  sw         $s5, 0x2C($sp)
/* F6DA4 800D8CB4 8FB50048 */  lw         $s5, 0x48($sp)
/* F6DA8 800D8CB8 AFB60030 */  sw         $s6, 0x30($sp)
/* F6DAC 800D8CBC 0080B021 */  addu       $s6, $a0, $zero
/* F6DB0 800D8CC0 AFB1001C */  sw         $s1, 0x1C($sp)
/* F6DB4 800D8CC4 00A08821 */  addu       $s1, $a1, $zero
/* F6DB8 800D8CC8 AFB30024 */  sw         $s3, 0x24($sp)
/* F6DBC 800D8CCC 00C09821 */  addu       $s3, $a2, $zero
/* F6DC0 800D8CD0 AFB40028 */  sw         $s4, 0x28($sp)
/* F6DC4 800D8CD4 00E0A021 */  addu       $s4, $a3, $zero
/* F6DC8 800D8CD8 AFBF0034 */  sw         $ra, 0x34($sp)
/* F6DCC 800D8CDC AFB20020 */  sw         $s2, 0x20($sp)
/* F6DD0 800D8CE0 16200003 */  bnez       $s1, .Lmenu_800D8CF0
/* F6DD4 800D8CE4 AFB00018 */   sw        $s0, 0x18($sp)
/* F6DD8 800D8CE8 0803635C */  j          .Lmenu_800D8D70
/* F6DDC 800D8CEC 2402FFFF */   addiu     $v0, $zero, -0x1
.Lmenu_800D8CF0:
/* F6DE0 800D8CF0 26D200BC */  addiu      $s2, $s6, 0xBC
/* F6DE4 800D8CF4 02402021 */  addu       $a0, $s2, $zero
/* F6DE8 800D8CF8 02202821 */  addu       $a1, $s1, $zero
/* F6DEC 800D8CFC 02603021 */  addu       $a2, $s3, $zero
/* F6DF0 800D8D00 96220010 */  lhu        $v0, 0x10($s1)
/* F6DF4 800D8D04 02803821 */  addu       $a3, $s4, $zero
/* F6DF8 800D8D08 AFB50010 */  sw         $s5, 0x10($sp)
/* F6DFC 800D8D0C 28420800 */  slti       $v0, $v0, 0x800
/* F6E00 800D8D10 0C037A0A */  jal        func_menu_800DE828
/* F6E04 800D8D14 AFA20014 */   sw        $v0, 0x14($sp)
/* F6E08 800D8D18 00408021 */  addu       $s0, $v0, $zero
/* F6E0C 800D8D1C 06000014 */  bltz       $s0, .Lmenu_800D8D70
/* F6E10 800D8D20 02402021 */   addu      $a0, $s2, $zero
/* F6E14 800D8D24 02202821 */  addu       $a1, $s1, $zero
/* F6E18 800D8D28 02603021 */  addu       $a2, $s3, $zero
/* F6E1C 800D8D2C 02803821 */  addu       $a3, $s4, $zero
/* F6E20 800D8D30 AFB50010 */  sw         $s5, 0x10($sp)
/* F6E24 800D8D34 0C037A8C */  jal        func_menu_800DEA30
/* F6E28 800D8D38 AFB00014 */   sw        $s0, 0x14($sp)
/* F6E2C 800D8D3C 1440000C */  bnez       $v0, .Lmenu_800D8D70
/* F6E30 800D8D40 2402FFFB */   addiu     $v0, $zero, -0x5
/* F6E34 800D8D44 0C037D2F */  jal        func_menu_800DF4BC
/* F6E38 800D8D48 02202021 */   addu      $a0, $s1, $zero
/* F6E3C 800D8D4C 00501021 */  addu       $v0, $v0, $s0
/* F6E40 800D8D50 28420010 */  slti       $v0, $v0, 0x10
/* F6E44 800D8D54 10400006 */  beqz       $v0, .Lmenu_800D8D70
/* F6E48 800D8D58 2402FFFA */   addiu     $v0, $zero, -0x6
/* F6E4C 800D8D5C 8EC300D4 */  lw         $v1, 0xD4($s6)
/* F6E50 800D8D60 28630040 */  slti       $v1, $v1, 0x40
/* F6E54 800D8D64 10600002 */  beqz       $v1, .Lmenu_800D8D70
/* F6E58 800D8D68 2402FFF9 */   addiu     $v0, $zero, -0x7
/* F6E5C 800D8D6C 02001021 */  addu       $v0, $s0, $zero
.Lmenu_800D8D70:
/* F6E60 800D8D70 8FBF0034 */  lw         $ra, 0x34($sp)
/* F6E64 800D8D74 8FB60030 */  lw         $s6, 0x30($sp)
/* F6E68 800D8D78 8FB5002C */  lw         $s5, 0x2C($sp)
/* F6E6C 800D8D7C 8FB40028 */  lw         $s4, 0x28($sp)
/* F6E70 800D8D80 8FB30024 */  lw         $s3, 0x24($sp)
/* F6E74 800D8D84 8FB20020 */  lw         $s2, 0x20($sp)
/* F6E78 800D8D88 8FB1001C */  lw         $s1, 0x1C($sp)
/* F6E7C 800D8D8C 8FB00018 */  lw         $s0, 0x18($sp)
/* F6E80 800D8D90 03E00008 */  jr         $ra
/* F6E84 800D8D94 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800D8D98
/* F6E88 800D8D98 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* F6E8C 800D8D9C AFB00018 */  sw         $s0, 0x18($sp)
/* F6E90 800D8DA0 00808021 */  addu       $s0, $a0, $zero
/* F6E94 800D8DA4 AFB1001C */  sw         $s1, 0x1C($sp)
/* F6E98 800D8DA8 00A08821 */  addu       $s1, $a1, $zero
/* F6E9C 800D8DAC 3C027FFF */  lui        $v0, (0x7FFFFFFF >> 16)
/* F6EA0 800D8DB0 3442FFFF */  ori        $v0, $v0, (0x7FFFFFFF & 0xFFFF)
/* F6EA4 800D8DB4 AFBF0020 */  sw         $ra, 0x20($sp)
/* F6EA8 800D8DB8 AE020E24 */  sw         $v0, 0xE24($s0)
/* F6EAC 800D8DBC AE000E28 */  sw         $zero, 0xE28($s0)
/* F6EB0 800D8DC0 AE000E2C */  sw         $zero, 0xE2C($s0)
/* F6EB4 800D8DC4 AE000E30 */  sw         $zero, 0xE30($s0)
/* F6EB8 800D8DC8 AE000E34 */  sw         $zero, 0xE34($s0)
/* F6EBC 800D8DCC AE000E38 */  sw         $zero, 0xE38($s0)
/* F6EC0 800D8DD0 AE000E3C */  sw         $zero, 0xE3C($s0)
/* F6EC4 800D8DD4 AE000E40 */  sw         $zero, 0xE40($s0)
/* F6EC8 800D8DD8 8E22003C */  lw         $v0, 0x3C($s1)
/* F6ECC 800D8DDC 26050E58 */  addiu      $a1, $s0, 0xE58
/* F6ED0 800D8DE0 84440058 */  lh         $a0, 0x58($v0)
/* F6ED4 800D8DE4 8C42005C */  lw         $v0, 0x5C($v0)
/* F6ED8 800D8DE8 0040F809 */  jalr       $v0
/* F6EDC 800D8DEC 02242021 */   addu      $a0, $s1, $a0
/* F6EE0 800D8DF0 8E22003C */  lw         $v0, 0x3C($s1)
/* F6EE4 800D8DF4 27A50010 */  addiu      $a1, $sp, 0x10
/* F6EE8 800D8DF8 84440068 */  lh         $a0, 0x68($v0)
/* F6EEC 800D8DFC 8C42006C */  lw         $v0, 0x6C($v0)
/* F6EF0 800D8E00 0040F809 */  jalr       $v0
/* F6EF4 800D8E04 02242021 */   addu      $a0, $s1, $a0
/* F6EF8 800D8E08 8FA20010 */  lw         $v0, 0x10($sp)
/* F6EFC 800D8E0C 8C420008 */  lw         $v0, 0x8($v0)
/* F6F00 800D8E10 AE020E5C */  sw         $v0, 0xE5C($s0)
/* F6F04 800D8E14 8FBF0020 */  lw         $ra, 0x20($sp)
/* F6F08 800D8E18 8FB1001C */  lw         $s1, 0x1C($sp)
/* F6F0C 800D8E1C 8FB00018 */  lw         $s0, 0x18($sp)
/* F6F10 800D8E20 03E00008 */  jr         $ra
/* F6F14 800D8E24 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800D8E28
/* F6F18 800D8E28 8C820E28 */  lw         $v0, 0xE28($a0)
/* F6F1C 800D8E2C 8C880E34 */  lw         $t0, 0xE34($a0)
/* F6F20 800D8E30 8C860E3C */  lw         $a2, 0xE3C($a0)
/* F6F24 800D8E34 00403821 */  addu       $a3, $v0, $zero
/* F6F28 800D8E38 24420001 */  addiu      $v0, $v0, 0x1
/* F6F2C 800D8E3C AC820E28 */  sw         $v0, 0xE28($a0)
/* F6F30 800D8E40 8CA20020 */  lw         $v0, 0x20($a1)
/* F6F34 800D8E44 00073880 */  sll        $a3, $a3, 2
/* F6F38 800D8E48 00E21021 */  addu       $v0, $a3, $v0
/* F6F3C 800D8E4C AC400000 */  sw         $zero, 0x0($v0)
/* F6F40 800D8E50 8CA20020 */  lw         $v0, 0x20($a1)
/* F6F44 800D8E54 24C6FFFF */  addiu      $a2, $a2, -0x1
/* F6F48 800D8E58 00E21021 */  addu       $v0, $a3, $v0
/* F6F4C 800D8E5C 8C430000 */  lw         $v1, 0x0($v0)
/* F6F50 800D8E60 8CA30020 */  lw         $v1, 0x20($a1)
/* F6F54 800D8E64 30C6003F */  andi       $a2, $a2, 0x3F
/* F6F58 800D8E68 00E31821 */  addu       $v1, $a3, $v1
/* F6F5C 800D8E6C 8C620000 */  lw         $v0, 0x0($v1)
/* F6F60 800D8E70 00063400 */  sll        $a2, $a2, 16
/* F6F64 800D8E74 00461025 */  or         $v0, $v0, $a2
/* F6F68 800D8E78 AC620000 */  sw         $v0, 0x0($v1)
/* F6F6C 800D8E7C 8CA20020 */  lw         $v0, 0x20($a1)
/* F6F70 800D8E80 24090001 */  addiu      $t1, $zero, 0x1
/* F6F74 800D8E84 00E23821 */  addu       $a3, $a3, $v0
/* F6F78 800D8E88 8CE20000 */  lw         $v0, 0x0($a3)
/* F6F7C 800D8E8C 3108FFFF */  andi       $t0, $t0, 0xFFFF
/* F6F80 800D8E90 00481025 */  or         $v0, $v0, $t0
/* F6F84 800D8E94 ACE20000 */  sw         $v0, 0x0($a3)
/* F6F88 800D8E98 ACA90038 */  sw         $t1, 0x38($a1)
/* F6F8C 800D8E9C 8C820E28 */  lw         $v0, 0xE28($a0)
/* F6F90 800D8EA0 8C880E38 */  lw         $t0, 0xE38($a0)
/* F6F94 800D8EA4 8C860E40 */  lw         $a2, 0xE40($a0)
/* F6F98 800D8EA8 00403821 */  addu       $a3, $v0, $zero
/* F6F9C 800D8EAC 00491021 */  addu       $v0, $v0, $t1
/* F6FA0 800D8EB0 00073880 */  sll        $a3, $a3, 2
/* F6FA4 800D8EB4 AC820E28 */  sw         $v0, 0xE28($a0)
/* F6FA8 800D8EB8 8CA30020 */  lw         $v1, 0x20($a1)
/* F6FAC 800D8EBC 3C021000 */  lui        $v0, (0x10000000 >> 16)
/* F6FB0 800D8EC0 00E31821 */  addu       $v1, $a3, $v1
/* F6FB4 800D8EC4 AC620000 */  sw         $v0, 0x0($v1)
/* F6FB8 800D8EC8 8CA30020 */  lw         $v1, 0x20($a1)
/* F6FBC 800D8ECC 30C60FFF */  andi       $a2, $a2, 0xFFF
/* F6FC0 800D8ED0 00E31821 */  addu       $v1, $a3, $v1
/* F6FC4 800D8ED4 8C620000 */  lw         $v0, 0x0($v1)
/* F6FC8 800D8ED8 00063400 */  sll        $a2, $a2, 16
/* F6FCC 800D8EDC 00461025 */  or         $v0, $v0, $a2
/* F6FD0 800D8EE0 AC620000 */  sw         $v0, 0x0($v1)
/* F6FD4 800D8EE4 8CA20020 */  lw         $v0, 0x20($a1)
/* F6FD8 800D8EE8 00E23821 */  addu       $a3, $a3, $v0
/* F6FDC 800D8EEC 8CE20000 */  lw         $v0, 0x0($a3)
/* F6FE0 800D8EF0 3108FFFF */  andi       $t0, $t0, 0xFFFF
/* F6FE4 800D8EF4 00481025 */  or         $v0, $v0, $t0
/* F6FE8 800D8EF8 ACE20000 */  sw         $v0, 0x0($a3)
/* F6FEC 800D8EFC ACA90038 */  sw         $t1, 0x38($a1)
/* F6FF0 800D8F00 8C820E2C */  lw         $v0, 0xE2C($a0)
/* F6FF4 800D8F04 8C830E30 */  lw         $v1, 0xE30($a0)
/* F6FF8 800D8F08 AC800E3C */  sw         $zero, 0xE3C($a0)
/* F6FFC 800D8F0C AC800E40 */  sw         $zero, 0xE40($a0)
/* F7000 800D8F10 AC820E34 */  sw         $v0, 0xE34($a0)
/* F7004 800D8F14 03E00008 */  jr         $ra
/* F7008 800D8F18 AC830E38 */   sw        $v1, 0xE38($a0)

glabel func_menu_800D8F1C
/* F700C 800D8F1C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F7010 800D8F20 AFB10014 */  sw         $s1, 0x14($sp)
/* F7014 800D8F24 00808821 */  addu       $s1, $a0, $zero
/* F7018 800D8F28 AFBF0018 */  sw         $ra, 0x18($sp)
/* F701C 800D8F2C AFB00010 */  sw         $s0, 0x10($sp)
/* F7020 800D8F30 8E220E3C */  lw         $v0, 0xE3C($s1)
/* F7024 800D8F34 14400004 */  bnez       $v0, .Lmenu_800D8F48
/* F7028 800D8F38 00A08021 */   addu      $s0, $a1, $zero
/* F702C 800D8F3C 8E220E40 */  lw         $v0, 0xE40($s1)
/* F7030 800D8F40 10400005 */  beqz       $v0, .Lmenu_800D8F58
/* F7034 800D8F44 24050001 */   addiu     $a1, $zero, 0x1
.Lmenu_800D8F48:
/* F7038 800D8F48 02202021 */  addu       $a0, $s1, $zero
/* F703C 800D8F4C 0C03638A */  jal        func_menu_800D8E28
/* F7040 800D8F50 02002821 */   addu      $a1, $s0, $zero
/* F7044 800D8F54 24050001 */  addiu      $a1, $zero, 0x1
.Lmenu_800D8F58:
/* F7048 800D8F58 8E220E28 */  lw         $v0, 0xE28($s1)
/* F704C 800D8F5C 8E030020 */  lw         $v1, 0x20($s0)
/* F7050 800D8F60 00021080 */  sll        $v0, $v0, 2
/* F7054 800D8F64 00431021 */  addu       $v0, $v0, $v1
/* F7058 800D8F68 3C036000 */  lui        $v1, (0x60000000 >> 16)
/* F705C 800D8F6C AC430000 */  sw         $v1, 0x0($v0)
/* F7060 800D8F70 8E03003C */  lw         $v1, 0x3C($s0)
/* F7064 800D8F74 00A01021 */  addu       $v0, $a1, $zero
/* F7068 800D8F78 AE020038 */  sw         $v0, 0x38($s0)
/* F706C 800D8F7C 84640070 */  lh         $a0, 0x70($v1)
/* F7070 800D8F80 8C620074 */  lw         $v0, 0x74($v1)
/* F7074 800D8F84 0040F809 */  jalr       $v0
/* F7078 800D8F88 02042021 */   addu      $a0, $s0, $a0
/* F707C 800D8F8C 24050001 */  addiu      $a1, $zero, 0x1
/* F7080 800D8F90 8E02003C */  lw         $v0, 0x3C($s0)
/* F7084 800D8F94 00A03021 */  addu       $a2, $a1, $zero
/* F7088 800D8F98 84440060 */  lh         $a0, 0x60($v0)
/* F708C 800D8F9C 8C420064 */  lw         $v0, 0x64($v0)
/* F7090 800D8FA0 0040F809 */  jalr       $v0
/* F7094 800D8FA4 02042021 */   addu      $a0, $s0, $a0
/* F7098 800D8FA8 AE200E58 */  sw         $zero, 0xE58($s1)
/* F709C 800D8FAC AE200E5C */  sw         $zero, 0xE5C($s1)
/* F70A0 800D8FB0 8FBF0018 */  lw         $ra, 0x18($sp)
/* F70A4 800D8FB4 8FB10014 */  lw         $s1, 0x14($sp)
/* F70A8 800D8FB8 8FB00010 */  lw         $s0, 0x10($sp)
/* F70AC 800D8FBC 03E00008 */  jr         $ra
/* F70B0 800D8FC0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800D8FC4
/* F70B4 800D8FC4 27BDFF40 */  addiu      $sp, $sp, -0xC0
/* F70B8 800D8FC8 AFB40078 */  sw         $s4, 0x78($sp)
/* F70BC 800D8FCC 0080A021 */  addu       $s4, $a0, $zero
/* F70C0 800D8FD0 AFB00068 */  sw         $s0, 0x68($sp)
/* F70C4 800D8FD4 00A08021 */  addu       $s0, $a1, $zero
/* F70C8 800D8FD8 AFB20070 */  sw         $s2, 0x70($sp)
/* F70CC 800D8FDC 00C09021 */  addu       $s2, $a2, $zero
/* F70D0 800D8FE0 AFB30074 */  sw         $s3, 0x74($sp)
/* F70D4 800D8FE4 00E09821 */  addu       $s3, $a3, $zero
/* F70D8 800D8FE8 AFB1006C */  sw         $s1, 0x6C($sp)
/* F70DC 800D8FEC 00008821 */  addu       $s1, $zero, $zero
/* F70E0 800D8FF0 AFB70084 */  sw         $s7, 0x84($sp)
/* F70E4 800D8FF4 AFBF008C */  sw         $ra, 0x8C($sp)
/* F70E8 800D8FF8 AFBE0088 */  sw         $fp, 0x88($sp)
/* F70EC 800D8FFC AFB60080 */  sw         $s6, 0x80($sp)
/* F70F0 800D9000 AFB5007C */  sw         $s5, 0x7C($sp)
/* F70F4 800D9004 F7BE00B8 */  sdc1       $f30, 0xB8($sp)
/* F70F8 800D9008 F7BC00B0 */  sdc1       $f28, 0xB0($sp)
/* F70FC 800D900C F7BA00A8 */  sdc1       $f26, 0xA8($sp)
/* F7100 800D9010 F7B800A0 */  sdc1       $f24, 0xA0($sp)
/* F7104 800D9014 F7B60098 */  sdc1       $f22, 0x98($sp)
/* F7108 800D9018 F7B40090 */  sdc1       $f20, 0x90($sp)
/* F710C 800D901C AFA00058 */  sw         $zero, 0x58($sp)
/* F7110 800D9020 AFA0005C */  sw         $zero, 0x5C($sp)
/* F7114 800D9024 8E820E14 */  lw         $v0, 0xE14($s4)
/* F7118 800D9028 8FB500D0 */  lw         $s5, 0xD0($sp)
/* F711C 800D902C 28420672 */  slti       $v0, $v0, 0x672
/* F7120 800D9030 1040016C */  beqz       $v0, .Lmenu_800D95E4
/* F7124 800D9034 2417FFFF */   addiu     $s7, $zero, -0x1
/* F7128 800D9038 8FA500D8 */  lw         $a1, 0xD8($sp)
/* F712C 800D903C 8E84009C */  lw         $a0, 0x9C($s4)
/* F7130 800D9040 3C01800D */  lui        $at, %hi(D_menu_800CAA2C)
/* F7134 800D9044 C43CAA2C */  lwc1       $f28, %lo(D_menu_800CAA2C)($at)
/* F7138 800D9048 0C035576 */  jal        func_menu_800D55D8
/* F713C 800D904C 241E0002 */   addiu     $fp, $zero, 0x2
/* F7140 800D9050 32B50003 */  andi       $s5, $s5, 0x3
/* F7144 800D9054 02002021 */  addu       $a0, $s0, $zero
/* F7148 800D9058 2403007F */  addiu      $v1, $zero, 0x7F
/* F714C 800D905C 4492B000 */  mtc1       $s2, $f22
/* F7150 800D9060 4680B5A0 */  cvt.s.w    $f22, $f22
/* F7154 800D9064 4493A000 */  mtc1       $s3, $f20
/* F7158 800D9068 4680A520 */  cvt.s.w    $f20, $f20
/* F715C 800D906C A7A20056 */  sh         $v0, 0x56($sp)
/* F7160 800D9070 3C028012 */  lui        $v0, %hi(D_menu_801269D4)
/* F7164 800D9074 8C5669D4 */  lw         $s6, %lo(D_menu_801269D4)($v0)
/* F7168 800D9078 C7BE00D4 */  lwc1       $f30, 0xD4($sp)
/* F716C 800D907C 4680F7A0 */  cvt.s.w    $f30, $f30
/* F7170 800D9080 AFA00024 */  sw         $zero, 0x24($sp)
/* F7174 800D9084 AFA00028 */  sw         $zero, 0x28($sp)
/* F7178 800D9088 AFA0002C */  sw         $zero, 0x2C($sp)
/* F717C 800D908C AFA00030 */  sw         $zero, 0x30($sp)
/* F7180 800D9090 AFA00034 */  sw         $zero, 0x34($sp)
/* F7184 800D9094 A3A30021 */  sb         $v1, 0x21($sp)
/* F7188 800D9098 A3A00022 */  sb         $zero, 0x22($sp)
/* F718C 800D909C 0C037D27 */  jal        func_menu_800DF49C
/* F7190 800D90A0 A3A00023 */   sb        $zero, 0x23($sp)
/* F7194 800D90A4 4482D000 */  mtc1       $v0, $f26
/* F7198 800D90A8 4680D6A0 */  cvt.s.w    $f26, $f26
/* F719C 800D90AC 0C037D2B */  jal        func_menu_800DF4AC
/* F71A0 800D90B0 02002021 */   addu      $a0, $s0, $zero
/* F71A4 800D90B4 02BE482A */  slt        $t1, $s5, $fp
/* F71A8 800D90B8 AFA90064 */  sw         $t1, 0x64($sp)
/* F71AC 800D90BC 96090012 */  lhu        $t1, 0x12($s0)
/* F71B0 800D90C0 4482C000 */  mtc1       $v0, $f24
/* F71B4 800D90C4 4680C620 */  cvt.s.w    $f24, $f24
/* F71B8 800D90C8 AFA90048 */  sw         $t1, 0x48($sp)
/* F71BC 800D90CC 8E020014 */  lw         $v0, 0x14($s0)
/* F71C0 800D90D0 8EC30014 */  lw         $v1, 0x14($s6)
/* F71C4 800D90D4 00021040 */  sll        $v0, $v0, 1
/* F71C8 800D90D8 00629821 */  addu       $s3, $v1, $v0
.Lmenu_800D90DC:
/* F71CC 800D90DC 8FA90048 */  lw         $t1, 0x48($sp)
/* F71D0 800D90E0 1120024A */  beqz       $t1, .Lmenu_800D9A0C
/* F71D4 800D90E4 24022000 */   addiu     $v0, $zero, 0x2000
/* F71D8 800D90E8 96700000 */  lhu        $s0, 0x0($s3)
/* F71DC 800D90EC 32033000 */  andi       $v1, $s0, 0x3000
/* F71E0 800D90F0 14620140 */  bne        $v1, $v0, .Lmenu_800D95F4
/* F71E4 800D90F4 26730002 */   addiu     $s3, $s3, 0x2
/* F71E8 800D90F8 8E820E14 */  lw         $v0, 0xE14($s4)
/* F71EC 800D90FC 02C02021 */  addu       $a0, $s6, $zero
/* F71F0 800D9100 2442FFFF */  addiu      $v0, $v0, -0x1
/* F71F4 800D9104 AE820E14 */  sw         $v0, 0xE14($s4)
/* F71F8 800D9108 24020004 */  addiu      $v0, $zero, 0x4
/* F71FC 800D910C A2220000 */  sb         $v0, 0x0($s1)
/* F7200 800D9110 96700000 */  lhu        $s0, 0x0($s3)
/* F7204 800D9114 26730002 */  addiu      $s3, $s3, 0x2
/* F7208 800D9118 0C037DF1 */  jal        func_menu_800DF7C4
/* F720C 800D911C 02002821 */   addu      $a1, $s0, $zero
/* F7210 800D9120 14400005 */  bnez       $v0, .Lmenu_800D9138
/* F7214 800D9124 27A20040 */   addiu     $v0, $sp, 0x40
/* F7218 800D9128 92220001 */  lbu        $v0, 0x1($s1)
/* F721C 800D912C 304200FE */  andi       $v0, $v0, 0xFE
/* F7220 800D9130 A2220001 */  sb         $v0, 0x1($s1)
/* F7224 800D9134 27A20040 */  addiu      $v0, $sp, 0x40
.Lmenu_800D9138:
/* F7228 800D9138 AFA20010 */  sw         $v0, 0x10($sp)
/* F722C 800D913C 02C02021 */  addu       $a0, $s6, $zero
/* F7230 800D9140 02002821 */  addu       $a1, $s0, $zero
/* F7234 800D9144 27A60038 */  addiu      $a2, $sp, 0x38
/* F7238 800D9148 0C037E03 */  jal        func_menu_800DF80C
/* F723C 800D914C 27A7003C */   addiu     $a3, $sp, 0x3C
/* F7240 800D9150 24090001 */  addiu      $t1, $zero, 0x1
/* F7244 800D9154 12A90012 */  beq        $s5, $t1, .Lmenu_800D91A0
/* F7248 800D9158 00000000 */   nop
/* F724C 800D915C 8FA90064 */  lw         $t1, 0x64($sp)
/* F7250 800D9160 11200005 */  beqz       $t1, .Lmenu_800D9178
/* F7254 800D9164 00000000 */   nop
/* F7258 800D9168 12A00009 */  beqz       $s5, .Lmenu_800D9190
/* F725C 800D916C 00000000 */   nop
/* F7260 800D9170 08036480 */  j          .Lmenu_800D9200
/* F7264 800D9174 00000000 */   nop
.Lmenu_800D9178:
/* F7268 800D9178 12BE0011 */  beq        $s5, $fp, .Lmenu_800D91C0
/* F726C 800D917C 24090003 */   addiu     $t1, $zero, 0x3
/* F7270 800D9180 12A90018 */  beq        $s5, $t1, .Lmenu_800D91E4
/* F7274 800D9184 00000000 */   nop
/* F7278 800D9188 08036480 */  j          .Lmenu_800D9200
/* F727C 800D918C 00000000 */   nop
.Lmenu_800D9190:
/* F7280 800D9190 C7A20038 */  lwc1       $f2, 0x38($sp)
/* F7284 800D9194 C7A0003C */  lwc1       $f0, 0x3C($sp)
/* F7288 800D9198 08036475 */  j          .Lmenu_800D91D4
/* F728C 800D919C 46161080 */   add.s     $f2, $f2, $f22
.Lmenu_800D91A0:
/* F7290 800D91A0 C7A20038 */  lwc1       $f2, 0x38($sp)
/* F7294 800D91A4 4602D081 */  sub.s      $f2, $f26, $f2
/* F7298 800D91A8 C7A0003C */  lwc1       $f0, 0x3C($sp)
/* F729C 800D91AC 46160000 */  add.s      $f0, $f0, $f22
/* F72A0 800D91B0 46141080 */  add.s      $f2, $f2, $f20
/* F72A4 800D91B4 E7A00024 */  swc1       $f0, 0x24($sp)
/* F72A8 800D91B8 08036480 */  j          .Lmenu_800D9200
/* F72AC 800D91BC E7A20028 */   swc1      $f2, 0x28($sp)
.Lmenu_800D91C0:
/* F72B0 800D91C0 C7A20038 */  lwc1       $f2, 0x38($sp)
/* F72B4 800D91C4 4602D081 */  sub.s      $f2, $f26, $f2
/* F72B8 800D91C8 C7A0003C */  lwc1       $f0, 0x3C($sp)
/* F72BC 800D91CC 4600C001 */  sub.s      $f0, $f24, $f0
/* F72C0 800D91D0 46161080 */  add.s      $f2, $f2, $f22
.Lmenu_800D91D4:
/* F72C4 800D91D4 46140000 */  add.s      $f0, $f0, $f20
/* F72C8 800D91D8 E7A20024 */  swc1       $f2, 0x24($sp)
/* F72CC 800D91DC 08036480 */  j          .Lmenu_800D9200
/* F72D0 800D91E0 E7A00028 */   swc1      $f0, 0x28($sp)
.Lmenu_800D91E4:
/* F72D4 800D91E4 C7A2003C */  lwc1       $f2, 0x3C($sp)
/* F72D8 800D91E8 4602C081 */  sub.s      $f2, $f24, $f2
/* F72DC 800D91EC C7A00038 */  lwc1       $f0, 0x38($sp)
/* F72E0 800D91F0 46140000 */  add.s      $f0, $f0, $f20
/* F72E4 800D91F4 46161080 */  add.s      $f2, $f2, $f22
/* F72E8 800D91F8 E7A00028 */  swc1       $f0, 0x28($sp)
/* F72EC 800D91FC E7A20024 */  swc1       $f2, 0x24($sp)
.Lmenu_800D9200:
/* F72F0 800D9200 C7A80040 */  lwc1       $f8, 0x40($sp)
/* F72F4 800D9204 461E4200 */  add.s      $f8, $f8, $f30
/* F72F8 800D9208 E7A8002C */  swc1       $f8, 0x2C($sp)
/* F72FC 800D920C 9625000A */  lhu        $a1, 0xA($s1)
/* F7300 800D9210 8E820DC8 */  lw         $v0, 0xDC8($s4)
/* F7304 800D9214 9623000C */  lhu        $v1, 0xC($s1)
/* F7308 800D9218 96240008 */  lhu        $a0, 0x8($s1)
/* F730C 800D921C 9627000A */  lhu        $a3, 0xA($s1)
/* F7310 800D9220 9626000C */  lhu        $a2, 0xC($s1)
/* F7314 800D9224 00052940 */  sll        $a1, $a1, 5
/* F7318 800D9228 00A22821 */  addu       $a1, $a1, $v0
/* F731C 800D922C 00031940 */  sll        $v1, $v1, 5
/* F7320 800D9230 00621821 */  addu       $v1, $v1, $v0
/* F7324 800D9234 00042140 */  sll        $a0, $a0, 5
/* F7328 800D9238 00822021 */  addu       $a0, $a0, $v0
/* F732C 800D923C 00073940 */  sll        $a3, $a3, 5
/* F7330 800D9240 00404021 */  addu       $t0, $v0, $zero
/* F7334 800D9244 00E83821 */  addu       $a3, $a3, $t0
/* F7338 800D9248 00063140 */  sll        $a2, $a2, 5
/* F733C 800D924C 00C83021 */  addu       $a2, $a2, $t0
/* F7340 800D9250 C4A6000C */  lwc1       $f6, 0xC($a1)
/* F7344 800D9254 01002821 */  addu       $a1, $t0, $zero
/* F7348 800D9258 C460000C */  lwc1       $f0, 0xC($v1)
/* F734C 800D925C C482000C */  lwc1       $f2, 0xC($a0)
/* F7350 800D9260 96220008 */  lhu        $v0, 0x8($s1)
/* F7354 800D9264 9624000A */  lhu        $a0, 0xA($s1)
/* F7358 800D9268 C4E40010 */  lwc1       $f4, 0x10($a3)
/* F735C 800D926C 9623000C */  lhu        $v1, 0xC($s1)
/* F7360 800D9270 00021140 */  sll        $v0, $v0, 5
/* F7364 800D9274 00481021 */  addu       $v0, $v0, $t0
/* F7368 800D9278 00042140 */  sll        $a0, $a0, 5
/* F736C 800D927C 46003180 */  add.s      $f6, $f6, $f0
/* F7370 800D9280 C7A00024 */  lwc1       $f0, 0x24($sp)
/* F7374 800D9284 00852021 */  addu       $a0, $a0, $a1
/* F7378 800D9288 46001080 */  add.s      $f2, $f2, $f0
/* F737C 800D928C C4C00010 */  lwc1       $f0, 0x10($a2)
/* F7380 800D9290 00031940 */  sll        $v1, $v1, 5
/* F7384 800D9294 46002100 */  add.s      $f4, $f4, $f0
/* F7388 800D9298 00651821 */  addu       $v1, $v1, $a1
/* F738C 800D929C C7A00028 */  lwc1       $f0, 0x28($sp)
/* F7390 800D92A0 46023181 */  sub.s      $f6, $f6, $f2
/* F7394 800D92A4 C4420010 */  lwc1       $f2, 0x10($v0)
/* F7398 800D92A8 96220008 */  lhu        $v0, 0x8($s1)
/* F739C 800D92AC 46001080 */  add.s      $f2, $f2, $f0
/* F73A0 800D92B0 00021140 */  sll        $v0, $v0, 5
/* F73A4 800D92B4 C4600014 */  lwc1       $f0, 0x14($v1)
/* F73A8 800D92B8 46022101 */  sub.s      $f4, $f4, $f2
/* F73AC 800D92BC C4820014 */  lwc1       $f2, 0x14($a0)
/* F73B0 800D92C0 00451021 */  addu       $v0, $v0, $a1
/* F73B4 800D92C4 46001080 */  add.s      $f2, $f2, $f0
/* F73B8 800D92C8 C4400014 */  lwc1       $f0, 0x14($v0)
/* F73BC 800D92CC 46080000 */  add.s      $f0, $f0, $f8
/* F73C0 800D92D0 44804000 */  mtc1       $zero, $f8
/* F73C4 800D92D4 46001081 */  sub.s      $f2, $f2, $f0
/* F73C8 800D92D8 E7A60038 */  swc1       $f6, 0x38($sp)
/* F73CC 800D92DC E7A4003C */  swc1       $f4, 0x3C($sp)
/* F73D0 800D92E0 46083032 */  c.eq.s     $f6, $f8
/* F73D4 800D92E4 00000000 */  nop
/* F73D8 800D92E8 4500000C */  bc1f       .Lmenu_800D931C
/* F73DC 800D92EC E7A20040 */   swc1      $f2, 0x40($sp)
/* F73E0 800D92F0 46082032 */  c.eq.s     $f4, $f8
/* F73E4 800D92F4 00000000 */  nop
/* F73E8 800D92F8 45000008 */  bc1f       .Lmenu_800D931C
/* F73EC 800D92FC 00000000 */   nop
/* F73F0 800D9300 46081032 */  c.eq.s     $f2, $f8
/* F73F4 800D9304 00000000 */  nop
/* F73F8 800D9308 45000004 */  bc1f       .Lmenu_800D931C
/* F73FC 800D930C 00000000 */   nop
/* F7400 800D9310 92220001 */  lbu        $v0, 0x1($s1)
/* F7404 800D9314 34420080 */  ori        $v0, $v0, 0x80
/* F7408 800D9318 A2220001 */  sb         $v0, 0x1($s1)
.Lmenu_800D931C:
/* F740C 800D931C 96220008 */  lhu        $v0, 0x8($s1)
/* F7410 800D9320 8E830DC8 */  lw         $v1, 0xDC8($s4)
/* F7414 800D9324 C7A20024 */  lwc1       $f2, 0x24($sp)
/* F7418 800D9328 00021140 */  sll        $v0, $v0, 5
/* F741C 800D932C 00431021 */  addu       $v0, $v0, $v1
/* F7420 800D9330 C440000C */  lwc1       $f0, 0xC($v0)
/* F7424 800D9334 46001032 */  c.eq.s     $f2, $f0
/* F7428 800D9338 00000000 */  nop
/* F742C 800D933C 45000011 */  bc1f       .Lmenu_800D9384
/* F7430 800D9340 00000000 */   nop
/* F7434 800D9344 9622000A */  lhu        $v0, 0xA($s1)
/* F7438 800D9348 00021140 */  sll        $v0, $v0, 5
/* F743C 800D934C 00431021 */  addu       $v0, $v0, $v1
/* F7440 800D9350 C440000C */  lwc1       $f0, 0xC($v0)
/* F7444 800D9354 46001032 */  c.eq.s     $f2, $f0
/* F7448 800D9358 00000000 */  nop
/* F744C 800D935C 45000009 */  bc1f       .Lmenu_800D9384
/* F7450 800D9360 00000000 */   nop
/* F7454 800D9364 9622000C */  lhu        $v0, 0xC($s1)
/* F7458 800D9368 00021140 */  sll        $v0, $v0, 5
/* F745C 800D936C 00431021 */  addu       $v0, $v0, $v1
/* F7460 800D9370 C440000C */  lwc1       $f0, 0xC($v0)
/* F7464 800D9374 46001032 */  c.eq.s     $f2, $f0
/* F7468 800D9378 00000000 */  nop
/* F746C 800D937C 45010004 */  bc1t       .Lmenu_800D9390
/* F7470 800D9380 00000000 */   nop
.Lmenu_800D9384:
/* F7474 800D9384 92220001 */  lbu        $v0, 0x1($s1)
/* F7478 800D9388 304200FD */  andi       $v0, $v0, 0xFD
/* F747C 800D938C A2220001 */  sb         $v0, 0x1($s1)
.Lmenu_800D9390:
/* F7480 800D9390 96220008 */  lhu        $v0, 0x8($s1)
/* F7484 800D9394 8E830DC8 */  lw         $v1, 0xDC8($s4)
/* F7488 800D9398 C7A20028 */  lwc1       $f2, 0x28($sp)
/* F748C 800D939C 00021140 */  sll        $v0, $v0, 5
/* F7490 800D93A0 00431021 */  addu       $v0, $v0, $v1
/* F7494 800D93A4 C4400010 */  lwc1       $f0, 0x10($v0)
/* F7498 800D93A8 46001032 */  c.eq.s     $f2, $f0
/* F749C 800D93AC 00000000 */  nop
/* F74A0 800D93B0 45000011 */  bc1f       .Lmenu_800D93F8
/* F74A4 800D93B4 00000000 */   nop
/* F74A8 800D93B8 9622000A */  lhu        $v0, 0xA($s1)
/* F74AC 800D93BC 00021140 */  sll        $v0, $v0, 5
/* F74B0 800D93C0 00431021 */  addu       $v0, $v0, $v1
/* F74B4 800D93C4 C4400010 */  lwc1       $f0, 0x10($v0)
/* F74B8 800D93C8 46001032 */  c.eq.s     $f2, $f0
/* F74BC 800D93CC 00000000 */  nop
/* F74C0 800D93D0 45000009 */  bc1f       .Lmenu_800D93F8
/* F74C4 800D93D4 00000000 */   nop
/* F74C8 800D93D8 9622000C */  lhu        $v0, 0xC($s1)
/* F74CC 800D93DC 00021140 */  sll        $v0, $v0, 5
/* F74D0 800D93E0 00431021 */  addu       $v0, $v0, $v1
/* F74D4 800D93E4 C4400010 */  lwc1       $f0, 0x10($v0)
/* F74D8 800D93E8 46001032 */  c.eq.s     $f2, $f0
/* F74DC 800D93EC 00000000 */  nop
/* F74E0 800D93F0 45010004 */  bc1t       .Lmenu_800D9404
/* F74E4 800D93F4 00000000 */   nop
.Lmenu_800D93F8:
/* F74E8 800D93F8 92220001 */  lbu        $v0, 0x1($s1)
/* F74EC 800D93FC 304200FB */  andi       $v0, $v0, 0xFB
/* F74F0 800D9400 A2220001 */  sb         $v0, 0x1($s1)
.Lmenu_800D9404:
/* F74F4 800D9404 96220008 */  lhu        $v0, 0x8($s1)
/* F74F8 800D9408 8E830DC8 */  lw         $v1, 0xDC8($s4)
/* F74FC 800D940C C7A2002C */  lwc1       $f2, 0x2C($sp)
/* F7500 800D9410 00021140 */  sll        $v0, $v0, 5
/* F7504 800D9414 00431021 */  addu       $v0, $v0, $v1
/* F7508 800D9418 C4400014 */  lwc1       $f0, 0x14($v0)
/* F750C 800D941C 46001032 */  c.eq.s     $f2, $f0
/* F7510 800D9420 00000000 */  nop
/* F7514 800D9424 45000011 */  bc1f       .Lmenu_800D946C
/* F7518 800D9428 00000000 */   nop
/* F751C 800D942C 9622000A */  lhu        $v0, 0xA($s1)
/* F7520 800D9430 00021140 */  sll        $v0, $v0, 5
/* F7524 800D9434 00431021 */  addu       $v0, $v0, $v1
/* F7528 800D9438 C4400014 */  lwc1       $f0, 0x14($v0)
/* F752C 800D943C 46001032 */  c.eq.s     $f2, $f0
/* F7530 800D9440 00000000 */  nop
/* F7534 800D9444 45000009 */  bc1f       .Lmenu_800D946C
/* F7538 800D9448 00000000 */   nop
/* F753C 800D944C 9622000C */  lhu        $v0, 0xC($s1)
/* F7540 800D9450 00021140 */  sll        $v0, $v0, 5
/* F7544 800D9454 00431021 */  addu       $v0, $v0, $v1
/* F7548 800D9458 C4400014 */  lwc1       $f0, 0x14($v0)
/* F754C 800D945C 46001032 */  c.eq.s     $f2, $f0
/* F7550 800D9460 00000000 */  nop
/* F7554 800D9464 45010004 */  bc1t       .Lmenu_800D9478
/* F7558 800D9468 00000000 */   nop
.Lmenu_800D946C:
/* F755C 800D946C 92220001 */  lbu        $v0, 0x1($s1)
/* F7560 800D9470 304200F7 */  andi       $v0, $v0, 0xF7
/* F7564 800D9474 A2220001 */  sb         $v0, 0x1($s1)
.Lmenu_800D9478:
/* F7568 800D9478 8FA9005C */  lw         $t1, 0x5C($sp)
/* F756C 800D947C 11200004 */  beqz       $t1, .Lmenu_800D9490
/* F7570 800D9480 00171040 */   sll       $v0, $s7, 1
/* F7574 800D9484 96770000 */  lhu        $s7, 0x0($s3)
/* F7578 800D9488 26730002 */  addiu      $s3, $s3, 0x2
/* F757C 800D948C 00171040 */  sll        $v0, $s7, 1
.Lmenu_800D9490:
/* F7580 800D9490 8EC30024 */  lw         $v1, 0x24($s6)
/* F7584 800D9494 00571021 */  addu       $v0, $v0, $s7
/* F7588 800D9498 00621821 */  addu       $v1, $v1, $v0
/* F758C 800D949C 90650000 */  lbu        $a1, 0x0($v1)
/* F7590 800D94A0 A3A50044 */  sb         $a1, 0x44($sp)
/* F7594 800D94A4 90640001 */  lbu        $a0, 0x1($v1)
/* F7598 800D94A8 A3A40045 */  sb         $a0, 0x45($sp)
/* F759C 800D94AC 90620002 */  lbu        $v0, 0x2($v1)
/* F75A0 800D94B0 24090001 */  addiu      $t1, $zero, 0x1
/* F75A4 800D94B4 12A90010 */  beq        $s5, $t1, .Lmenu_800D94F8
/* F75A8 800D94B8 A3A20023 */   sb        $v0, 0x23($sp)
/* F75AC 800D94BC 8FA90064 */  lw         $t1, 0x64($sp)
/* F75B0 800D94C0 11200005 */  beqz       $t1, .Lmenu_800D94D8
/* F75B4 800D94C4 00000000 */   nop
/* F75B8 800D94C8 52A00009 */  beql       $s5, $zero, .Lmenu_800D94F0
/* F75BC 800D94CC A3A50021 */   sb        $a1, 0x21($sp)
/* F75C0 800D94D0 08036549 */  j          .Lmenu_800D9524
/* F75C4 800D94D4 00000000 */   nop
.Lmenu_800D94D8:
/* F75C8 800D94D8 12BE000B */  beq        $s5, $fp, .Lmenu_800D9508
/* F75CC 800D94DC 24090003 */   addiu     $t1, $zero, 0x3
/* F75D0 800D94E0 12A9000E */  beq        $s5, $t1, .Lmenu_800D951C
/* F75D4 800D94E4 00041023 */   negu      $v0, $a0
/* F75D8 800D94E8 08036549 */  j          .Lmenu_800D9524
/* F75DC 800D94EC 00000000 */   nop
.Lmenu_800D94F0:
/* F75E0 800D94F0 08036549 */  j          .Lmenu_800D9524
/* F75E4 800D94F4 A3A40022 */   sb        $a0, 0x22($sp)
.Lmenu_800D94F8:
/* F75E8 800D94F8 00051023 */  negu       $v0, $a1
/* F75EC 800D94FC A3A40021 */  sb         $a0, 0x21($sp)
/* F75F0 800D9500 08036549 */  j          .Lmenu_800D9524
/* F75F4 800D9504 A3A20022 */   sb        $v0, 0x22($sp)
.Lmenu_800D9508:
/* F75F8 800D9508 00051023 */  negu       $v0, $a1
/* F75FC 800D950C A3A20021 */  sb         $v0, 0x21($sp)
/* F7600 800D9510 00041023 */  negu       $v0, $a0
/* F7604 800D9514 08036549 */  j          .Lmenu_800D9524
/* F7608 800D9518 A3A20022 */   sb        $v0, 0x22($sp)
.Lmenu_800D951C:
/* F760C 800D951C A3A20021 */  sb         $v0, 0x21($sp)
/* F7610 800D9520 A3A50022 */  sb         $a1, 0x22($sp)
.Lmenu_800D9524:
/* F7614 800D9524 8FA90058 */  lw         $t1, 0x58($sp)
/* F7618 800D9528 1120000C */  beqz       $t1, .Lmenu_800D955C
/* F761C 800D952C 02C02021 */   addu      $a0, $s6, $zero
/* F7620 800D9530 27A60038 */  addiu      $a2, $sp, 0x38
/* F7624 800D9534 96700000 */  lhu        $s0, 0x0($s3)
/* F7628 800D9538 27A7003C */  addiu      $a3, $sp, 0x3C
/* F762C 800D953C 0C037E1B */  jal        func_menu_800DF86C
/* F7630 800D9540 02002821 */   addu      $a1, $s0, $zero
/* F7634 800D9544 C7A00038 */  lwc1       $f0, 0x38($sp)
/* F7638 800D9548 C7A2003C */  lwc1       $f2, 0x3C($sp)
/* F763C 800D954C 26730002 */  addiu      $s3, $s3, 0x2
/* F7640 800D9550 E7A00030 */  swc1       $f0, 0x30($sp)
/* F7644 800D9554 0803656C */  j          .Lmenu_800D95B0
/* F7648 800D9558 E7A20034 */   swc1      $f2, 0x34($sp)
.Lmenu_800D955C:
/* F764C 800D955C 928200D9 */  lbu        $v0, 0xD9($s4)
/* F7650 800D9560 54400012 */  bnel       $v0, $zero, .Lmenu_800D95AC
/* F7654 800D9564 AFA00030 */   sw        $zero, 0x30($sp)
/* F7658 800D9568 928200DB */  lbu        $v0, 0xDB($s4)
/* F765C 800D956C 5040000F */  beql       $v0, $zero, .Lmenu_800D95AC
/* F7660 800D9570 AFA00030 */   sw        $zero, 0x30($sp)
/* F7664 800D9574 96220006 */  lhu        $v0, 0x6($s1)
/* F7668 800D9578 105E0003 */  beq        $v0, $fp, .Lmenu_800D9588
/* F766C 800D957C 30420800 */   andi      $v0, $v0, 0x800
/* F7670 800D9580 5040000A */  beql       $v0, $zero, .Lmenu_800D95AC
/* F7674 800D9584 AFA00030 */   sw        $zero, 0x30($sp)
.Lmenu_800D9588:
/* F7678 800D9588 C7A20024 */  lwc1       $f2, 0x24($sp)
/* F767C 800D958C 46161081 */  sub.s      $f2, $f2, $f22
/* F7680 800D9590 461C1082 */  mul.s      $f2, $f2, $f28
/* F7684 800D9594 C7A00028 */  lwc1       $f0, 0x28($sp)
/* F7688 800D9598 46140001 */  sub.s      $f0, $f0, $f20
/* F768C 800D959C 461C0002 */  mul.s      $f0, $f0, $f28
/* F7690 800D95A0 E7A20030 */  swc1       $f2, 0x30($sp)
/* F7694 800D95A4 0803656C */  j          .Lmenu_800D95B0
/* F7698 800D95A8 E7A00034 */   swc1      $f0, 0x34($sp)
.Lmenu_800D95AC:
/* F769C 800D95AC AFA00034 */  sw         $zero, 0x34($sp)
.Lmenu_800D95B0:
/* F76A0 800D95B0 8E820E14 */  lw         $v0, 0xE14($s4)
/* F76A4 800D95B4 28420672 */  slti       $v0, $v0, 0x672
/* F76A8 800D95B8 1040000A */  beqz       $v0, .Lmenu_800D95E4
/* F76AC 800D95BC 02802021 */   addu      $a0, $s4, $zero
/* F76B0 800D95C0 0C0352FC */  jal        func_menu_800D4BF0
/* F76B4 800D95C4 27A50018 */   addiu     $a1, $sp, 0x18
/* F76B8 800D95C8 A622000E */  sh         $v0, 0xE($s1)
.Lmenu_800D95CC:
/* F76BC 800D95CC 8E820E14 */  lw         $v0, 0xE14($s4)
/* F76C0 800D95D0 24420001 */  addiu      $v0, $v0, 0x1
/* F76C4 800D95D4 AE820E14 */  sw         $v0, 0xE14($s4)
/* F76C8 800D95D8 28420672 */  slti       $v0, $v0, 0x672
/* F76CC 800D95DC 14400107 */  bnez       $v0, .Lmenu_800D99FC
/* F76D0 800D95E0 00000000 */   nop
.Lmenu_800D95E4:
/* F76D4 800D95E4 928200DC */  lbu        $v0, 0xDC($s4)
/* F76D8 800D95E8 34420001 */  ori        $v0, $v0, 0x1
/* F76DC 800D95EC 08036683 */  j          .Lmenu_800D9A0C
/* F76E0 800D95F0 A28200DC */   sb        $v0, 0xDC($s4)
.Lmenu_800D95F4:
/* F76E4 800D95F4 38621000 */  xori       $v0, $v1, 0x1000
/* F76E8 800D95F8 2C420001 */  sltiu      $v0, $v0, 0x1
/* F76EC 800D95FC AFA20058 */  sw         $v0, 0x58($sp)
/* F76F0 800D9600 32024000 */  andi       $v0, $s0, 0x4000
/* F76F4 800D9604 0002102B */  sltu       $v0, $zero, $v0
/* F76F8 800D9608 AFA2005C */  sw         $v0, 0x5C($sp)
/* F76FC 800D960C 8E830E14 */  lw         $v1, 0xE14($s4)
/* F7700 800D9610 8E840DCC */  lw         $a0, 0xDCC($s4)
/* F7704 800D9614 00031100 */  sll        $v0, $v1, 4
/* F7708 800D9618 00828821 */  addu       $s1, $a0, $v0
/* F770C 800D961C 8E820DD0 */  lw         $v0, 0xDD0($s4)
/* F7710 800D9620 00031880 */  sll        $v1, $v1, 2
/* F7714 800D9624 00621821 */  addu       $v1, $v1, $v0
/* F7718 800D9628 AC710000 */  sw         $s1, 0x0($v1)
/* F771C 800D962C 24090003 */  addiu      $t1, $zero, 0x3
/* F7720 800D9630 2402000F */  addiu      $v0, $zero, 0xF
/* F7724 800D9634 A2220001 */  sb         $v0, 0x1($s1)
/* F7728 800D9638 32020FFF */  andi       $v0, $s0, 0xFFF
/* F772C 800D963C A6220006 */  sh         $v0, 0x6($s1)
/* F7730 800D9640 320207FF */  andi       $v0, $s0, 0x7FF
/* F7734 800D9644 A2290000 */  sb         $t1, 0x0($s1)
/* F7738 800D9648 A6220002 */  sh         $v0, 0x2($s1)
/* F773C 800D964C 32028000 */  andi       $v0, $s0, 0x8000
/* F7740 800D9650 97A900DE */  lhu        $t1, 0xDE($sp)
/* F7744 800D9654 96230002 */  lhu        $v1, 0x2($s1)
/* F7748 800D9658 0002102B */  sltu       $v0, $zero, $v0
/* F774C 800D965C A6290004 */  sh         $t1, 0x4($s1)
/* F7750 800D9660 AFA20060 */  sw         $v0, 0x60($sp)
/* F7754 800D9664 2C620003 */  sltiu      $v0, $v1, 0x3
/* F7758 800D9668 1440000D */  bnez       $v0, .Lmenu_800D96A0
/* F775C 800D966C 00000000 */   nop
/* F7760 800D9670 928200D9 */  lbu        $v0, 0xD9($s4)
/* F7764 800D9674 1440001B */  bnez       $v0, .Lmenu_800D96E4
/* F7768 800D9678 00009021 */   addu      $s2, $zero, $zero
/* F776C 800D967C 928200DB */  lbu        $v0, 0xDB($s4)
/* F7770 800D9680 10400019 */  beqz       $v0, .Lmenu_800D96E8
/* F7774 800D9684 2A420003 */   slti      $v0, $s2, 0x3
/* F7778 800D9688 96220006 */  lhu        $v0, 0x6($s1)
/* F777C 800D968C 30420800 */  andi       $v0, $v0, 0x800
/* F7780 800D9690 10400014 */  beqz       $v0, .Lmenu_800D96E4
/* F7784 800D9694 24620001 */   addiu     $v0, $v1, 0x1
/* F7788 800D9698 080365B9 */  j          .Lmenu_800D96E4
/* F778C 800D969C A6220002 */   sh        $v0, 0x2($s1)
.Lmenu_800D96A0:
/* F7790 800D96A0 928200D9 */  lbu        $v0, 0xD9($s4)
/* F7794 800D96A4 1440000C */  bnez       $v0, .Lmenu_800D96D8
/* F7798 800D96A8 00000000 */   nop
/* F779C 800D96AC 928200DB */  lbu        $v0, 0xDB($s4)
/* F77A0 800D96B0 10400009 */  beqz       $v0, .Lmenu_800D96D8
/* F77A4 800D96B4 00000000 */   nop
/* F77A8 800D96B8 96220006 */  lhu        $v0, 0x6($s1)
/* F77AC 800D96BC 304207FF */  andi       $v0, $v0, 0x7FF
/* F77B0 800D96C0 145E0005 */  bne        $v0, $fp, .Lmenu_800D96D8
/* F77B4 800D96C4 00000000 */   nop
/* F77B8 800D96C8 97A90056 */  lhu        $t1, 0x56($sp)
/* F77BC 800D96CC 25220001 */  addiu      $v0, $t1, 0x1
/* F77C0 800D96D0 080365B8 */  j          .Lmenu_800D96E0
/* F77C4 800D96D4 A6220002 */   sh        $v0, 0x2($s1)
.Lmenu_800D96D8:
/* F77C8 800D96D8 97A90056 */  lhu        $t1, 0x56($sp)
/* F77CC 800D96DC A6290002 */  sh         $t1, 0x2($s1)
.Lmenu_800D96E0:
/* F77D0 800D96E0 00009021 */  addu       $s2, $zero, $zero
.Lmenu_800D96E4:
/* F77D4 800D96E4 2A420003 */  slti       $v0, $s2, 0x3
.Lmenu_800D96E8:
/* F77D8 800D96E8 1040FFB8 */  beqz       $v0, .Lmenu_800D95CC
/* F77DC 800D96EC 02C02021 */   addu      $a0, $s6, $zero
/* F77E0 800D96F0 96700000 */  lhu        $s0, 0x0($s3)
/* F77E4 800D96F4 26730002 */  addiu      $s3, $s3, 0x2
/* F77E8 800D96F8 0C037DF1 */  jal        func_menu_800DF7C4
/* F77EC 800D96FC 02002821 */   addu      $a1, $s0, $zero
/* F77F0 800D9700 14400005 */  bnez       $v0, .Lmenu_800D9718
/* F77F4 800D9704 27A20040 */   addiu     $v0, $sp, 0x40
/* F77F8 800D9708 92220001 */  lbu        $v0, 0x1($s1)
/* F77FC 800D970C 304200FE */  andi       $v0, $v0, 0xFE
/* F7800 800D9710 A2220001 */  sb         $v0, 0x1($s1)
/* F7804 800D9714 27A20040 */  addiu      $v0, $sp, 0x40
.Lmenu_800D9718:
/* F7808 800D9718 AFA20010 */  sw         $v0, 0x10($sp)
/* F780C 800D971C 02C02021 */  addu       $a0, $s6, $zero
/* F7810 800D9720 02002821 */  addu       $a1, $s0, $zero
/* F7814 800D9724 27A60038 */  addiu      $a2, $sp, 0x38
/* F7818 800D9728 0C037E03 */  jal        func_menu_800DF80C
/* F781C 800D972C 27A7003C */   addiu     $a3, $sp, 0x3C
/* F7820 800D9730 24090001 */  addiu      $t1, $zero, 0x1
/* F7824 800D9734 12A90012 */  beq        $s5, $t1, .Lmenu_800D9780
/* F7828 800D9738 00000000 */   nop
/* F782C 800D973C 8FA90064 */  lw         $t1, 0x64($sp)
/* F7830 800D9740 11200005 */  beqz       $t1, .Lmenu_800D9758
/* F7834 800D9744 00000000 */   nop
/* F7838 800D9748 12A00009 */  beqz       $s5, .Lmenu_800D9770
/* F783C 800D974C 00000000 */   nop
/* F7840 800D9750 080365F4 */  j          .Lmenu_800D97D0
/* F7844 800D9754 00000000 */   nop
.Lmenu_800D9758:
/* F7848 800D9758 12BE000D */  beq        $s5, $fp, .Lmenu_800D9790
/* F784C 800D975C 24090003 */   addiu     $t1, $zero, 0x3
/* F7850 800D9760 12A90014 */  beq        $s5, $t1, .Lmenu_800D97B4
/* F7854 800D9764 00000000 */   nop
/* F7858 800D9768 080365F4 */  j          .Lmenu_800D97D0
/* F785C 800D976C 00000000 */   nop
.Lmenu_800D9770:
/* F7860 800D9770 C7A20038 */  lwc1       $f2, 0x38($sp)
/* F7864 800D9774 C7A0003C */  lwc1       $f0, 0x3C($sp)
/* F7868 800D9778 080365E9 */  j          .Lmenu_800D97A4
/* F786C 800D977C 46161080 */   add.s     $f2, $f2, $f22
.Lmenu_800D9780:
/* F7870 800D9780 C7A00038 */  lwc1       $f0, 0x38($sp)
/* F7874 800D9784 C7A2003C */  lwc1       $f2, 0x3C($sp)
/* F7878 800D9788 080365E8 */  j          .Lmenu_800D97A0
/* F787C 800D978C 4600D001 */   sub.s     $f0, $f26, $f0
.Lmenu_800D9790:
/* F7880 800D9790 C7A20038 */  lwc1       $f2, 0x38($sp)
/* F7884 800D9794 4602D081 */  sub.s      $f2, $f26, $f2
/* F7888 800D9798 C7A0003C */  lwc1       $f0, 0x3C($sp)
/* F788C 800D979C 4600C001 */  sub.s      $f0, $f24, $f0
.Lmenu_800D97A0:
/* F7890 800D97A0 46161080 */  add.s      $f2, $f2, $f22
.Lmenu_800D97A4:
/* F7894 800D97A4 46140000 */  add.s      $f0, $f0, $f20
/* F7898 800D97A8 E7A20024 */  swc1       $f2, 0x24($sp)
/* F789C 800D97AC 080365F4 */  j          .Lmenu_800D97D0
/* F78A0 800D97B0 E7A00028 */   swc1      $f0, 0x28($sp)
.Lmenu_800D97B4:
/* F78A4 800D97B4 C7A0003C */  lwc1       $f0, 0x3C($sp)
/* F78A8 800D97B8 4600C001 */  sub.s      $f0, $f24, $f0
/* F78AC 800D97BC C7A20038 */  lwc1       $f2, 0x38($sp)
/* F78B0 800D97C0 46141080 */  add.s      $f2, $f2, $f20
/* F78B4 800D97C4 46160000 */  add.s      $f0, $f0, $f22
/* F78B8 800D97C8 E7A20028 */  swc1       $f2, 0x28($sp)
/* F78BC 800D97CC E7A00024 */  swc1       $f0, 0x24($sp)
.Lmenu_800D97D0:
/* F78C0 800D97D0 C7A00040 */  lwc1       $f0, 0x40($sp)
/* F78C4 800D97D4 461E0000 */  add.s      $f0, $f0, $f30
/* F78C8 800D97D8 00002821 */  addu       $a1, $zero, $zero
/* F78CC 800D97DC 1A40002C */  blez       $s2, .Lmenu_800D9890
/* F78D0 800D97E0 E7A0002C */   swc1      $f0, 0x2C($sp)
/* F78D4 800D97E4 02202021 */  addu       $a0, $s1, $zero
.Lmenu_800D97E8:
/* F78D8 800D97E8 94820008 */  lhu        $v0, 0x8($a0)
/* F78DC 800D97EC 8E830DC8 */  lw         $v1, 0xDC8($s4)
/* F78E0 800D97F0 C7A20024 */  lwc1       $f2, 0x24($sp)
/* F78E4 800D97F4 00021140 */  sll        $v0, $v0, 5
/* F78E8 800D97F8 00431021 */  addu       $v0, $v0, $v1
/* F78EC 800D97FC C440000C */  lwc1       $f0, 0xC($v0)
/* F78F0 800D9800 46001032 */  c.eq.s     $f2, $f0
/* F78F4 800D9804 00000000 */  nop
/* F78F8 800D9808 45010004 */  bc1t       .Lmenu_800D981C
/* F78FC 800D980C 00000000 */   nop
/* F7900 800D9810 92220001 */  lbu        $v0, 0x1($s1)
/* F7904 800D9814 304200FD */  andi       $v0, $v0, 0xFD
/* F7908 800D9818 A2220001 */  sb         $v0, 0x1($s1)
.Lmenu_800D981C:
/* F790C 800D981C 94820008 */  lhu        $v0, 0x8($a0)
/* F7910 800D9820 8E830DC8 */  lw         $v1, 0xDC8($s4)
/* F7914 800D9824 C7A20028 */  lwc1       $f2, 0x28($sp)
/* F7918 800D9828 00021140 */  sll        $v0, $v0, 5
/* F791C 800D982C 00431021 */  addu       $v0, $v0, $v1
/* F7920 800D9830 C4400010 */  lwc1       $f0, 0x10($v0)
/* F7924 800D9834 46001032 */  c.eq.s     $f2, $f0
/* F7928 800D9838 00000000 */  nop
/* F792C 800D983C 45010004 */  bc1t       .Lmenu_800D9850
/* F7930 800D9840 00000000 */   nop
/* F7934 800D9844 92220001 */  lbu        $v0, 0x1($s1)
/* F7938 800D9848 304200FB */  andi       $v0, $v0, 0xFB
/* F793C 800D984C A2220001 */  sb         $v0, 0x1($s1)
.Lmenu_800D9850:
/* F7940 800D9850 94820008 */  lhu        $v0, 0x8($a0)
/* F7944 800D9854 8E830DC8 */  lw         $v1, 0xDC8($s4)
/* F7948 800D9858 C7A2002C */  lwc1       $f2, 0x2C($sp)
/* F794C 800D985C 00021140 */  sll        $v0, $v0, 5
/* F7950 800D9860 00431021 */  addu       $v0, $v0, $v1
/* F7954 800D9864 C4400014 */  lwc1       $f0, 0x14($v0)
/* F7958 800D9868 46001032 */  c.eq.s     $f2, $f0
/* F795C 800D986C 00000000 */  nop
/* F7960 800D9870 45010004 */  bc1t       .Lmenu_800D9884
/* F7964 800D9874 24A50001 */   addiu     $a1, $a1, 0x1
/* F7968 800D9878 92220001 */  lbu        $v0, 0x1($s1)
/* F796C 800D987C 304200F7 */  andi       $v0, $v0, 0xF7
/* F7970 800D9880 A2220001 */  sb         $v0, 0x1($s1)
.Lmenu_800D9884:
/* F7974 800D9884 00B2102A */  slt        $v0, $a1, $s2
/* F7978 800D9888 1440FFD7 */  bnez       $v0, .Lmenu_800D97E8
/* F797C 800D988C 24840002 */   addiu     $a0, $a0, 0x2
.Lmenu_800D9890:
/* F7980 800D9890 8FA90060 */  lw         $t1, 0x60($sp)
/* F7984 800D9894 15200009 */  bnez       $t1, .Lmenu_800D98BC
/* F7988 800D9898 00171040 */   sll       $v0, $s7, 1
/* F798C 800D989C 8FA9005C */  lw         $t1, 0x5C($sp)
/* F7990 800D98A0 15200003 */  bnez       $t1, .Lmenu_800D98B0
/* F7994 800D98A4 00000000 */   nop
/* F7998 800D98A8 16400004 */  bnez       $s2, .Lmenu_800D98BC
/* F799C 800D98AC 00000000 */   nop
.Lmenu_800D98B0:
/* F79A0 800D98B0 96770000 */  lhu        $s7, 0x0($s3)
/* F79A4 800D98B4 26730002 */  addiu      $s3, $s3, 0x2
/* F79A8 800D98B8 00171040 */  sll        $v0, $s7, 1
.Lmenu_800D98BC:
/* F79AC 800D98BC 8EC30024 */  lw         $v1, 0x24($s6)
/* F79B0 800D98C0 00571021 */  addu       $v0, $v0, $s7
/* F79B4 800D98C4 00621821 */  addu       $v1, $v1, $v0
/* F79B8 800D98C8 90650000 */  lbu        $a1, 0x0($v1)
/* F79BC 800D98CC A3A50046 */  sb         $a1, 0x46($sp)
/* F79C0 800D98D0 90640001 */  lbu        $a0, 0x1($v1)
/* F79C4 800D98D4 A3A40047 */  sb         $a0, 0x47($sp)
/* F79C8 800D98D8 90620002 */  lbu        $v0, 0x2($v1)
/* F79CC 800D98DC 24090001 */  addiu      $t1, $zero, 0x1
/* F79D0 800D98E0 12A90010 */  beq        $s5, $t1, .Lmenu_800D9924
/* F79D4 800D98E4 A3A20023 */   sb        $v0, 0x23($sp)
/* F79D8 800D98E8 8FA90064 */  lw         $t1, 0x64($sp)
/* F79DC 800D98EC 11200005 */  beqz       $t1, .Lmenu_800D9904
/* F79E0 800D98F0 00000000 */   nop
/* F79E4 800D98F4 52A00009 */  beql       $s5, $zero, .Lmenu_800D991C
/* F79E8 800D98F8 A3A50021 */   sb        $a1, 0x21($sp)
/* F79EC 800D98FC 08036654 */  j          .Lmenu_800D9950
/* F79F0 800D9900 00000000 */   nop
.Lmenu_800D9904:
/* F79F4 800D9904 12BE000B */  beq        $s5, $fp, .Lmenu_800D9934
/* F79F8 800D9908 24090003 */   addiu     $t1, $zero, 0x3
/* F79FC 800D990C 12A9000E */  beq        $s5, $t1, .Lmenu_800D9948
/* F7A00 800D9910 00041023 */   negu      $v0, $a0
/* F7A04 800D9914 08036654 */  j          .Lmenu_800D9950
/* F7A08 800D9918 00000000 */   nop
.Lmenu_800D991C:
/* F7A0C 800D991C 08036654 */  j          .Lmenu_800D9950
/* F7A10 800D9920 A3A40022 */   sb        $a0, 0x22($sp)
.Lmenu_800D9924:
/* F7A14 800D9924 00051023 */  negu       $v0, $a1
/* F7A18 800D9928 A3A40021 */  sb         $a0, 0x21($sp)
/* F7A1C 800D992C 08036654 */  j          .Lmenu_800D9950
/* F7A20 800D9930 A3A20022 */   sb        $v0, 0x22($sp)
.Lmenu_800D9934:
/* F7A24 800D9934 00051023 */  negu       $v0, $a1
/* F7A28 800D9938 A3A20021 */  sb         $v0, 0x21($sp)
/* F7A2C 800D993C 00041023 */  negu       $v0, $a0
/* F7A30 800D9940 08036654 */  j          .Lmenu_800D9950
/* F7A34 800D9944 A3A20022 */   sb        $v0, 0x22($sp)
.Lmenu_800D9948:
/* F7A38 800D9948 A3A20021 */  sb         $v0, 0x21($sp)
/* F7A3C 800D994C A3A50022 */  sb         $a1, 0x22($sp)
.Lmenu_800D9950:
/* F7A40 800D9950 8FA90058 */  lw         $t1, 0x58($sp)
/* F7A44 800D9954 1120000C */  beqz       $t1, .Lmenu_800D9988
/* F7A48 800D9958 02C02021 */   addu      $a0, $s6, $zero
/* F7A4C 800D995C 27A60038 */  addiu      $a2, $sp, 0x38
/* F7A50 800D9960 96700000 */  lhu        $s0, 0x0($s3)
/* F7A54 800D9964 27A7003C */  addiu      $a3, $sp, 0x3C
/* F7A58 800D9968 0C037E1B */  jal        func_menu_800DF86C
/* F7A5C 800D996C 02002821 */   addu      $a1, $s0, $zero
/* F7A60 800D9970 C7A00038 */  lwc1       $f0, 0x38($sp)
/* F7A64 800D9974 C7A2003C */  lwc1       $f2, 0x3C($sp)
/* F7A68 800D9978 26730002 */  addiu      $s3, $s3, 0x2
/* F7A6C 800D997C E7A00030 */  swc1       $f0, 0x30($sp)
/* F7A70 800D9980 08036677 */  j          .Lmenu_800D99DC
/* F7A74 800D9984 E7A20034 */   swc1      $f2, 0x34($sp)
.Lmenu_800D9988:
/* F7A78 800D9988 928200D9 */  lbu        $v0, 0xD9($s4)
/* F7A7C 800D998C 54400012 */  bnel       $v0, $zero, .Lmenu_800D99D8
/* F7A80 800D9990 AFA00030 */   sw        $zero, 0x30($sp)
/* F7A84 800D9994 928200DB */  lbu        $v0, 0xDB($s4)
/* F7A88 800D9998 5040000F */  beql       $v0, $zero, .Lmenu_800D99D8
/* F7A8C 800D999C AFA00030 */   sw        $zero, 0x30($sp)
/* F7A90 800D99A0 96220006 */  lhu        $v0, 0x6($s1)
/* F7A94 800D99A4 105E0003 */  beq        $v0, $fp, .Lmenu_800D99B4
/* F7A98 800D99A8 30420800 */   andi      $v0, $v0, 0x800
/* F7A9C 800D99AC 5040000A */  beql       $v0, $zero, .Lmenu_800D99D8
/* F7AA0 800D99B0 AFA00030 */   sw        $zero, 0x30($sp)
.Lmenu_800D99B4:
/* F7AA4 800D99B4 C7A20024 */  lwc1       $f2, 0x24($sp)
/* F7AA8 800D99B8 46161081 */  sub.s      $f2, $f2, $f22
/* F7AAC 800D99BC 461C1082 */  mul.s      $f2, $f2, $f28
/* F7AB0 800D99C0 C7A00028 */  lwc1       $f0, 0x28($sp)
/* F7AB4 800D99C4 46140001 */  sub.s      $f0, $f0, $f20
/* F7AB8 800D99C8 461C0002 */  mul.s      $f0, $f0, $f28
/* F7ABC 800D99CC E7A20030 */  swc1       $f2, 0x30($sp)
/* F7AC0 800D99D0 08036677 */  j          .Lmenu_800D99DC
/* F7AC4 800D99D4 E7A00034 */   swc1      $f0, 0x34($sp)
.Lmenu_800D99D8:
/* F7AC8 800D99D8 AFA00034 */  sw         $zero, 0x34($sp)
.Lmenu_800D99DC:
/* F7ACC 800D99DC 02802021 */  addu       $a0, $s4, $zero
/* F7AD0 800D99E0 0C0352FC */  jal        func_menu_800D4BF0
/* F7AD4 800D99E4 27A50018 */   addiu     $a1, $sp, 0x18
/* F7AD8 800D99E8 00121840 */  sll        $v1, $s2, 1
/* F7ADC 800D99EC 02231821 */  addu       $v1, $s1, $v1
/* F7AE0 800D99F0 A4620008 */  sh         $v0, 0x8($v1)
/* F7AE4 800D99F4 080365B9 */  j          .Lmenu_800D96E4
/* F7AE8 800D99F8 26520001 */   addiu     $s2, $s2, 0x1
.Lmenu_800D99FC:
/* F7AEC 800D99FC 8FA90048 */  lw         $t1, 0x48($sp)
/* F7AF0 800D9A00 2529FFFF */  addiu      $t1, $t1, -0x1
/* F7AF4 800D9A04 08036437 */  j          .Lmenu_800D90DC
/* F7AF8 800D9A08 AFA90048 */   sw        $t1, 0x48($sp)
.Lmenu_800D9A0C:
/* F7AFC 800D9A0C 8FBF008C */  lw         $ra, 0x8C($sp)
/* F7B00 800D9A10 8FBE0088 */  lw         $fp, 0x88($sp)
/* F7B04 800D9A14 8FB70084 */  lw         $s7, 0x84($sp)
/* F7B08 800D9A18 8FB60080 */  lw         $s6, 0x80($sp)
/* F7B0C 800D9A1C 8FB5007C */  lw         $s5, 0x7C($sp)
/* F7B10 800D9A20 8FB40078 */  lw         $s4, 0x78($sp)
/* F7B14 800D9A24 8FB30074 */  lw         $s3, 0x74($sp)
/* F7B18 800D9A28 8FB20070 */  lw         $s2, 0x70($sp)
/* F7B1C 800D9A2C 8FB1006C */  lw         $s1, 0x6C($sp)
/* F7B20 800D9A30 8FB00068 */  lw         $s0, 0x68($sp)
/* F7B24 800D9A34 D7BE00B8 */  ldc1       $f30, 0xB8($sp)
/* F7B28 800D9A38 D7BC00B0 */  ldc1       $f28, 0xB0($sp)
/* F7B2C 800D9A3C D7BA00A8 */  ldc1       $f26, 0xA8($sp)
/* F7B30 800D9A40 D7B800A0 */  ldc1       $f24, 0xA0($sp)
/* F7B34 800D9A44 D7B60098 */  ldc1       $f22, 0x98($sp)
/* F7B38 800D9A48 D7B40090 */  ldc1       $f20, 0x90($sp)
/* F7B3C 800D9A4C 03E00008 */  jr         $ra
/* F7B40 800D9A50 27BD00C0 */   addiu     $sp, $sp, 0xC0

glabel func_menu_800D9A54
/* F7B44 800D9A54 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F7B48 800D9A58 AFB00010 */  sw         $s0, 0x10($sp)
/* F7B4C 800D9A5C 00808021 */  addu       $s0, $a0, $zero
/* F7B50 800D9A60 AFBF0014 */  sw         $ra, 0x14($sp)
/* F7B54 800D9A64 8E0400A0 */  lw         $a0, 0xA0($s0)
/* F7B58 800D9A68 10800007 */  beqz       $a0, .Lmenu_800D9A88
/* F7B5C 800D9A6C 24050800 */   addiu     $a1, $zero, 0x800
/* F7B60 800D9A70 0C038006 */  jal        func_menu_800E0018
/* F7B64 800D9A74 24060001 */   addiu     $a2, $zero, 0x1
/* F7B68 800D9A78 10400003 */  beqz       $v0, .Lmenu_800D9A88
/* F7B6C 800D9A7C AE0200E0 */   sw        $v0, 0xE0($s0)
/* F7B70 800D9A80 24020001 */  addiu      $v0, $zero, 0x1
/* F7B74 800D9A84 A20200D8 */  sb         $v0, 0xD8($s0)
.Lmenu_800D9A88:
/* F7B78 800D9A88 8FBF0014 */  lw         $ra, 0x14($sp)
/* F7B7C 800D9A8C 8FB00010 */  lw         $s0, 0x10($sp)
/* F7B80 800D9A90 03E00008 */  jr         $ra
/* F7B84 800D9A94 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800D9A98
/* F7B88 800D9A98 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* F7B8C 800D9A9C AFB20028 */  sw         $s2, 0x28($sp)
/* F7B90 800D9AA0 00A09021 */  addu       $s2, $a1, $zero
/* F7B94 800D9AA4 8FA5004C */  lw         $a1, 0x4C($sp)
/* F7B98 800D9AA8 8FA20048 */  lw         $v0, 0x48($sp)
/* F7B9C 800D9AAC AFB00020 */  sw         $s0, 0x20($sp)
/* F7BA0 800D9AB0 00808021 */  addu       $s0, $a0, $zero
/* F7BA4 800D9AB4 AFB3002C */  sw         $s3, 0x2C($sp)
/* F7BA8 800D9AB8 00C09821 */  addu       $s3, $a2, $zero
/* F7BAC 800D9ABC AFB10024 */  sw         $s1, 0x24($sp)
/* F7BB0 800D9AC0 00E08821 */  addu       $s1, $a3, $zero
/* F7BB4 800D9AC4 10A00004 */  beqz       $a1, .Lmenu_800D9AD8
/* F7BB8 800D9AC8 AFBF0030 */   sw        $ra, 0x30($sp)
/* F7BBC 800D9ACC 8E04009C */  lw         $a0, 0x9C($s0)
/* F7BC0 800D9AD0 0C03557C */  jal        func_menu_800D55F0
/* F7BC4 800D9AD4 00000000 */   nop
.Lmenu_800D9AD8:
/* F7BC8 800D9AD8 02002021 */  addu       $a0, $s0, $zero
/* F7BCC 800D9ADC 02403021 */  addu       $a2, $s2, $zero
/* F7BD0 800D9AE0 AFA00010 */  sw         $zero, 0x10($sp)
/* F7BD4 800D9AE4 AFB10014 */  sw         $s1, 0x14($sp)
/* F7BD8 800D9AE8 AFA20018 */  sw         $v0, 0x18($sp)
/* F7BDC 800D9AEC AFA0001C */  sw         $zero, 0x1C($sp)
/* F7BE0 800D9AF0 8C8500E0 */  lw         $a1, 0xE0($a0)
/* F7BE4 800D9AF4 0C0363F1 */  jal        func_menu_800D8FC4
/* F7BE8 800D9AF8 02603821 */   addu      $a3, $s3, $zero
/* F7BEC 800D9AFC 8FBF0030 */  lw         $ra, 0x30($sp)
/* F7BF0 800D9B00 8FB3002C */  lw         $s3, 0x2C($sp)
/* F7BF4 800D9B04 8FB20028 */  lw         $s2, 0x28($sp)
/* F7BF8 800D9B08 8FB10024 */  lw         $s1, 0x24($sp)
/* F7BFC 800D9B0C 8FB00020 */  lw         $s0, 0x20($sp)
/* F7C00 800D9B10 03E00008 */  jr         $ra
/* F7C04 800D9B14 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800D9B18
/* F7C08 800D9B18 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F7C0C 800D9B1C 00A01821 */  addu       $v1, $a1, $zero
/* F7C10 800D9B20 00C04021 */  addu       $t0, $a2, $zero
/* F7C14 800D9B24 00802821 */  addu       $a1, $a0, $zero
/* F7C18 800D9B28 8FA20030 */  lw         $v0, 0x30($sp)
/* F7C1C 800D9B2C 00603021 */  addu       $a2, $v1, $zero
/* F7C20 800D9B30 AFA70010 */  sw         $a3, 0x10($sp)
/* F7C24 800D9B34 AFA20014 */  sw         $v0, 0x14($sp)
/* F7C28 800D9B38 3C028013 */  lui        $v0, %hi(D_menu_8012A530)
/* F7C2C 800D9B3C 8C44A530 */  lw         $a0, %lo(D_menu_8012A530)($v0)
/* F7C30 800D9B40 AFBF0018 */  sw         $ra, 0x18($sp)
/* F7C34 800D9B44 0C0366A6 */  jal        func_menu_800D9A98
/* F7C38 800D9B48 01003821 */   addu      $a3, $t0, $zero
/* F7C3C 800D9B4C 8FBF0018 */  lw         $ra, 0x18($sp)
/* F7C40 800D9B50 03E00008 */  jr         $ra
/* F7C44 800D9B54 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800D9B58
/* F7C48 800D9B58 00851021 */  addu       $v0, $a0, $a1
/* F7C4C 800D9B5C 904600E4 */  lbu        $a2, 0xE4($v0)
/* F7C50 800D9B60 8C820E3C */  lw         $v0, 0xE3C($a0)
/* F7C54 800D9B64 00C2102A */  slt        $v0, $a2, $v0
/* F7C58 800D9B68 10400005 */  beqz       $v0, .Lmenu_800D9B80
/* F7C5C 800D9B6C 00061040 */   sll       $v0, $a2, 1
/* F7C60 800D9B70 00821021 */  addu       $v0, $a0, $v0
/* F7C64 800D9B74 94430DD4 */  lhu        $v1, 0xDD4($v0)
/* F7C68 800D9B78 10650002 */  beq        $v1, $a1, .Lmenu_800D9B84
/* F7C6C 800D9B7C 00C01021 */   addu      $v0, $a2, $zero
.Lmenu_800D9B80:
/* F7C70 800D9B80 2402FFFF */  addiu      $v0, $zero, -0x1
.Lmenu_800D9B84:
/* F7C74 800D9B84 03E00008 */  jr         $ra
/* F7C78 800D9B88 00000000 */   nop

glabel func_menu_800D9B8C
/* F7C7C 800D9B8C 27BDFF80 */  addiu      $sp, $sp, -0x80
/* F7C80 800D9B90 AFB30054 */  sw         $s3, 0x54($sp)
/* F7C84 800D9B94 00809821 */  addu       $s3, $a0, $zero
/* F7C88 800D9B98 3C02800D */  lui        $v0, %hi(D_menu_800CAA30)
/* F7C8C 800D9B9C AFB70064 */  sw         $s7, 0x64($sp)
/* F7C90 800D9BA0 00C0B821 */  addu       $s7, $a2, $zero
/* F7C94 800D9BA4 AFBF0068 */  sw         $ra, 0x68($sp)
/* F7C98 800D9BA8 AFB60060 */  sw         $s6, 0x60($sp)
/* F7C9C 800D9BAC AFB5005C */  sw         $s5, 0x5C($sp)
/* F7CA0 800D9BB0 AFB40058 */  sw         $s4, 0x58($sp)
/* F7CA4 800D9BB4 AFB20050 */  sw         $s2, 0x50($sp)
/* F7CA8 800D9BB8 AFB1004C */  sw         $s1, 0x4C($sp)
/* F7CAC 800D9BBC AFB00048 */  sw         $s0, 0x48($sp)
/* F7CB0 800D9BC0 F7B60078 */  sdc1       $f22, 0x78($sp)
/* F7CB4 800D9BC4 F7B40070 */  sdc1       $f20, 0x70($sp)
/* F7CB8 800D9BC8 244AAA30 */  addiu      $t2, $v0, %lo(D_menu_800CAA30)
/* F7CBC 800D9BCC 89470000 */  lwl        $a3, 0x0($t2)
/* F7CC0 800D9BD0 99470003 */  lwr        $a3, 0x3($t2)
/* F7CC4 800D9BD4 ABA70020 */  swl        $a3, 0x20($sp)
/* F7CC8 800D9BD8 BBA70023 */  swr        $a3, 0x23($sp)
/* F7CCC 800D9BDC 92E30000 */  lbu        $v1, 0x0($s7)
/* F7CD0 800D9BE0 8E620E30 */  lw         $v0, 0xE30($s3)
/* F7CD4 800D9BE4 8CB50078 */  lw         $s5, 0x78($a1)
/* F7CD8 800D9BE8 00431021 */  addu       $v0, $v0, $v1
/* F7CDC 800D9BEC 2C420675 */  sltiu      $v0, $v0, 0x675
/* F7CE0 800D9BF0 10400017 */  beqz       $v0, .Lmenu_800D9C50
/* F7CE4 800D9BF4 0000A021 */   addu      $s4, $zero, $zero
/* F7CE8 800D9BF8 10600010 */  beqz       $v1, .Lmenu_800D9C3C
/* F7CEC 800D9BFC 02808821 */   addu      $s1, $s4, $zero
/* F7CF0 800D9C00 2416FFFF */  addiu      $s6, $zero, -0x1
/* F7CF4 800D9C04 27B20010 */  addiu      $s2, $sp, 0x10
/* F7CF8 800D9C08 02E08021 */  addu       $s0, $s7, $zero
.Lmenu_800D9C0C:
/* F7CFC 800D9C0C 96050008 */  lhu        $a1, 0x8($s0)
/* F7D00 800D9C10 0C0366D6 */  jal        func_menu_800D9B58
/* F7D04 800D9C14 02602021 */   addu      $a0, $s3, $zero
/* F7D08 800D9C18 14560002 */  bne        $v0, $s6, .Lmenu_800D9C24
/* F7D0C 800D9C1C AE420000 */   sw        $v0, 0x0($s2)
/* F7D10 800D9C20 26940001 */  addiu      $s4, $s4, 0x1
.Lmenu_800D9C24:
/* F7D14 800D9C24 26520004 */  addiu      $s2, $s2, 0x4
/* F7D18 800D9C28 92E20000 */  lbu        $v0, 0x0($s7)
/* F7D1C 800D9C2C 26310001 */  addiu      $s1, $s1, 0x1
/* F7D20 800D9C30 0222102A */  slt        $v0, $s1, $v0
/* F7D24 800D9C34 1440FFF5 */  bnez       $v0, .Lmenu_800D9C0C
/* F7D28 800D9C38 26100002 */   addiu     $s0, $s0, 0x2
.Lmenu_800D9C3C:
/* F7D2C 800D9C3C 8E620E2C */  lw         $v0, 0xE2C($s3)
/* F7D30 800D9C40 00541021 */  addu       $v0, $v0, $s4
/* F7D34 800D9C44 2C420CE5 */  sltiu      $v0, $v0, 0xCE5
/* F7D38 800D9C48 14400005 */  bnez       $v0, .Lmenu_800D9C60
/* F7D3C 800D9C4C 00000000 */   nop
.Lmenu_800D9C50:
/* F7D40 800D9C50 926200DC */  lbu        $v0, 0xDC($s3)
/* F7D44 800D9C54 34420001 */  ori        $v0, $v0, 0x1
/* F7D48 800D9C58 080367C5 */  j          .Lmenu_800D9F14
/* F7D4C 800D9C5C A26200DC */   sb        $v0, 0xDC($s3)
.Lmenu_800D9C60:
/* F7D50 800D9C60 8E620E3C */  lw         $v0, 0xE3C($s3)
/* F7D54 800D9C64 00541021 */  addu       $v0, $v0, $s4
/* F7D58 800D9C68 2C420021 */  sltiu      $v0, $v0, 0x21
/* F7D5C 800D9C6C 1440000A */  bnez       $v0, .Lmenu_800D9C98
/* F7D60 800D9C70 02602021 */   addu      $a0, $s3, $zero
/* F7D64 800D9C74 0C03638A */  jal        func_menu_800D8E28
/* F7D68 800D9C78 02A02821 */   addu      $a1, $s5, $zero
/* F7D6C 800D9C7C 2403FFFF */  addiu      $v1, $zero, -0x1
/* F7D70 800D9C80 24110003 */  addiu      $s1, $zero, 0x3
/* F7D74 800D9C84 27A2001C */  addiu      $v0, $sp, 0x1C
.Lmenu_800D9C88:
/* F7D78 800D9C88 AC430000 */  sw         $v1, 0x0($v0)
/* F7D7C 800D9C8C 2631FFFF */  addiu      $s1, $s1, -0x1
/* F7D80 800D9C90 0621FFFD */  bgez       $s1, .Lmenu_800D9C88
/* F7D84 800D9C94 2442FFFC */   addiu     $v0, $v0, -0x4
.Lmenu_800D9C98:
/* F7D88 800D9C98 96F00002 */  lhu        $s0, 0x2($s7)
/* F7D8C 800D9C9C 8E620E24 */  lw         $v0, 0xE24($s3)
/* F7D90 800D9CA0 1050001F */  beq        $v0, $s0, .Lmenu_800D9D20
/* F7D94 800D9CA4 00008821 */   addu      $s1, $zero, $zero
/* F7D98 800D9CA8 8E620E40 */  lw         $v0, 0xE40($s3)
/* F7D9C 800D9CAC 10400003 */  beqz       $v0, .Lmenu_800D9CBC
/* F7DA0 800D9CB0 02602021 */   addu      $a0, $s3, $zero
/* F7DA4 800D9CB4 0C03638A */  jal        func_menu_800D8E28
/* F7DA8 800D9CB8 02A02821 */   addu      $a1, $s5, $zero
.Lmenu_800D9CBC:
/* F7DAC 800D9CBC 2405FFFF */  addiu      $a1, $zero, -0x1
/* F7DB0 800D9CC0 8E620E28 */  lw         $v0, 0xE28($s3)
/* F7DB4 800D9CC4 3C034000 */  lui        $v1, (0x40000000 >> 16)
/* F7DB8 800D9CC8 AE700E24 */  sw         $s0, 0xE24($s3)
/* F7DBC 800D9CCC 00402021 */  addu       $a0, $v0, $zero
/* F7DC0 800D9CD0 24420001 */  addiu      $v0, $v0, 0x1
/* F7DC4 800D9CD4 AE620E28 */  sw         $v0, 0xE28($s3)
/* F7DC8 800D9CD8 8EA20020 */  lw         $v0, 0x20($s5)
/* F7DCC 800D9CDC 00042080 */  sll        $a0, $a0, 2
/* F7DD0 800D9CE0 00821021 */  addu       $v0, $a0, $v0
/* F7DD4 800D9CE4 AC430000 */  sw         $v1, 0x0($v0)
/* F7DD8 800D9CE8 8EA20020 */  lw         $v0, 0x20($s5)
/* F7DDC 800D9CEC 24110003 */  addiu      $s1, $zero, 0x3
/* F7DE0 800D9CF0 00822021 */  addu       $a0, $a0, $v0
/* F7DE4 800D9CF4 8C820000 */  lw         $v0, 0x0($a0)
/* F7DE8 800D9CF8 27A3001C */  addiu      $v1, $sp, 0x1C
/* F7DEC 800D9CFC 00501025 */  or         $v0, $v0, $s0
/* F7DF0 800D9D00 AC820000 */  sw         $v0, 0x0($a0)
/* F7DF4 800D9D04 24020001 */  addiu      $v0, $zero, 0x1
/* F7DF8 800D9D08 AEA20038 */  sw         $v0, 0x38($s5)
.Lmenu_800D9D0C:
/* F7DFC 800D9D0C AC650000 */  sw         $a1, 0x0($v1)
/* F7E00 800D9D10 2631FFFF */  addiu      $s1, $s1, -0x1
/* F7E04 800D9D14 0621FFFD */  bgez       $s1, .Lmenu_800D9D0C
/* F7E08 800D9D18 2463FFFC */   addiu     $v1, $v1, -0x4
/* F7E0C 800D9D1C 00008821 */  addu       $s1, $zero, $zero
.Lmenu_800D9D20:
/* F7E10 800D9D20 02E09021 */  addu       $s2, $s7, $zero
/* F7E14 800D9D24 3C01800D */  lui        $at, %hi(D_menu_800CAA34)
/* F7E18 800D9D28 C436AA34 */  lwc1       $f22, %lo(D_menu_800CAA34)($at)
/* F7E1C 800D9D2C 3C01800D */  lui        $at, %hi(D_menu_800CAA38)
/* F7E20 800D9D30 C434AA38 */  lwc1       $f20, %lo(D_menu_800CAA38)($at)
.Lmenu_800D9D34:
/* F7E24 800D9D34 92E20000 */  lbu        $v0, 0x0($s7)
/* F7E28 800D9D38 0222102A */  slt        $v0, $s1, $v0
/* F7E2C 800D9D3C 10400055 */  beqz       $v0, .Lmenu_800D9E94
/* F7E30 800D9D40 00111880 */   sll       $v1, $s1, 2
/* F7E34 800D9D44 27A20010 */  addiu      $v0, $sp, 0x10
/* F7E38 800D9D48 00432821 */  addu       $a1, $v0, $v1
/* F7E3C 800D9D4C 8CA30000 */  lw         $v1, 0x0($a1)
/* F7E40 800D9D50 2402FFFF */  addiu      $v0, $zero, -0x1
/* F7E44 800D9D54 5462004D */  bnel       $v1, $v0, .Lmenu_800D9E8C
/* F7E48 800D9D58 26520002 */   addiu     $s2, $s2, 0x2
/* F7E4C 800D9D5C 8E620E3C */  lw         $v0, 0xE3C($s3)
/* F7E50 800D9D60 96440008 */  lhu        $a0, 0x8($s2)
/* F7E54 800D9D64 00021040 */  sll        $v0, $v0, 1
/* F7E58 800D9D68 02621021 */  addu       $v0, $s3, $v0
/* F7E5C 800D9D6C A4440DD4 */  sh         $a0, 0xDD4($v0)
/* F7E60 800D9D70 92630E3F */  lbu        $v1, 0xE3F($s3)
/* F7E64 800D9D74 02641021 */  addu       $v0, $s3, $a0
/* F7E68 800D9D78 A04300E4 */  sb         $v1, 0xE4($v0)
/* F7E6C 800D9D7C 8E620E3C */  lw         $v0, 0xE3C($s3)
/* F7E70 800D9D80 00042140 */  sll        $a0, $a0, 5
/* F7E74 800D9D84 ACA20000 */  sw         $v0, 0x0($a1)
/* F7E78 800D9D88 8E620E3C */  lw         $v0, 0xE3C($s3)
/* F7E7C 800D9D8C 8E700DC8 */  lw         $s0, 0xDC8($s3)
/* F7E80 800D9D90 24420001 */  addiu      $v0, $v0, 0x1
/* F7E84 800D9D94 02048021 */  addu       $s0, $s0, $a0
/* F7E88 800D9D98 AE620E3C */  sw         $v0, 0xE3C($s3)
/* F7E8C 800D9D9C C600000C */  lwc1       $f0, 0xC($s0)
/* F7E90 800D9DA0 46160002 */  mul.s      $f0, $f0, $f22
/* F7E94 800D9DA4 E7A00028 */  swc1       $f0, 0x28($sp)
/* F7E98 800D9DA8 C6000010 */  lwc1       $f0, 0x10($s0)
/* F7E9C 800D9DAC 46160002 */  mul.s      $f0, $f0, $f22
/* F7EA0 800D9DB0 E7A0002C */  swc1       $f0, 0x2C($sp)
/* F7EA4 800D9DB4 C6000014 */  lwc1       $f0, 0x14($s0)
/* F7EA8 800D9DB8 46160002 */  mul.s      $f0, $f0, $f22
/* F7EAC 800D9DBC E7A00030 */  swc1       $f0, 0x30($sp)
/* F7EB0 800D9DC0 8E630E58 */  lw         $v1, 0xE58($s3)
/* F7EB4 800D9DC4 27A60028 */  addiu      $a2, $sp, 0x28
/* F7EB8 800D9DC8 8C620008 */  lw         $v0, 0x8($v1)
/* F7EBC 800D9DCC 8E650E2C */  lw         $a1, 0xE2C($s3)
/* F7EC0 800D9DD0 84440050 */  lh         $a0, 0x50($v0)
/* F7EC4 800D9DD4 8C420054 */  lw         $v0, 0x54($v0)
/* F7EC8 800D9DD8 0040F809 */  jalr       $v0
/* F7ECC 800D9DDC 00642021 */   addu      $a0, $v1, $a0
/* F7ED0 800D9DE0 82020009 */  lb         $v0, 0x9($s0)
/* F7ED4 800D9DE4 44820000 */  mtc1       $v0, $f0
/* F7ED8 800D9DE8 46800020 */  cvt.s.w    $f0, $f0
/* F7EDC 800D9DEC 46140002 */  mul.s      $f0, $f0, $f20
/* F7EE0 800D9DF0 E7A00038 */  swc1       $f0, 0x38($sp)
/* F7EE4 800D9DF4 8202000A */  lb         $v0, 0xA($s0)
/* F7EE8 800D9DF8 44820000 */  mtc1       $v0, $f0
/* F7EEC 800D9DFC 46800020 */  cvt.s.w    $f0, $f0
/* F7EF0 800D9E00 46140002 */  mul.s      $f0, $f0, $f20
/* F7EF4 800D9E04 E7A0003C */  swc1       $f0, 0x3C($sp)
/* F7EF8 800D9E08 8202000B */  lb         $v0, 0xB($s0)
/* F7EFC 800D9E0C 44820000 */  mtc1       $v0, $f0
/* F7F00 800D9E10 46800020 */  cvt.s.w    $f0, $f0
/* F7F04 800D9E14 46140002 */  mul.s      $f0, $f0, $f20
/* F7F08 800D9E18 E7A00040 */  swc1       $f0, 0x40($sp)
/* F7F0C 800D9E1C 8E630E58 */  lw         $v1, 0xE58($s3)
/* F7F10 800D9E20 27A60038 */  addiu      $a2, $sp, 0x38
/* F7F14 800D9E24 8C620008 */  lw         $v0, 0x8($v1)
/* F7F18 800D9E28 8E650E2C */  lw         $a1, 0xE2C($s3)
/* F7F1C 800D9E2C 84440060 */  lh         $a0, 0x60($v0)
/* F7F20 800D9E30 8C420064 */  lw         $v0, 0x64($v0)
/* F7F24 800D9E34 0040F809 */  jalr       $v0
/* F7F28 800D9E38 00642021 */   addu      $a0, $v1, $a0
/* F7F2C 800D9E3C 8E630E58 */  lw         $v1, 0xE58($s3)
/* F7F30 800D9E40 26060018 */  addiu      $a2, $s0, 0x18
/* F7F34 800D9E44 8C620008 */  lw         $v0, 0x8($v1)
/* F7F38 800D9E48 8E650E2C */  lw         $a1, 0xE2C($s3)
/* F7F3C 800D9E4C 84440058 */  lh         $a0, 0x58($v0)
/* F7F40 800D9E50 8C42005C */  lw         $v0, 0x5C($v0)
/* F7F44 800D9E54 0040F809 */  jalr       $v0
/* F7F48 800D9E58 00642021 */   addu      $a0, $v1, $a0
/* F7F4C 800D9E5C 8E630E58 */  lw         $v1, 0xE58($s3)
/* F7F50 800D9E60 27A60020 */  addiu      $a2, $sp, 0x20
/* F7F54 800D9E64 8C620008 */  lw         $v0, 0x8($v1)
/* F7F58 800D9E68 8E650E2C */  lw         $a1, 0xE2C($s3)
/* F7F5C 800D9E6C 84440068 */  lh         $a0, 0x68($v0)
/* F7F60 800D9E70 8C42006C */  lw         $v0, 0x6C($v0)
/* F7F64 800D9E74 0040F809 */  jalr       $v0
/* F7F68 800D9E78 00642021 */   addu      $a0, $v1, $a0
/* F7F6C 800D9E7C 8E620E2C */  lw         $v0, 0xE2C($s3)
/* F7F70 800D9E80 24420001 */  addiu      $v0, $v0, 0x1
/* F7F74 800D9E84 AE620E2C */  sw         $v0, 0xE2C($s3)
/* F7F78 800D9E88 26520002 */  addiu      $s2, $s2, 0x2
.Lmenu_800D9E8C:
/* F7F7C 800D9E8C 0803674D */  j          .Lmenu_800D9D34
/* F7F80 800D9E90 26310001 */   addiu     $s1, $s1, 0x1
.Lmenu_800D9E94:
/* F7F84 800D9E94 8E620E30 */  lw         $v0, 0xE30($s3)
/* F7F88 800D9E98 00022080 */  sll        $a0, $v0, 2
/* F7F8C 800D9E9C 24420001 */  addiu      $v0, $v0, 0x1
/* F7F90 800D9EA0 AE620E30 */  sw         $v0, 0xE30($s3)
/* F7F94 800D9EA4 8E620E5C */  lw         $v0, 0xE5C($s3)
/* F7F98 800D9EA8 93A30013 */  lbu        $v1, 0x13($sp)
/* F7F9C 800D9EAC 00442021 */  addu       $a0, $v0, $a0
/* F7FA0 800D9EB0 A0830001 */  sb         $v1, 0x1($a0)
/* F7FA4 800D9EB4 93A20017 */  lbu        $v0, 0x17($sp)
/* F7FA8 800D9EB8 A0820002 */  sb         $v0, 0x2($a0)
/* F7FAC 800D9EBC 93A2001B */  lbu        $v0, 0x1B($sp)
/* F7FB0 800D9EC0 A0820003 */  sb         $v0, 0x3($a0)
/* F7FB4 800D9EC4 92E30000 */  lbu        $v1, 0x0($s7)
/* F7FB8 800D9EC8 24020004 */  addiu      $v0, $zero, 0x4
/* F7FBC 800D9ECC 1462000E */  bne        $v1, $v0, .Lmenu_800D9F08
/* F7FC0 800D9ED0 24840004 */   addiu     $a0, $a0, 0x4
/* F7FC4 800D9ED4 8E620E30 */  lw         $v0, 0xE30($s3)
/* F7FC8 800D9ED8 8E630E40 */  lw         $v1, 0xE40($s3)
/* F7FCC 800D9EDC 24420001 */  addiu      $v0, $v0, 0x1
/* F7FD0 800D9EE0 24630002 */  addiu      $v1, $v1, 0x2
/* F7FD4 800D9EE4 AE620E30 */  sw         $v0, 0xE30($s3)
/* F7FD8 800D9EE8 AE630E40 */  sw         $v1, 0xE40($s3)
/* F7FDC 800D9EEC 93A2001B */  lbu        $v0, 0x1B($sp)
/* F7FE0 800D9EF0 A0820001 */  sb         $v0, 0x1($a0)
/* F7FE4 800D9EF4 93A20017 */  lbu        $v0, 0x17($sp)
/* F7FE8 800D9EF8 A0820002 */  sb         $v0, 0x2($a0)
/* F7FEC 800D9EFC 93A2001F */  lbu        $v0, 0x1F($sp)
/* F7FF0 800D9F00 080367C5 */  j          .Lmenu_800D9F14
/* F7FF4 800D9F04 A0820003 */   sb        $v0, 0x3($a0)
.Lmenu_800D9F08:
/* F7FF8 800D9F08 8E620E40 */  lw         $v0, 0xE40($s3)
/* F7FFC 800D9F0C 24420001 */  addiu      $v0, $v0, 0x1
/* F8000 800D9F10 AE620E40 */  sw         $v0, 0xE40($s3)
.Lmenu_800D9F14:
/* F8004 800D9F14 8FBF0068 */  lw         $ra, 0x68($sp)
/* F8008 800D9F18 8FB70064 */  lw         $s7, 0x64($sp)
/* F800C 800D9F1C 8FB60060 */  lw         $s6, 0x60($sp)
/* F8010 800D9F20 8FB5005C */  lw         $s5, 0x5C($sp)
/* F8014 800D9F24 8FB40058 */  lw         $s4, 0x58($sp)
/* F8018 800D9F28 8FB30054 */  lw         $s3, 0x54($sp)
/* F801C 800D9F2C 8FB20050 */  lw         $s2, 0x50($sp)
/* F8020 800D9F30 8FB1004C */  lw         $s1, 0x4C($sp)
/* F8024 800D9F34 8FB00048 */  lw         $s0, 0x48($sp)
/* F8028 800D9F38 D7B60078 */  ldc1       $f22, 0x78($sp)
/* F802C 800D9F3C D7B40070 */  ldc1       $f20, 0x70($sp)
/* F8030 800D9F40 03E00008 */  jr         $ra
/* F8034 800D9F44 27BD0080 */   addiu     $sp, $sp, 0x80

glabel func_menu_800D9F48
/* F8038 800D9F48 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F803C 800D9F4C AFB10014 */  sw         $s1, 0x14($sp)
/* F8040 800D9F50 00808821 */  addu       $s1, $a0, $zero
/* F8044 800D9F54 AFB20018 */  sw         $s2, 0x18($sp)
/* F8048 800D9F58 00A09021 */  addu       $s2, $a1, $zero
/* F804C 800D9F5C AFBF001C */  sw         $ra, 0x1C($sp)
/* F8050 800D9F60 AFB00010 */  sw         $s0, 0x10($sp)
/* F8054 800D9F64 8E220E14 */  lw         $v0, 0xE14($s1)
/* F8058 800D9F68 18400010 */  blez       $v0, .Lmenu_800D9FAC
/* F805C 800D9F6C 00008021 */   addu      $s0, $zero, $zero
/* F8060 800D9F70 00101080 */  sll        $v0, $s0, 2
.Lmenu_800D9F74:
/* F8064 800D9F74 8E230DD0 */  lw         $v1, 0xDD0($s1)
/* F8068 800D9F78 02202021 */  addu       $a0, $s1, $zero
/* F806C 800D9F7C 00431021 */  addu       $v0, $v0, $v1
/* F8070 800D9F80 8C460000 */  lw         $a2, 0x0($v0)
/* F8074 800D9F84 0C0366E3 */  jal        func_menu_800D9B8C
/* F8078 800D9F88 02402821 */   addu      $a1, $s2, $zero
/* F807C 800D9F8C 922200DC */  lbu        $v0, 0xDC($s1)
/* F8080 800D9F90 30420001 */  andi       $v0, $v0, 0x1
/* F8084 800D9F94 14400005 */  bnez       $v0, .Lmenu_800D9FAC
/* F8088 800D9F98 26100001 */   addiu     $s0, $s0, 0x1
/* F808C 800D9F9C 8E220E14 */  lw         $v0, 0xE14($s1)
/* F8090 800D9FA0 0202102A */  slt        $v0, $s0, $v0
/* F8094 800D9FA4 1440FFF3 */  bnez       $v0, .Lmenu_800D9F74
/* F8098 800D9FA8 00101080 */   sll       $v0, $s0, 2
.Lmenu_800D9FAC:
/* F809C 800D9FAC 8FBF001C */  lw         $ra, 0x1C($sp)
/* F80A0 800D9FB0 8FB20018 */  lw         $s2, 0x18($sp)
/* F80A4 800D9FB4 8FB10014 */  lw         $s1, 0x14($sp)
/* F80A8 800D9FB8 8FB00010 */  lw         $s0, 0x10($sp)
/* F80AC 800D9FBC 03E00008 */  jr         $ra
/* F80B0 800D9FC0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800D9FC4
/* F80B4 800D9FC4 8C820000 */  lw         $v0, 0x0($a0)
/* F80B8 800D9FC8 8CA40000 */  lw         $a0, 0x0($a1)
/* F80BC 800D9FCC 94430002 */  lhu        $v1, 0x2($v0)
/* F80C0 800D9FD0 94820002 */  lhu        $v0, 0x2($a0)
/* F80C4 800D9FD4 00621823 */  subu       $v1, $v1, $v0
/* F80C8 800D9FD8 14600002 */  bnez       $v1, .Lmenu_800D9FE4
/* F80CC 800D9FDC 00601021 */   addu      $v0, $v1, $zero
/* F80D0 800D9FE0 00001021 */  addu       $v0, $zero, $zero
.Lmenu_800D9FE4:
/* F80D4 800D9FE4 03E00008 */  jr         $ra
/* F80D8 800D9FE8 00000000 */   nop

glabel func_menu_800D9FEC
/* F80DC 800D9FEC 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* F80E0 800D9FF0 AFB70044 */  sw         $s7, 0x44($sp)
/* F80E4 800D9FF4 8FB70060 */  lw         $s7, 0x60($sp)
/* F80E8 800D9FF8 AFB60040 */  sw         $s6, 0x40($sp)
/* F80EC 800D9FFC 8FB60064 */  lw         $s6, 0x64($sp)
/* F80F0 800DA000 AFB40038 */  sw         $s4, 0x38($sp)
/* F80F4 800DA004 8FB40068 */  lw         $s4, 0x68($sp)
/* F80F8 800DA008 AFB20030 */  sw         $s2, 0x30($sp)
/* F80FC 800DA00C 00809021 */  addu       $s2, $a0, $zero
/* F8100 800DA010 AFB5003C */  sw         $s5, 0x3C($sp)
/* F8104 800DA014 8FB5006C */  lw         $s5, 0x6C($sp)
/* F8108 800DA018 00C02021 */  addu       $a0, $a2, $zero
/* F810C 800DA01C AFA50054 */  sw         $a1, 0x54($sp)
/* F8110 800DA020 8FA80054 */  lw         $t0, 0x54($sp)
/* F8114 800DA024 AFBF004C */  sw         $ra, 0x4C($sp)
/* F8118 800DA028 AFBE0048 */  sw         $fp, 0x48($sp)
/* F811C 800DA02C AFB30034 */  sw         $s3, 0x34($sp)
/* F8120 800DA030 AFB1002C */  sw         $s1, 0x2C($sp)
/* F8124 800DA034 AFB00028 */  sw         $s0, 0x28($sp)
/* F8128 800DA038 AFA7005C */  sw         $a3, 0x5C($sp)
/* F812C 800DA03C 8D1E0078 */  lw         $fp, 0x78($t0)
/* F8130 800DA040 0C03805C */  jal        func_menu_800E0170
/* F8134 800DA044 24050001 */   addiu     $a1, $zero, 0x1
/* F8138 800DA048 924300D8 */  lbu        $v1, 0xD8($s2)
/* F813C 800DA04C 924400DA */  lbu        $a0, 0xDA($s2)
/* F8140 800DA050 240800EF */  addiu      $t0, $zero, 0xEF
/* F8144 800DA054 A24400DB */  sb         $a0, 0xDB($s2)
/* F8148 800DA058 8E44009C */  lw         $a0, 0x9C($s2)
/* F814C 800DA05C 00409821 */  addu       $s3, $v0, $zero
/* F8150 800DA060 A64800DE */  sh         $t0, 0xDE($s2)
/* F8154 800DA064 A24000DC */  sb         $zero, 0xDC($s2)
/* F8158 800DA068 10800005 */  beqz       $a0, .Lmenu_800DA080
/* F815C 800DA06C A24300D9 */   sb        $v1, 0xD9($s2)
/* F8160 800DA070 0C035518 */  jal        func_menu_800D5460
/* F8164 800DA074 00000000 */   nop
/* F8168 800DA078 8FA80054 */  lw         $t0, 0x54($sp)
/* F816C 800DA07C AD02006C */  sw         $v0, 0x6C($t0)
.Lmenu_800DA080:
/* F8170 800DA080 0C035188 */  jal        func_menu_800D4620
/* F8174 800DA084 02402021 */   addu      $a0, $s2, $zero
/* F8178 800DA088 02402021 */  addu       $a0, $s2, $zero
/* F817C 800DA08C 02602821 */  addu       $a1, $s3, $zero
/* F8180 800DA090 8FA6005C */  lw         $a2, 0x5C($sp)
/* F8184 800DA094 02E03821 */  addu       $a3, $s7, $zero
/* F8188 800DA098 AE400E14 */  sw         $zero, 0xE14($s2)
/* F818C 800DA09C AFB40010 */  sw         $s4, 0x10($sp)
/* F8190 800DA0A0 AFB60014 */  sw         $s6, 0x14($sp)
/* F8194 800DA0A4 AFB50018 */  sw         $s5, 0x18($sp)
/* F8198 800DA0A8 0C0363F1 */  jal        func_menu_800D8FC4
/* F819C 800DA0AC AFA0001C */   sw        $zero, 0x1C($sp)
/* F81A0 800DA0B0 924200D9 */  lbu        $v0, 0xD9($s2)
/* F81A4 800DA0B4 1040002D */  beqz       $v0, .Lmenu_800DA16C
/* F81A8 800DA0B8 32820001 */   andi      $v0, $s4, 0x1
/* F81AC 800DA0BC 10400008 */  beqz       $v0, .Lmenu_800DA0E0
/* F81B0 800DA0C0 00000000 */   nop
/* F81B4 800DA0C4 0C037D2B */  jal        func_menu_800DF4AC
/* F81B8 800DA0C8 02602021 */   addu      $a0, $s3, $zero
/* F81BC 800DA0CC 02602021 */  addu       $a0, $s3, $zero
/* F81C0 800DA0D0 0C037D27 */  jal        func_menu_800DF49C
/* F81C4 800DA0D4 AFA20020 */   sw        $v0, 0x20($sp)
/* F81C8 800DA0D8 0803683E */  j          .Lmenu_800DA0F8
/* F81CC 800DA0DC AFA20024 */   sw        $v0, 0x24($sp)
.Lmenu_800DA0E0:
/* F81D0 800DA0E0 0C037D27 */  jal        func_menu_800DF49C
/* F81D4 800DA0E4 02602021 */   addu      $a0, $s3, $zero
/* F81D8 800DA0E8 02602021 */  addu       $a0, $s3, $zero
/* F81DC 800DA0EC 0C037D2B */  jal        func_menu_800DF4AC
/* F81E0 800DA0F0 AFA20020 */   sw        $v0, 0x20($sp)
/* F81E4 800DA0F4 AFA20024 */  sw         $v0, 0x24($sp)
.Lmenu_800DA0F8:
/* F81E8 800DA0F8 00008821 */  addu       $s1, $zero, $zero
.Lmenu_800DA0FC:
/* F81EC 800DA0FC 8FA20020 */  lw         $v0, 0x20($sp)
/* F81F0 800DA100 0222102A */  slt        $v0, $s1, $v0
/* F81F4 800DA104 10400019 */  beqz       $v0, .Lmenu_800DA16C
/* F81F8 800DA108 00008021 */   addu      $s0, $zero, $zero
.Lmenu_800DA10C:
/* F81FC 800DA10C 8FA20024 */  lw         $v0, 0x24($sp)
/* F8200 800DA110 0202102A */  slt        $v0, $s0, $v0
/* F8204 800DA114 10400013 */  beqz       $v0, .Lmenu_800DA164
/* F8208 800DA118 02202821 */   addu      $a1, $s1, $zero
/* F820C 800DA11C 02003021 */  addu       $a2, $s0, $zero
/* F8210 800DA120 8E64000C */  lw         $a0, 0xC($s3)
/* F8214 800DA124 0C037CEB */  jal        func_menu_800DF3AC
/* F8218 800DA128 02803821 */   addu      $a3, $s4, $zero
/* F821C 800DA12C 90470000 */  lbu        $a3, 0x0($v0)
/* F8220 800DA130 30E20080 */  andi       $v0, $a3, 0x80
/* F8224 800DA134 10400009 */  beqz       $v0, .Lmenu_800DA15C
/* F8228 800DA138 02402021 */   addu      $a0, $s2, $zero
/* F822C 800DA13C 02F03021 */  addu       $a2, $s7, $s0
/* F8230 800DA140 30E7003F */  andi       $a3, $a3, 0x3F
/* F8234 800DA144 8FA8005C */  lw         $t0, 0x5C($sp)
/* F8238 800DA148 02C73821 */  addu       $a3, $s6, $a3
/* F823C 800DA14C AFB50010 */  sw         $s5, 0x10($sp)
/* F8240 800DA150 AFA00014 */  sw         $zero, 0x14($sp)
/* F8244 800DA154 0C0366A6 */  jal        func_menu_800D9A98
/* F8248 800DA158 01112821 */   addu      $a1, $t0, $s1
.Lmenu_800DA15C:
/* F824C 800DA15C 08036843 */  j          .Lmenu_800DA10C
/* F8250 800DA160 26100001 */   addiu     $s0, $s0, 0x1
.Lmenu_800DA164:
/* F8254 800DA164 0803683F */  j          .Lmenu_800DA0FC
/* F8258 800DA168 26310001 */   addiu     $s1, $s1, 0x1
.Lmenu_800DA16C:
/* F825C 800DA16C 240800EF */  addiu      $t0, $zero, 0xEF
/* F8260 800DA170 11000005 */  beqz       $t0, .Lmenu_800DA188
/* F8264 800DA174 02402021 */   addu      $a0, $s2, $zero
/* F8268 800DA178 0C0350F3 */  jal        func_menu_800D43CC
/* F826C 800DA17C 01002821 */   addu      $a1, $t0, $zero
/* F8270 800DA180 08036868 */  j          .Lmenu_800DA1A0
/* F8274 800DA184 00000000 */   nop
.Lmenu_800DA188:
/* F8278 800DA188 24060004 */  addiu      $a2, $zero, 0x4
/* F827C 800DA18C 3C07800E */  lui        $a3, %hi(func_menu_800D9FC4)
/* F8280 800DA190 8E440DD0 */  lw         $a0, 0xDD0($s2)
/* F8284 800DA194 8E450E14 */  lw         $a1, 0xE14($s2)
/* F8288 800DA198 0C0007B1 */  jal        func_80001EC4
/* F828C 800DA19C 24E79FC4 */   addiu     $a3, $a3, %lo(func_menu_800D9FC4)
.Lmenu_800DA1A0:
/* F8290 800DA1A0 8E420E18 */  lw         $v0, 0xE18($s2)
/* F8294 800DA1A4 1840001C */  blez       $v0, .Lmenu_800DA218
/* F8298 800DA1A8 00008821 */   addu      $s1, $zero, $zero
/* F829C 800DA1AC 3C01800D */  lui        $at, %hi(D_menu_800CAA3C)
/* F82A0 800DA1B0 C424AA3C */  lwc1       $f4, %lo(D_menu_800CAA3C)($at)
/* F82A4 800DA1B4 00111940 */  sll        $v1, $s1, 5
.Lmenu_800DA1B8:
/* F82A8 800DA1B8 8E420DC8 */  lw         $v0, 0xDC8($s2)
/* F82AC 800DA1BC C6420E60 */  lwc1       $f2, 0xE60($s2)
/* F82B0 800DA1C0 00621021 */  addu       $v0, $v1, $v0
/* F82B4 800DA1C4 C440000C */  lwc1       $f0, 0xC($v0)
/* F82B8 800DA1C8 46020000 */  add.s      $f0, $f0, $f2
/* F82BC 800DA1CC E440000C */  swc1       $f0, 0xC($v0)
/* F82C0 800DA1D0 8E420DC8 */  lw         $v0, 0xDC8($s2)
/* F82C4 800DA1D4 C6420E64 */  lwc1       $f2, 0xE64($s2)
/* F82C8 800DA1D8 00621021 */  addu       $v0, $v1, $v0
/* F82CC 800DA1DC C4400010 */  lwc1       $f0, 0x10($v0)
/* F82D0 800DA1E0 46020000 */  add.s      $f0, $f0, $f2
/* F82D4 800DA1E4 E4400010 */  swc1       $f0, 0x10($v0)
/* F82D8 800DA1E8 8E420DC8 */  lw         $v0, 0xDC8($s2)
/* F82DC 800DA1EC 00621821 */  addu       $v1, $v1, $v0
/* F82E0 800DA1F0 C4620014 */  lwc1       $f2, 0x14($v1)
/* F82E4 800DA1F4 46041082 */  mul.s      $f2, $f2, $f4
/* F82E8 800DA1F8 C6400E68 */  lwc1       $f0, 0xE68($s2)
/* F82EC 800DA1FC 46020000 */  add.s      $f0, $f0, $f2
/* F82F0 800DA200 E4600014 */  swc1       $f0, 0x14($v1)
/* F82F4 800DA204 8E420E18 */  lw         $v0, 0xE18($s2)
/* F82F8 800DA208 26310001 */  addiu      $s1, $s1, 0x1
/* F82FC 800DA20C 0222102A */  slt        $v0, $s1, $v0
/* F8300 800DA210 1440FFE9 */  bnez       $v0, .Lmenu_800DA1B8
/* F8304 800DA214 00111940 */   sll       $v1, $s1, 5
.Lmenu_800DA218:
/* F8308 800DA218 02402021 */  addu       $a0, $s2, $zero
/* F830C 800DA21C 3C01800D */  lui        $at, %hi(D_menu_800CAA40)
/* F8310 800DA220 C420AA40 */  lwc1       $f0, %lo(D_menu_800CAA40)($at)
/* F8314 800DA224 03C02821 */  addu       $a1, $fp, $zero
/* F8318 800DA228 0C036366 */  jal        func_menu_800D8D98
/* F831C 800DA22C E7C00034 */   swc1      $f0, 0x34($fp)
/* F8320 800DA230 8FA50054 */  lw         $a1, 0x54($sp)
/* F8324 800DA234 0C0367D2 */  jal        func_menu_800D9F48
/* F8328 800DA238 02402021 */   addu      $a0, $s2, $zero
/* F832C 800DA23C 02402021 */  addu       $a0, $s2, $zero
/* F8330 800DA240 0C0363C7 */  jal        func_menu_800D8F1C
/* F8334 800DA244 03C02821 */   addu      $a1, $fp, $zero
/* F8338 800DA248 8FBF004C */  lw         $ra, 0x4C($sp)
/* F833C 800DA24C 8FBE0048 */  lw         $fp, 0x48($sp)
/* F8340 800DA250 8FB70044 */  lw         $s7, 0x44($sp)
/* F8344 800DA254 8FB60040 */  lw         $s6, 0x40($sp)
/* F8348 800DA258 8FB5003C */  lw         $s5, 0x3C($sp)
/* F834C 800DA25C 8FB40038 */  lw         $s4, 0x38($sp)
/* F8350 800DA260 8FB30034 */  lw         $s3, 0x34($sp)
/* F8354 800DA264 8FB20030 */  lw         $s2, 0x30($sp)
/* F8358 800DA268 8FB1002C */  lw         $s1, 0x2C($sp)
/* F835C 800DA26C 8FB00028 */  lw         $s0, 0x28($sp)
/* F8360 800DA270 24020001 */  addiu      $v0, $zero, 0x1
/* F8364 800DA274 03E00008 */  jr         $ra
/* F8368 800DA278 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_menu_800DA27C
/* F836C 800DA27C 27BDFF80 */  addiu      $sp, $sp, -0x80
/* F8370 800DA280 AFB20040 */  sw         $s2, 0x40($sp)
/* F8374 800DA284 00809021 */  addu       $s2, $a0, $zero
/* F8378 800DA288 AFBE0058 */  sw         $fp, 0x58($sp)
/* F837C 800DA28C 00C0F021 */  addu       $fp, $a2, $zero
/* F8380 800DA290 AFB70054 */  sw         $s7, 0x54($sp)
/* F8384 800DA294 0000B821 */  addu       $s7, $zero, $zero
/* F8388 800DA298 AFB5004C */  sw         $s5, 0x4C($sp)
/* F838C 800DA29C 02E0A821 */  addu       $s5, $s7, $zero
/* F8390 800DA2A0 3C028012 */  lui        $v0, %hi(D_menu_801269D4)
/* F8394 800DA2A4 AFBF005C */  sw         $ra, 0x5C($sp)
/* F8398 800DA2A8 AFB60050 */  sw         $s6, 0x50($sp)
/* F839C 800DA2AC AFB40048 */  sw         $s4, 0x48($sp)
/* F83A0 800DA2B0 AFB30044 */  sw         $s3, 0x44($sp)
/* F83A4 800DA2B4 AFB1003C */  sw         $s1, 0x3C($sp)
/* F83A8 800DA2B8 AFB00038 */  sw         $s0, 0x38($sp)
/* F83AC 800DA2BC F7BA0078 */  sdc1       $f26, 0x78($sp)
/* F83B0 800DA2C0 F7B80070 */  sdc1       $f24, 0x70($sp)
/* F83B4 800DA2C4 F7B60068 */  sdc1       $f22, 0x68($sp)
/* F83B8 800DA2C8 F7B40060 */  sdc1       $f20, 0x60($sp)
/* F83BC 800DA2CC AFA50084 */  sw         $a1, 0x84($sp)
/* F83C0 800DA2D0 94B60012 */  lhu        $s6, 0x12($a1)
/* F83C4 800DA2D4 8C5469D4 */  lw         $s4, %lo(D_menu_801269D4)($v0)
/* F83C8 800DA2D8 8CA20014 */  lw         $v0, 0x14($a1)
/* F83CC 800DA2DC 8E830014 */  lw         $v1, 0x14($s4)
/* F83D0 800DA2E0 00021040 */  sll        $v0, $v0, 1
/* F83D4 800DA2E4 16C00009 */  bnez       $s6, .Lmenu_800DA30C
/* F83D8 800DA2E8 00628021 */   addu      $s0, $v1, $v0
/* F83DC 800DA2EC 44800000 */  mtc1       $zero, $f0
/* F83E0 800DA2F0 E6400E8C */  swc1       $f0, 0xE8C($s2)
/* F83E4 800DA2F4 E6400E88 */  swc1       $f0, 0xE88($s2)
/* F83E8 800DA2F8 E6400E84 */  swc1       $f0, 0xE84($s2)
/* F83EC 800DA2FC E6400E80 */  swc1       $f0, 0xE80($s2)
/* F83F0 800DA300 E6400E7C */  swc1       $f0, 0xE7C($s2)
/* F83F4 800DA304 08036980 */  j          .Lmenu_800DA600
/* F83F8 800DA308 E6400E78 */   swc1      $f0, 0xE78($s2)
.Lmenu_800DA30C:
/* F83FC 800DA30C 02802021 */  addu       $a0, $s4, $zero
/* F8400 800DA310 27A60018 */  addiu      $a2, $sp, 0x18
/* F8404 800DA314 27A7001C */  addiu      $a3, $sp, 0x1C
/* F8408 800DA318 27A8002C */  addiu      $t0, $sp, 0x2C
/* F840C 800DA31C AFA80030 */  sw         $t0, 0x30($sp)
/* F8410 800DA320 96050002 */  lhu        $a1, 0x2($s0)
/* F8414 800DA324 27A20020 */  addiu      $v0, $sp, 0x20
/* F8418 800DA328 0C037E03 */  jal        func_menu_800DF80C
/* F841C 800DA32C AFA20010 */   sw        $v0, 0x10($sp)
/* F8420 800DA330 C7B60018 */  lwc1       $f22, 0x18($sp)
/* F8424 800DA334 C7B8001C */  lwc1       $f24, 0x1C($sp)
/* F8428 800DA338 C7BA0020 */  lwc1       $f26, 0x20($sp)
.Lmenu_800DA33C:
/* F842C 800DA33C 96050000 */  lhu        $a1, 0x0($s0)
/* F8430 800DA340 24022000 */  addiu      $v0, $zero, 0x2000
/* F8434 800DA344 30A33000 */  andi       $v1, $a1, 0x3000
/* F8438 800DA348 1462002D */  bne        $v1, $v0, .Lmenu_800DA400
/* F843C 800DA34C 26100002 */   addiu     $s0, $s0, 0x2
/* F8440 800DA350 02802021 */  addu       $a0, $s4, $zero
/* F8444 800DA354 27A60024 */  addiu      $a2, $sp, 0x24
/* F8448 800DA358 96050000 */  lhu        $a1, 0x0($s0)
/* F844C 800DA35C 8FA80030 */  lw         $t0, 0x30($sp)
/* F8450 800DA360 27A70028 */  addiu      $a3, $sp, 0x28
/* F8454 800DA364 0C037E03 */  jal        func_menu_800DF80C
/* F8458 800DA368 AFA80010 */   sw        $t0, 0x10($sp)
/* F845C 800DA36C C7A00018 */  lwc1       $f0, 0x18($sp)
/* F8460 800DA370 C7A20024 */  lwc1       $f2, 0x24($sp)
/* F8464 800DA374 4600103C */  c.lt.s     $f2, $f0
/* F8468 800DA378 00000000 */  nop
/* F846C 800DA37C 45000002 */  bc1f       .Lmenu_800DA388
/* F8470 800DA380 26100002 */   addiu     $s0, $s0, 0x2
/* F8474 800DA384 E7A20018 */  swc1       $f2, 0x18($sp)
.Lmenu_800DA388:
/* F8478 800DA388 4602B03C */  c.lt.s     $f22, $f2
/* F847C 800DA38C 00000000 */  nop
/* F8480 800DA390 45030001 */  bc1tl      .Lmenu_800DA398
/* F8484 800DA394 46001586 */   mov.s     $f22, $f2
.Lmenu_800DA398:
/* F8488 800DA398 C7A0001C */  lwc1       $f0, 0x1C($sp)
/* F848C 800DA39C C7A20028 */  lwc1       $f2, 0x28($sp)
/* F8490 800DA3A0 4600103C */  c.lt.s     $f2, $f0
/* F8494 800DA3A4 00000000 */  nop
/* F8498 800DA3A8 45030001 */  bc1tl      .Lmenu_800DA3B0
/* F849C 800DA3AC E7A2001C */   swc1      $f2, 0x1C($sp)
.Lmenu_800DA3B0:
/* F84A0 800DA3B0 4602C03C */  c.lt.s     $f24, $f2
/* F84A4 800DA3B4 00000000 */  nop
/* F84A8 800DA3B8 45030001 */  bc1tl      .Lmenu_800DA3C0
/* F84AC 800DA3BC 46001606 */   mov.s     $f24, $f2
.Lmenu_800DA3C0:
/* F84B0 800DA3C0 C7A00020 */  lwc1       $f0, 0x20($sp)
/* F84B4 800DA3C4 C7A2002C */  lwc1       $f2, 0x2C($sp)
/* F84B8 800DA3C8 4600103C */  c.lt.s     $f2, $f0
/* F84BC 800DA3CC 00000000 */  nop
/* F84C0 800DA3D0 45030001 */  bc1tl      .Lmenu_800DA3D8
/* F84C4 800DA3D4 E7A20020 */   swc1      $f2, 0x20($sp)
.Lmenu_800DA3D8:
/* F84C8 800DA3D8 4602D03C */  c.lt.s     $f26, $f2
/* F84CC 800DA3DC 00000000 */  nop
/* F84D0 800DA3E0 45030001 */  bc1tl      .Lmenu_800DA3E8
/* F84D4 800DA3E4 46001686 */   mov.s     $f26, $f2
.Lmenu_800DA3E8:
/* F84D8 800DA3E8 56A00001 */  bnel       $s5, $zero, .Lmenu_800DA3F0
/* F84DC 800DA3EC 26100002 */   addiu     $s0, $s0, 0x2
.Lmenu_800DA3F0:
/* F84E0 800DA3F0 56E0003C */  bnel       $s7, $zero, .Lmenu_800DA4E4
/* F84E4 800DA3F4 26100002 */   addiu     $s0, $s0, 0x2
/* F84E8 800DA3F8 0803693A */  j          .Lmenu_800DA4E8
/* F84EC 800DA3FC 26D6FFFF */   addiu     $s6, $s6, -0x1
.Lmenu_800DA400:
/* F84F0 800DA400 38621000 */  xori       $v0, $v1, 0x1000
/* F84F4 800DA404 2C570001 */  sltiu      $s7, $v0, 0x1
/* F84F8 800DA408 30A24000 */  andi       $v0, $a1, 0x4000
/* F84FC 800DA40C 0002A82B */  sltu       $s5, $zero, $v0
/* F8500 800DA410 30A28000 */  andi       $v0, $a1, 0x8000
/* F8504 800DA414 0002982B */  sltu       $s3, $zero, $v0
/* F8508 800DA418 00008821 */  addu       $s1, $zero, $zero
/* F850C 800DA41C 02802021 */  addu       $a0, $s4, $zero
.Lmenu_800DA420:
/* F8510 800DA420 27A60024 */  addiu      $a2, $sp, 0x24
/* F8514 800DA424 96050000 */  lhu        $a1, 0x0($s0)
/* F8518 800DA428 8FA80030 */  lw         $t0, 0x30($sp)
/* F851C 800DA42C 27A70028 */  addiu      $a3, $sp, 0x28
/* F8520 800DA430 0C037E03 */  jal        func_menu_800DF80C
/* F8524 800DA434 AFA80010 */   sw        $t0, 0x10($sp)
/* F8528 800DA438 C7A00018 */  lwc1       $f0, 0x18($sp)
/* F852C 800DA43C C7A20024 */  lwc1       $f2, 0x24($sp)
/* F8530 800DA440 4600103C */  c.lt.s     $f2, $f0
/* F8534 800DA444 00000000 */  nop
/* F8538 800DA448 45000002 */  bc1f       .Lmenu_800DA454
/* F853C 800DA44C 26100002 */   addiu     $s0, $s0, 0x2
/* F8540 800DA450 E7A20018 */  swc1       $f2, 0x18($sp)
.Lmenu_800DA454:
/* F8544 800DA454 4602B03C */  c.lt.s     $f22, $f2
/* F8548 800DA458 00000000 */  nop
/* F854C 800DA45C 45030001 */  bc1tl      .Lmenu_800DA464
/* F8550 800DA460 46001586 */   mov.s     $f22, $f2
.Lmenu_800DA464:
/* F8554 800DA464 C7A0001C */  lwc1       $f0, 0x1C($sp)
/* F8558 800DA468 C7A20028 */  lwc1       $f2, 0x28($sp)
/* F855C 800DA46C 4600103C */  c.lt.s     $f2, $f0
/* F8560 800DA470 00000000 */  nop
/* F8564 800DA474 45030001 */  bc1tl      .Lmenu_800DA47C
/* F8568 800DA478 E7A2001C */   swc1      $f2, 0x1C($sp)
.Lmenu_800DA47C:
/* F856C 800DA47C 4602C03C */  c.lt.s     $f24, $f2
/* F8570 800DA480 00000000 */  nop
/* F8574 800DA484 45030001 */  bc1tl      .Lmenu_800DA48C
/* F8578 800DA488 46001606 */   mov.s     $f24, $f2
.Lmenu_800DA48C:
/* F857C 800DA48C C7A00020 */  lwc1       $f0, 0x20($sp)
/* F8580 800DA490 C7A2002C */  lwc1       $f2, 0x2C($sp)
/* F8584 800DA494 4600103C */  c.lt.s     $f2, $f0
/* F8588 800DA498 00000000 */  nop
/* F858C 800DA49C 45030001 */  bc1tl      .Lmenu_800DA4A4
/* F8590 800DA4A0 E7A20020 */   swc1      $f2, 0x20($sp)
.Lmenu_800DA4A4:
/* F8594 800DA4A4 4602D03C */  c.lt.s     $f26, $f2
/* F8598 800DA4A8 00000000 */  nop
/* F859C 800DA4AC 45030001 */  bc1tl      .Lmenu_800DA4B4
/* F85A0 800DA4B0 46001686 */   mov.s     $f26, $f2
.Lmenu_800DA4B4:
/* F85A4 800DA4B4 16600005 */  bnez       $s3, .Lmenu_800DA4CC
/* F85A8 800DA4B8 00000000 */   nop
/* F85AC 800DA4BC 56A00003 */  bnel       $s5, $zero, .Lmenu_800DA4CC
/* F85B0 800DA4C0 26100002 */   addiu     $s0, $s0, 0x2
/* F85B4 800DA4C4 52200001 */  beql       $s1, $zero, .Lmenu_800DA4CC
/* F85B8 800DA4C8 26100002 */   addiu     $s0, $s0, 0x2
.Lmenu_800DA4CC:
/* F85BC 800DA4CC 56E00001 */  bnel       $s7, $zero, .Lmenu_800DA4D4
/* F85C0 800DA4D0 26100002 */   addiu     $s0, $s0, 0x2
.Lmenu_800DA4D4:
/* F85C4 800DA4D4 26310001 */  addiu      $s1, $s1, 0x1
/* F85C8 800DA4D8 2A220003 */  slti       $v0, $s1, 0x3
/* F85CC 800DA4DC 1440FFD0 */  bnez       $v0, .Lmenu_800DA420
/* F85D0 800DA4E0 02802021 */   addu      $a0, $s4, $zero
.Lmenu_800DA4E4:
/* F85D4 800DA4E4 26D6FFFF */  addiu      $s6, $s6, -0x1
.Lmenu_800DA4E8:
/* F85D8 800DA4E8 16C0FF94 */  bnez       $s6, .Lmenu_800DA33C
/* F85DC 800DA4EC 00000000 */   nop
/* F85E0 800DA4F0 33DE0003 */  andi       $fp, $fp, 0x3
/* F85E4 800DA4F4 13C00034 */  beqz       $fp, .Lmenu_800DA5C8
/* F85E8 800DA4F8 00000000 */   nop
/* F85EC 800DA4FC 8FA40084 */  lw         $a0, 0x84($sp)
/* F85F0 800DA500 0C037D27 */  jal        func_menu_800DF49C
/* F85F4 800DA504 00000000 */   nop
/* F85F8 800DA508 8FA40084 */  lw         $a0, 0x84($sp)
/* F85FC 800DA50C 4482A000 */  mtc1       $v0, $f20
/* F8600 800DA510 4680A520 */  cvt.s.w    $f20, $f20
/* F8604 800DA514 0C037D2B */  jal        func_menu_800DF4AC
/* F8608 800DA518 00000000 */   nop
/* F860C 800DA51C 44824000 */  mtc1       $v0, $f8
/* F8610 800DA520 46804220 */  cvt.s.w    $f8, $f8
/* F8614 800DA524 24020002 */  addiu      $v0, $zero, 0x2
/* F8618 800DA528 13C20014 */  beq        $fp, $v0, .Lmenu_800DA57C
/* F861C 800DA52C 2BC20003 */   slti      $v0, $fp, 0x3
/* F8620 800DA530 10400005 */  beqz       $v0, .Lmenu_800DA548
/* F8624 800DA534 24020001 */   addiu     $v0, $zero, 0x1
/* F8628 800DA538 53C20008 */  beql       $fp, $v0, .Lmenu_800DA55C
/* F862C 800DA53C 4616A001 */   sub.s     $f0, $f20, $f22
/* F8630 800DA540 08036978 */  j          .Lmenu_800DA5E0
/* F8634 800DA544 00000000 */   nop
.Lmenu_800DA548:
/* F8638 800DA548 24020003 */  addiu      $v0, $zero, 0x3
/* F863C 800DA54C 53C20016 */  beql       $fp, $v0, .Lmenu_800DA5A8
/* F8640 800DA550 46184001 */   sub.s     $f0, $f8, $f24
/* F8644 800DA554 08036978 */  j          .Lmenu_800DA5E0
/* F8648 800DA558 00000000 */   nop
.Lmenu_800DA55C:
/* F864C 800DA55C E6580E7C */  swc1       $f24, 0xE7C($s2)
/* F8650 800DA560 C7A20018 */  lwc1       $f2, 0x18($sp)
/* F8654 800DA564 C7A4001C */  lwc1       $f4, 0x1C($sp)
/* F8658 800DA568 4602A081 */  sub.s      $f2, $f20, $f2
/* F865C 800DA56C E6440E78 */  swc1       $f4, 0xE78($s2)
/* F8660 800DA570 E6400E80 */  swc1       $f0, 0xE80($s2)
/* F8664 800DA574 08036978 */  j          .Lmenu_800DA5E0
/* F8668 800DA578 E6420E84 */   swc1      $f2, 0xE84($s2)
.Lmenu_800DA57C:
/* F866C 800DA57C 4616A181 */  sub.s      $f6, $f20, $f22
/* F8670 800DA580 46184101 */  sub.s      $f4, $f8, $f24
/* F8674 800DA584 C7A20018 */  lwc1       $f2, 0x18($sp)
/* F8678 800DA588 4602A081 */  sub.s      $f2, $f20, $f2
/* F867C 800DA58C C7A0001C */  lwc1       $f0, 0x1C($sp)
/* F8680 800DA590 46004001 */  sub.s      $f0, $f8, $f0
/* F8684 800DA594 E6460E78 */  swc1       $f6, 0xE78($s2)
/* F8688 800DA598 E6440E80 */  swc1       $f4, 0xE80($s2)
/* F868C 800DA59C E6420E7C */  swc1       $f2, 0xE7C($s2)
/* F8690 800DA5A0 08036978 */  j          .Lmenu_800DA5E0
/* F8694 800DA5A4 E6400E84 */   swc1      $f0, 0xE84($s2)
.Lmenu_800DA5A8:
/* F8698 800DA5A8 E6560E84 */  swc1       $f22, 0xE84($s2)
/* F869C 800DA5AC C7A2001C */  lwc1       $f2, 0x1C($sp)
/* F86A0 800DA5B0 C7A40018 */  lwc1       $f4, 0x18($sp)
/* F86A4 800DA5B4 46024081 */  sub.s      $f2, $f8, $f2
/* F86A8 800DA5B8 E6440E80 */  swc1       $f4, 0xE80($s2)
/* F86AC 800DA5BC E6400E78 */  swc1       $f0, 0xE78($s2)
/* F86B0 800DA5C0 08036978 */  j          .Lmenu_800DA5E0
/* F86B4 800DA5C4 E6420E7C */   swc1      $f2, 0xE7C($s2)
.Lmenu_800DA5C8:
/* F86B8 800DA5C8 C7A00018 */  lwc1       $f0, 0x18($sp)
/* F86BC 800DA5CC C7A2001C */  lwc1       $f2, 0x1C($sp)
/* F86C0 800DA5D0 E6560E7C */  swc1       $f22, 0xE7C($s2)
/* F86C4 800DA5D4 E6580E84 */  swc1       $f24, 0xE84($s2)
/* F86C8 800DA5D8 E6400E78 */  swc1       $f0, 0xE78($s2)
/* F86CC 800DA5DC E6420E80 */  swc1       $f2, 0xE80($s2)
.Lmenu_800DA5E0:
/* F86D0 800DA5E0 C7A20020 */  lwc1       $f2, 0x20($sp)
/* F86D4 800DA5E4 3C01800D */  lui        $at, %hi(D_menu_800CAA44)
/* F86D8 800DA5E8 C420AA44 */  lwc1       $f0, %lo(D_menu_800CAA44)($at)
/* F86DC 800DA5EC 46001082 */  mul.s      $f2, $f2, $f0
/* F86E0 800DA5F0 00000000 */  nop
/* F86E4 800DA5F4 4600D002 */  mul.s      $f0, $f26, $f0
/* F86E8 800DA5F8 E6420E88 */  swc1       $f2, 0xE88($s2)
/* F86EC 800DA5FC E6400E8C */  swc1       $f0, 0xE8C($s2)
.Lmenu_800DA600:
/* F86F0 800DA600 8FBF005C */  lw         $ra, 0x5C($sp)
/* F86F4 800DA604 8FBE0058 */  lw         $fp, 0x58($sp)
/* F86F8 800DA608 8FB70054 */  lw         $s7, 0x54($sp)
/* F86FC 800DA60C 8FB60050 */  lw         $s6, 0x50($sp)
/* F8700 800DA610 8FB5004C */  lw         $s5, 0x4C($sp)
/* F8704 800DA614 8FB40048 */  lw         $s4, 0x48($sp)
/* F8708 800DA618 8FB30044 */  lw         $s3, 0x44($sp)
/* F870C 800DA61C 8FB20040 */  lw         $s2, 0x40($sp)
/* F8710 800DA620 8FB1003C */  lw         $s1, 0x3C($sp)
/* F8714 800DA624 8FB00038 */  lw         $s0, 0x38($sp)
/* F8718 800DA628 D7BA0078 */  ldc1       $f26, 0x78($sp)
/* F871C 800DA62C D7B80070 */  ldc1       $f24, 0x70($sp)
/* F8720 800DA630 D7B60068 */  ldc1       $f22, 0x68($sp)
/* F8724 800DA634 D7B40060 */  ldc1       $f20, 0x60($sp)
/* F8728 800DA638 03E00008 */  jr         $ra
/* F872C 800DA63C 27BD0080 */   addiu     $sp, $sp, 0x80

glabel func_menu_800DA640
/* F8730 800DA640 AC850E60 */  sw         $a1, 0xE60($a0)
/* F8734 800DA644 AC860E64 */  sw         $a2, 0xE64($a0)
/* F8738 800DA648 03E00008 */  jr         $ra
/* F873C 800DA64C AC870E68 */   sw        $a3, 0xE68($a0)

glabel func_menu_800DA650
/* F8740 800DA650 3C01800D */  lui        $at, %hi(D_menu_800CAA48)
/* F8744 800DA654 C420AA48 */  lwc1       $f0, %lo(D_menu_800CAA48)($at)
/* F8748 800DA658 3C01800D */  lui        $at, %hi(D_menu_800CAA4C)
/* F874C 800DA65C C422AA4C */  lwc1       $f2, %lo(D_menu_800CAA4C)($at)
/* F8750 800DA660 AC800E68 */  sw         $zero, 0xE68($a0)
/* F8754 800DA664 E4800E60 */  swc1       $f0, 0xE60($a0)
/* F8758 800DA668 03E00008 */  jr         $ra
/* F875C 800DA66C E4820E64 */   swc1      $f2, 0xE64($a0)

glabel func_menu_800DA670
/* F8760 800DA670 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* F8764 800DA674 AFB00048 */  sw         $s0, 0x48($sp)
/* F8768 800DA678 00808021 */  addu       $s0, $a0, $zero
/* F876C 800DA67C AFBF0050 */  sw         $ra, 0x50($sp)
/* F8770 800DA680 10A00008 */  beqz       $a1, .Lmenu_800DA6A4
/* F8774 800DA684 AFB1004C */   sw        $s1, 0x4C($sp)
/* F8778 800DA688 8E050E6C */  lw         $a1, 0xE6C($s0)
/* F877C 800DA68C 8E060E70 */  lw         $a2, 0xE70($s0)
/* F8780 800DA690 8E070E74 */  lw         $a3, 0xE74($s0)
/* F8784 800DA694 0C036990 */  jal        func_menu_800DA640
/* F8788 800DA698 00000000 */   nop
/* F878C 800DA69C 080369FF */  j          .Lmenu_800DA7FC
/* F8790 800DA6A0 00000000 */   nop
.Lmenu_800DA6A4:
/* F8794 800DA6A4 8E0200D4 */  lw         $v0, 0xD4($s0)
/* F8798 800DA6A8 1040004C */  beqz       $v0, .Lmenu_800DA7DC
/* F879C 800DA6AC 02002021 */   addu      $a0, $s0, $zero
/* F87A0 800DA6B0 00002821 */  addu       $a1, $zero, $zero
/* F87A4 800DA6B4 27A60028 */  addiu      $a2, $sp, 0x28
/* F87A8 800DA6B8 27A7002C */  addiu      $a3, $sp, 0x2C
/* F87AC 800DA6BC 27A20030 */  addiu      $v0, $sp, 0x30
/* F87B0 800DA6C0 AFA20010 */  sw         $v0, 0x10($sp)
/* F87B4 800DA6C4 27A20034 */  addiu      $v0, $sp, 0x34
/* F87B8 800DA6C8 AFA20014 */  sw         $v0, 0x14($sp)
/* F87BC 800DA6CC 27A20038 */  addiu      $v0, $sp, 0x38
/* F87C0 800DA6D0 AFA20018 */  sw         $v0, 0x18($sp)
/* F87C4 800DA6D4 27A2003C */  addiu      $v0, $sp, 0x3C
/* F87C8 800DA6D8 AFA2001C */  sw         $v0, 0x1C($sp)
/* F87CC 800DA6DC 27A20040 */  addiu      $v0, $sp, 0x40
/* F87D0 800DA6E0 0C036B43 */  jal        func_menu_800DAD0C
/* F87D4 800DA6E4 AFA20020 */   sw        $v0, 0x20($sp)
/* F87D8 800DA6E8 3C028012 */  lui        $v0, %hi(D_menu_801269D4)
/* F87DC 800DA6EC 8FA40028 */  lw         $a0, 0x28($sp)
/* F87E0 800DA6F0 8C5169D4 */  lw         $s1, %lo(D_menu_801269D4)($v0)
/* F87E4 800DA6F4 0C03810C */  jal        func_menu_800E0430
/* F87E8 800DA6F8 00000000 */   nop
/* F87EC 800DA6FC 00402821 */  addu       $a1, $v0, $zero
/* F87F0 800DA700 3402FFFF */  ori        $v0, $zero, 0xFFFF
/* F87F4 800DA704 10A20013 */  beq        $a1, $v0, .Lmenu_800DA754
/* F87F8 800DA708 AFA50040 */   sw        $a1, 0x40($sp)
/* F87FC 800DA70C 02202021 */  addu       $a0, $s1, $zero
/* F8800 800DA710 26060E60 */  addiu      $a2, $s0, 0xE60
/* F8804 800DA714 26070E64 */  addiu      $a3, $s0, 0xE64
/* F8808 800DA718 26020E68 */  addiu      $v0, $s0, 0xE68
/* F880C 800DA71C 0C037E03 */  jal        func_menu_800DF80C
/* F8810 800DA720 AFA20010 */   sw        $v0, 0x10($sp)
/* F8814 800DA724 C6040E68 */  lwc1       $f4, 0xE68($s0)
/* F8818 800DA728 3C01800D */  lui        $at, %hi(D_menu_800CAA50)
/* F881C 800DA72C C420AA50 */  lwc1       $f0, %lo(D_menu_800CAA50)($at)
/* F8820 800DA730 46002102 */  mul.s      $f4, $f4, $f0
/* F8824 800DA734 C6020E64 */  lwc1       $f2, 0xE64($s0)
/* F8828 800DA738 C6000E60 */  lwc1       $f0, 0xE60($s0)
/* F882C 800DA73C 46001087 */  neg.s      $f2, $f2
/* F8830 800DA740 E6020E64 */  swc1       $f2, 0xE64($s0)
/* F8834 800DA744 46000007 */  neg.s      $f0, $f0
/* F8838 800DA748 E6000E60 */  swc1       $f0, 0xE60($s0)
/* F883C 800DA74C 080369F9 */  j          .Lmenu_800DA7E4
/* F8840 800DA750 E6040E68 */   swc1      $f4, 0xE68($s0)
.Lmenu_800DA754:
/* F8844 800DA754 8FA50028 */  lw         $a1, 0x28($sp)
/* F8848 800DA758 8FA60038 */  lw         $a2, 0x38($sp)
/* F884C 800DA75C 0C03689F */  jal        func_menu_800DA27C
/* F8850 800DA760 02002021 */   addu      $a0, $s0, $zero
/* F8854 800DA764 C6040E78 */  lwc1       $f4, 0xE78($s0)
/* F8858 800DA768 C6000E7C */  lwc1       $f0, 0xE7C($s0)
/* F885C 800DA76C 46002100 */  add.s      $f4, $f4, $f0
/* F8860 800DA770 3C01800D */  lui        $at, %hi(D_menu_800CAA54)
/* F8864 800DA774 C426AA54 */  lwc1       $f6, %lo(D_menu_800CAA54)($at)
/* F8868 800DA778 46062102 */  mul.s      $f4, $f4, $f6
/* F886C 800DA77C C6020E80 */  lwc1       $f2, 0xE80($s0)
/* F8870 800DA780 C6000E84 */  lwc1       $f0, 0xE84($s0)
/* F8874 800DA784 46001080 */  add.s      $f2, $f2, $f0
/* F8878 800DA788 46061082 */  mul.s      $f2, $f2, $f6
/* F887C 800DA78C 3C01800D */  lui        $at, %hi(D_menu_800CAA58)
/* F8880 800DA790 C420AA58 */  lwc1       $f0, %lo(D_menu_800CAA58)($at)
/* F8884 800DA794 C7A60034 */  lwc1       $f6, 0x34($sp)
/* F8888 800DA798 468031A0 */  cvt.s.w    $f6, $f6
/* F888C 800DA79C 46003182 */  mul.s      $f6, $f6, $f0
/* F8890 800DA7A0 C7A0002C */  lwc1       $f0, 0x2C($sp)
/* F8894 800DA7A4 46800020 */  cvt.s.w    $f0, $f0
/* F8898 800DA7A8 46002107 */  neg.s      $f4, $f4
/* F889C 800DA7AC 46002101 */  sub.s      $f4, $f4, $f0
/* F88A0 800DA7B0 C6000E88 */  lwc1       $f0, 0xE88($s0)
/* F88A4 800DA7B4 46000007 */  neg.s      $f0, $f0
/* F88A8 800DA7B8 46060001 */  sub.s      $f0, $f0, $f6
/* F88AC 800DA7BC C7A60030 */  lwc1       $f6, 0x30($sp)
/* F88B0 800DA7C0 468031A0 */  cvt.s.w    $f6, $f6
/* F88B4 800DA7C4 46001087 */  neg.s      $f2, $f2
/* F88B8 800DA7C8 46061081 */  sub.s      $f2, $f2, $f6
/* F88BC 800DA7CC E6040E60 */  swc1       $f4, 0xE60($s0)
/* F88C0 800DA7D0 E6000E68 */  swc1       $f0, 0xE68($s0)
/* F88C4 800DA7D4 080369F9 */  j          .Lmenu_800DA7E4
/* F88C8 800DA7D8 E6020E64 */   swc1      $f2, 0xE64($s0)
.Lmenu_800DA7DC:
/* F88CC 800DA7DC 0C036994 */  jal        func_menu_800DA650
/* F88D0 800DA7E0 02002021 */   addu      $a0, $s0, $zero
.Lmenu_800DA7E4:
/* F88D4 800DA7E4 C6000E60 */  lwc1       $f0, 0xE60($s0)
/* F88D8 800DA7E8 C6020E64 */  lwc1       $f2, 0xE64($s0)
/* F88DC 800DA7EC C6040E68 */  lwc1       $f4, 0xE68($s0)
/* F88E0 800DA7F0 E6000E6C */  swc1       $f0, 0xE6C($s0)
/* F88E4 800DA7F4 E6020E70 */  swc1       $f2, 0xE70($s0)
/* F88E8 800DA7F8 E6040E74 */  swc1       $f4, 0xE74($s0)
.Lmenu_800DA7FC:
/* F88EC 800DA7FC 8FBF0050 */  lw         $ra, 0x50($sp)
/* F88F0 800DA800 8FB1004C */  lw         $s1, 0x4C($sp)
/* F88F4 800DA804 8FB00048 */  lw         $s0, 0x48($sp)
/* F88F8 800DA808 03E00008 */  jr         $ra
/* F88FC 800DA80C 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_menu_800DA810
/* F8900 800DA810 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F8904 800DA814 AFB00010 */  sw         $s0, 0x10($sp)
/* F8908 800DA818 AFBF0014 */  sw         $ra, 0x14($sp)
/* F890C 800DA81C 0C03689F */  jal        func_menu_800DA27C
/* F8910 800DA820 00808021 */   addu      $s0, $a0, $zero
/* F8914 800DA824 C6060E78 */  lwc1       $f6, 0xE78($s0)
/* F8918 800DA828 C6000E7C */  lwc1       $f0, 0xE7C($s0)
/* F891C 800DA82C 46003180 */  add.s      $f6, $f6, $f0
/* F8920 800DA830 3C01800D */  lui        $at, %hi(D_menu_800CAA5C)
/* F8924 800DA834 C428AA5C */  lwc1       $f8, %lo(D_menu_800CAA5C)($at)
/* F8928 800DA838 46083182 */  mul.s      $f6, $f6, $f8
/* F892C 800DA83C C6020E80 */  lwc1       $f2, 0xE80($s0)
/* F8930 800DA840 C6000E84 */  lwc1       $f0, 0xE84($s0)
/* F8934 800DA844 46001080 */  add.s      $f2, $f2, $f0
/* F8938 800DA848 46081082 */  mul.s      $f2, $f2, $f8
/* F893C 800DA84C C6040E8C */  lwc1       $f4, 0xE8C($s0)
/* F8940 800DA850 C6000E88 */  lwc1       $f0, 0xE88($s0)
/* F8944 800DA854 46040000 */  add.s      $f0, $f0, $f4
/* F8948 800DA858 46080002 */  mul.s      $f0, $f0, $f8
/* F894C 800DA85C 46003187 */  neg.s      $f6, $f6
/* F8950 800DA860 E6060E60 */  swc1       $f6, 0xE60($s0)
/* F8954 800DA864 46001087 */  neg.s      $f2, $f2
/* F8958 800DA868 E6020E64 */  swc1       $f2, 0xE64($s0)
/* F895C 800DA86C 46000007 */  neg.s      $f0, $f0
/* F8960 800DA870 E6000E68 */  swc1       $f0, 0xE68($s0)
/* F8964 800DA874 8FBF0014 */  lw         $ra, 0x14($sp)
/* F8968 800DA878 8FB00010 */  lw         $s0, 0x10($sp)
/* F896C 800DA87C 03E00008 */  jr         $ra
/* F8970 800DA880 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800DA884
/* F8974 800DA884 908200DC */  lbu        $v0, 0xDC($a0)
/* F8978 800DA888 03E00008 */  jr         $ra
/* F897C 800DA88C 304200F8 */   andi      $v0, $v0, 0xF8

glabel func_menu_800DA890
/* F8980 800DA890 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* F8984 800DA894 AFB20038 */  sw         $s2, 0x38($sp)
/* F8988 800DA898 00809021 */  addu       $s2, $a0, $zero
/* F898C 800DA89C AFBF0054 */  sw         $ra, 0x54($sp)
/* F8990 800DA8A0 AFBE0050 */  sw         $fp, 0x50($sp)
/* F8994 800DA8A4 AFB7004C */  sw         $s7, 0x4C($sp)
/* F8998 800DA8A8 AFB60048 */  sw         $s6, 0x48($sp)
/* F899C 800DA8AC AFB50044 */  sw         $s5, 0x44($sp)
/* F89A0 800DA8B0 AFB40040 */  sw         $s4, 0x40($sp)
/* F89A4 800DA8B4 AFB3003C */  sw         $s3, 0x3C($sp)
/* F89A8 800DA8B8 AFB10034 */  sw         $s1, 0x34($sp)
/* F89AC 800DA8BC AFB00030 */  sw         $s0, 0x30($sp)
/* F89B0 800DA8C0 F7B40058 */  sdc1       $f20, 0x58($sp)
/* F89B4 800DA8C4 8E5600D4 */  lw         $s6, 0xD4($s2)
/* F89B8 800DA8C8 264400A4 */  addiu      $a0, $s2, 0xA4
/* F89BC 800DA8CC AFA60068 */  sw         $a2, 0x68($sp)
/* F89C0 800DA8D0 24060001 */  addiu      $a2, $zero, 0x1
/* F89C4 800DA8D4 97A8006A */  lhu        $t0, 0x6A($sp)
/* F89C8 800DA8D8 0C038282 */  jal        func_menu_800E0A08
/* F89CC 800DA8DC A64800DE */   sh        $t0, 0xDE($s2)
/* F89D0 800DA8E0 3C01800D */  lui        $at, %hi(D_menu_800CAA60)
/* F89D4 800DA8E4 C434AA60 */  lwc1       $f20, %lo(D_menu_800CAA60)($at)
/* F89D8 800DA8E8 265E00BC */  addiu      $fp, $s2, 0xBC
/* F89DC 800DA8EC A24000DC */  sb         $zero, 0xDC($s2)
/* F89E0 800DA8F0 AE400E14 */  sw         $zero, 0xE14($s2)
.Lmenu_800DA8F4:
/* F89E4 800DA8F4 0C035188 */  jal        func_menu_800D4620
/* F89E8 800DA8F8 02402021 */   addu      $a0, $s2, $zero
/* F89EC 800DA8FC 924200DC */  lbu        $v0, 0xDC($s2)
/* F89F0 800DA900 AE400E14 */  sw         $zero, 0xE14($s2)
/* F89F4 800DA904 00021840 */  sll        $v1, $v0, 1
/* F89F8 800DA908 306200F8 */  andi       $v0, $v1, 0xF8
/* F89FC 800DA90C 10400006 */  beqz       $v0, .Lmenu_800DA928
/* F8A00 800DA910 A24300DC */   sb        $v1, 0xDC($s2)
/* F8A04 800DA914 2AC20002 */  slti       $v0, $s6, 0x2
/* F8A08 800DA918 14400003 */  bnez       $v0, .Lmenu_800DA928
/* F8A0C 800DA91C 30620007 */   andi      $v0, $v1, 0x7
/* F8A10 800DA920 A24200DC */  sb         $v0, 0xDC($s2)
/* F8A14 800DA924 26D6FFFF */  addiu      $s6, $s6, -0x1
.Lmenu_800DA928:
/* F8A18 800DA928 925700DC */  lbu        $s7, 0xDC($s2)
/* F8A1C 800DA92C 32E200FC */  andi       $v0, $s7, 0xFC
/* F8A20 800DA930 10400004 */  beqz       $v0, .Lmenu_800DA944
/* F8A24 800DA934 32E200FE */   andi      $v0, $s7, 0xFE
/* F8A28 800DA938 A24000D9 */  sb         $zero, 0xD9($s2)
/* F8A2C 800DA93C 08036A5E */  j          .Lmenu_800DA978
/* F8A30 800DA940 A24000DB */   sb        $zero, 0xDB($s2)
.Lmenu_800DA944:
/* F8A34 800DA944 10400008 */  beqz       $v0, .Lmenu_800DA968
/* F8A38 800DA948 3C03FF00 */   lui       $v1, (0xFF00FF00 >> 16)
/* F8A3C 800DA94C A24000D9 */  sb         $zero, 0xD9($s2)
/* F8A40 800DA950 8E4200D8 */  lw         $v0, 0xD8($s2)
/* F8A44 800DA954 3463FF00 */  ori        $v1, $v1, (0xFF00FF00 & 0xFFFF)
/* F8A48 800DA958 00431024 */  and        $v0, $v0, $v1
/* F8A4C 800DA95C 0002102B */  sltu       $v0, $zero, $v0
/* F8A50 800DA960 08036A5E */  j          .Lmenu_800DA978
/* F8A54 800DA964 A24200DB */   sb        $v0, 0xDB($s2)
.Lmenu_800DA968:
/* F8A58 800DA968 924200D8 */  lbu        $v0, 0xD8($s2)
/* F8A5C 800DA96C 924300DA */  lbu        $v1, 0xDA($s2)
/* F8A60 800DA970 A24200D9 */  sb         $v0, 0xD9($s2)
/* F8A64 800DA974 A24300DB */  sb         $v1, 0xDB($s2)
.Lmenu_800DA978:
/* F8A68 800DA978 00008821 */  addu       $s1, $zero, $zero
/* F8A6C 800DA97C 265400A4 */  addiu      $s4, $s2, 0xA4
/* F8A70 800DA980 27B5002C */  addiu      $s5, $sp, 0x2C
/* F8A74 800DA984 02209821 */  addu       $s3, $s1, $zero
/* F8A78 800DA988 0236102A */  slt        $v0, $s1, $s6
.Lmenu_800DA98C:
/* F8A7C 800DA98C 1040001A */  beqz       $v0, .Lmenu_800DA9F8
/* F8A80 800DA990 27A50020 */   addiu     $a1, $sp, 0x20
/* F8A84 800DA994 8E84000C */  lw         $a0, 0xC($s4)
/* F8A88 800DA998 27A60024 */  addiu      $a2, $sp, 0x24
/* F8A8C 800DA99C 02642021 */  addu       $a0, $s3, $a0
/* F8A90 800DA9A0 8C900000 */  lw         $s0, 0x0($a0)
/* F8A94 800DA9A4 27A70028 */  addiu      $a3, $sp, 0x28
/* F8A98 800DA9A8 0C038124 */  jal        func_menu_800E0490
/* F8A9C 800DA9AC AFB50010 */   sw        $s5, 0x10($sp)
/* F8AA0 800DA9B0 02402021 */  addu       $a0, $s2, $zero
/* F8AA4 800DA9B4 8FA60020 */  lw         $a2, 0x20($sp)
/* F8AA8 800DA9B8 8E82000C */  lw         $v0, 0xC($s4)
/* F8AAC 800DA9BC 8FA70024 */  lw         $a3, 0x24($sp)
/* F8AB0 800DA9C0 02621021 */  addu       $v0, $s3, $v0
/* F8AB4 800DA9C4 8C430004 */  lw         $v1, 0x4($v0)
/* F8AB8 800DA9C8 8FA2002C */  lw         $v0, 0x2C($sp)
/* F8ABC 800DA9CC 02002821 */  addu       $a1, $s0, $zero
/* F8AC0 800DA9D0 AFA20010 */  sw         $v0, 0x10($sp)
/* F8AC4 800DA9D4 8FA20028 */  lw         $v0, 0x28($sp)
/* F8AC8 800DA9D8 2673001C */  addiu      $s3, $s3, 0x1C
/* F8ACC 800DA9DC AFB1001C */  sw         $s1, 0x1C($sp)
/* F8AD0 800DA9E0 26310001 */  addiu      $s1, $s1, 0x1
/* F8AD4 800DA9E4 AFA30018 */  sw         $v1, 0x18($sp)
/* F8AD8 800DA9E8 0C0363F1 */  jal        func_menu_800D8FC4
/* F8ADC 800DA9EC AFA20014 */   sw        $v0, 0x14($sp)
/* F8AE0 800DA9F0 08036A63 */  j          .Lmenu_800DA98C
/* F8AE4 800DA9F4 0236102A */   slt       $v0, $s1, $s6
.Lmenu_800DA9F8:
/* F8AE8 800DA9F8 924200DC */  lbu        $v0, 0xDC($s2)
/* F8AEC 800DA9FC 30420001 */  andi       $v0, $v0, 0x1
/* F8AF0 800DAA00 14400047 */  bnez       $v0, .Lmenu_800DAB20
/* F8AF4 800DAA04 3C028013 */   lui       $v0, %hi(D_menu_8012A530)
/* F8AF8 800DAA08 AC52A530 */  sw         $s2, %lo(D_menu_8012A530)($v0)
/* F8AFC 800DAA0C 924200D9 */  lbu        $v0, 0xD9($s2)
/* F8B00 800DAA10 10400009 */  beqz       $v0, .Lmenu_800DAA38
/* F8B04 800DAA14 00000000 */   nop
/* F8B08 800DAA18 3C05800E */  lui        $a1, %hi(func_menu_800D9B18)
/* F8B0C 800DAA1C 24A59B18 */  addiu      $a1, $a1, %lo(func_menu_800D9B18)
/* F8B10 800DAA20 0C037BC8 */  jal        func_menu_800DEF20
/* F8B14 800DAA24 03C02021 */   addu      $a0, $fp, $zero
/* F8B18 800DAA28 3C05800E */  lui        $a1, %hi(func_menu_800D9B18)
/* F8B1C 800DAA2C 24A59B18 */  addiu      $a1, $a1, %lo(func_menu_800D9B18)
/* F8B20 800DAA30 0C037C1E */  jal        func_menu_800DF078
/* F8B24 800DAA34 03C02021 */   addu      $a0, $fp, $zero
.Lmenu_800DAA38:
/* F8B28 800DAA38 924200DC */  lbu        $v0, 0xDC($s2)
/* F8B2C 800DAA3C 30420001 */  andi       $v0, $v0, 0x1
/* F8B30 800DAA40 14400037 */  bnez       $v0, .Lmenu_800DAB20
/* F8B34 800DAA44 00000000 */   nop
/* F8B38 800DAA48 8FA80068 */  lw         $t0, 0x68($sp)
/* F8B3C 800DAA4C 11000005 */  beqz       $t0, .Lmenu_800DAA64
/* F8B40 800DAA50 02402021 */   addu      $a0, $s2, $zero
/* F8B44 800DAA54 0C0350F3 */  jal        func_menu_800D43CC
/* F8B48 800DAA58 01002821 */   addu      $a1, $t0, $zero
/* F8B4C 800DAA5C 08036A9F */  j          .Lmenu_800DAA7C
/* F8B50 800DAA60 00000000 */   nop
.Lmenu_800DAA64:
/* F8B54 800DAA64 24060004 */  addiu      $a2, $zero, 0x4
/* F8B58 800DAA68 3C07800E */  lui        $a3, %hi(func_menu_800D9FC4)
/* F8B5C 800DAA6C 8E440DD0 */  lw         $a0, 0xDD0($s2)
/* F8B60 800DAA70 8E450E14 */  lw         $a1, 0xE14($s2)
/* F8B64 800DAA74 0C0007B1 */  jal        func_80001EC4
/* F8B68 800DAA78 24E79FC4 */   addiu     $a3, $a3, %lo(func_menu_800D9FC4)
.Lmenu_800DAA7C:
/* F8B6C 800DAA7C 924200DC */  lbu        $v0, 0xDC($s2)
/* F8B70 800DAA80 30420001 */  andi       $v0, $v0, 0x1
/* F8B74 800DAA84 14400026 */  bnez       $v0, .Lmenu_800DAB20
/* F8B78 800DAA88 00000000 */   nop
/* F8B7C 800DAA8C 8E420E18 */  lw         $v0, 0xE18($s2)
/* F8B80 800DAA90 1840001A */  blez       $v0, .Lmenu_800DAAFC
/* F8B84 800DAA94 00008821 */   addu      $s1, $zero, $zero
/* F8B88 800DAA98 00111940 */  sll        $v1, $s1, 5
.Lmenu_800DAA9C:
/* F8B8C 800DAA9C 8E420DC8 */  lw         $v0, 0xDC8($s2)
/* F8B90 800DAAA0 C6420E60 */  lwc1       $f2, 0xE60($s2)
/* F8B94 800DAAA4 00621021 */  addu       $v0, $v1, $v0
/* F8B98 800DAAA8 C440000C */  lwc1       $f0, 0xC($v0)
/* F8B9C 800DAAAC 46020000 */  add.s      $f0, $f0, $f2
/* F8BA0 800DAAB0 E440000C */  swc1       $f0, 0xC($v0)
/* F8BA4 800DAAB4 8E420DC8 */  lw         $v0, 0xDC8($s2)
/* F8BA8 800DAAB8 C6420E64 */  lwc1       $f2, 0xE64($s2)
/* F8BAC 800DAABC 00621021 */  addu       $v0, $v1, $v0
/* F8BB0 800DAAC0 C4400010 */  lwc1       $f0, 0x10($v0)
/* F8BB4 800DAAC4 46020000 */  add.s      $f0, $f0, $f2
/* F8BB8 800DAAC8 E4400010 */  swc1       $f0, 0x10($v0)
/* F8BBC 800DAACC 8E420DC8 */  lw         $v0, 0xDC8($s2)
/* F8BC0 800DAAD0 00621821 */  addu       $v1, $v1, $v0
/* F8BC4 800DAAD4 C4620014 */  lwc1       $f2, 0x14($v1)
/* F8BC8 800DAAD8 46141082 */  mul.s      $f2, $f2, $f20
/* F8BCC 800DAADC C6400E68 */  lwc1       $f0, 0xE68($s2)
/* F8BD0 800DAAE0 46020000 */  add.s      $f0, $f0, $f2
/* F8BD4 800DAAE4 E4600014 */  swc1       $f0, 0x14($v1)
/* F8BD8 800DAAE8 8E420E18 */  lw         $v0, 0xE18($s2)
/* F8BDC 800DAAEC 26310001 */  addiu      $s1, $s1, 0x1
/* F8BE0 800DAAF0 0222102A */  slt        $v0, $s1, $v0
/* F8BE4 800DAAF4 1440FFE9 */  bnez       $v0, .Lmenu_800DAA9C
/* F8BE8 800DAAF8 00111940 */   sll       $v1, $s1, 5
.Lmenu_800DAAFC:
/* F8BEC 800DAAFC 8E450008 */  lw         $a1, 0x8($s2)
/* F8BF0 800DAB00 0C036366 */  jal        func_menu_800D8D98
/* F8BF4 800DAB04 02402021 */   addu      $a0, $s2, $zero
/* F8BF8 800DAB08 02402021 */  addu       $a0, $s2, $zero
/* F8BFC 800DAB0C 0C0367D2 */  jal        func_menu_800D9F48
/* F8C00 800DAB10 2645000C */   addiu     $a1, $s2, 0xC
/* F8C04 800DAB14 8E450008 */  lw         $a1, 0x8($s2)
/* F8C08 800DAB18 0C0363C7 */  jal        func_menu_800D8F1C
/* F8C0C 800DAB1C 02402021 */   addu      $a0, $s2, $zero
.Lmenu_800DAB20:
/* F8C10 800DAB20 924300DC */  lbu        $v1, 0xDC($s2)
/* F8C14 800DAB24 32E200FF */  andi       $v0, $s7, 0xFF
/* F8C18 800DAB28 1462FF72 */  bne        $v1, $v0, .Lmenu_800DA8F4
/* F8C1C 800DAB2C 00000000 */   nop
/* F8C20 800DAB30 8E4200D4 */  lw         $v0, 0xD4($s2)
/* F8C24 800DAB34 12C20002 */  beq        $s6, $v0, .Lmenu_800DAB40
/* F8C28 800DAB38 34620008 */   ori       $v0, $v1, 0x8
/* F8C2C 800DAB3C A24200DC */  sb         $v0, 0xDC($s2)
.Lmenu_800DAB40:
/* F8C30 800DAB40 8E44009C */  lw         $a0, 0x9C($s2)
/* F8C34 800DAB44 50800027 */  beql       $a0, $zero, .Lmenu_800DABE4
/* F8C38 800DAB48 AE400E48 */   sw        $zero, 0xE48($s2)
/* F8C3C 800DAB4C 8E420E14 */  lw         $v0, 0xE14($s2)
/* F8C40 800DAB50 50400024 */  beql       $v0, $zero, .Lmenu_800DABE4
/* F8C44 800DAB54 AE400E48 */   sw        $zero, 0xE48($s2)
/* F8C48 800DAB58 0C035524 */  jal        func_menu_800D5490
/* F8C4C 800DAB5C 24110001 */   addiu     $s1, $zero, 0x1
/* F8C50 800DAB60 8E420DD0 */  lw         $v0, 0xDD0($s2)
/* F8C54 800DAB64 8C420000 */  lw         $v0, 0x0($v0)
/* F8C58 800DAB68 8E44009C */  lw         $a0, 0x9C($s2)
/* F8C5C 800DAB6C 94450002 */  lhu        $a1, 0x2($v0)
/* F8C60 800DAB70 0C035534 */  jal        func_menu_800D54D0
/* F8C64 800DAB74 AE450E24 */   sw        $a1, 0xE24($s2)
/* F8C68 800DAB78 8E420E14 */  lw         $v0, 0xE14($s2)
/* F8C6C 800DAB7C 0222102A */  slt        $v0, $s1, $v0
/* F8C70 800DAB80 10400011 */  beqz       $v0, .Lmenu_800DABC8
/* F8C74 800DAB84 00000000 */   nop
.Lmenu_800DAB88:
/* F8C78 800DAB88 8E430DD0 */  lw         $v1, 0xDD0($s2)
/* F8C7C 800DAB8C 00111080 */  sll        $v0, $s1, 2
/* F8C80 800DAB90 00431021 */  addu       $v0, $v0, $v1
/* F8C84 800DAB94 8C420000 */  lw         $v0, 0x0($v0)
/* F8C88 800DAB98 94450002 */  lhu        $a1, 0x2($v0)
/* F8C8C 800DAB9C 8E420E24 */  lw         $v0, 0xE24($s2)
/* F8C90 800DABA0 10450004 */  beq        $v0, $a1, .Lmenu_800DABB4
/* F8C94 800DABA4 00000000 */   nop
/* F8C98 800DABA8 8E44009C */  lw         $a0, 0x9C($s2)
/* F8C9C 800DABAC 0C035534 */  jal        func_menu_800D54D0
/* F8CA0 800DABB0 AE450E24 */   sw        $a1, 0xE24($s2)
.Lmenu_800DABB4:
/* F8CA4 800DABB4 8E420E14 */  lw         $v0, 0xE14($s2)
/* F8CA8 800DABB8 26310001 */  addiu      $s1, $s1, 0x1
/* F8CAC 800DABBC 0222102A */  slt        $v0, $s1, $v0
/* F8CB0 800DABC0 1440FFF1 */  bnez       $v0, .Lmenu_800DAB88
/* F8CB4 800DABC4 00000000 */   nop
.Lmenu_800DABC8:
/* F8CB8 800DABC8 8E42009C */  lw         $v0, 0x9C($s2)
/* F8CBC 800DABCC 8E43009C */  lw         $v1, 0x9C($s2)
/* F8CC0 800DABD0 8C420030 */  lw         $v0, 0x30($v0)
/* F8CC4 800DABD4 AE420E44 */  sw         $v0, 0xE44($s2)
/* F8CC8 800DABD8 8C620034 */  lw         $v0, 0x34($v1)
/* F8CCC 800DABDC 08036AFA */  j          .Lmenu_800DABE8
/* F8CD0 800DABE0 AE420E48 */   sw        $v0, 0xE48($s2)
.Lmenu_800DABE4:
/* F8CD4 800DABE4 AE400E44 */  sw         $zero, 0xE44($s2)
.Lmenu_800DABE8:
/* F8CD8 800DABE8 8E420E28 */  lw         $v0, 0xE28($s2)
/* F8CDC 800DABEC 8E430E30 */  lw         $v1, 0xE30($s2)
/* F8CE0 800DABF0 8E440E2C */  lw         $a0, 0xE2C($s2)
/* F8CE4 800DABF4 AE420E4C */  sw         $v0, 0xE4C($s2)
/* F8CE8 800DABF8 AE430E50 */  sw         $v1, 0xE50($s2)
/* F8CEC 800DABFC AE440E54 */  sw         $a0, 0xE54($s2)
/* F8CF0 800DAC00 8FBF0054 */  lw         $ra, 0x54($sp)
/* F8CF4 800DAC04 8FBE0050 */  lw         $fp, 0x50($sp)
/* F8CF8 800DAC08 8FB7004C */  lw         $s7, 0x4C($sp)
/* F8CFC 800DAC0C 8FB60048 */  lw         $s6, 0x48($sp)
/* F8D00 800DAC10 8FB50044 */  lw         $s5, 0x44($sp)
/* F8D04 800DAC14 8FB40040 */  lw         $s4, 0x40($sp)
/* F8D08 800DAC18 8FB3003C */  lw         $s3, 0x3C($sp)
/* F8D0C 800DAC1C 8FB20038 */  lw         $s2, 0x38($sp)
/* F8D10 800DAC20 8FB10034 */  lw         $s1, 0x34($sp)
/* F8D14 800DAC24 8FB00030 */  lw         $s0, 0x30($sp)
/* F8D18 800DAC28 D7B40058 */  ldc1       $f20, 0x58($sp)
/* F8D1C 800DAC2C 03E00008 */  jr         $ra
/* F8D20 800DAC30 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_menu_800DAC34
/* F8D24 800DAC34 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* F8D28 800DAC38 AFB00010 */  sw         $s0, 0x10($sp)
/* F8D2C 800DAC3C 00808021 */  addu       $s0, $a0, $zero
/* F8D30 800DAC40 AFB3001C */  sw         $s3, 0x1C($sp)
/* F8D34 800DAC44 00C09821 */  addu       $s3, $a2, $zero
/* F8D38 800DAC48 AFB40020 */  sw         $s4, 0x20($sp)
/* F8D3C 800DAC4C 00E0A021 */  addu       $s4, $a3, $zero
/* F8D40 800DAC50 AFB10014 */  sw         $s1, 0x14($sp)
/* F8D44 800DAC54 2611000C */  addiu      $s1, $s0, 0xC
/* F8D48 800DAC58 AFBF0028 */  sw         $ra, 0x28($sp)
/* F8D4C 800DAC5C AFB50024 */  sw         $s5, 0x24($sp)
/* F8D50 800DAC60 AFB20018 */  sw         $s2, 0x18($sp)
/* F8D54 800DAC64 F7B40030 */  sdc1       $f20, 0x30($sp)
/* F8D58 800DAC68 8E150008 */  lw         $s5, 0x8($s0)
/* F8D5C 800DAC6C 3C01800D */  lui        $at, %hi(D_menu_800CAA64)
/* F8D60 800DAC70 C434AA64 */  lwc1       $f20, %lo(D_menu_800CAA64)($at)
/* F8D64 800DAC74 AE050008 */  sw         $a1, 0x8($s0)
/* F8D68 800DAC78 4406A000 */  mfc1       $a2, $f20
/* F8D6C 800DAC7C 8E32006C */  lw         $s2, 0x6C($s1)
/* F8D70 800DAC80 0C016059 */  jal        func_80058164
/* F8D74 800DAC84 02202021 */   addu      $a0, $s1, $zero
/* F8D78 800DAC88 02002021 */  addu       $a0, $s0, $zero
/* F8D7C 800DAC8C 02602821 */  addu       $a1, $s3, $zero
/* F8D80 800DAC90 0C036A24 */  jal        func_menu_800DA890
/* F8D84 800DAC94 02803021 */   addu      $a2, $s4, $zero
/* F8D88 800DAC98 02202021 */  addu       $a0, $s1, $zero
/* F8D8C 800DAC9C 4406A000 */  mfc1       $a2, $f20
/* F8D90 800DACA0 02A02821 */  addu       $a1, $s5, $zero
/* F8D94 800DACA4 0C016059 */  jal        func_80058164
/* F8D98 800DACA8 AE050008 */   sw        $a1, 0x8($s0)
/* F8D9C 800DACAC AE32006C */  sw         $s2, 0x6C($s1)
/* F8DA0 800DACB0 8FBF0028 */  lw         $ra, 0x28($sp)
/* F8DA4 800DACB4 8FB50024 */  lw         $s5, 0x24($sp)
/* F8DA8 800DACB8 8FB40020 */  lw         $s4, 0x20($sp)
/* F8DAC 800DACBC 8FB3001C */  lw         $s3, 0x1C($sp)
/* F8DB0 800DACC0 8FB20018 */  lw         $s2, 0x18($sp)
/* F8DB4 800DACC4 8FB10014 */  lw         $s1, 0x14($sp)
/* F8DB8 800DACC8 8FB00010 */  lw         $s0, 0x10($sp)
/* F8DBC 800DACCC D7B40030 */  ldc1       $f20, 0x30($sp)
/* F8DC0 800DACD0 03E00008 */  jr         $ra
/* F8DC4 800DACD4 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800DACD8
/* F8DC8 800DACD8 248400BC */  addiu      $a0, $a0, 0xBC
/* F8DCC 800DACDC 8C820004 */  lw         $v0, 0x4($a0)
/* F8DD0 800DACE0 00A20018 */  mult       $a1, $v0
/* F8DD4 800DACE4 8C830008 */  lw         $v1, 0x8($a0)
/* F8DD8 800DACE8 00003812 */  mflo       $a3
/* F8DDC 800DACEC 00E63021 */  addu       $a2, $a3, $a2
/* F8DE0 800DACF0 00061040 */  sll        $v0, $a2, 1
/* F8DE4 800DACF4 00461021 */  addu       $v0, $v0, $a2
/* F8DE8 800DACF8 00021080 */  sll        $v0, $v0, 2
/* F8DEC 800DACFC 00431021 */  addu       $v0, $v0, $v1
/* F8DF0 800DAD00 8C420000 */  lw         $v0, 0x0($v0)
/* F8DF4 800DAD04 03E00008 */  jr         $ra
/* F8DF8 800DAD08 00000000 */   nop

glabel func_menu_800DAD0C
/* F8DFC 800DAD0C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* F8E00 800DAD10 AFB1001C */  sw         $s1, 0x1C($sp)
/* F8E04 800DAD14 249100A4 */  addiu      $s1, $a0, 0xA4
/* F8E08 800DAD18 AFB00018 */  sw         $s0, 0x18($sp)
/* F8E0C 800DAD1C 000580C0 */  sll        $s0, $a1, 3
/* F8E10 800DAD20 02058023 */  subu       $s0, $s0, $a1
/* F8E14 800DAD24 00108080 */  sll        $s0, $s0, 2
/* F8E18 800DAD28 AFBF0028 */  sw         $ra, 0x28($sp)
/* F8E1C 800DAD2C AFB30024 */  sw         $s3, 0x24($sp)
/* F8E20 800DAD30 AFB20020 */  sw         $s2, 0x20($sp)
/* F8E24 800DAD34 8E22000C */  lw         $v0, 0xC($s1)
/* F8E28 800DAD38 8FA30048 */  lw         $v1, 0x48($sp)
/* F8E2C 800DAD3C 8FB2004C */  lw         $s2, 0x4C($sp)
/* F8E30 800DAD40 8FB30050 */  lw         $s3, 0x50($sp)
/* F8E34 800DAD44 02021021 */  addu       $v0, $s0, $v0
/* F8E38 800DAD48 8C420000 */  lw         $v0, 0x0($v0)
/* F8E3C 800DAD4C ACC20000 */  sw         $v0, 0x0($a2)
/* F8E40 800DAD50 8E24000C */  lw         $a0, 0xC($s1)
/* F8E44 800DAD54 00E02821 */  addu       $a1, $a3, $zero
/* F8E48 800DAD58 AFA30010 */  sw         $v1, 0x10($sp)
/* F8E4C 800DAD5C 8FA60040 */  lw         $a2, 0x40($sp)
/* F8E50 800DAD60 8FA70044 */  lw         $a3, 0x44($sp)
/* F8E54 800DAD64 0C038124 */  jal        func_menu_800E0490
/* F8E58 800DAD68 00902021 */   addu      $a0, $a0, $s0
/* F8E5C 800DAD6C 8E22000C */  lw         $v0, 0xC($s1)
/* F8E60 800DAD70 02021021 */  addu       $v0, $s0, $v0
/* F8E64 800DAD74 8C420004 */  lw         $v0, 0x4($v0)
/* F8E68 800DAD78 AE420000 */  sw         $v0, 0x0($s2)
/* F8E6C 800DAD7C 8E22000C */  lw         $v0, 0xC($s1)
/* F8E70 800DAD80 02028021 */  addu       $s0, $s0, $v0
/* F8E74 800DAD84 8E020008 */  lw         $v0, 0x8($s0)
/* F8E78 800DAD88 AE620000 */  sw         $v0, 0x0($s3)
/* F8E7C 800DAD8C 8FBF0028 */  lw         $ra, 0x28($sp)
/* F8E80 800DAD90 8FB30024 */  lw         $s3, 0x24($sp)
/* F8E84 800DAD94 8FB20020 */  lw         $s2, 0x20($sp)
/* F8E88 800DAD98 8FB1001C */  lw         $s1, 0x1C($sp)
/* F8E8C 800DAD9C 8FB00018 */  lw         $s0, 0x18($sp)
/* F8E90 800DADA0 03E00008 */  jr         $ra
/* F8E94 800DADA4 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800DADA8
/* F8E98 800DADA8 000510C0 */  sll        $v0, $a1, 3
/* F8E9C 800DADAC 00451023 */  subu       $v0, $v0, $a1
/* F8EA0 800DADB0 8C8300B0 */  lw         $v1, 0xB0($a0)
/* F8EA4 800DADB4 00021080 */  sll        $v0, $v0, 2
/* F8EA8 800DADB8 00431021 */  addu       $v0, $v0, $v1
/* F8EAC 800DADBC 8C420008 */  lw         $v0, 0x8($v0)
/* F8EB0 800DADC0 03E00008 */  jr         $ra
/* F8EB4 800DADC4 00000000 */   nop

glabel func_menu_800DADC8
/* F8EB8 800DADC8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F8EBC 800DADCC 04A00005 */  bltz       $a1, .Lmenu_800DADE4
/* F8EC0 800DADD0 AFBF0010 */   sw        $ra, 0x10($sp)
/* F8EC4 800DADD4 8C8200D4 */  lw         $v0, 0xD4($a0)
/* F8EC8 800DADD8 00A2102A */  slt        $v0, $a1, $v0
/* F8ECC 800DADDC 14400003 */  bnez       $v0, .Lmenu_800DADEC
/* F8ED0 800DADE0 00000000 */   nop
.Lmenu_800DADE4:
/* F8ED4 800DADE4 08036B7D */  j          .Lmenu_800DADF4
/* F8ED8 800DADE8 00001021 */   addu      $v0, $zero, $zero
.Lmenu_800DADEC:
/* F8EDC 800DADEC 0C037C2A */  jal        func_menu_800DF0A8
/* F8EE0 800DADF0 248400BC */   addiu     $a0, $a0, 0xBC
.Lmenu_800DADF4:
/* F8EE4 800DADF4 8FBF0010 */  lw         $ra, 0x10($sp)
/* F8EE8 800DADF8 03E00008 */  jr         $ra
/* F8EEC 800DADFC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800DAE00
/* F8EF0 800DAE00 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F8EF4 800DAE04 AFB20018 */  sw         $s2, 0x18($sp)
/* F8EF8 800DAE08 00809021 */  addu       $s2, $a0, $zero
/* F8EFC 800DAE0C AFB10014 */  sw         $s1, 0x14($sp)
/* F8F00 800DAE10 00A08821 */  addu       $s1, $a1, $zero
/* F8F04 800DAE14 AFBF001C */  sw         $ra, 0x1C($sp)
/* F8F08 800DAE18 0620000A */  bltz       $s1, .Lmenu_800DAE44
/* F8F0C 800DAE1C AFB00010 */   sw        $s0, 0x10($sp)
/* F8F10 800DAE20 8E4200D4 */  lw         $v0, 0xD4($s2)
/* F8F14 800DAE24 0222102A */  slt        $v0, $s1, $v0
/* F8F18 800DAE28 10400006 */  beqz       $v0, .Lmenu_800DAE44
/* F8F1C 800DAE2C 265000BC */   addiu     $s0, $s2, 0xBC
/* F8F20 800DAE30 02002021 */  addu       $a0, $s0, $zero
/* F8F24 800DAE34 0C037C2A */  jal        func_menu_800DF0A8
/* F8F28 800DAE38 02202821 */   addu      $a1, $s1, $zero
/* F8F2C 800DAE3C 14400003 */  bnez       $v0, .Lmenu_800DAE4C
/* F8F30 800DAE40 02002021 */   addu      $a0, $s0, $zero
.Lmenu_800DAE44:
/* F8F34 800DAE44 08036B97 */  j          .Lmenu_800DAE5C
/* F8F38 800DAE48 00001021 */   addu      $v0, $zero, $zero
.Lmenu_800DAE4C:
/* F8F3C 800DAE4C 0C037C86 */  jal        func_menu_800DF218
/* F8F40 800DAE50 02202821 */   addu      $a1, $s1, $zero
/* F8F44 800DAE54 8E4300AC */  lw         $v1, 0xAC($s2)
/* F8F48 800DAE58 AE4300D4 */  sw         $v1, 0xD4($s2)
.Lmenu_800DAE5C:
/* F8F4C 800DAE5C 8FBF001C */  lw         $ra, 0x1C($sp)
/* F8F50 800DAE60 8FB20018 */  lw         $s2, 0x18($sp)
/* F8F54 800DAE64 8FB10014 */  lw         $s1, 0x14($sp)
/* F8F58 800DAE68 8FB00010 */  lw         $s0, 0x10($sp)
/* F8F5C 800DAE6C 03E00008 */  jr         $ra
/* F8F60 800DAE70 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800DAE74
/* F8F64 800DAE74 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F8F68 800DAE78 AFBF0010 */  sw         $ra, 0x10($sp)
/* F8F6C 800DAE7C 8C8500D4 */  lw         $a1, 0xD4($a0)
/* F8F70 800DAE80 0C036B80 */  jal        func_menu_800DAE00
/* F8F74 800DAE84 24A5FFFF */   addiu     $a1, $a1, -0x1
/* F8F78 800DAE88 8FBF0010 */  lw         $ra, 0x10($sp)
/* F8F7C 800DAE8C 03E00008 */  jr         $ra
/* F8F80 800DAE90 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800DAE94
/* F8F84 800DAE94 27BDFF98 */  addiu      $sp, $sp, -0x68
/* F8F88 800DAE98 AFB1004C */  sw         $s1, 0x4C($sp)
/* F8F8C 800DAE9C 00808821 */  addu       $s1, $a0, $zero
/* F8F90 800DAEA0 AFB40058 */  sw         $s4, 0x58($sp)
/* F8F94 800DAEA4 00A0A021 */  addu       $s4, $a1, $zero
/* F8F98 800DAEA8 AFB20050 */  sw         $s2, 0x50($sp)
/* F8F9C 800DAEAC 2632000C */  addiu      $s2, $s1, 0xC
/* F8FA0 800DAEB0 02402021 */  addu       $a0, $s2, $zero
/* F8FA4 800DAEB4 AFB00048 */  sw         $s0, 0x48($sp)
/* F8FA8 800DAEB8 27B00038 */  addiu      $s0, $sp, 0x38
/* F8FAC 800DAEBC F7B40060 */  sdc1       $f20, 0x60($sp)
/* F8FB0 800DAEC0 4486A000 */  mtc1       $a2, $f20
/* F8FB4 800DAEC4 02002821 */  addu       $a1, $s0, $zero
/* F8FB8 800DAEC8 AFBF005C */  sw         $ra, 0x5C($sp)
/* F8FBC 800DAECC 0C01595B */  jal        func_8005656C
/* F8FC0 800DAED0 AFB30054 */   sw        $s3, 0x54($sp)
/* F8FC4 800DAED4 C7A00040 */  lwc1       $f0, 0x40($sp)
/* F8FC8 800DAED8 26330E90 */  addiu      $s3, $s1, 0xE90
/* F8FCC 800DAEDC 46140000 */  add.s      $f0, $f0, $f20
/* F8FD0 800DAEE0 02602021 */  addu       $a0, $s3, $zero
/* F8FD4 800DAEE4 02002821 */  addu       $a1, $s0, $zero
/* F8FD8 800DAEE8 0C015962 */  jal        func_80056588
/* F8FDC 800DAEEC E7A00040 */   swc1      $f0, 0x40($sp)
/* F8FE0 800DAEF0 02402021 */  addu       $a0, $s2, $zero
/* F8FE4 800DAEF4 0C01583B */  jal        func_800560EC
/* F8FE8 800DAEF8 27A50010 */   addiu     $a1, $sp, 0x10
/* F8FEC 800DAEFC 02602021 */  addu       $a0, $s3, $zero
/* F8FF0 800DAF00 0C01584E */  jal        func_80056138
/* F8FF4 800DAF04 27A50010 */   addiu     $a1, $sp, 0x10
/* F8FF8 800DAF08 8E220F88 */  lw         $v0, 0xF88($s1)
/* F8FFC 800DAF0C 10400006 */  beqz       $v0, .Lmenu_800DAF28
/* F9000 800DAF10 02602821 */   addu      $a1, $s3, $zero
/* F9004 800DAF14 8E82012C */  lw         $v0, 0x12C($s4)
/* F9008 800DAF18 84440118 */  lh         $a0, 0x118($v0)
/* F900C 800DAF1C 8C42011C */  lw         $v0, 0x11C($v0)
/* F9010 800DAF20 0040F809 */  jalr       $v0
/* F9014 800DAF24 02842021 */   addu      $a0, $s4, $a0
.Lmenu_800DAF28:
/* F9018 800DAF28 8FBF005C */  lw         $ra, 0x5C($sp)
/* F901C 800DAF2C 8FB40058 */  lw         $s4, 0x58($sp)
/* F9020 800DAF30 8FB30054 */  lw         $s3, 0x54($sp)
/* F9024 800DAF34 8FB20050 */  lw         $s2, 0x50($sp)
/* F9028 800DAF38 8FB1004C */  lw         $s1, 0x4C($sp)
/* F902C 800DAF3C 8FB00048 */  lw         $s0, 0x48($sp)
/* F9030 800DAF40 D7B40060 */  ldc1       $f20, 0x60($sp)
/* F9034 800DAF44 03E00008 */  jr         $ra
/* F9038 800DAF48 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_menu_800DAF4C
/* F903C 800DAF4C 24A50001 */  addiu      $a1, $a1, 0x1
/* F9040 800DAF50 000528C0 */  sll        $a1, $a1, 3
/* F9044 800DAF54 24A50001 */  addiu      $a1, $a1, 0x1
/* F9048 800DAF58 00C53021 */  addu       $a2, $a2, $a1
/* F904C 800DAF5C 00862021 */  addu       $a0, $a0, $a2
/* F9050 800DAF60 90830F24 */  lbu        $v1, 0xF24($a0)
/* F9054 800DAF64 30620010 */  andi       $v0, $v1, 0x10
/* F9058 800DAF68 10400002 */  beqz       $v0, .Lmenu_800DAF74
/* F905C 800DAF6C 34620020 */   ori       $v0, $v1, 0x20
/* F9060 800DAF70 A0820F24 */  sb         $v0, 0xF24($a0)
.Lmenu_800DAF74:
/* F9064 800DAF74 03E00008 */  jr         $ra
/* F9068 800DAF78 00000000 */   nop

glabel func_menu_800DAF7C
/* F906C 800DAF7C 27BDFF98 */  addiu      $sp, $sp, -0x68
/* F9070 800DAF80 AFB00030 */  sw         $s0, 0x30($sp)
/* F9074 800DAF84 00808021 */  addu       $s0, $a0, $zero
/* F9078 800DAF88 AFB10034 */  sw         $s1, 0x34($sp)
/* F907C 800DAF8C 00C08821 */  addu       $s1, $a2, $zero
/* F9080 800DAF90 3C02800D */  lui        $v0, %hi(D_menu_800CAA30)
/* F9084 800DAF94 AFB50044 */  sw         $s5, 0x44($sp)
/* F9088 800DAF98 AFBF0048 */  sw         $ra, 0x48($sp)
/* F908C 800DAF9C AFB40040 */  sw         $s4, 0x40($sp)
/* F9090 800DAFA0 AFB3003C */  sw         $s3, 0x3C($sp)
/* F9094 800DAFA4 AFB20038 */  sw         $s2, 0x38($sp)
/* F9098 800DAFA8 F7B80060 */  sdc1       $f24, 0x60($sp)
/* F909C 800DAFAC F7B60058 */  sdc1       $f22, 0x58($sp)
/* F90A0 800DAFB0 F7B40050 */  sdc1       $f20, 0x50($sp)
/* F90A4 800DAFB4 244AAA30 */  addiu      $t2, $v0, %lo(D_menu_800CAA30)
/* F90A8 800DAFB8 89470000 */  lwl        $a3, 0x0($t2)
/* F90AC 800DAFBC 99470003 */  lwr        $a3, 0x3($t2)
/* F90B0 800DAFC0 ABA70010 */  swl        $a3, 0x10($sp)
/* F90B4 800DAFC4 BBA70013 */  swr        $a3, 0x13($sp)
/* F90B8 800DAFC8 06210002 */  bgez       $s1, .Lmenu_800DAFD4
/* F90BC 800DAFCC 30B50001 */   andi      $s5, $a1, 0x1
/* F90C0 800DAFD0 8E110F84 */  lw         $s1, 0xF84($s0)
.Lmenu_800DAFD4:
/* F90C4 800DAFD4 8E050F20 */  lw         $a1, 0xF20($s0)
/* F90C8 800DAFD8 0C036366 */  jal        func_menu_800D8D98
/* F90CC 800DAFDC 02002021 */   addu      $a0, $s0, $zero
/* F90D0 800DAFE0 3C034000 */  lui        $v1, (0x40000000 >> 16)
/* F90D4 800DAFE4 8E020E28 */  lw         $v0, 0xE28($s0)
/* F90D8 800DAFE8 8E050F20 */  lw         $a1, 0xF20($s0)
/* F90DC 800DAFEC 44910000 */  mtc1       $s1, $f0
/* F90E0 800DAFF0 46800020 */  cvt.s.w    $f0, $f0
/* F90E4 800DAFF4 AE000F88 */  sw         $zero, 0xF88($s0)
/* F90E8 800DAFF8 00402021 */  addu       $a0, $v0, $zero
/* F90EC 800DAFFC 24420001 */  addiu      $v0, $v0, 0x1
/* F90F0 800DB000 AE020E28 */  sw         $v0, 0xE28($s0)
/* F90F4 800DB004 8CA20020 */  lw         $v0, 0x20($a1)
/* F90F8 800DB008 00042080 */  sll        $a0, $a0, 2
/* F90FC 800DB00C 00821021 */  addu       $v0, $a0, $v0
/* F9100 800DB010 AC430000 */  sw         $v1, 0x0($v0)
/* F9104 800DB014 8CA20020 */  lw         $v0, 0x20($a1)
/* F9108 800DB018 3C01800D */  lui        $at, %hi(D_menu_800CAA68)
/* F910C 800DB01C C422AA68 */  lwc1       $f2, %lo(D_menu_800CAA68)($at)
/* F9110 800DB020 00822021 */  addu       $a0, $a0, $v0
/* F9114 800DB024 8C820000 */  lw         $v0, 0x0($a0)
/* F9118 800DB028 46020002 */  mul.s      $f0, $f0, $f2
/* F911C 800DB02C 34420001 */  ori        $v0, $v0, 0x1
/* F9120 800DB030 AC820000 */  sw         $v0, 0x0($a0)
/* F9124 800DB034 24020001 */  addiu      $v0, $zero, 0x1
/* F9128 800DB038 ACA20038 */  sw         $v0, 0x38($a1)
/* F912C 800DB03C C6020E68 */  lwc1       $f2, 0xE68($s0)
/* F9130 800DB040 0000A021 */  addu       $s4, $zero, $zero
/* F9134 800DB044 46020000 */  add.s      $f0, $f0, $f2
/* F9138 800DB048 3C01800D */  lui        $at, %hi(D_menu_800CAA6C)
/* F913C 800DB04C C422AA6C */  lwc1       $f2, %lo(D_menu_800CAA6C)($at)
/* F9140 800DB050 27B30018 */  addiu      $s3, $sp, 0x18
/* F9144 800DB054 46020002 */  mul.s      $f0, $f0, $f2
/* F9148 800DB058 27B20028 */  addiu      $s2, $sp, 0x28
/* F914C 800DB05C 3C01800D */  lui        $at, %hi(D_menu_800CAA70)
/* F9150 800DB060 C438AA70 */  lwc1       $f24, %lo(D_menu_800CAA70)($at)
/* F9154 800DB064 3C01800D */  lui        $at, %hi(D_menu_800CAA74)
/* F9158 800DB068 C436AA74 */  lwc1       $f22, %lo(D_menu_800CAA74)($at)
/* F915C 800DB06C 46001506 */  mov.s      $f20, $f2
/* F9160 800DB070 E7A00020 */  swc1       $f0, 0x20($sp)
/* F9164 800DB074 00008821 */  addu       $s1, $zero, $zero
.Lmenu_800DB078:
/* F9168 800DB078 001410C0 */  sll        $v0, $s4, 3
.Lmenu_800DB07C:
/* F916C 800DB07C 02221021 */  addu       $v0, $s1, $v0
/* F9170 800DB080 02021021 */  addu       $v0, $s0, $v0
/* F9174 800DB084 90430F24 */  lbu        $v1, 0xF24($v0)
/* F9178 800DB088 30620010 */  andi       $v0, $v1, 0x10
/* F917C 800DB08C 104000C1 */  beqz       $v0, .Lmenu_800DB394
/* F9180 800DB090 30620020 */   andi      $v0, $v1, 0x20
/* F9184 800DB094 504000C0 */  beql       $v0, $zero, .Lmenu_800DB398
/* F9188 800DB098 26310001 */   addiu     $s1, $s1, 0x1
/* F918C 800DB09C 8E020E3C */  lw         $v0, 0xE3C($s0)
/* F9190 800DB0A0 24420004 */  addiu      $v0, $v0, 0x4
/* F9194 800DB0A4 2C420021 */  sltiu      $v0, $v0, 0x21
/* F9198 800DB0A8 14400009 */  bnez       $v0, .Lmenu_800DB0D0
/* F919C 800DB0AC 2682FFFF */   addiu     $v0, $s4, -0x1
/* F91A0 800DB0B0 02002021 */  addu       $a0, $s0, $zero
/* F91A4 800DB0B4 8E020F88 */  lw         $v0, 0xF88($s0)
/* F91A8 800DB0B8 8E030E40 */  lw         $v1, 0xE40($s0)
/* F91AC 800DB0BC 8E050F20 */  lw         $a1, 0xF20($s0)
/* F91B0 800DB0C0 00431021 */  addu       $v0, $v0, $v1
/* F91B4 800DB0C4 0C03638A */  jal        func_menu_800D8E28
/* F91B8 800DB0C8 AE020F88 */   sw        $v0, 0xF88($s0)
/* F91BC 800DB0CC 2682FFFF */  addiu      $v0, $s4, -0x1
.Lmenu_800DB0D0:
/* F91C0 800DB0D0 C6020E60 */  lwc1       $f2, 0xE60($s0)
/* F91C4 800DB0D4 44820000 */  mtc1       $v0, $f0
/* F91C8 800DB0D8 46800020 */  cvt.s.w    $f0, $f0
/* F91CC 800DB0DC 46020000 */  add.s      $f0, $f0, $f2
/* F91D0 800DB0E0 46140102 */  mul.s      $f4, $f0, $f20
/* F91D4 800DB0E4 2622FFFF */  addiu      $v0, $s1, -0x1
/* F91D8 800DB0E8 E7A00018 */  swc1       $f0, 0x18($sp)
/* F91DC 800DB0EC C6020E64 */  lwc1       $f2, 0xE64($s0)
/* F91E0 800DB0F0 44820000 */  mtc1       $v0, $f0
/* F91E4 800DB0F4 46800020 */  cvt.s.w    $f0, $f0
/* F91E8 800DB0F8 46020000 */  add.s      $f0, $f0, $f2
/* F91EC 800DB0FC 46140082 */  mul.s      $f2, $f0, $f20
/* F91F0 800DB100 E7B80028 */  swc1       $f24, 0x28($sp)
/* F91F4 800DB104 E7A0001C */  swc1       $f0, 0x1C($sp)
/* F91F8 800DB108 E7A40018 */  swc1       $f4, 0x18($sp)
/* F91FC 800DB10C 12A00003 */  beqz       $s5, .Lmenu_800DB11C
/* F9200 800DB110 E7A2001C */   swc1      $f2, 0x1C($sp)
/* F9204 800DB114 08036C48 */  j          .Lmenu_800DB120
/* F9208 800DB118 E7B8002C */   swc1      $f24, 0x2C($sp)
.Lmenu_800DB11C:
/* F920C 800DB11C AFA0002C */  sw         $zero, 0x2C($sp)
.Lmenu_800DB120:
/* F9210 800DB120 8E030E58 */  lw         $v1, 0xE58($s0)
/* F9214 800DB124 02603021 */  addu       $a2, $s3, $zero
/* F9218 800DB128 8C620008 */  lw         $v0, 0x8($v1)
/* F921C 800DB12C 8E050E2C */  lw         $a1, 0xE2C($s0)
/* F9220 800DB130 84440050 */  lh         $a0, 0x50($v0)
/* F9224 800DB134 8C420054 */  lw         $v0, 0x54($v0)
/* F9228 800DB138 0040F809 */  jalr       $v0
/* F922C 800DB13C 00642021 */   addu      $a0, $v1, $a0
/* F9230 800DB140 8E030E58 */  lw         $v1, 0xE58($s0)
/* F9234 800DB144 02403021 */  addu       $a2, $s2, $zero
/* F9238 800DB148 8C620008 */  lw         $v0, 0x8($v1)
/* F923C 800DB14C 8E050E2C */  lw         $a1, 0xE2C($s0)
/* F9240 800DB150 84440058 */  lh         $a0, 0x58($v0)
/* F9244 800DB154 8C42005C */  lw         $v0, 0x5C($v0)
/* F9248 800DB158 0040F809 */  jalr       $v0
/* F924C 800DB15C 00642021 */   addu      $a0, $v1, $a0
/* F9250 800DB160 8E030E58 */  lw         $v1, 0xE58($s0)
/* F9254 800DB164 27A60010 */  addiu      $a2, $sp, 0x10
/* F9258 800DB168 8C620008 */  lw         $v0, 0x8($v1)
/* F925C 800DB16C 8E050E2C */  lw         $a1, 0xE2C($s0)
/* F9260 800DB170 84440068 */  lh         $a0, 0x68($v0)
/* F9264 800DB174 8C42006C */  lw         $v0, 0x6C($v0)
/* F9268 800DB178 0040F809 */  jalr       $v0
/* F926C 800DB17C 00642021 */   addu      $a0, $v1, $a0
/* F9270 800DB180 8E020E2C */  lw         $v0, 0xE2C($s0)
/* F9274 800DB184 24420001 */  addiu      $v0, $v0, 0x1
/* F9278 800DB188 AE020E2C */  sw         $v0, 0xE2C($s0)
/* F927C 800DB18C C7A20018 */  lwc1       $f2, 0x18($sp)
/* F9280 800DB190 46141080 */  add.s      $f2, $f2, $f20
/* F9284 800DB194 C7A00028 */  lwc1       $f0, 0x28($sp)
/* F9288 800DB198 46160000 */  add.s      $f0, $f0, $f22
/* F928C 800DB19C E7A20018 */  swc1       $f2, 0x18($sp)
/* F9290 800DB1A0 E7A00028 */  swc1       $f0, 0x28($sp)
/* F9294 800DB1A4 8E030E58 */  lw         $v1, 0xE58($s0)
/* F9298 800DB1A8 02603021 */  addu       $a2, $s3, $zero
/* F929C 800DB1AC 8C620008 */  lw         $v0, 0x8($v1)
/* F92A0 800DB1B0 8E050E2C */  lw         $a1, 0xE2C($s0)
/* F92A4 800DB1B4 84440050 */  lh         $a0, 0x50($v0)
/* F92A8 800DB1B8 8C420054 */  lw         $v0, 0x54($v0)
/* F92AC 800DB1BC 0040F809 */  jalr       $v0
/* F92B0 800DB1C0 00642021 */   addu      $a0, $v1, $a0
/* F92B4 800DB1C4 8E030E58 */  lw         $v1, 0xE58($s0)
/* F92B8 800DB1C8 02403021 */  addu       $a2, $s2, $zero
/* F92BC 800DB1CC 8C620008 */  lw         $v0, 0x8($v1)
/* F92C0 800DB1D0 8E050E2C */  lw         $a1, 0xE2C($s0)
/* F92C4 800DB1D4 84440058 */  lh         $a0, 0x58($v0)
/* F92C8 800DB1D8 8C42005C */  lw         $v0, 0x5C($v0)
/* F92CC 800DB1DC 0040F809 */  jalr       $v0
/* F92D0 800DB1E0 00642021 */   addu      $a0, $v1, $a0
/* F92D4 800DB1E4 8E030E58 */  lw         $v1, 0xE58($s0)
/* F92D8 800DB1E8 27A60010 */  addiu      $a2, $sp, 0x10
/* F92DC 800DB1EC 8C620008 */  lw         $v0, 0x8($v1)
/* F92E0 800DB1F0 8E050E2C */  lw         $a1, 0xE2C($s0)
/* F92E4 800DB1F4 84440068 */  lh         $a0, 0x68($v0)
/* F92E8 800DB1F8 8C42006C */  lw         $v0, 0x6C($v0)
/* F92EC 800DB1FC 0040F809 */  jalr       $v0
/* F92F0 800DB200 00642021 */   addu      $a0, $v1, $a0
/* F92F4 800DB204 8E020E2C */  lw         $v0, 0xE2C($s0)
/* F92F8 800DB208 24420001 */  addiu      $v0, $v0, 0x1
/* F92FC 800DB20C AE020E2C */  sw         $v0, 0xE2C($s0)
/* F9300 800DB210 C7A2001C */  lwc1       $f2, 0x1C($sp)
/* F9304 800DB214 46141080 */  add.s      $f2, $f2, $f20
/* F9308 800DB218 C7A0002C */  lwc1       $f0, 0x2C($sp)
/* F930C 800DB21C 46160000 */  add.s      $f0, $f0, $f22
/* F9310 800DB220 E7A2001C */  swc1       $f2, 0x1C($sp)
/* F9314 800DB224 E7A0002C */  swc1       $f0, 0x2C($sp)
/* F9318 800DB228 8E030E58 */  lw         $v1, 0xE58($s0)
/* F931C 800DB22C 02603021 */  addu       $a2, $s3, $zero
/* F9320 800DB230 8C620008 */  lw         $v0, 0x8($v1)
/* F9324 800DB234 8E050E2C */  lw         $a1, 0xE2C($s0)
/* F9328 800DB238 84440050 */  lh         $a0, 0x50($v0)
/* F932C 800DB23C 8C420054 */  lw         $v0, 0x54($v0)
/* F9330 800DB240 0040F809 */  jalr       $v0
/* F9334 800DB244 00642021 */   addu      $a0, $v1, $a0
/* F9338 800DB248 8E030E58 */  lw         $v1, 0xE58($s0)
/* F933C 800DB24C 02403021 */  addu       $a2, $s2, $zero
/* F9340 800DB250 8C620008 */  lw         $v0, 0x8($v1)
/* F9344 800DB254 8E050E2C */  lw         $a1, 0xE2C($s0)
/* F9348 800DB258 84440058 */  lh         $a0, 0x58($v0)
/* F934C 800DB25C 8C42005C */  lw         $v0, 0x5C($v0)
/* F9350 800DB260 0040F809 */  jalr       $v0
/* F9354 800DB264 00642021 */   addu      $a0, $v1, $a0
/* F9358 800DB268 8E030E58 */  lw         $v1, 0xE58($s0)
/* F935C 800DB26C 27A60010 */  addiu      $a2, $sp, 0x10
/* F9360 800DB270 8C620008 */  lw         $v0, 0x8($v1)
/* F9364 800DB274 8E050E2C */  lw         $a1, 0xE2C($s0)
/* F9368 800DB278 84440068 */  lh         $a0, 0x68($v0)
/* F936C 800DB27C 8C42006C */  lw         $v0, 0x6C($v0)
/* F9370 800DB280 0040F809 */  jalr       $v0
/* F9374 800DB284 00642021 */   addu      $a0, $v1, $a0
/* F9378 800DB288 8E020E2C */  lw         $v0, 0xE2C($s0)
/* F937C 800DB28C 24420001 */  addiu      $v0, $v0, 0x1
/* F9380 800DB290 AE020E2C */  sw         $v0, 0xE2C($s0)
/* F9384 800DB294 C7A20018 */  lwc1       $f2, 0x18($sp)
/* F9388 800DB298 46141081 */  sub.s      $f2, $f2, $f20
/* F938C 800DB29C C7A00028 */  lwc1       $f0, 0x28($sp)
/* F9390 800DB2A0 46160001 */  sub.s      $f0, $f0, $f22
/* F9394 800DB2A4 E7A20018 */  swc1       $f2, 0x18($sp)
/* F9398 800DB2A8 E7A00028 */  swc1       $f0, 0x28($sp)
/* F939C 800DB2AC 8E030E58 */  lw         $v1, 0xE58($s0)
/* F93A0 800DB2B0 02603021 */  addu       $a2, $s3, $zero
/* F93A4 800DB2B4 8C620008 */  lw         $v0, 0x8($v1)
/* F93A8 800DB2B8 8E050E2C */  lw         $a1, 0xE2C($s0)
/* F93AC 800DB2BC 84440050 */  lh         $a0, 0x50($v0)
/* F93B0 800DB2C0 8C420054 */  lw         $v0, 0x54($v0)
/* F93B4 800DB2C4 0040F809 */  jalr       $v0
/* F93B8 800DB2C8 00642021 */   addu      $a0, $v1, $a0
/* F93BC 800DB2CC 8E030E58 */  lw         $v1, 0xE58($s0)
/* F93C0 800DB2D0 02403021 */  addu       $a2, $s2, $zero
/* F93C4 800DB2D4 8C620008 */  lw         $v0, 0x8($v1)
/* F93C8 800DB2D8 8E050E2C */  lw         $a1, 0xE2C($s0)
/* F93CC 800DB2DC 84440058 */  lh         $a0, 0x58($v0)
/* F93D0 800DB2E0 8C42005C */  lw         $v0, 0x5C($v0)
/* F93D4 800DB2E4 0040F809 */  jalr       $v0
/* F93D8 800DB2E8 00642021 */   addu      $a0, $v1, $a0
/* F93DC 800DB2EC 8E030E58 */  lw         $v1, 0xE58($s0)
/* F93E0 800DB2F0 27A60010 */  addiu      $a2, $sp, 0x10
/* F93E4 800DB2F4 8C620008 */  lw         $v0, 0x8($v1)
/* F93E8 800DB2F8 8E050E2C */  lw         $a1, 0xE2C($s0)
/* F93EC 800DB2FC 84440068 */  lh         $a0, 0x68($v0)
/* F93F0 800DB300 8C42006C */  lw         $v0, 0x6C($v0)
/* F93F4 800DB304 0040F809 */  jalr       $v0
/* F93F8 800DB308 00642021 */   addu      $a0, $v1, $a0
/* F93FC 800DB30C 8E020E30 */  lw         $v0, 0xE30($s0)
/* F9400 800DB310 8E030E5C */  lw         $v1, 0xE5C($s0)
/* F9404 800DB314 00021080 */  sll        $v0, $v0, 2
/* F9408 800DB318 00621821 */  addu       $v1, $v1, $v0
/* F940C 800DB31C 8E020E2C */  lw         $v0, 0xE2C($s0)
/* F9410 800DB320 92040E3F */  lbu        $a0, 0xE3F($s0)
/* F9414 800DB324 24420001 */  addiu      $v0, $v0, 0x1
/* F9418 800DB328 AE020E2C */  sw         $v0, 0xE2C($s0)
/* F941C 800DB32C A0640001 */  sb         $a0, 0x1($v1)
/* F9420 800DB330 92020E3F */  lbu        $v0, 0xE3F($s0)
/* F9424 800DB334 24420001 */  addiu      $v0, $v0, 0x1
/* F9428 800DB338 A0620002 */  sb         $v0, 0x2($v1)
/* F942C 800DB33C 92020E3F */  lbu        $v0, 0xE3F($s0)
/* F9430 800DB340 24420003 */  addiu      $v0, $v0, 0x3
/* F9434 800DB344 A0620003 */  sb         $v0, 0x3($v1)
/* F9438 800DB348 92020E3F */  lbu        $v0, 0xE3F($s0)
/* F943C 800DB34C 24630004 */  addiu      $v1, $v1, 0x4
/* F9440 800DB350 24420003 */  addiu      $v0, $v0, 0x3
/* F9444 800DB354 A0620001 */  sb         $v0, 0x1($v1)
/* F9448 800DB358 92020E3F */  lbu        $v0, 0xE3F($s0)
/* F944C 800DB35C 24420001 */  addiu      $v0, $v0, 0x1
/* F9450 800DB360 A0620002 */  sb         $v0, 0x2($v1)
/* F9454 800DB364 92020E3F */  lbu        $v0, 0xE3F($s0)
/* F9458 800DB368 24420002 */  addiu      $v0, $v0, 0x2
/* F945C 800DB36C A0620003 */  sb         $v0, 0x3($v1)
/* F9460 800DB370 8E020E3C */  lw         $v0, 0xE3C($s0)
/* F9464 800DB374 8E030E40 */  lw         $v1, 0xE40($s0)
/* F9468 800DB378 24420004 */  addiu      $v0, $v0, 0x4
/* F946C 800DB37C AE020E3C */  sw         $v0, 0xE3C($s0)
/* F9470 800DB380 8E020E30 */  lw         $v0, 0xE30($s0)
/* F9474 800DB384 24630002 */  addiu      $v1, $v1, 0x2
/* F9478 800DB388 AE030E40 */  sw         $v1, 0xE40($s0)
/* F947C 800DB38C 24420002 */  addiu      $v0, $v0, 0x2
/* F9480 800DB390 AE020E30 */  sw         $v0, 0xE30($s0)
.Lmenu_800DB394:
/* F9484 800DB394 26310001 */  addiu      $s1, $s1, 0x1
.Lmenu_800DB398:
/* F9488 800DB398 2A220008 */  slti       $v0, $s1, 0x8
/* F948C 800DB39C 1440FF37 */  bnez       $v0, .Lmenu_800DB07C
/* F9490 800DB3A0 001410C0 */   sll       $v0, $s4, 3
/* F9494 800DB3A4 26940001 */  addiu      $s4, $s4, 0x1
/* F9498 800DB3A8 2A82000C */  slti       $v0, $s4, 0xC
/* F949C 800DB3AC 1440FF32 */  bnez       $v0, .Lmenu_800DB078
/* F94A0 800DB3B0 00008821 */   addu      $s1, $zero, $zero
/* F94A4 800DB3B4 8E020E3C */  lw         $v0, 0xE3C($s0)
/* F94A8 800DB3B8 10400007 */  beqz       $v0, .Lmenu_800DB3D8
/* F94AC 800DB3BC 02002021 */   addu      $a0, $s0, $zero
/* F94B0 800DB3C0 8E020F88 */  lw         $v0, 0xF88($s0)
/* F94B4 800DB3C4 8E030E40 */  lw         $v1, 0xE40($s0)
/* F94B8 800DB3C8 8E050F20 */  lw         $a1, 0xF20($s0)
/* F94BC 800DB3CC 00431021 */  addu       $v0, $v0, $v1
/* F94C0 800DB3D0 0C03638A */  jal        func_menu_800D8E28
/* F94C4 800DB3D4 AE020F88 */   sw        $v0, 0xF88($s0)
.Lmenu_800DB3D8:
/* F94C8 800DB3D8 8E050F20 */  lw         $a1, 0xF20($s0)
/* F94CC 800DB3DC 0C0363C7 */  jal        func_menu_800D8F1C
/* F94D0 800DB3E0 02002021 */   addu      $a0, $s0, $zero
/* F94D4 800DB3E4 8FBF0048 */  lw         $ra, 0x48($sp)
/* F94D8 800DB3E8 8FB50044 */  lw         $s5, 0x44($sp)
/* F94DC 800DB3EC 8FB40040 */  lw         $s4, 0x40($sp)
/* F94E0 800DB3F0 8FB3003C */  lw         $s3, 0x3C($sp)
/* F94E4 800DB3F4 8FB20038 */  lw         $s2, 0x38($sp)
/* F94E8 800DB3F8 8FB10034 */  lw         $s1, 0x34($sp)
/* F94EC 800DB3FC 8FB00030 */  lw         $s0, 0x30($sp)
/* F94F0 800DB400 D7B80060 */  ldc1       $f24, 0x60($sp)
/* F94F4 800DB404 D7B60058 */  ldc1       $f22, 0x58($sp)
/* F94F8 800DB408 D7B40050 */  ldc1       $f20, 0x50($sp)
/* F94FC 800DB40C 03E00008 */  jr         $ra
/* F9500 800DB410 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_menu_800DB414
/* F9504 800DB414 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* F9508 800DB418 AFB1002C */  sw         $s1, 0x2C($sp)
/* F950C 800DB41C 00808821 */  addu       $s1, $a0, $zero
/* F9510 800DB420 00A02021 */  addu       $a0, $a1, $zero
/* F9514 800DB424 27A50018 */  addiu      $a1, $sp, 0x18
/* F9518 800DB428 27A6001C */  addiu      $a2, $sp, 0x1C
/* F951C 800DB42C AFBF0030 */  sw         $ra, 0x30($sp)
/* F9520 800DB430 AFB00028 */  sw         $s0, 0x28($sp)
/* F9524 800DB434 8C90000C */  lw         $s0, 0xC($a0)
/* F9528 800DB438 0C036165 */  jal        func_menu_800D8594
/* F952C 800DB43C 27A70020 */   addiu     $a3, $sp, 0x20
/* F9530 800DB440 02202021 */  addu       $a0, $s1, $zero
/* F9534 800DB444 8FA60018 */  lw         $a2, 0x18($sp)
/* F9538 800DB448 8FA7001C */  lw         $a3, 0x1C($sp)
/* F953C 800DB44C 8FA20020 */  lw         $v0, 0x20($sp)
/* F9540 800DB450 02002821 */  addu       $a1, $s0, $zero
/* F9544 800DB454 0C03632B */  jal        func_menu_800D8CAC
/* F9548 800DB458 AFA20010 */   sw        $v0, 0x10($sp)
/* F954C 800DB45C 0441000E */  bgez       $v0, .Lmenu_800DB498
/* F9550 800DB460 2442FFEB */   addiu     $v0, $v0, -0x15
/* F9554 800DB464 262400BC */  addiu      $a0, $s1, 0xBC
/* F9558 800DB468 8FA60018 */  lw         $a2, 0x18($sp)
/* F955C 800DB46C 8FA7001C */  lw         $a3, 0x1C($sp)
/* F9560 800DB470 8FA20020 */  lw         $v0, 0x20($sp)
/* F9564 800DB474 02002821 */  addu       $a1, $s0, $zero
/* F9568 800DB478 AFA00014 */  sw         $zero, 0x14($sp)
/* F956C 800DB47C 0C037A0A */  jal        func_menu_800DE828
/* F9570 800DB480 AFA20010 */   sw        $v0, 0x10($sp)
/* F9574 800DB484 04410004 */  bgez       $v0, .Lmenu_800DB498
/* F9578 800DB488 2442FFEB */   addiu     $v0, $v0, -0x15
/* F957C 800DB48C 44800000 */  mtc1       $zero, $f0
/* F9580 800DB490 08036D2B */  j          .Lmenu_800DB4AC
/* F9584 800DB494 00000000 */   nop
.Lmenu_800DB498:
/* F9588 800DB498 3C01800D */  lui        $at, %hi(D_menu_800CAA78)
/* F958C 800DB49C C422AA78 */  lwc1       $f2, %lo(D_menu_800CAA78)($at)
/* F9590 800DB4A0 44820000 */  mtc1       $v0, $f0
/* F9594 800DB4A4 46800020 */  cvt.s.w    $f0, $f0
/* F9598 800DB4A8 46020002 */  mul.s      $f0, $f0, $f2
.Lmenu_800DB4AC:
/* F959C 800DB4AC 8FBF0030 */  lw         $ra, 0x30($sp)
/* F95A0 800DB4B0 8FB1002C */  lw         $s1, 0x2C($sp)
/* F95A4 800DB4B4 8FB00028 */  lw         $s0, 0x28($sp)
/* F95A8 800DB4B8 03E00008 */  jr         $ra
/* F95AC 800DB4BC 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800DB4C0
/* F95B0 800DB4C0 27BDFF90 */  addiu      $sp, $sp, -0x70
/* F95B4 800DB4C4 AFB20058 */  sw         $s2, 0x58($sp)
/* F95B8 800DB4C8 00809021 */  addu       $s2, $a0, $zero
/* F95BC 800DB4CC AFB40060 */  sw         $s4, 0x60($sp)
/* F95C0 800DB4D0 00A0A021 */  addu       $s4, $a1, $zero
/* F95C4 800DB4D4 AFB60068 */  sw         $s6, 0x68($sp)
/* F95C8 800DB4D8 00C0B021 */  addu       $s6, $a2, $zero
/* F95CC 800DB4DC AFB10054 */  sw         $s1, 0x54($sp)
/* F95D0 800DB4E0 00008821 */  addu       $s1, $zero, $zero
/* F95D4 800DB4E4 AFBF006C */  sw         $ra, 0x6C($sp)
/* F95D8 800DB4E8 AFB50064 */  sw         $s5, 0x64($sp)
/* F95DC 800DB4EC AFB3005C */  sw         $s3, 0x5C($sp)
/* F95E0 800DB4F0 AFB00050 */  sw         $s0, 0x50($sp)
/* F95E4 800DB4F4 8ED30078 */  lw         $s3, 0x78($s6)
/* F95E8 800DB4F8 00008021 */  addu       $s0, $zero, $zero
.Lmenu_800DB4FC:
/* F95EC 800DB4FC 001118C0 */  sll        $v1, $s1, 3
/* F95F0 800DB500 02031021 */  addu       $v0, $s0, $v1
.Lmenu_800DB504:
/* F95F4 800DB504 02421021 */  addu       $v0, $s2, $v0
/* F95F8 800DB508 A0400F24 */  sb         $zero, 0xF24($v0)
/* F95FC 800DB50C 26100001 */  addiu      $s0, $s0, 0x1
/* F9600 800DB510 2A020008 */  slti       $v0, $s0, 0x8
/* F9604 800DB514 1440FFFB */  bnez       $v0, .Lmenu_800DB504
/* F9608 800DB518 02031021 */   addu      $v0, $s0, $v1
/* F960C 800DB51C 26310001 */  addiu      $s1, $s1, 0x1
/* F9610 800DB520 2A22000C */  slti       $v0, $s1, 0xC
/* F9614 800DB524 1440FFF5 */  bnez       $v0, .Lmenu_800DB4FC
/* F9618 800DB528 00008021 */   addu      $s0, $zero, $zero
/* F961C 800DB52C 02402021 */  addu       $a0, $s2, $zero
/* F9620 800DB530 0C03699C */  jal        func_menu_800DA670
/* F9624 800DB534 24050001 */   addiu     $a1, $zero, 0x1
/* F9628 800DB538 8E82000C */  lw         $v0, 0xC($s4)
/* F962C 800DB53C 10400138 */  beqz       $v0, .Lmenu_800DBA20
/* F9630 800DB540 AFA20034 */   sw        $v0, 0x34($sp)
/* F9634 800DB544 02802021 */  addu       $a0, $s4, $zero
/* F9638 800DB548 27B10028 */  addiu      $s1, $sp, 0x28
/* F963C 800DB54C 02202821 */  addu       $a1, $s1, $zero
/* F9640 800DB550 27B0002C */  addiu      $s0, $sp, 0x2C
/* F9644 800DB554 02003021 */  addu       $a2, $s0, $zero
/* F9648 800DB558 27B50030 */  addiu      $s5, $sp, 0x30
/* F964C 800DB55C 0C036165 */  jal        func_menu_800D8594
/* F9650 800DB560 02A03821 */   addu      $a3, $s5, $zero
/* F9654 800DB564 8E830014 */  lw         $v1, 0x14($s4)
/* F9658 800DB568 8E860010 */  lw         $a2, 0x10($s4)
/* F965C 800DB56C 8FA70028 */  lw         $a3, 0x28($sp)
/* F9660 800DB570 8FA2002C */  lw         $v0, 0x2C($sp)
/* F9664 800DB574 02402021 */  addu       $a0, $s2, $zero
/* F9668 800DB578 AFA30040 */  sw         $v1, 0x40($sp)
/* F966C 800DB57C AFA6003C */  sw         $a2, 0x3C($sp)
/* F9670 800DB580 AFA20010 */  sw         $v0, 0x10($sp)
/* F9674 800DB584 24020015 */  addiu      $v0, $zero, 0x15
/* F9678 800DB588 AFA20014 */  sw         $v0, 0x14($sp)
/* F967C 800DB58C 8FA30030 */  lw         $v1, 0x30($sp)
/* F9680 800DB590 240200EF */  addiu      $v0, $zero, 0xEF
/* F9684 800DB594 AFA6001C */  sw         $a2, 0x1C($sp)
/* F9688 800DB598 AFA20020 */  sw         $v0, 0x20($sp)
/* F968C 800DB59C AFA30018 */  sw         $v1, 0x18($sp)
/* F9690 800DB5A0 8FA60034 */  lw         $a2, 0x34($sp)
/* F9694 800DB5A4 0C0367FB */  jal        func_menu_800D9FEC
/* F9698 800DB5A8 02C02821 */   addu      $a1, $s6, $zero
/* F969C 800DB5AC 8FA20034 */  lw         $v0, 0x34($sp)
/* F96A0 800DB5B0 94430010 */  lhu        $v1, 0x10($v0)
/* F96A4 800DB5B4 240207FF */  addiu      $v0, $zero, 0x7FF
/* F96A8 800DB5B8 14620076 */  bne        $v1, $v0, .Lmenu_800DB794
/* F96AC 800DB5BC 00000000 */   nop
/* F96B0 800DB5C0 8FA50028 */  lw         $a1, 0x28($sp)
/* F96B4 800DB5C4 8FA6002C */  lw         $a2, 0x2C($sp)
/* F96B8 800DB5C8 0C036B36 */  jal        func_menu_800DACD8
/* F96BC 800DB5CC 02402021 */   addu      $a0, $s2, $zero
/* F96C0 800DB5D0 00409821 */  addu       $s3, $v0, $zero
/* F96C4 800DB5D4 06600012 */  bltz       $s3, .Lmenu_800DB620
/* F96C8 800DB5D8 02402021 */   addu      $a0, $s2, $zero
/* F96CC 800DB5DC 02602821 */  addu       $a1, $s3, $zero
/* F96D0 800DB5E0 27A60034 */  addiu      $a2, $sp, 0x34
/* F96D4 800DB5E4 02203821 */  addu       $a3, $s1, $zero
/* F96D8 800DB5E8 27A20038 */  addiu      $v0, $sp, 0x38
/* F96DC 800DB5EC AFA20014 */  sw         $v0, 0x14($sp)
/* F96E0 800DB5F0 27A2003C */  addiu      $v0, $sp, 0x3C
/* F96E4 800DB5F4 AFA2001C */  sw         $v0, 0x1C($sp)
/* F96E8 800DB5F8 27A20040 */  addiu      $v0, $sp, 0x40
/* F96EC 800DB5FC AFB00010 */  sw         $s0, 0x10($sp)
/* F96F0 800DB600 AFB50018 */  sw         $s5, 0x18($sp)
/* F96F4 800DB604 0C036B43 */  jal        func_menu_800DAD0C
/* F96F8 800DB608 AFA20020 */   sw        $v0, 0x20($sp)
/* F96FC 800DB60C 8FA20034 */  lw         $v0, 0x34($sp)
/* F9700 800DB610 94420010 */  lhu        $v0, 0x10($v0)
/* F9704 800DB614 28420800 */  slti       $v0, $v0, 0x800
/* F9708 800DB618 54400001 */  bnel       $v0, $zero, .Lmenu_800DB620
/* F970C 800DB61C 2413FFFF */   addiu     $s3, $zero, -0x1
.Lmenu_800DB620:
/* F9710 800DB620 24020012 */  addiu      $v0, $zero, 0x12
/* F9714 800DB624 06610011 */  bgez       $s3, .Lmenu_800DB66C
/* F9718 800DB628 AE420F84 */   sw        $v0, 0xF84($s2)
/* F971C 800DB62C 02802021 */  addu       $a0, $s4, $zero
/* F9720 800DB630 27A50028 */  addiu      $a1, $sp, 0x28
/* F9724 800DB634 27A6002C */  addiu      $a2, $sp, 0x2C
/* F9728 800DB638 0C036165 */  jal        func_menu_800D8594
/* F972C 800DB63C 27A70030 */   addiu     $a3, $sp, 0x30
/* F9730 800DB640 8FA20028 */  lw         $v0, 0x28($sp)
/* F9734 800DB644 8FA3002C */  lw         $v1, 0x2C($sp)
/* F9738 800DB648 24420001 */  addiu      $v0, $v0, 0x1
/* F973C 800DB64C 000210C0 */  sll        $v0, $v0, 3
/* F9740 800DB650 24420001 */  addiu      $v0, $v0, 0x1
/* F9744 800DB654 00621821 */  addu       $v1, $v1, $v0
/* F9748 800DB658 02431821 */  addu       $v1, $s2, $v1
/* F974C 800DB65C 90620F24 */  lbu        $v0, 0xF24($v1)
/* F9750 800DB660 34420030 */  ori        $v0, $v0, 0x30
/* F9754 800DB664 08036E82 */  j          .Lmenu_800DBA08
/* F9758 800DB668 A0620F24 */   sb        $v0, 0xF24($v1)
.Lmenu_800DB66C:
/* F975C 800DB66C 8FA20030 */  lw         $v0, 0x30($sp)
/* F9760 800DB670 8FB00034 */  lw         $s0, 0x34($sp)
/* F9764 800DB674 30420001 */  andi       $v0, $v0, 0x1
/* F9768 800DB678 10400008 */  beqz       $v0, .Lmenu_800DB69C
/* F976C 800DB67C 00000000 */   nop
/* F9770 800DB680 0C037D2B */  jal        func_menu_800DF4AC
/* F9774 800DB684 02002021 */   addu      $a0, $s0, $zero
/* F9778 800DB688 02002021 */  addu       $a0, $s0, $zero
/* F977C 800DB68C 0C037D27 */  jal        func_menu_800DF49C
/* F9780 800DB690 AFA20044 */   sw        $v0, 0x44($sp)
/* F9784 800DB694 08036DAD */  j          .Lmenu_800DB6B4
/* F9788 800DB698 AFA20048 */   sw        $v0, 0x48($sp)
.Lmenu_800DB69C:
/* F978C 800DB69C 0C037D27 */  jal        func_menu_800DF49C
/* F9790 800DB6A0 02002021 */   addu      $a0, $s0, $zero
/* F9794 800DB6A4 02002021 */  addu       $a0, $s0, $zero
/* F9798 800DB6A8 0C037D2B */  jal        func_menu_800DF4AC
/* F979C 800DB6AC AFA20044 */   sw        $v0, 0x44($sp)
/* F97A0 800DB6B0 AFA20048 */  sw         $v0, 0x48($sp)
.Lmenu_800DB6B4:
/* F97A4 800DB6B4 00008821 */  addu       $s1, $zero, $zero
.Lmenu_800DB6B8:
/* F97A8 800DB6B8 8FA20044 */  lw         $v0, 0x44($sp)
/* F97AC 800DB6BC 0222102A */  slt        $v0, $s1, $v0
/* F97B0 800DB6C0 104000D1 */  beqz       $v0, .Lmenu_800DBA08
/* F97B4 800DB6C4 00008021 */   addu      $s0, $zero, $zero
.Lmenu_800DB6C8:
/* F97B8 800DB6C8 8FA20048 */  lw         $v0, 0x48($sp)
/* F97BC 800DB6CC 0202102A */  slt        $v0, $s0, $v0
/* F97C0 800DB6D0 1040002E */  beqz       $v0, .Lmenu_800DB78C
/* F97C4 800DB6D4 02202821 */   addu      $a1, $s1, $zero
/* F97C8 800DB6D8 8FA20034 */  lw         $v0, 0x34($sp)
/* F97CC 800DB6DC 8FA70030 */  lw         $a3, 0x30($sp)
/* F97D0 800DB6E0 8C44000C */  lw         $a0, 0xC($v0)
/* F97D4 800DB6E4 0C037CEB */  jal        func_menu_800DF3AC
/* F97D8 800DB6E8 02003021 */   addu      $a2, $s0, $zero
/* F97DC 800DB6EC 00401821 */  addu       $v1, $v0, $zero
/* F97E0 800DB6F0 90620000 */  lbu        $v0, 0x0($v1)
/* F97E4 800DB6F4 90630001 */  lbu        $v1, 0x1($v1)
/* F97E8 800DB6F8 00431025 */  or         $v0, $v0, $v1
/* F97EC 800DB6FC 3042003F */  andi       $v0, $v0, 0x3F
/* F97F0 800DB700 10400020 */  beqz       $v0, .Lmenu_800DB784
/* F97F4 800DB704 02402021 */   addu      $a0, $s2, $zero
/* F97F8 800DB708 8FA3002C */  lw         $v1, 0x2C($sp)
/* F97FC 800DB70C 8FA20028 */  lw         $v0, 0x28($sp)
/* F9800 800DB710 02031821 */  addu       $v1, $s0, $v1
/* F9804 800DB714 02221021 */  addu       $v0, $s1, $v0
/* F9808 800DB718 24420001 */  addiu      $v0, $v0, 0x1
/* F980C 800DB71C 000210C0 */  sll        $v0, $v0, 3
/* F9810 800DB720 24420001 */  addiu      $v0, $v0, 0x1
/* F9814 800DB724 00621821 */  addu       $v1, $v1, $v0
/* F9818 800DB728 02431821 */  addu       $v1, $s2, $v1
/* F981C 800DB72C 90620F24 */  lbu        $v0, 0xF24($v1)
/* F9820 800DB730 34420010 */  ori        $v0, $v0, 0x10
/* F9824 800DB734 A0620F24 */  sb         $v0, 0xF24($v1)
/* F9828 800DB738 8FA50028 */  lw         $a1, 0x28($sp)
/* F982C 800DB73C 8FA6002C */  lw         $a2, 0x2C($sp)
/* F9830 800DB740 02252821 */  addu       $a1, $s1, $a1
/* F9834 800DB744 0C036B36 */  jal        func_menu_800DACD8
/* F9838 800DB748 02063021 */   addu      $a2, $s0, $a2
/* F983C 800DB74C 5262FFDE */  beql       $s3, $v0, .Lmenu_800DB6C8
/* F9840 800DB750 26100001 */   addiu     $s0, $s0, 0x1
/* F9844 800DB754 8FA2002C */  lw         $v0, 0x2C($sp)
/* F9848 800DB758 8FA30028 */  lw         $v1, 0x28($sp)
/* F984C 800DB75C 02021021 */  addu       $v0, $s0, $v0
/* F9850 800DB760 02231821 */  addu       $v1, $s1, $v1
/* F9854 800DB764 24630001 */  addiu      $v1, $v1, 0x1
/* F9858 800DB768 000318C0 */  sll        $v1, $v1, 3
/* F985C 800DB76C 24630001 */  addiu      $v1, $v1, 0x1
/* F9860 800DB770 00431021 */  addu       $v0, $v0, $v1
/* F9864 800DB774 02421021 */  addu       $v0, $s2, $v0
/* F9868 800DB778 90430F24 */  lbu        $v1, 0xF24($v0)
/* F986C 800DB77C 34630020 */  ori        $v1, $v1, 0x20
/* F9870 800DB780 A0430F24 */  sb         $v1, 0xF24($v0)
.Lmenu_800DB784:
/* F9874 800DB784 08036DB2 */  j          .Lmenu_800DB6C8
/* F9878 800DB788 26100001 */   addiu     $s0, $s0, 0x1
.Lmenu_800DB78C:
/* F987C 800DB78C 08036DAE */  j          .Lmenu_800DB6B8
/* F9880 800DB790 26310001 */   addiu     $s1, $s1, 0x1
.Lmenu_800DB794:
/* F9884 800DB794 8FA20030 */  lw         $v0, 0x30($sp)
/* F9888 800DB798 AE400F84 */  sw         $zero, 0xF84($s2)
/* F988C 800DB79C 8FB00034 */  lw         $s0, 0x34($sp)
/* F9890 800DB7A0 30420001 */  andi       $v0, $v0, 0x1
/* F9894 800DB7A4 10400008 */  beqz       $v0, .Lmenu_800DB7C8
/* F9898 800DB7A8 00000000 */   nop
/* F989C 800DB7AC 0C037D2B */  jal        func_menu_800DF4AC
/* F98A0 800DB7B0 02002021 */   addu      $a0, $s0, $zero
/* F98A4 800DB7B4 02002021 */  addu       $a0, $s0, $zero
/* F98A8 800DB7B8 0C037D27 */  jal        func_menu_800DF49C
/* F98AC 800DB7BC AFA20044 */   sw        $v0, 0x44($sp)
/* F98B0 800DB7C0 08036DF8 */  j          .Lmenu_800DB7E0
/* F98B4 800DB7C4 AFA20048 */   sw        $v0, 0x48($sp)
.Lmenu_800DB7C8:
/* F98B8 800DB7C8 0C037D27 */  jal        func_menu_800DF49C
/* F98BC 800DB7CC 02002021 */   addu      $a0, $s0, $zero
/* F98C0 800DB7D0 02002021 */  addu       $a0, $s0, $zero
/* F98C4 800DB7D4 0C037D2B */  jal        func_menu_800DF4AC
/* F98C8 800DB7D8 AFA20044 */   sw        $v0, 0x44($sp)
/* F98CC 800DB7DC AFA20048 */  sw         $v0, 0x48($sp)
.Lmenu_800DB7E0:
/* F98D0 800DB7E0 00008821 */  addu       $s1, $zero, $zero
.Lmenu_800DB7E4:
/* F98D4 800DB7E4 8FA20044 */  lw         $v0, 0x44($sp)
/* F98D8 800DB7E8 0222102A */  slt        $v0, $s1, $v0
/* F98DC 800DB7EC 10400063 */  beqz       $v0, .Lmenu_800DB97C
/* F98E0 800DB7F0 00008021 */   addu      $s0, $zero, $zero
/* F98E4 800DB7F4 265300BC */  addiu      $s3, $s2, 0xBC
.Lmenu_800DB7F8:
/* F98E8 800DB7F8 8FA20048 */  lw         $v0, 0x48($sp)
/* F98EC 800DB7FC 0202102A */  slt        $v0, $s0, $v0
/* F98F0 800DB800 1040005C */  beqz       $v0, .Lmenu_800DB974
/* F98F4 800DB804 02202821 */   addu      $a1, $s1, $zero
/* F98F8 800DB808 8FA20034 */  lw         $v0, 0x34($sp)
/* F98FC 800DB80C 8FA70030 */  lw         $a3, 0x30($sp)
/* F9900 800DB810 8C44000C */  lw         $a0, 0xC($v0)
/* F9904 800DB814 0C037CEB */  jal        func_menu_800DF3AC
/* F9908 800DB818 02003021 */   addu      $a2, $s0, $zero
/* F990C 800DB81C 00401821 */  addu       $v1, $v0, $zero
/* F9910 800DB820 90620000 */  lbu        $v0, 0x0($v1)
/* F9914 800DB824 90630001 */  lbu        $v1, 0x1($v1)
/* F9918 800DB828 00431025 */  or         $v0, $v0, $v1
/* F991C 800DB82C 3042003F */  andi       $v0, $v0, 0x3F
/* F9920 800DB830 5040FFF1 */  beql       $v0, $zero, .Lmenu_800DB7F8
/* F9924 800DB834 26100001 */   addiu     $s0, $s0, 0x1
/* F9928 800DB838 8FA3002C */  lw         $v1, 0x2C($sp)
/* F992C 800DB83C 8FA20028 */  lw         $v0, 0x28($sp)
/* F9930 800DB840 02031821 */  addu       $v1, $s0, $v1
/* F9934 800DB844 02221021 */  addu       $v0, $s1, $v0
/* F9938 800DB848 24420001 */  addiu      $v0, $v0, 0x1
/* F993C 800DB84C 000210C0 */  sll        $v0, $v0, 3
/* F9940 800DB850 24420001 */  addiu      $v0, $v0, 0x1
/* F9944 800DB854 00621821 */  addu       $v1, $v1, $v0
/* F9948 800DB858 02431821 */  addu       $v1, $s2, $v1
/* F994C 800DB85C 90620F24 */  lbu        $v0, 0xF24($v1)
/* F9950 800DB860 34420010 */  ori        $v0, $v0, 0x10
/* F9954 800DB864 A0620F24 */  sb         $v0, 0xF24($v1)
/* F9958 800DB868 8FA3002C */  lw         $v1, 0x2C($sp)
/* F995C 800DB86C 8FA20028 */  lw         $v0, 0x28($sp)
/* F9960 800DB870 02031821 */  addu       $v1, $s0, $v1
/* F9964 800DB874 02221021 */  addu       $v0, $s1, $v0
/* F9968 800DB878 24420001 */  addiu      $v0, $v0, 0x1
/* F996C 800DB87C 000210C0 */  sll        $v0, $v0, 3
/* F9970 800DB880 24420002 */  addiu      $v0, $v0, 0x2
/* F9974 800DB884 00621821 */  addu       $v1, $v1, $v0
/* F9978 800DB888 02431821 */  addu       $v1, $s2, $v1
/* F997C 800DB88C 90620F24 */  lbu        $v0, 0xF24($v1)
/* F9980 800DB890 34420001 */  ori        $v0, $v0, 0x1
/* F9984 800DB894 A0620F24 */  sb         $v0, 0xF24($v1)
/* F9988 800DB898 8FA3002C */  lw         $v1, 0x2C($sp)
/* F998C 800DB89C 8FA20028 */  lw         $v0, 0x28($sp)
/* F9990 800DB8A0 02031821 */  addu       $v1, $s0, $v1
/* F9994 800DB8A4 02221021 */  addu       $v0, $s1, $v0
/* F9998 800DB8A8 24420002 */  addiu      $v0, $v0, 0x2
/* F999C 800DB8AC 000210C0 */  sll        $v0, $v0, 3
/* F99A0 800DB8B0 24420001 */  addiu      $v0, $v0, 0x1
/* F99A4 800DB8B4 00621821 */  addu       $v1, $v1, $v0
/* F99A8 800DB8B8 02431821 */  addu       $v1, $s2, $v1
/* F99AC 800DB8BC 90620F24 */  lbu        $v0, 0xF24($v1)
/* F99B0 800DB8C0 34420002 */  ori        $v0, $v0, 0x2
/* F99B4 800DB8C4 A0620F24 */  sb         $v0, 0xF24($v1)
/* F99B8 800DB8C8 8FA3002C */  lw         $v1, 0x2C($sp)
/* F99BC 800DB8CC 8FA20028 */  lw         $v0, 0x28($sp)
/* F99C0 800DB8D0 02031821 */  addu       $v1, $s0, $v1
/* F99C4 800DB8D4 02221021 */  addu       $v0, $s1, $v0
/* F99C8 800DB8D8 24420001 */  addiu      $v0, $v0, 0x1
/* F99CC 800DB8DC 000210C0 */  sll        $v0, $v0, 3
/* F99D0 800DB8E0 00621821 */  addu       $v1, $v1, $v0
/* F99D4 800DB8E4 02431821 */  addu       $v1, $s2, $v1
/* F99D8 800DB8E8 90620F24 */  lbu        $v0, 0xF24($v1)
/* F99DC 800DB8EC 34420004 */  ori        $v0, $v0, 0x4
/* F99E0 800DB8F0 A0620F24 */  sb         $v0, 0xF24($v1)
/* F99E4 800DB8F4 8FA3002C */  lw         $v1, 0x2C($sp)
/* F99E8 800DB8F8 8FA20028 */  lw         $v0, 0x28($sp)
/* F99EC 800DB8FC 02031821 */  addu       $v1, $s0, $v1
/* F99F0 800DB900 02221021 */  addu       $v0, $s1, $v0
/* F99F4 800DB904 000210C0 */  sll        $v0, $v0, 3
/* F99F8 800DB908 24420001 */  addiu      $v0, $v0, 0x1
/* F99FC 800DB90C 00621821 */  addu       $v1, $v1, $v0
/* F9A00 800DB910 02431821 */  addu       $v1, $s2, $v1
/* F9A04 800DB914 90620F24 */  lbu        $v0, 0xF24($v1)
/* F9A08 800DB918 34420008 */  ori        $v0, $v0, 0x8
/* F9A0C 800DB91C A0620F24 */  sb         $v0, 0xF24($v1)
/* F9A10 800DB920 8FA20028 */  lw         $v0, 0x28($sp)
/* F9A14 800DB924 8E630004 */  lw         $v1, 0x4($s3)
/* F9A18 800DB928 02221021 */  addu       $v0, $s1, $v0
/* F9A1C 800DB92C 00430018 */  mult       $v0, $v1
/* F9A20 800DB930 8FA2002C */  lw         $v0, 0x2C($sp)
/* F9A24 800DB934 02021021 */  addu       $v0, $s0, $v0
/* F9A28 800DB938 00004012 */  mflo       $t0
/* F9A2C 800DB93C 01021021 */  addu       $v0, $t0, $v0
/* F9A30 800DB940 00021840 */  sll        $v1, $v0, 1
/* F9A34 800DB944 00621821 */  addu       $v1, $v1, $v0
/* F9A38 800DB948 8E620008 */  lw         $v0, 0x8($s3)
/* F9A3C 800DB94C 00031880 */  sll        $v1, $v1, 2
/* F9A40 800DB950 00621821 */  addu       $v1, $v1, $v0
/* F9A44 800DB954 8C630004 */  lw         $v1, 0x4($v1)
/* F9A48 800DB958 8E420F84 */  lw         $v0, 0xF84($s2)
/* F9A4C 800DB95C 0043102A */  slt        $v0, $v0, $v1
/* F9A50 800DB960 10400002 */  beqz       $v0, .Lmenu_800DB96C
/* F9A54 800DB964 AFA30038 */   sw        $v1, 0x38($sp)
/* F9A58 800DB968 AE430F84 */  sw         $v1, 0xF84($s2)
.Lmenu_800DB96C:
/* F9A5C 800DB96C 08036DFE */  j          .Lmenu_800DB7F8
/* F9A60 800DB970 26100001 */   addiu     $s0, $s0, 0x1
.Lmenu_800DB974:
/* F9A64 800DB974 08036DF9 */  j          .Lmenu_800DB7E4
/* F9A68 800DB978 26310001 */   addiu     $s1, $s1, 0x1
.Lmenu_800DB97C:
/* F9A6C 800DB97C 8E420F84 */  lw         $v0, 0xF84($s2)
/* F9A70 800DB980 28420010 */  slti       $v0, $v0, 0x10
/* F9A74 800DB984 14400002 */  bnez       $v0, .Lmenu_800DB990
/* F9A78 800DB988 2402000F */   addiu     $v0, $zero, 0xF
/* F9A7C 800DB98C AE420F84 */  sw         $v0, 0xF84($s2)
.Lmenu_800DB990:
/* F9A80 800DB990 8FA50034 */  lw         $a1, 0x34($sp)
/* F9A84 800DB994 8FA60028 */  lw         $a2, 0x28($sp)
/* F9A88 800DB998 8FA7002C */  lw         $a3, 0x2C($sp)
/* F9A8C 800DB99C 8FA20030 */  lw         $v0, 0x30($sp)
/* F9A90 800DB9A0 02402021 */  addu       $a0, $s2, $zero
/* F9A94 800DB9A4 0C03632B */  jal        func_menu_800D8CAC
/* F9A98 800DB9A8 AFA20010 */   sw        $v0, 0x10($sp)
/* F9A9C 800DB9AC 2403FFFB */  addiu      $v1, $zero, -0x5
/* F9AA0 800DB9B0 1443000A */  bne        $v0, $v1, .Lmenu_800DB9DC
/* F9AA4 800DB9B4 AFA20038 */   sw        $v0, 0x38($sp)
/* F9AA8 800DB9B8 8FA50034 */  lw         $a1, 0x34($sp)
/* F9AAC 800DB9BC 8FA60028 */  lw         $a2, 0x28($sp)
/* F9AB0 800DB9C0 8FA7002C */  lw         $a3, 0x2C($sp)
/* F9AB4 800DB9C4 8FA20030 */  lw         $v0, 0x30($sp)
/* F9AB8 800DB9C8 264400BC */  addiu      $a0, $s2, 0xBC
/* F9ABC 800DB9CC AFA00014 */  sw         $zero, 0x14($sp)
/* F9AC0 800DB9D0 0C037A0A */  jal        func_menu_800DE828
/* F9AC4 800DB9D4 AFA20010 */   sw        $v0, 0x10($sp)
/* F9AC8 800DB9D8 AFA20038 */  sw         $v0, 0x38($sp)
.Lmenu_800DB9DC:
/* F9ACC 800DB9DC 8FA2002C */  lw         $v0, 0x2C($sp)
/* F9AD0 800DB9E0 8FA60034 */  lw         $a2, 0x34($sp)
/* F9AD4 800DB9E4 8FA70028 */  lw         $a3, 0x28($sp)
/* F9AD8 800DB9E8 AFA20010 */  sw         $v0, 0x10($sp)
/* F9ADC 800DB9EC 8FA20030 */  lw         $v0, 0x30($sp)
/* F9AE0 800DB9F0 264400BC */  addiu      $a0, $s2, 0xBC
/* F9AE4 800DB9F4 AFA20014 */  sw         $v0, 0x14($sp)
/* F9AE8 800DB9F8 8FA20038 */  lw         $v0, 0x38($sp)
/* F9AEC 800DB9FC 02402821 */  addu       $a1, $s2, $zero
/* F9AF0 800DBA00 0C037AFF */  jal        func_menu_800DEBFC
/* F9AF4 800DBA04 AFA20018 */   sw        $v0, 0x18($sp)
.Lmenu_800DBA08:
/* F9AF8 800DBA08 02402021 */  addu       $a0, $s2, $zero
/* F9AFC 800DBA0C 00002821 */  addu       $a1, $zero, $zero
/* F9B00 800DBA10 0C036BDF */  jal        func_menu_800DAF7C
/* F9B04 800DBA14 2406FFFF */   addiu     $a2, $zero, -0x1
/* F9B08 800DBA18 08036E94 */  j          .Lmenu_800DBA50
/* F9B0C 800DBA1C 00000000 */   nop
.Lmenu_800DBA20:
/* F9B10 800DBA20 02402021 */  addu       $a0, $s2, $zero
/* F9B14 800DBA24 0C036366 */  jal        func_menu_800D8D98
/* F9B18 800DBA28 02602821 */   addu      $a1, $s3, $zero
/* F9B1C 800DBA2C 02402021 */  addu       $a0, $s2, $zero
/* F9B20 800DBA30 0C0363C7 */  jal        func_menu_800D8F1C
/* F9B24 800DBA34 02602821 */   addu      $a1, $s3, $zero
/* F9B28 800DBA38 8E450F20 */  lw         $a1, 0xF20($s2)
/* F9B2C 800DBA3C 0C036366 */  jal        func_menu_800D8D98
/* F9B30 800DBA40 02402021 */   addu      $a0, $s2, $zero
/* F9B34 800DBA44 8E450F20 */  lw         $a1, 0xF20($s2)
/* F9B38 800DBA48 0C0363C7 */  jal        func_menu_800D8F1C
/* F9B3C 800DBA4C 02402021 */   addu      $a0, $s2, $zero
.Lmenu_800DBA50:
/* F9B40 800DBA50 8FBF006C */  lw         $ra, 0x6C($sp)
/* F9B44 800DBA54 8FB60068 */  lw         $s6, 0x68($sp)
/* F9B48 800DBA58 8FB50064 */  lw         $s5, 0x64($sp)
/* F9B4C 800DBA5C 8FB40060 */  lw         $s4, 0x60($sp)
/* F9B50 800DBA60 8FB3005C */  lw         $s3, 0x5C($sp)
/* F9B54 800DBA64 8FB20058 */  lw         $s2, 0x58($sp)
/* F9B58 800DBA68 8FB10054 */  lw         $s1, 0x54($sp)
/* F9B5C 800DBA6C 8FB00050 */  lw         $s0, 0x50($sp)
/* F9B60 800DBA70 03E00008 */  jr         $ra
/* F9B64 800DBA74 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_menu_800DBA78
/* F9B68 800DBA78 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* F9B6C 800DBA7C AFB20018 */  sw         $s2, 0x18($sp)
/* F9B70 800DBA80 00009021 */  addu       $s2, $zero, $zero
/* F9B74 800DBA84 248400A4 */  addiu      $a0, $a0, 0xA4
/* F9B78 800DBA88 AFB10014 */  sw         $s1, 0x14($sp)
/* F9B7C 800DBA8C 02408821 */  addu       $s1, $s2, $zero
/* F9B80 800DBA90 AFB3001C */  sw         $s3, 0x1C($sp)
/* F9B84 800DBA94 00809821 */  addu       $s3, $a0, $zero
/* F9B88 800DBA98 AFB00010 */  sw         $s0, 0x10($sp)
/* F9B8C 800DBA9C 02408021 */  addu       $s0, $s2, $zero
/* F9B90 800DBAA0 AFBF0024 */  sw         $ra, 0x24($sp)
/* F9B94 800DBAA4 AFB40020 */  sw         $s4, 0x20($sp)
/* F9B98 800DBAA8 8C940008 */  lw         $s4, 0x8($a0)
.Lmenu_800DBAAC:
/* F9B9C 800DBAAC 0234102A */  slt        $v0, $s1, $s4
/* F9BA0 800DBAB0 1040000D */  beqz       $v0, .Lmenu_800DBAE8
/* F9BA4 800DBAB4 02401021 */   addu      $v0, $s2, $zero
/* F9BA8 800DBAB8 8E62000C */  lw         $v0, 0xC($s3)
/* F9BAC 800DBABC 02021021 */  addu       $v0, $s0, $v0
/* F9BB0 800DBAC0 8C440000 */  lw         $a0, 0x0($v0)
/* F9BB4 800DBAC4 94820010 */  lhu        $v0, 0x10($a0)
/* F9BB8 800DBAC8 28420800 */  slti       $v0, $v0, 0x800
/* F9BBC 800DBACC 14400004 */  bnez       $v0, .Lmenu_800DBAE0
/* F9BC0 800DBAD0 2610001C */   addiu     $s0, $s0, 0x1C
/* F9BC4 800DBAD4 0C038069 */  jal        func_menu_800E01A4
/* F9BC8 800DBAD8 00000000 */   nop
/* F9BCC 800DBADC 02429021 */  addu       $s2, $s2, $v0
.Lmenu_800DBAE0:
/* F9BD0 800DBAE0 08036EAB */  j          .Lmenu_800DBAAC
/* F9BD4 800DBAE4 26310001 */   addiu     $s1, $s1, 0x1
.Lmenu_800DBAE8:
/* F9BD8 800DBAE8 8FBF0024 */  lw         $ra, 0x24($sp)
/* F9BDC 800DBAEC 8FB40020 */  lw         $s4, 0x20($sp)
/* F9BE0 800DBAF0 8FB3001C */  lw         $s3, 0x1C($sp)
/* F9BE4 800DBAF4 8FB20018 */  lw         $s2, 0x18($sp)
/* F9BE8 800DBAF8 8FB10014 */  lw         $s1, 0x14($sp)
/* F9BEC 800DBAFC 8FB00010 */  lw         $s0, 0x10($sp)
/* F9BF0 800DBB00 03E00008 */  jr         $ra
/* F9BF4 800DBB04 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800DBB08
/* F9BF8 800DBB08 27BDFF88 */  addiu      $sp, $sp, -0x78
/* F9BFC 800DBB0C AFB20058 */  sw         $s2, 0x58($sp)
/* F9C00 800DBB10 00009021 */  addu       $s2, $zero, $zero
/* F9C04 800DBB14 248400A4 */  addiu      $a0, $a0, 0xA4
/* F9C08 800DBB18 AFB60068 */  sw         $s6, 0x68($sp)
/* F9C0C 800DBB1C 0240B021 */  addu       $s6, $s2, $zero
/* F9C10 800DBB20 AFB50064 */  sw         $s5, 0x64($sp)
/* F9C14 800DBB24 0240A821 */  addu       $s5, $s2, $zero
/* F9C18 800DBB28 AFB40060 */  sw         $s4, 0x60($sp)
/* F9C1C 800DBB2C 0240A021 */  addu       $s4, $s2, $zero
/* F9C20 800DBB30 AFB3005C */  sw         $s3, 0x5C($sp)
/* F9C24 800DBB34 02409821 */  addu       $s3, $s2, $zero
/* F9C28 800DBB38 AFBE0070 */  sw         $fp, 0x70($sp)
/* F9C2C 800DBB3C 27BE0034 */  addiu      $fp, $sp, 0x34
/* F9C30 800DBB40 AFB7006C */  sw         $s7, 0x6C($sp)
/* F9C34 800DBB44 27B70038 */  addiu      $s7, $sp, 0x38
/* F9C38 800DBB48 AFBF0074 */  sw         $ra, 0x74($sp)
/* F9C3C 800DBB4C AFB10054 */  sw         $s1, 0x54($sp)
/* F9C40 800DBB50 AFB00050 */  sw         $s0, 0x50($sp)
/* F9C44 800DBB54 AFA5007C */  sw         $a1, 0x7C($sp)
/* F9C48 800DBB58 AFA60080 */  sw         $a2, 0x80($sp)
/* F9C4C 800DBB5C AFA70084 */  sw         $a3, 0x84($sp)
/* F9C50 800DBB60 8C880008 */  lw         $t0, 0x8($a0)
/* F9C54 800DBB64 02408821 */  addu       $s1, $s2, $zero
/* F9C58 800DBB68 AFA40040 */  sw         $a0, 0x40($sp)
/* F9C5C 800DBB6C AFA8003C */  sw         $t0, 0x3C($sp)
/* F9C60 800DBB70 27A8002C */  addiu      $t0, $sp, 0x2C
/* F9C64 800DBB74 AFA80044 */  sw         $t0, 0x44($sp)
/* F9C68 800DBB78 27A80030 */  addiu      $t0, $sp, 0x30
/* F9C6C 800DBB7C AFA80048 */  sw         $t0, 0x48($sp)
.Lmenu_800DBB80:
/* F9C70 800DBB80 8FA8003C */  lw         $t0, 0x3C($sp)
/* F9C74 800DBB84 0268102A */  slt        $v0, $s3, $t0
/* F9C78 800DBB88 10400024 */  beqz       $v0, .Lmenu_800DBC1C
/* F9C7C 800DBB8C 00000000 */   nop
/* F9C80 800DBB90 8FA80040 */  lw         $t0, 0x40($sp)
/* F9C84 800DBB94 8D02000C */  lw         $v0, 0xC($t0)
/* F9C88 800DBB98 02222021 */  addu       $a0, $s1, $v0
/* F9C8C 800DBB9C 8C900000 */  lw         $s0, 0x0($a0)
/* F9C90 800DBBA0 96020010 */  lhu        $v0, 0x10($s0)
/* F9C94 800DBBA4 28420800 */  slti       $v0, $v0, 0x800
/* F9C98 800DBBA8 5440001A */  bnel       $v0, $zero, .Lmenu_800DBC14
/* F9C9C 800DBBAC 2631001C */   addiu     $s1, $s1, 0x1C
/* F9CA0 800DBBB0 27A50020 */  addiu      $a1, $sp, 0x20
/* F9CA4 800DBBB4 27A60024 */  addiu      $a2, $sp, 0x24
/* F9CA8 800DBBB8 8FA80044 */  lw         $t0, 0x44($sp)
/* F9CAC 800DBBBC 27A70028 */  addiu      $a3, $sp, 0x28
/* F9CB0 800DBBC0 0C038124 */  jal        func_menu_800E0490
/* F9CB4 800DBBC4 AFA80010 */   sw        $t0, 0x10($sp)
/* F9CB8 800DBBC8 8FA50020 */  lw         $a1, 0x20($sp)
/* F9CBC 800DBBCC 8FA60024 */  lw         $a2, 0x24($sp)
/* F9CC0 800DBBD0 8FA70028 */  lw         $a3, 0x28($sp)
/* F9CC4 800DBBD4 8FA2002C */  lw         $v0, 0x2C($sp)
/* F9CC8 800DBBD8 8FA80048 */  lw         $t0, 0x48($sp)
/* F9CCC 800DBBDC 02002021 */  addu       $a0, $s0, $zero
/* F9CD0 800DBBE0 AFBE0018 */  sw         $fp, 0x18($sp)
/* F9CD4 800DBBE4 AFB7001C */  sw         $s7, 0x1C($sp)
/* F9CD8 800DBBE8 AFA80014 */  sw         $t0, 0x14($sp)
/* F9CDC 800DBBEC 0C0380A3 */  jal        func_menu_800E028C
/* F9CE0 800DBBF0 AFA20010 */   sw        $v0, 0x10($sp)
/* F9CE4 800DBBF4 02429021 */  addu       $s2, $s2, $v0
/* F9CE8 800DBBF8 8FA30030 */  lw         $v1, 0x30($sp)
/* F9CEC 800DBBFC 8FA20034 */  lw         $v0, 0x34($sp)
/* F9CF0 800DBC00 0283A021 */  addu       $s4, $s4, $v1
/* F9CF4 800DBC04 8FA30038 */  lw         $v1, 0x38($sp)
/* F9CF8 800DBC08 02A2A821 */  addu       $s5, $s5, $v0
/* F9CFC 800DBC0C 02C3B021 */  addu       $s6, $s6, $v1
/* F9D00 800DBC10 2631001C */  addiu      $s1, $s1, 0x1C
.Lmenu_800DBC14:
/* F9D04 800DBC14 08036EE0 */  j          .Lmenu_800DBB80
/* F9D08 800DBC18 26730001 */   addiu     $s3, $s3, 0x1
.Lmenu_800DBC1C:
/* F9D0C 800DBC1C 12400018 */  beqz       $s2, .Lmenu_800DBC80
/* F9D10 800DBC20 00000000 */   nop
/* F9D14 800DBC24 44941000 */  mtc1       $s4, $f2
/* F9D18 800DBC28 468010A0 */  cvt.s.w    $f2, $f2
/* F9D1C 800DBC2C 44923000 */  mtc1       $s2, $f6
/* F9D20 800DBC30 468031A0 */  cvt.s.w    $f6, $f6
/* F9D24 800DBC34 46061083 */  div.s      $f2, $f2, $f6
/* F9D28 800DBC38 44950000 */  mtc1       $s5, $f0
/* F9D2C 800DBC3C 46800020 */  cvt.s.w    $f0, $f0
/* F9D30 800DBC40 3C01800D */  lui        $at, %hi(D_menu_800CAA7C)
/* F9D34 800DBC44 C424AA7C */  lwc1       $f4, %lo(D_menu_800CAA7C)($at)
/* F9D38 800DBC48 46060003 */  div.s      $f0, $f0, $f6
/* F9D3C 800DBC4C 46041081 */  sub.s      $f2, $f2, $f4
/* F9D40 800DBC50 3C01800D */  lui        $at, %hi(D_menu_800CAA80)
/* F9D44 800DBC54 C424AA80 */  lwc1       $f4, %lo(D_menu_800CAA80)($at)
/* F9D48 800DBC58 8FA8007C */  lw         $t0, 0x7C($sp)
/* F9D4C 800DBC5C 46040001 */  sub.s      $f0, $f0, $f4
/* F9D50 800DBC60 E5020000 */  swc1       $f2, 0x0($t0)
/* F9D54 800DBC64 8FA80080 */  lw         $t0, 0x80($sp)
/* F9D58 800DBC68 E5000000 */  swc1       $f0, 0x0($t0)
/* F9D5C 800DBC6C 44960000 */  mtc1       $s6, $f0
/* F9D60 800DBC70 46800020 */  cvt.s.w    $f0, $f0
/* F9D64 800DBC74 8FA80084 */  lw         $t0, 0x84($sp)
/* F9D68 800DBC78 08036F26 */  j          .Lmenu_800DBC98
/* F9D6C 800DBC7C 46060003 */   div.s     $f0, $f0, $f6
.Lmenu_800DBC80:
/* F9D70 800DBC80 44800000 */  mtc1       $zero, $f0
/* F9D74 800DBC84 8FA80084 */  lw         $t0, 0x84($sp)
/* F9D78 800DBC88 E5000000 */  swc1       $f0, 0x0($t0)
/* F9D7C 800DBC8C 8FA80080 */  lw         $t0, 0x80($sp)
/* F9D80 800DBC90 E5000000 */  swc1       $f0, 0x0($t0)
/* F9D84 800DBC94 8FA8007C */  lw         $t0, 0x7C($sp)
.Lmenu_800DBC98:
/* F9D88 800DBC98 E5000000 */  swc1       $f0, 0x0($t0)
/* F9D8C 800DBC9C 02401021 */  addu       $v0, $s2, $zero
/* F9D90 800DBCA0 8FBF0074 */  lw         $ra, 0x74($sp)
/* F9D94 800DBCA4 8FBE0070 */  lw         $fp, 0x70($sp)
/* F9D98 800DBCA8 8FB7006C */  lw         $s7, 0x6C($sp)
/* F9D9C 800DBCAC 8FB60068 */  lw         $s6, 0x68($sp)
/* F9DA0 800DBCB0 8FB50064 */  lw         $s5, 0x64($sp)
/* F9DA4 800DBCB4 8FB40060 */  lw         $s4, 0x60($sp)
/* F9DA8 800DBCB8 8FB3005C */  lw         $s3, 0x5C($sp)
/* F9DAC 800DBCBC 8FB20058 */  lw         $s2, 0x58($sp)
/* F9DB0 800DBCC0 8FB10054 */  lw         $s1, 0x54($sp)
/* F9DB4 800DBCC4 8FB00050 */  lw         $s0, 0x50($sp)
/* F9DB8 800DBCC8 03E00008 */  jr         $ra
/* F9DBC 800DBCCC 27BD0078 */   addiu     $sp, $sp, 0x78

glabel func_menu_800DBCD0
/* F9DC0 800DBCD0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F9DC4 800DBCD4 AFBF0010 */  sw         $ra, 0x10($sp)
/* F9DC8 800DBCD8 0C0382B9 */  jal        func_menu_800E0AE4
/* F9DCC 800DBCDC 248400A4 */   addiu     $a0, $a0, 0xA4
/* F9DD0 800DBCE0 8FBF0010 */  lw         $ra, 0x10($sp)
/* F9DD4 800DBCE4 03E00008 */  jr         $ra
/* F9DD8 800DBCE8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800DBCEC
/* F9DDC 800DBCEC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F9DE0 800DBCF0 AFB00010 */  sw         $s0, 0x10($sp)
/* F9DE4 800DBCF4 00808021 */  addu       $s0, $a0, $zero
/* F9DE8 800DBCF8 AFB10014 */  sw         $s1, 0x14($sp)
/* F9DEC 800DBCFC 261100A4 */  addiu      $s1, $s0, 0xA4
/* F9DF0 800DBD00 02202021 */  addu       $a0, $s1, $zero
/* F9DF4 800DBD04 AFBF0018 */  sw         $ra, 0x18($sp)
/* F9DF8 800DBD08 8E0600A0 */  lw         $a2, 0xA0($s0)
/* F9DFC 800DBD0C 0C0382BD */  jal        func_menu_800E0AF4
/* F9E00 800DBD10 2407000F */   addiu     $a3, $zero, 0xF
/* F9E04 800DBD14 8E230008 */  lw         $v1, 0x8($s1)
/* F9E08 800DBD18 AE0300D4 */  sw         $v1, 0xD4($s0)
/* F9E0C 800DBD1C 8FBF0018 */  lw         $ra, 0x18($sp)
/* F9E10 800DBD20 8FB10014 */  lw         $s1, 0x14($sp)
/* F9E14 800DBD24 8FB00010 */  lw         $s0, 0x10($sp)
/* F9E18 800DBD28 03E00008 */  jr         $ra
/* F9E1C 800DBD2C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800DBD30
/* F9E20 800DBD30 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F9E24 800DBD34 AFBF0010 */  sw         $ra, 0x10($sp)
/* F9E28 800DBD38 0C038334 */  jal        func_menu_800E0CD0
/* F9E2C 800DBD3C 248400A4 */   addiu     $a0, $a0, 0xA4
/* F9E30 800DBD40 8FBF0010 */  lw         $ra, 0x10($sp)
/* F9E34 800DBD44 03E00008 */  jr         $ra
/* F9E38 800DBD48 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800DBD4C
/* F9E3C 800DBD4C 27BDFF58 */  addiu      $sp, $sp, -0xA8
/* F9E40 800DBD50 AFB7009C */  sw         $s7, 0x9C($sp)
/* F9E44 800DBD54 0080B821 */  addu       $s7, $a0, $zero
/* F9E48 800DBD58 AFB60098 */  sw         $s6, 0x98($sp)
/* F9E4C 800DBD5C 00A0B021 */  addu       $s6, $a1, $zero
/* F9E50 800DBD60 AFB50094 */  sw         $s5, 0x94($sp)
/* F9E54 800DBD64 0000A821 */  addu       $s5, $zero, $zero
/* F9E58 800DBD68 AFBF00A4 */  sw         $ra, 0xA4($sp)
/* F9E5C 800DBD6C AFBE00A0 */  sw         $fp, 0xA0($sp)
/* F9E60 800DBD70 AFB40090 */  sw         $s4, 0x90($sp)
/* F9E64 800DBD74 AFB3008C */  sw         $s3, 0x8C($sp)
/* F9E68 800DBD78 AFB20088 */  sw         $s2, 0x88($sp)
/* F9E6C 800DBD7C AFB10084 */  sw         $s1, 0x84($sp)
/* F9E70 800DBD80 AFB00080 */  sw         $s0, 0x80($sp)
/* F9E74 800DBD84 AFA600B0 */  sw         $a2, 0xB0($sp)
/* F9E78 800DBD88 AFA700B4 */  sw         $a3, 0xB4($sp)
/* F9E7C 800DBD8C 8EE4009C */  lw         $a0, 0x9C($s7)
/* F9E80 800DBD90 02A09021 */  addu       $s2, $s5, $zero
/* F9E84 800DBD94 8C8B002C */  lw         $t3, 0x2C($a0)
/* F9E88 800DBD98 AFAB0070 */  sw         $t3, 0x70($sp)
/* F9E8C 800DBD9C 8C9E0028 */  lw         $fp, 0x28($a0)
/* F9E90 800DBDA0 0C035518 */  jal        func_menu_800D5460
/* F9E94 800DBDA4 02A08021 */   addu      $s0, $s5, $zero
/* F9E98 800DBDA8 AFA20074 */  sw         $v0, 0x74($sp)
/* F9E9C 800DBDAC AFB60078 */  sw         $s6, 0x78($sp)
/* F9EA0 800DBDB0 03C0A021 */  addu       $s4, $fp, $zero
.Lmenu_800DBDB4:
/* F9EA4 800DBDB4 8FAC0070 */  lw         $t4, 0x70($sp)
/* F9EA8 800DBDB8 020C102A */  slt        $v0, $s0, $t4
/* F9EAC 800DBDBC 50400050 */  beql       $v0, $zero, .Lmenu_800DBF00
/* F9EB0 800DBDC0 00008021 */   addu      $s0, $zero, $zero
/* F9EB4 800DBDC4 92820000 */  lbu        $v0, 0x0($s4)
/* F9EB8 800DBDC8 1040004A */  beqz       $v0, .Lmenu_800DBEF4
/* F9EBC 800DBDCC 00101880 */   sll       $v1, $s0, 2
/* F9EC0 800DBDD0 8FAD0074 */  lw         $t5, 0x74($sp)
/* F9EC4 800DBDD4 8DA20008 */  lw         $v0, 0x8($t5)
/* F9EC8 800DBDD8 00621021 */  addu       $v0, $v1, $v0
/* F9ECC 800DBDDC 8C510000 */  lw         $s1, 0x0($v0)
/* F9ED0 800DBDE0 27A50010 */  addiu      $a1, $sp, 0x10
/* F9ED4 800DBDE4 0C01523D */  jal        func_800548F4
/* F9ED8 800DBDE8 02202021 */   addu      $a0, $s1, $zero
/* F9EDC 800DBDEC 2403FFFE */  addiu      $v1, $zero, -0x2
/* F9EE0 800DBDF0 8FA20010 */  lw         $v0, 0x10($sp)
/* F9EE4 800DBDF4 8FAE00B0 */  lw         $t6, 0xB0($sp)
/* F9EE8 800DBDF8 00431024 */  and        $v0, $v0, $v1
/* F9EEC 800DBDFC AFA20010 */  sw         $v0, 0x10($sp)
/* F9EF0 800DBE00 8DC20008 */  lw         $v0, 0x8($t6)
/* F9EF4 800DBE04 02402821 */  addu       $a1, $s2, $zero
/* F9EF8 800DBE08 84440058 */  lh         $a0, 0x58($v0)
/* F9EFC 800DBE0C 8C42005C */  lw         $v0, 0x5C($v0)
/* F9F00 800DBE10 0040F809 */  jalr       $v0
/* F9F04 800DBE14 01C42021 */   addu      $a0, $t6, $a0
/* F9F08 800DBE18 8E230004 */  lw         $v1, 0x4($s1)
/* F9F0C 800DBE1C 30630008 */  andi       $v1, $v1, 0x8
/* F9F10 800DBE20 1060002B */  beqz       $v1, .Lmenu_800DBED0
/* F9F14 800DBE24 00409821 */   addu      $s3, $v0, $zero
/* F9F18 800DBE28 8FAB00B4 */  lw         $t3, 0xB4($sp)
/* F9F1C 800DBE2C 8D620008 */  lw         $v0, 0x8($t3)
/* F9F20 800DBE30 02A02821 */  addu       $a1, $s5, $zero
/* F9F24 800DBE34 84440058 */  lh         $a0, 0x58($v0)
/* F9F28 800DBE38 8C42005C */  lw         $v0, 0x5C($v0)
/* F9F2C 800DBE3C 0040F809 */  jalr       $v0
/* F9F30 800DBE40 01642021 */   addu      $a0, $t3, $a0
/* F9F34 800DBE44 8E240000 */  lw         $a0, 0x0($s1)
/* F9F38 800DBE48 888C0038 */  lwl        $t4, 0x38($a0)
/* F9F3C 800DBE4C 988C003B */  lwr        $t4, 0x3B($a0)
/* F9F40 800DBE50 888D003C */  lwl        $t5, 0x3C($a0)
/* F9F44 800DBE54 988D003F */  lwr        $t5, 0x3F($a0)
/* F9F48 800DBE58 ABAC0028 */  swl        $t4, 0x28($sp)
/* F9F4C 800DBE5C BBAC002B */  swr        $t4, 0x2B($sp)
/* F9F50 800DBE60 ABAD002C */  swl        $t5, 0x2C($sp)
/* F9F54 800DBE64 BBAD002F */  swr        $t5, 0x2F($sp)
/* F9F58 800DBE68 8BAC0028 */  lwl        $t4, 0x28($sp)
/* F9F5C 800DBE6C 9BAC002B */  lwr        $t4, 0x2B($sp)
/* F9F60 800DBE70 8BAD002C */  lwl        $t5, 0x2C($sp)
/* F9F64 800DBE74 9BAD002F */  lwr        $t5, 0x2F($sp)
/* F9F68 800DBE78 A84C0038 */  swl        $t4, 0x38($v0)
/* F9F6C 800DBE7C B84C003B */  swr        $t4, 0x3B($v0)
/* F9F70 800DBE80 A84D003C */  swl        $t5, 0x3C($v0)
/* F9F74 800DBE84 B84D003F */  swr        $t5, 0x3F($v0)
/* F9F78 800DBE88 94830036 */  lhu        $v1, 0x36($a0)
/* F9F7C 800DBE8C A4430036 */  sh         $v1, 0x36($v0)
/* F9F80 800DBE90 94830034 */  lhu        $v1, 0x34($a0)
/* F9F84 800DBE94 A4430034 */  sh         $v1, 0x34($v0)
/* F9F88 800DBE98 888C0030 */  lwl        $t4, 0x30($a0)
/* F9F8C 800DBE9C 988C0033 */  lwr        $t4, 0x33($a0)
/* F9F90 800DBEA0 ABAC0058 */  swl        $t4, 0x58($sp)
/* F9F94 800DBEA4 BBAC005B */  swr        $t4, 0x5B($sp)
/* F9F98 800DBEA8 8BAC0058 */  lwl        $t4, 0x58($sp)
/* F9F9C 800DBEAC 9BAC005B */  lwr        $t4, 0x5B($sp)
/* F9FA0 800DBEB0 A84C0030 */  swl        $t4, 0x30($v0)
/* F9FA4 800DBEB4 B84C0033 */  swr        $t4, 0x33($v0)
/* F9FA8 800DBEB8 94430036 */  lhu        $v1, 0x36($v0)
/* F9FAC 800DBEBC 26B50001 */  addiu      $s5, $s5, 0x1
/* F9FB0 800DBEC0 A0400033 */  sb         $zero, 0x33($v0)
/* F9FB4 800DBEC4 34630800 */  ori        $v1, $v1, 0x800
/* F9FB8 800DBEC8 A4430036 */  sh         $v1, 0x36($v0)
/* F9FBC 800DBECC AFA20014 */  sw         $v0, 0x14($sp)
.Lmenu_800DBED0:
/* F9FC0 800DBED0 02602021 */  addu       $a0, $s3, $zero
/* F9FC4 800DBED4 8EE50004 */  lw         $a1, 0x4($s7)
/* F9FC8 800DBED8 0C0151F9 */  jal        func_800547E4
/* F9FCC 800DBEDC 27A60010 */   addiu     $a2, $sp, 0x10
/* F9FD0 800DBEE0 02402821 */  addu       $a1, $s2, $zero
/* F9FD4 800DBEE4 8FA40078 */  lw         $a0, 0x78($sp)
/* F9FD8 800DBEE8 0C01543D */  jal        func_800550F4
/* F9FDC 800DBEEC 02603021 */   addu      $a2, $s3, $zero
/* F9FE0 800DBEF0 26520001 */  addiu      $s2, $s2, 0x1
.Lmenu_800DBEF4:
/* F9FE4 800DBEF4 26940004 */  addiu      $s4, $s4, 0x4
/* F9FE8 800DBEF8 08036F6D */  j          .Lmenu_800DBDB4
/* F9FEC 800DBEFC 26100001 */   addiu     $s0, $s0, 0x1
.Lmenu_800DBF00:
/* F9FF0 800DBF00 3C0A7000 */  lui        $t2, (0x70000000 >> 16)
/* F9FF4 800DBF04 3C094000 */  lui        $t1, (0x40000000 >> 16)
/* F9FF8 800DBF08 3C0700FF */  lui        $a3, (0xFFFFFF >> 16)
/* F9FFC 800DBF0C 34E7FFFF */  ori        $a3, $a3, (0xFFFFFF & 0xFFFF)
/* FA000 800DBF10 24080001 */  addiu      $t0, $zero, 0x1
.Lmenu_800DBF14:
/* FA004 800DBF14 8EE20E4C */  lw         $v0, 0xE4C($s7)
/* FA008 800DBF18 0202102A */  slt        $v0, $s0, $v0
/* FA00C 800DBF1C 1040001D */  beqz       $v0, .Lmenu_800DBF94
/* FA010 800DBF20 27A50060 */   addiu     $a1, $sp, 0x60
/* FA014 800DBF24 8EE20008 */  lw         $v0, 0x8($s7)
/* FA018 800DBF28 8C420020 */  lw         $v0, 0x20($v0)
/* FA01C 800DBF2C 00103080 */  sll        $a2, $s0, 2
/* FA020 800DBF30 00C21021 */  addu       $v0, $a2, $v0
/* FA024 800DBF34 8C420000 */  lw         $v0, 0x0($v0)
/* FA028 800DBF38 004A2024 */  and        $a0, $v0, $t2
/* FA02C 800DBF3C 14890010 */  bne        $a0, $t1, .Lmenu_800DBF80
/* FA030 800DBF40 00401821 */   addu      $v1, $v0, $zero
/* FA034 800DBF44 3045FFFF */  andi       $a1, $v0, 0xFFFF
/* FA038 800DBF48 00051080 */  sll        $v0, $a1, 2
/* FA03C 800DBF4C 005E1021 */  addu       $v0, $v0, $fp
/* FA040 800DBF50 8EC30020 */  lw         $v1, 0x20($s6)
/* FA044 800DBF54 94450002 */  lhu        $a1, 0x2($v0)
/* FA048 800DBF58 00C31821 */  addu       $v1, $a2, $v1
/* FA04C 800DBF5C AC640000 */  sw         $a0, 0x0($v1)
/* FA050 800DBF60 8EC40020 */  lw         $a0, 0x20($s6)
/* FA054 800DBF64 00C42021 */  addu       $a0, $a2, $a0
/* FA058 800DBF68 8C820000 */  lw         $v0, 0x0($a0)
/* FA05C 800DBF6C 00A71824 */  and        $v1, $a1, $a3
/* FA060 800DBF70 00431025 */  or         $v0, $v0, $v1
/* FA064 800DBF74 AC820000 */  sw         $v0, 0x0($a0)
/* FA068 800DBF78 08036FE3 */  j          .Lmenu_800DBF8C
/* FA06C 800DBF7C AEC80038 */   sw        $t0, 0x38($s6)
.Lmenu_800DBF80:
/* FA070 800DBF80 8EC20020 */  lw         $v0, 0x20($s6)
/* FA074 800DBF84 00C21021 */  addu       $v0, $a2, $v0
/* FA078 800DBF88 AC430000 */  sw         $v1, 0x0($v0)
.Lmenu_800DBF8C:
/* FA07C 800DBF8C 08036FC5 */  j          .Lmenu_800DBF14
/* FA080 800DBF90 26100001 */   addiu     $s0, $s0, 0x1
.Lmenu_800DBF94:
/* FA084 800DBF94 8EE30008 */  lw         $v1, 0x8($s7)
/* FA088 800DBF98 8C62003C */  lw         $v0, 0x3C($v1)
/* FA08C 800DBF9C 84440058 */  lh         $a0, 0x58($v0)
/* FA090 800DBFA0 8C42005C */  lw         $v0, 0x5C($v0)
/* FA094 800DBFA4 0040F809 */  jalr       $v0
/* FA098 800DBFA8 00642021 */   addu      $a0, $v1, $a0
/* FA09C 800DBFAC 8EE30008 */  lw         $v1, 0x8($s7)
/* FA0A0 800DBFB0 8C62003C */  lw         $v0, 0x3C($v1)
/* FA0A4 800DBFB4 27A50064 */  addiu      $a1, $sp, 0x64
/* FA0A8 800DBFB8 84440068 */  lh         $a0, 0x68($v0)
/* FA0AC 800DBFBC 8C42006C */  lw         $v0, 0x6C($v0)
/* FA0B0 800DBFC0 0040F809 */  jalr       $v0
/* FA0B4 800DBFC4 00642021 */   addu      $a0, $v1, $a0
/* FA0B8 800DBFC8 27A50068 */  addiu      $a1, $sp, 0x68
/* FA0BC 800DBFCC 8EC3003C */  lw         $v1, 0x3C($s6)
/* FA0C0 800DBFD0 8FA20064 */  lw         $v0, 0x64($sp)
/* FA0C4 800DBFD4 84640058 */  lh         $a0, 0x58($v1)
/* FA0C8 800DBFD8 8C63005C */  lw         $v1, 0x5C($v1)
/* FA0CC 800DBFDC 8C500008 */  lw         $s0, 0x8($v0)
/* FA0D0 800DBFE0 0060F809 */  jalr       $v1
/* FA0D4 800DBFE4 02C42021 */   addu      $a0, $s6, $a0
/* FA0D8 800DBFE8 8EC2003C */  lw         $v0, 0x3C($s6)
/* FA0DC 800DBFEC 27A5006C */  addiu      $a1, $sp, 0x6C
/* FA0E0 800DBFF0 84440068 */  lh         $a0, 0x68($v0)
/* FA0E4 800DBFF4 8C42006C */  lw         $v0, 0x6C($v0)
/* FA0E8 800DBFF8 0040F809 */  jalr       $v0
/* FA0EC 800DBFFC 02C42021 */   addu      $a0, $s6, $a0
/* FA0F0 800DC000 02002821 */  addu       $a1, $s0, $zero
/* FA0F4 800DC004 8FA2006C */  lw         $v0, 0x6C($sp)
/* FA0F8 800DC008 8EE60E50 */  lw         $a2, 0xE50($s7)
/* FA0FC 800DC00C 8C440008 */  lw         $a0, 0x8($v0)
/* FA100 800DC010 0C006E07 */  jal        strncpy
/* FA104 800DC014 00063080 */   sll       $a2, $a2, 2
/* FA108 800DC018 8EE20E54 */  lw         $v0, 0xE54($s7)
/* FA10C 800DC01C 1840004A */  blez       $v0, .Lmenu_800DC148
/* FA110 800DC020 00008021 */   addu      $s0, $zero, $zero
/* FA114 800DC024 27B40030 */  addiu      $s4, $sp, 0x30
/* FA118 800DC028 27B30040 */  addiu      $s3, $sp, 0x40
/* FA11C 800DC02C 27B20048 */  addiu      $s2, $sp, 0x48
/* FA120 800DC030 27B10058 */  addiu      $s1, $sp, 0x58
.Lmenu_800DC034:
/* FA124 800DC034 8FA30060 */  lw         $v1, 0x60($sp)
/* FA128 800DC038 02002821 */  addu       $a1, $s0, $zero
/* FA12C 800DC03C 8C620008 */  lw         $v0, 0x8($v1)
/* FA130 800DC040 02803021 */  addu       $a2, $s4, $zero
/* FA134 800DC044 84440030 */  lh         $a0, 0x30($v0)
/* FA138 800DC048 8C420034 */  lw         $v0, 0x34($v0)
/* FA13C 800DC04C 0040F809 */  jalr       $v0
/* FA140 800DC050 00642021 */   addu      $a0, $v1, $a0
/* FA144 800DC054 8FA30068 */  lw         $v1, 0x68($sp)
/* FA148 800DC058 02002821 */  addu       $a1, $s0, $zero
/* FA14C 800DC05C 8C620008 */  lw         $v0, 0x8($v1)
/* FA150 800DC060 02803021 */  addu       $a2, $s4, $zero
/* FA154 800DC064 84440050 */  lh         $a0, 0x50($v0)
/* FA158 800DC068 8C420054 */  lw         $v0, 0x54($v0)
/* FA15C 800DC06C 0040F809 */  jalr       $v0
/* FA160 800DC070 00642021 */   addu      $a0, $v1, $a0
/* FA164 800DC074 8FA30060 */  lw         $v1, 0x60($sp)
/* FA168 800DC078 02002821 */  addu       $a1, $s0, $zero
/* FA16C 800DC07C 8C620008 */  lw         $v0, 0x8($v1)
/* FA170 800DC080 02603021 */  addu       $a2, $s3, $zero
/* FA174 800DC084 84440038 */  lh         $a0, 0x38($v0)
/* FA178 800DC088 8C42003C */  lw         $v0, 0x3C($v0)
/* FA17C 800DC08C 0040F809 */  jalr       $v0
/* FA180 800DC090 00642021 */   addu      $a0, $v1, $a0
/* FA184 800DC094 8FA30068 */  lw         $v1, 0x68($sp)
/* FA188 800DC098 02002821 */  addu       $a1, $s0, $zero
/* FA18C 800DC09C 8C620008 */  lw         $v0, 0x8($v1)
/* FA190 800DC0A0 02603021 */  addu       $a2, $s3, $zero
/* FA194 800DC0A4 84440058 */  lh         $a0, 0x58($v0)
/* FA198 800DC0A8 8C42005C */  lw         $v0, 0x5C($v0)
/* FA19C 800DC0AC 0040F809 */  jalr       $v0
/* FA1A0 800DC0B0 00642021 */   addu      $a0, $v1, $a0
/* FA1A4 800DC0B4 8FA30060 */  lw         $v1, 0x60($sp)
/* FA1A8 800DC0B8 02002821 */  addu       $a1, $s0, $zero
/* FA1AC 800DC0BC 8C620008 */  lw         $v0, 0x8($v1)
/* FA1B0 800DC0C0 02403021 */  addu       $a2, $s2, $zero
/* FA1B4 800DC0C4 84440040 */  lh         $a0, 0x40($v0)
/* FA1B8 800DC0C8 8C420044 */  lw         $v0, 0x44($v0)
/* FA1BC 800DC0CC 0040F809 */  jalr       $v0
/* FA1C0 800DC0D0 00642021 */   addu      $a0, $v1, $a0
/* FA1C4 800DC0D4 8FA30068 */  lw         $v1, 0x68($sp)
/* FA1C8 800DC0D8 02002821 */  addu       $a1, $s0, $zero
/* FA1CC 800DC0DC 8C620008 */  lw         $v0, 0x8($v1)
/* FA1D0 800DC0E0 02403021 */  addu       $a2, $s2, $zero
/* FA1D4 800DC0E4 84440060 */  lh         $a0, 0x60($v0)
/* FA1D8 800DC0E8 8C420064 */  lw         $v0, 0x64($v0)
/* FA1DC 800DC0EC 0040F809 */  jalr       $v0
/* FA1E0 800DC0F0 00642021 */   addu      $a0, $v1, $a0
/* FA1E4 800DC0F4 8FA30060 */  lw         $v1, 0x60($sp)
/* FA1E8 800DC0F8 02002821 */  addu       $a1, $s0, $zero
/* FA1EC 800DC0FC 8C620008 */  lw         $v0, 0x8($v1)
/* FA1F0 800DC100 02203021 */  addu       $a2, $s1, $zero
/* FA1F4 800DC104 84440048 */  lh         $a0, 0x48($v0)
/* FA1F8 800DC108 8C42004C */  lw         $v0, 0x4C($v0)
/* FA1FC 800DC10C 0040F809 */  jalr       $v0
/* FA200 800DC110 00642021 */   addu      $a0, $v1, $a0
/* FA204 800DC114 8FA30068 */  lw         $v1, 0x68($sp)
/* FA208 800DC118 02002821 */  addu       $a1, $s0, $zero
/* FA20C 800DC11C 8C620008 */  lw         $v0, 0x8($v1)
/* FA210 800DC120 02203021 */  addu       $a2, $s1, $zero
/* FA214 800DC124 84440068 */  lh         $a0, 0x68($v0)
/* FA218 800DC128 8C42006C */  lw         $v0, 0x6C($v0)
/* FA21C 800DC12C 0040F809 */  jalr       $v0
/* FA220 800DC130 00642021 */   addu      $a0, $v1, $a0
/* FA224 800DC134 8EE20E54 */  lw         $v0, 0xE54($s7)
/* FA228 800DC138 26100001 */  addiu      $s0, $s0, 0x1
/* FA22C 800DC13C 0202102A */  slt        $v0, $s0, $v0
/* FA230 800DC140 1440FFBC */  bnez       $v0, .Lmenu_800DC034
/* FA234 800DC144 00000000 */   nop
.Lmenu_800DC148:
/* FA238 800DC148 3C01800D */  lui        $at, %hi(D_menu_800CAA84)
/* FA23C 800DC14C C420AA84 */  lwc1       $f0, %lo(D_menu_800CAA84)($at)
/* FA240 800DC150 E6C00034 */  swc1       $f0, 0x34($s6)
/* FA244 800DC154 8EE30008 */  lw         $v1, 0x8($s7)
/* FA248 800DC158 8C62003C */  lw         $v0, 0x3C($v1)
/* FA24C 800DC15C 00002821 */  addu       $a1, $zero, $zero
/* FA250 800DC160 84440070 */  lh         $a0, 0x70($v0)
/* FA254 800DC164 8C420074 */  lw         $v0, 0x74($v0)
/* FA258 800DC168 0040F809 */  jalr       $v0
/* FA25C 800DC16C 00642021 */   addu      $a0, $v1, $a0
/* FA260 800DC170 8EE30008 */  lw         $v1, 0x8($s7)
/* FA264 800DC174 00002821 */  addu       $a1, $zero, $zero
/* FA268 800DC178 8C62003C */  lw         $v0, 0x3C($v1)
/* FA26C 800DC17C 00A03021 */  addu       $a2, $a1, $zero
/* FA270 800DC180 84440060 */  lh         $a0, 0x60($v0)
/* FA274 800DC184 8C420064 */  lw         $v0, 0x64($v0)
/* FA278 800DC188 0040F809 */  jalr       $v0
/* FA27C 800DC18C 00642021 */   addu      $a0, $v1, $a0
/* FA280 800DC190 8EC2003C */  lw         $v0, 0x3C($s6)
/* FA284 800DC194 24050001 */  addiu      $a1, $zero, 0x1
/* FA288 800DC198 84440070 */  lh         $a0, 0x70($v0)
/* FA28C 800DC19C 8C420074 */  lw         $v0, 0x74($v0)
/* FA290 800DC1A0 0040F809 */  jalr       $v0
/* FA294 800DC1A4 02C42021 */   addu      $a0, $s6, $a0
/* FA298 800DC1A8 24050001 */  addiu      $a1, $zero, 0x1
/* FA29C 800DC1AC 8EC2003C */  lw         $v0, 0x3C($s6)
/* FA2A0 800DC1B0 00A03021 */  addu       $a2, $a1, $zero
/* FA2A4 800DC1B4 84440060 */  lh         $a0, 0x60($v0)
/* FA2A8 800DC1B8 8C420064 */  lw         $v0, 0x64($v0)
/* FA2AC 800DC1BC 0040F809 */  jalr       $v0
/* FA2B0 800DC1C0 02C42021 */   addu      $a0, $s6, $a0
/* FA2B4 800DC1C4 8FBF00A4 */  lw         $ra, 0xA4($sp)
/* FA2B8 800DC1C8 8FBE00A0 */  lw         $fp, 0xA0($sp)
/* FA2BC 800DC1CC 8FB7009C */  lw         $s7, 0x9C($sp)
/* FA2C0 800DC1D0 8FB60098 */  lw         $s6, 0x98($sp)
/* FA2C4 800DC1D4 8FB50094 */  lw         $s5, 0x94($sp)
/* FA2C8 800DC1D8 8FB40090 */  lw         $s4, 0x90($sp)
/* FA2CC 800DC1DC 8FB3008C */  lw         $s3, 0x8C($sp)
/* FA2D0 800DC1E0 8FB20088 */  lw         $s2, 0x88($sp)
/* FA2D4 800DC1E4 8FB10084 */  lw         $s1, 0x84($sp)
/* FA2D8 800DC1E8 8FB00080 */  lw         $s0, 0x80($sp)
/* FA2DC 800DC1EC 03E00008 */  jr         $ra
/* FA2E0 800DC1F0 27BD00A8 */   addiu     $sp, $sp, 0xA8

glabel func_menu_800DC1F4
/* FA2E4 800DC1F4 3C028012 */  lui        $v0, %hi(D_menu_80126998)
/* FA2E8 800DC1F8 03E00008 */  jr         $ra
/* FA2EC 800DC1FC AC446998 */   sw        $a0, %lo(D_menu_80126998)($v0)

glabel func_menu_800DC200
/* FA2F0 800DC200 00801021 */  addu       $v0, $a0, $zero
/* FA2F4 800DC204 A0400000 */  sb         $zero, 0x0($v0)
/* FA2F8 800DC208 AC400008 */  sw         $zero, 0x8($v0)
/* FA2FC 800DC20C AC400010 */  sw         $zero, 0x10($v0)
/* FA300 800DC210 03E00008 */  jr         $ra
/* FA304 800DC214 AC400014 */   sw        $zero, 0x14($v0)

glabel func_menu_800DC218
/* FA308 800DC218 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* FA30C 800DC21C AFB10014 */  sw         $s1, 0x14($sp)
/* FA310 800DC220 00808821 */  addu       $s1, $a0, $zero
/* FA314 800DC224 AFB00010 */  sw         $s0, 0x10($sp)
/* FA318 800DC228 AFBF0018 */  sw         $ra, 0x18($sp)
/* FA31C 800DC22C 0C037097 */  jal        func_menu_800DC25C
/* FA320 800DC230 00A08021 */   addu      $s0, $a1, $zero
/* FA324 800DC234 32100001 */  andi       $s0, $s0, 0x1
/* FA328 800DC238 12000003 */  beqz       $s0, .Lmenu_800DC248
/* FA32C 800DC23C 00000000 */   nop
/* FA330 800DC240 0C01FB5C */  jal        func_8007ED70
/* FA334 800DC244 02202021 */   addu      $a0, $s1, $zero
.Lmenu_800DC248:
/* FA338 800DC248 8FBF0018 */  lw         $ra, 0x18($sp)
/* FA33C 800DC24C 8FB10014 */  lw         $s1, 0x14($sp)
/* FA340 800DC250 8FB00010 */  lw         $s0, 0x10($sp)
/* FA344 800DC254 03E00008 */  jr         $ra
/* FA348 800DC258 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800DC25C
/* FA34C 800DC25C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FA350 800DC260 AFB00010 */  sw         $s0, 0x10($sp)
/* FA354 800DC264 00808021 */  addu       $s0, $a0, $zero
/* FA358 800DC268 AFBF0014 */  sw         $ra, 0x14($sp)
/* FA35C 800DC26C 8E040014 */  lw         $a0, 0x14($s0)
/* FA360 800DC270 50800005 */  beql       $a0, $zero, .Lmenu_800DC288
/* FA364 800DC274 AE000008 */   sw        $zero, 0x8($s0)
/* FA368 800DC278 0C009444 */  jal        func_80025110
/* FA36C 800DC27C 00000000 */   nop
/* FA370 800DC280 AE000014 */  sw         $zero, 0x14($s0)
/* FA374 800DC284 AE000008 */  sw         $zero, 0x8($s0)
.Lmenu_800DC288:
/* FA378 800DC288 AE000010 */  sw         $zero, 0x10($s0)
/* FA37C 800DC28C 8FBF0014 */  lw         $ra, 0x14($sp)
/* FA380 800DC290 8FB00010 */  lw         $s0, 0x10($sp)
/* FA384 800DC294 03E00008 */  jr         $ra
/* FA388 800DC298 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800DC29C
/* FA38C 800DC29C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* FA390 800DC2A0 AFB3001C */  sw         $s3, 0x1C($sp)
/* FA394 800DC2A4 00809821 */  addu       $s3, $a0, $zero
/* FA398 800DC2A8 AFB20018 */  sw         $s2, 0x18($sp)
/* FA39C 800DC2AC 00A09021 */  addu       $s2, $a1, $zero
/* FA3A0 800DC2B0 AFB40020 */  sw         $s4, 0x20($sp)
/* FA3A4 800DC2B4 00C0A021 */  addu       $s4, $a2, $zero
/* FA3A8 800DC2B8 AFB50024 */  sw         $s5, 0x24($sp)
/* FA3AC 800DC2BC 00E0A821 */  addu       $s5, $a3, $zero
/* FA3B0 800DC2C0 AFB00010 */  sw         $s0, 0x10($sp)
/* FA3B4 800DC2C4 8FB00040 */  lw         $s0, 0x40($sp)
/* FA3B8 800DC2C8 AFBF0028 */  sw         $ra, 0x28($sp)
/* FA3BC 800DC2CC 0C037097 */  jal        func_menu_800DC25C
/* FA3C0 800DC2D0 AFB10014 */   sw        $s1, 0x14($sp)
/* FA3C4 800DC2D4 12000014 */  beqz       $s0, .Lmenu_800DC328
/* FA3C8 800DC2D8 00000000 */   nop
/* FA3CC 800DC2DC 0C01FB4C */  jal        func_8007ED30
/* FA3D0 800DC2E0 24040654 */   addiu     $a0, $zero, 0x654
/* FA3D4 800DC2E4 0C00278C */  jal        func_80009E30
/* FA3D8 800DC2E8 00402021 */   addu      $a0, $v0, $zero
/* FA3DC 800DC2EC 00408821 */  addu       $s1, $v0, $zero
/* FA3E0 800DC2F0 56200008 */  bnel       $s1, $zero, .Lmenu_800DC314
/* FA3E4 800DC2F4 02202021 */   addu      $a0, $s1, $zero
/* FA3E8 800DC2F8 3C04800D */  lui        $a0, %hi(D_menu_800CAA90)
/* FA3EC 800DC2FC 2484AA90 */  addiu      $a0, $a0, %lo(D_menu_800CAA90)
/* FA3F0 800DC300 00002821 */  addu       $a1, $zero, $zero
/* FA3F4 800DC304 00A03021 */  addu       $a2, $a1, $zero
/* FA3F8 800DC308 0C011ACF */  jal        func_80046B3C
/* FA3FC 800DC30C 00A03821 */   addu      $a3, $a1, $zero
/* FA400 800DC310 02202021 */  addu       $a0, $s1, $zero
.Lmenu_800DC314:
/* FA404 800DC314 3C05800D */  lui        $a1, %hi(D_menu_800CAA94)
/* FA408 800DC318 0C0025BA */  jal        func_800096E8
/* FA40C 800DC31C 24A5AA94 */   addiu     $a1, $a1, %lo(D_menu_800CAA94)
/* FA410 800DC320 080370DA */  j          .Lmenu_800DC368
/* FA414 800DC324 00000000 */   nop
.Lmenu_800DC328:
/* FA418 800DC328 0C01FB4C */  jal        func_8007ED30
/* FA41C 800DC32C 24040658 */   addiu     $a0, $zero, 0x658
/* FA420 800DC330 00408021 */  addu       $s0, $v0, $zero
/* FA424 800DC334 0C002504 */  jal        func_80009410
/* FA428 800DC338 02002021 */   addu      $a0, $s0, $zero
/* FA42C 800DC33C 3C02800D */  lui        $v0, %hi(D_menu_800CAAA0)
/* FA430 800DC340 2442AAA0 */  addiu      $v0, $v0, %lo(D_menu_800CAAA0)
/* FA434 800DC344 02008821 */  addu       $s1, $s0, $zero
/* FA438 800DC348 16200007 */  bnez       $s1, .Lmenu_800DC368
/* FA43C 800DC34C AE020028 */   sw        $v0, 0x28($s0)
/* FA440 800DC350 3C04800D */  lui        $a0, %hi(D_menu_800CAA90)
/* FA444 800DC354 2484AA90 */  addiu      $a0, $a0, %lo(D_menu_800CAA90)
/* FA448 800DC358 00002821 */  addu       $a1, $zero, $zero
/* FA44C 800DC35C 00A03021 */  addu       $a2, $a1, $zero
/* FA450 800DC360 0C011ACF */  jal        func_80046B3C
/* FA454 800DC364 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800DC368:
/* FA458 800DC368 8E220028 */  lw         $v0, 0x28($s1)
/* FA45C 800DC36C 02402821 */  addu       $a1, $s2, $zero
/* FA460 800DC370 84440088 */  lh         $a0, 0x88($v0)
/* FA464 800DC374 8C42008C */  lw         $v0, 0x8C($v0)
/* FA468 800DC378 0040F809 */  jalr       $v0
/* FA46C 800DC37C 02242021 */   addu      $a0, $s1, $a0
/* FA470 800DC380 8E220004 */  lw         $v0, 0x4($s1)
/* FA474 800DC384 30420001 */  andi       $v0, $v0, 0x1
/* FA478 800DC388 14400006 */  bnez       $v0, .Lmenu_800DC3A4
/* FA47C 800DC38C 00002821 */   addu      $a1, $zero, $zero
/* FA480 800DC390 3C04800D */  lui        $a0, %hi(D_menu_800CAA90)
/* FA484 800DC394 2484AA90 */  addiu      $a0, $a0, %lo(D_menu_800CAA90)
/* FA488 800DC398 00A03021 */  addu       $a2, $a1, $zero
/* FA48C 800DC39C 0C011ACF */  jal        func_80046B3C
/* FA490 800DC3A0 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800DC3A4:
/* FA494 800DC3A4 8E220028 */  lw         $v0, 0x28($s1)
/* FA498 800DC3A8 844400A0 */  lh         $a0, 0xA0($v0)
/* FA49C 800DC3AC 8C4200A4 */  lw         $v0, 0xA4($v0)
/* FA4A0 800DC3B0 0040F809 */  jalr       $v0
/* FA4A4 800DC3B4 02242021 */   addu      $a0, $s1, $a0
/* FA4A8 800DC3B8 00401821 */  addu       $v1, $v0, $zero
/* FA4AC 800DC3BC 10600064 */  beqz       $v1, .Lmenu_800DC550
/* FA4B0 800DC3C0 24020030 */   addiu     $v0, $zero, 0x30
/* FA4B4 800DC3C4 1062001B */  beq        $v1, $v0, .Lmenu_800DC434
/* FA4B8 800DC3C8 2C620031 */   sltiu     $v0, $v1, 0x31
/* FA4BC 800DC3CC 10400005 */  beqz       $v0, .Lmenu_800DC3E4
/* FA4C0 800DC3D0 2402002E */   addiu     $v0, $zero, 0x2E
/* FA4C4 800DC3D4 10620008 */  beq        $v1, $v0, .Lmenu_800DC3F8
/* FA4C8 800DC3D8 00000000 */   nop
/* FA4CC 800DC3DC 0803714C */  j          .Lmenu_800DC530
/* FA4D0 800DC3E0 00000000 */   nop
.Lmenu_800DC3E4:
/* FA4D4 800DC3E4 24020031 */  addiu      $v0, $zero, 0x31
/* FA4D8 800DC3E8 10620007 */  beq        $v1, $v0, .Lmenu_800DC408
/* FA4DC 800DC3EC 00000000 */   nop
/* FA4E0 800DC3F0 0803714C */  j          .Lmenu_800DC530
/* FA4E4 800DC3F4 00000000 */   nop
.Lmenu_800DC3F8:
/* FA4E8 800DC3F8 0C002680 */  jal        func_80009A00
/* FA4EC 800DC3FC 02202021 */   addu      $a0, $s1, $zero
/* FA4F0 800DC400 080370E9 */  j          .Lmenu_800DC3A4
/* FA4F4 800DC404 AE620008 */   sw        $v0, 0x8($s3)
.Lmenu_800DC408:
/* FA4F8 800DC408 8E220028 */  lw         $v0, 0x28($s1)
/* FA4FC 800DC40C 844400A0 */  lh         $a0, 0xA0($v0)
/* FA500 800DC410 8C4200A4 */  lw         $v0, 0xA4($v0)
/* FA504 800DC414 0040F809 */  jalr       $v0
/* FA508 800DC418 02242021 */   addu      $a0, $s1, $a0
/* FA50C 800DC41C 02602021 */  addu       $a0, $s3, $zero
/* FA510 800DC420 26250044 */  addiu      $a1, $s1, 0x44
/* FA514 800DC424 0C000708 */  jal        func_80001C20
/* FA518 800DC428 24060008 */   addiu     $a2, $zero, 0x8
/* FA51C 800DC42C 080370E9 */  j          .Lmenu_800DC3A4
/* FA520 800DC430 00000000 */   nop
.Lmenu_800DC434:
/* FA524 800DC434 0C037CB8 */  jal        func_menu_800DF2E0
/* FA528 800DC438 02202021 */   addu      $a0, $s1, $zero
/* FA52C 800DC43C 3C038012 */  lui        $v1, %hi(D_menu_801269A8)
/* FA530 800DC440 8C6469A8 */  lw         $a0, %lo(D_menu_801269A8)($v1)
/* FA534 800DC444 0C01FB65 */  jal        func_8007ED94
/* FA538 800DC448 AE620010 */   sw        $v0, 0x10($s3)
/* FA53C 800DC44C 8E640010 */  lw         $a0, 0x10($s3)
/* FA540 800DC450 0C00943C */  jal        func_800250F0
/* FA544 800DC454 00042080 */   sll       $a0, $a0, 2
/* FA548 800DC458 0C01FB72 */  jal        func_8007EDC8
/* FA54C 800DC45C AE620014 */   sw        $v0, 0x14($s3)
/* FA550 800DC460 8E620014 */  lw         $v0, 0x14($s3)
/* FA554 800DC464 14400008 */  bnez       $v0, .Lmenu_800DC488
/* FA558 800DC468 00009021 */   addu      $s2, $zero, $zero
/* FA55C 800DC46C 3C04800D */  lui        $a0, %hi(D_menu_800CAA90)
/* FA560 800DC470 2484AA90 */  addiu      $a0, $a0, %lo(D_menu_800CAA90)
/* FA564 800DC474 00002821 */  addu       $a1, $zero, $zero
/* FA568 800DC478 00A03021 */  addu       $a2, $a1, $zero
/* FA56C 800DC47C 0C011ACF */  jal        func_80046B3C
/* FA570 800DC480 00A03821 */   addu      $a3, $a1, $zero
/* FA574 800DC484 00009021 */  addu       $s2, $zero, $zero
.Lmenu_800DC488:
/* FA578 800DC488 02408021 */  addu       $s0, $s2, $zero
.Lmenu_800DC48C:
/* FA57C 800DC48C 8E620010 */  lw         $v0, 0x10($s3)
/* FA580 800DC490 0242102A */  slt        $v0, $s2, $v0
/* FA584 800DC494 50400022 */  beql       $v0, $zero, .Lmenu_800DC520
/* FA588 800DC498 02202021 */   addu      $a0, $s1, $zero
/* FA58C 800DC49C 8E220028 */  lw         $v0, 0x28($s1)
/* FA590 800DC4A0 844400A0 */  lh         $a0, 0xA0($v0)
/* FA594 800DC4A4 8C4200A4 */  lw         $v0, 0xA4($v0)
/* FA598 800DC4A8 0040F809 */  jalr       $v0
/* FA59C 800DC4AC 02242021 */   addu      $a0, $s1, $a0
/* FA5A0 800DC4B0 02802021 */  addu       $a0, $s4, $zero
/* FA5A4 800DC4B4 0C03802B */  jal        func_menu_800E00AC
/* FA5A8 800DC4B8 26250044 */   addiu     $a1, $s1, 0x44
/* FA5AC 800DC4BC 00401821 */  addu       $v1, $v0, $zero
/* FA5B0 800DC4C0 10600006 */  beqz       $v1, .Lmenu_800DC4DC
/* FA5B4 800DC4C4 00000000 */   nop
/* FA5B8 800DC4C8 8E620014 */  lw         $v0, 0x14($s3)
/* FA5BC 800DC4CC 94630010 */  lhu        $v1, 0x10($v1)
/* FA5C0 800DC4D0 02021021 */  addu       $v0, $s0, $v0
/* FA5C4 800DC4D4 0803713A */  j          .Lmenu_800DC4E8
/* FA5C8 800DC4D8 A4430000 */   sh        $v1, 0x0($v0)
.Lmenu_800DC4DC:
/* FA5CC 800DC4DC 8E620014 */  lw         $v0, 0x14($s3)
/* FA5D0 800DC4E0 02021021 */  addu       $v0, $s0, $v0
/* FA5D4 800DC4E4 A4400000 */  sh         $zero, 0x0($v0)
.Lmenu_800DC4E8:
/* FA5D8 800DC4E8 8E220028 */  lw         $v0, 0x28($s1)
/* FA5DC 800DC4EC 844400A0 */  lh         $a0, 0xA0($v0)
/* FA5E0 800DC4F0 8C4200A4 */  lw         $v0, 0xA4($v0)
/* FA5E4 800DC4F4 0040F809 */  jalr       $v0
/* FA5E8 800DC4F8 02242021 */   addu      $a0, $s1, $a0
/* FA5EC 800DC4FC 02A02021 */  addu       $a0, $s5, $zero
/* FA5F0 800DC500 0C03554D */  jal        func_menu_800D5534
/* FA5F4 800DC504 26250044 */   addiu     $a1, $s1, 0x44
/* FA5F8 800DC508 8E630014 */  lw         $v1, 0x14($s3)
/* FA5FC 800DC50C 26520001 */  addiu      $s2, $s2, 0x1
/* FA600 800DC510 02031821 */  addu       $v1, $s0, $v1
/* FA604 800DC514 26100004 */  addiu      $s0, $s0, 0x4
/* FA608 800DC518 08037123 */  j          .Lmenu_800DC48C
/* FA60C 800DC51C A0620002 */   sb        $v0, 0x2($v1)
.Lmenu_800DC520:
/* FA610 800DC520 0C0026F4 */  jal        func_80009BD0
/* FA614 800DC524 24050006 */   addiu     $a1, $zero, 0x6
/* FA618 800DC528 080370E9 */  j          .Lmenu_800DC3A4
/* FA61C 800DC52C 00000000 */   nop
.Lmenu_800DC530:
/* FA620 800DC530 8E220028 */  lw         $v0, 0x28($s1)
/* FA624 800DC534 24050013 */  addiu      $a1, $zero, 0x13
/* FA628 800DC538 84440098 */  lh         $a0, 0x98($v0)
/* FA62C 800DC53C 8C42009C */  lw         $v0, 0x9C($v0)
/* FA630 800DC540 0040F809 */  jalr       $v0
/* FA634 800DC544 02242021 */   addu      $a0, $s1, $a0
/* FA638 800DC548 080370E9 */  j          .Lmenu_800DC3A4
/* FA63C 800DC54C 00000000 */   nop
.Lmenu_800DC550:
/* FA640 800DC550 12200006 */  beqz       $s1, .Lmenu_800DC56C
/* FA644 800DC554 24050003 */   addiu     $a1, $zero, 0x3
/* FA648 800DC558 8E220028 */  lw         $v0, 0x28($s1)
/* FA64C 800DC55C 84440038 */  lh         $a0, 0x38($v0)
/* FA650 800DC560 8C42003C */  lw         $v0, 0x3C($v0)
/* FA654 800DC564 0040F809 */  jalr       $v0
/* FA658 800DC568 02242021 */   addu      $a0, $s1, $a0
.Lmenu_800DC56C:
/* FA65C 800DC56C 8FBF0028 */  lw         $ra, 0x28($sp)
/* FA660 800DC570 8FB50024 */  lw         $s5, 0x24($sp)
/* FA664 800DC574 8FB40020 */  lw         $s4, 0x20($sp)
/* FA668 800DC578 8FB3001C */  lw         $s3, 0x1C($sp)
/* FA66C 800DC57C 8FB20018 */  lw         $s2, 0x18($sp)
/* FA670 800DC580 8FB10014 */  lw         $s1, 0x14($sp)
/* FA674 800DC584 8FB00010 */  lw         $s0, 0x10($sp)
/* FA678 800DC588 03E00008 */  jr         $ra
/* FA67C 800DC58C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800DC590
/* FA680 800DC590 04C20001 */  bltzl      $a2, .Lmenu_800DC598
/* FA684 800DC594 00003021 */   addu      $a2, $zero, $zero
.Lmenu_800DC598:
/* FA688 800DC598 8C830010 */  lw         $v1, 0x10($a0)
/* FA68C 800DC59C 00C3102A */  slt        $v0, $a2, $v1
/* FA690 800DC5A0 1440000C */  bnez       $v0, .Lmenu_800DC5D4
/* FA694 800DC5A4 00000000 */   nop
/* FA698 800DC5A8 00C3001A */  div        $zero, $a2, $v1
/* FA69C 800DC5AC 14600002 */  bnez       $v1, .Lmenu_800DC5B8
/* FA6A0 800DC5B0 00000000 */   nop
/* FA6A4 800DC5B4 0007000D */  break      7
.Lmenu_800DC5B8:
/* FA6A8 800DC5B8 2401FFFF */  addiu      $at, $zero, -0x1
/* FA6AC 800DC5BC 14610004 */  bne        $v1, $at, .Lmenu_800DC5D0
/* FA6B0 800DC5C0 3C018000 */   lui       $at, (0x80000000 >> 16)
/* FA6B4 800DC5C4 14C10002 */  bne        $a2, $at, .Lmenu_800DC5D0
/* FA6B8 800DC5C8 00000000 */   nop
/* FA6BC 800DC5CC 0006000D */  break      6
.Lmenu_800DC5D0:
/* FA6C0 800DC5D0 00003010 */  mfhi       $a2
.Lmenu_800DC5D4:
/* FA6C4 800DC5D4 10E00010 */  beqz       $a3, .Lmenu_800DC618
/* FA6C8 800DC5D8 00C01821 */   addu      $v1, $a2, $zero
/* FA6CC 800DC5DC 2408FFFF */  addiu      $t0, $zero, -0x1
/* FA6D0 800DC5E0 ACA30000 */  sw         $v1, 0x0($a1)
.Lmenu_800DC5E4:
/* FA6D4 800DC5E4 24E7FFFF */  addiu      $a3, $a3, -0x1
/* FA6D8 800DC5E8 10E0000B */  beqz       $a3, .Lmenu_800DC618
/* FA6DC 800DC5EC 24A50004 */   addiu     $a1, $a1, 0x4
/* FA6E0 800DC5F0 8C820010 */  lw         $v0, 0x10($a0)
/* FA6E4 800DC5F4 24630001 */  addiu      $v1, $v1, 0x1
/* FA6E8 800DC5F8 50620001 */  beql       $v1, $v0, .Lmenu_800DC600
/* FA6EC 800DC5FC 00001821 */   addu      $v1, $zero, $zero
.Lmenu_800DC600:
/* FA6F0 800DC600 5466FFF8 */  bnel       $v1, $a2, .Lmenu_800DC5E4
/* FA6F4 800DC604 ACA30000 */   sw        $v1, 0x0($a1)
.Lmenu_800DC608:
/* FA6F8 800DC608 ACA80000 */  sw         $t0, 0x0($a1)
/* FA6FC 800DC60C 24E7FFFF */  addiu      $a3, $a3, -0x1
/* FA700 800DC610 14E0FFFD */  bnez       $a3, .Lmenu_800DC608
/* FA704 800DC614 24A50004 */   addiu     $a1, $a1, 0x4
.Lmenu_800DC618:
/* FA708 800DC618 03E00008 */  jr         $ra
/* FA70C 800DC61C 00000000 */   nop

glabel func_menu_800DC620
/* FA710 800DC620 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* FA714 800DC624 00A03021 */  addu       $a2, $a1, $zero
/* FA718 800DC628 04C00007 */  bltz       $a2, .Lmenu_800DC648
/* FA71C 800DC62C AFBF0018 */   sw        $ra, 0x18($sp)
/* FA720 800DC630 27A50010 */  addiu      $a1, $sp, 0x10
/* FA724 800DC634 0C037164 */  jal        func_menu_800DC590
/* FA728 800DC638 24070001 */   addiu     $a3, $zero, 0x1
/* FA72C 800DC63C 8FA20010 */  lw         $v0, 0x10($sp)
/* FA730 800DC640 08037193 */  j          .Lmenu_800DC64C
/* FA734 800DC644 00000000 */   nop
.Lmenu_800DC648:
/* FA738 800DC648 2402FFFF */  addiu      $v0, $zero, -0x1
.Lmenu_800DC64C:
/* FA73C 800DC64C 8FBF0018 */  lw         $ra, 0x18($sp)
/* FA740 800DC650 03E00008 */  jr         $ra
/* FA744 800DC654 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800DC658
/* FA748 800DC658 04A00012 */  bltz       $a1, .Lmenu_800DC6A4
/* FA74C 800DC65C 2402FFFF */   addiu     $v0, $zero, -0x1
/* FA750 800DC660 8C840010 */  lw         $a0, 0x10($a0)
/* FA754 800DC664 00A4102A */  slt        $v0, $a1, $a0
/* FA758 800DC668 1440000C */  bnez       $v0, .Lmenu_800DC69C
/* FA75C 800DC66C 00000000 */   nop
/* FA760 800DC670 00A4001A */  div        $zero, $a1, $a0
/* FA764 800DC674 14800002 */  bnez       $a0, .Lmenu_800DC680
/* FA768 800DC678 00000000 */   nop
/* FA76C 800DC67C 0007000D */  break      7
.Lmenu_800DC680:
/* FA770 800DC680 2401FFFF */  addiu      $at, $zero, -0x1
/* FA774 800DC684 14810004 */  bne        $a0, $at, .Lmenu_800DC698
/* FA778 800DC688 3C018000 */   lui       $at, (0x80000000 >> 16)
/* FA77C 800DC68C 14A10002 */  bne        $a1, $at, .Lmenu_800DC698
/* FA780 800DC690 00000000 */   nop
/* FA784 800DC694 0006000D */  break      6
.Lmenu_800DC698:
/* FA788 800DC698 00002810 */  mfhi       $a1
.Lmenu_800DC69C:
/* FA78C 800DC69C 03E00008 */  jr         $ra
/* FA790 800DC6A0 00A01021 */   addu      $v0, $a1, $zero
.Lmenu_800DC6A4:
/* FA794 800DC6A4 03E00008 */  jr         $ra
/* FA798 800DC6A8 00000000 */   nop

glabel func_menu_800DC6AC
/* FA79C 800DC6AC 8C820014 */  lw         $v0, 0x14($a0)
/* FA7A0 800DC6B0 00052880 */  sll        $a1, $a1, 2
/* FA7A4 800DC6B4 00A21021 */  addu       $v0, $a1, $v0
/* FA7A8 800DC6B8 94420000 */  lhu        $v0, 0x0($v0)
/* FA7AC 800DC6BC ACC20000 */  sw         $v0, 0x0($a2)
/* FA7B0 800DC6C0 8C820014 */  lw         $v0, 0x14($a0)
/* FA7B4 800DC6C4 00A22821 */  addu       $a1, $a1, $v0
/* FA7B8 800DC6C8 90A20002 */  lbu        $v0, 0x2($a1)
/* FA7BC 800DC6CC 03E00008 */  jr         $ra
/* FA7C0 800DC6D0 ACE20000 */   sw        $v0, 0x0($a3)

glabel func_menu_800DC6D4
/* FA7C4 800DC6D4 03E00008 */  jr         $ra
/* FA7C8 800DC6D8 24020001 */   addiu     $v0, $zero, 0x1

glabel func_menu_800DC6DC
/* FA7CC 800DC6DC 03E00008 */  jr         $ra
/* FA7D0 800DC6E0 00000000 */   nop

glabel func_menu_800DC6E4
/* FA7D4 800DC6E4 03E00008 */  jr         $ra
/* FA7D8 800DC6E8 00000000 */   nop

glabel func_menu_800DC6EC
/* FA7DC 800DC6EC 8C820010 */  lw         $v0, 0x10($a0)
/* FA7E0 800DC6F0 1840000E */  blez       $v0, .Lmenu_800DC72C
/* FA7E4 800DC6F4 00001821 */   addu      $v1, $zero, $zero
/* FA7E8 800DC6F8 00403821 */  addu       $a3, $v0, $zero
/* FA7EC 800DC6FC 8C840014 */  lw         $a0, 0x14($a0)
.Lmenu_800DC700:
/* FA7F0 800DC700 94820000 */  lhu        $v0, 0x0($a0)
/* FA7F4 800DC704 54450006 */  bnel       $v0, $a1, .Lmenu_800DC720
/* FA7F8 800DC708 24630001 */   addiu     $v1, $v1, 0x1
/* FA7FC 800DC70C 90820002 */  lbu        $v0, 0x2($a0)
/* FA800 800DC710 54460003 */  bnel       $v0, $a2, .Lmenu_800DC720
/* FA804 800DC714 24630001 */   addiu     $v1, $v1, 0x1
/* FA808 800DC718 03E00008 */  jr         $ra
/* FA80C 800DC71C 00601021 */   addu      $v0, $v1, $zero
.Lmenu_800DC720:
/* FA810 800DC720 0067102A */  slt        $v0, $v1, $a3
/* FA814 800DC724 1440FFF6 */  bnez       $v0, .Lmenu_800DC700
/* FA818 800DC728 24840004 */   addiu     $a0, $a0, 0x4
.Lmenu_800DC72C:
/* FA81C 800DC72C 03E00008 */  jr         $ra
/* FA820 800DC730 2402FFFF */   addiu     $v0, $zero, -0x1

glabel func_menu_800DC734
/* FA824 800DC734 03E00008 */  jr         $ra
/* FA828 800DC738 00000000 */   nop

glabel func_menu_800DC73C
/* FA82C 800DC73C 03E00008 */  jr         $ra
/* FA830 800DC740 00000000 */   nop

glabel func_menu_800DC744
/* FA834 800DC744 00801021 */  addu       $v0, $a0, $zero
/* FA838 800DC748 AC400004 */  sw         $zero, 0x4($v0)
/* FA83C 800DC74C AC400000 */  sw         $zero, 0x0($v0)
/* FA840 800DC750 AC400008 */  sw         $zero, 0x8($v0)
/* FA844 800DC754 AC40000C */  sw         $zero, 0xC($v0)
/* FA848 800DC758 03E00008 */  jr         $ra
/* FA84C 800DC75C AC400010 */   sw        $zero, 0x10($v0)

glabel func_menu_800DC760
/* FA850 800DC760 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* FA854 800DC764 AFB10014 */  sw         $s1, 0x14($sp)
/* FA858 800DC768 00808821 */  addu       $s1, $a0, $zero
/* FA85C 800DC76C AFB00010 */  sw         $s0, 0x10($sp)
/* FA860 800DC770 AFBF0018 */  sw         $ra, 0x18($sp)
/* FA864 800DC774 0C0371E9 */  jal        func_menu_800DC7A4
/* FA868 800DC778 00A08021 */   addu      $s0, $a1, $zero
/* FA86C 800DC77C 32100001 */  andi       $s0, $s0, 0x1
/* FA870 800DC780 12000003 */  beqz       $s0, .Lmenu_800DC790
/* FA874 800DC784 00000000 */   nop
/* FA878 800DC788 0C01FB5C */  jal        func_8007ED70
/* FA87C 800DC78C 02202021 */   addu      $a0, $s1, $zero
.Lmenu_800DC790:
/* FA880 800DC790 8FBF0018 */  lw         $ra, 0x18($sp)
/* FA884 800DC794 8FB10014 */  lw         $s1, 0x14($sp)
/* FA888 800DC798 8FB00010 */  lw         $s0, 0x10($sp)
/* FA88C 800DC79C 03E00008 */  jr         $ra
/* FA890 800DC7A0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800DC7A4
/* FA894 800DC7A4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* FA898 800DC7A8 AFB10014 */  sw         $s1, 0x14($sp)
/* FA89C 800DC7AC 00808821 */  addu       $s1, $a0, $zero
/* FA8A0 800DC7B0 AFBF0018 */  sw         $ra, 0x18($sp)
/* FA8A4 800DC7B4 AFB00010 */  sw         $s0, 0x10($sp)
/* FA8A8 800DC7B8 8E24000C */  lw         $a0, 0xC($s1)
/* FA8AC 800DC7BC 50800013 */  beql       $a0, $zero, .Lmenu_800DC80C
/* FA8B0 800DC7C0 AE200008 */   sw        $zero, 0x8($s1)
/* FA8B4 800DC7C4 8C83FFF8 */  lw         $v1, -0x8($a0)
/* FA8B8 800DC7C8 00031040 */  sll        $v0, $v1, 1
/* FA8BC 800DC7CC 00431021 */  addu       $v0, $v0, $v1
/* FA8C0 800DC7D0 000210C0 */  sll        $v0, $v0, 3
/* FA8C4 800DC7D4 00828021 */  addu       $s0, $a0, $v0
/* FA8C8 800DC7D8 10900008 */  beq        $a0, $s0, .Lmenu_800DC7FC
/* FA8CC 800DC7DC 2610FFE8 */   addiu     $s0, $s0, -0x18
.Lmenu_800DC7E0:
/* FA8D0 800DC7E0 02002021 */  addu       $a0, $s0, $zero
/* FA8D4 800DC7E4 0C037086 */  jal        func_menu_800DC218
/* FA8D8 800DC7E8 24050002 */   addiu     $a1, $zero, 0x2
/* FA8DC 800DC7EC 8E22000C */  lw         $v0, 0xC($s1)
/* FA8E0 800DC7F0 1450FFFB */  bne        $v0, $s0, .Lmenu_800DC7E0
/* FA8E4 800DC7F4 2610FFE8 */   addiu     $s0, $s0, -0x18
/* FA8E8 800DC7F8 8E24000C */  lw         $a0, 0xC($s1)
.Lmenu_800DC7FC:
/* FA8EC 800DC7FC 0C009444 */  jal        func_80025110
/* FA8F0 800DC800 2484FFF8 */   addiu     $a0, $a0, -0x8
/* FA8F4 800DC804 AE20000C */  sw         $zero, 0xC($s1)
/* FA8F8 800DC808 AE200008 */  sw         $zero, 0x8($s1)
.Lmenu_800DC80C:
/* FA8FC 800DC80C AE200004 */  sw         $zero, 0x4($s1)
/* FA900 800DC810 AE200000 */  sw         $zero, 0x0($s1)
/* FA904 800DC814 AE200010 */  sw         $zero, 0x10($s1)
/* FA908 800DC818 8FBF0018 */  lw         $ra, 0x18($sp)
/* FA90C 800DC81C 8FB10014 */  lw         $s1, 0x14($sp)
/* FA910 800DC820 8FB00010 */  lw         $s0, 0x10($sp)
/* FA914 800DC824 03E00008 */  jr         $ra
/* FA918 800DC828 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800DC82C
/* FA91C 800DC82C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* FA920 800DC830 AFB5002C */  sw         $s5, 0x2C($sp)
/* FA924 800DC834 0080A821 */  addu       $s5, $a0, $zero
/* FA928 800DC838 AFB20020 */  sw         $s2, 0x20($sp)
/* FA92C 800DC83C 00A09021 */  addu       $s2, $a1, $zero
/* FA930 800DC840 AFB1001C */  sw         $s1, 0x1C($sp)
/* FA934 800DC844 00C08821 */  addu       $s1, $a2, $zero
/* FA938 800DC848 AFB00018 */  sw         $s0, 0x18($sp)
/* FA93C 800DC84C 00E08021 */  addu       $s0, $a3, $zero
/* FA940 800DC850 AFB60030 */  sw         $s6, 0x30($sp)
/* FA944 800DC854 8FB60048 */  lw         $s6, 0x48($sp)
/* FA948 800DC858 AFBF0034 */  sw         $ra, 0x34($sp)
/* FA94C 800DC85C AFB40028 */  sw         $s4, 0x28($sp)
/* FA950 800DC860 0C0371E9 */  jal        func_menu_800DC7A4
/* FA954 800DC864 AFB30024 */   sw        $s3, 0x24($sp)
/* FA958 800DC868 AEB00000 */  sw         $s0, 0x0($s5)
/* FA95C 800DC86C 12C00014 */  beqz       $s6, .Lmenu_800DC8C0
/* FA960 800DC870 AEB10004 */   sw        $s1, 0x4($s5)
/* FA964 800DC874 0C01FB4C */  jal        func_8007ED30
/* FA968 800DC878 24040654 */   addiu     $a0, $zero, 0x654
/* FA96C 800DC87C 0C00278C */  jal        func_80009E30
/* FA970 800DC880 00402021 */   addu      $a0, $v0, $zero
/* FA974 800DC884 00409821 */  addu       $s3, $v0, $zero
/* FA978 800DC888 56600008 */  bnel       $s3, $zero, .Lmenu_800DC8AC
/* FA97C 800DC88C 02602021 */   addu      $a0, $s3, $zero
/* FA980 800DC890 3C04800D */  lui        $a0, %hi(D_menu_800CAA90)
/* FA984 800DC894 2484AA90 */  addiu      $a0, $a0, %lo(D_menu_800CAA90)
/* FA988 800DC898 00002821 */  addu       $a1, $zero, $zero
/* FA98C 800DC89C 00A03021 */  addu       $a2, $a1, $zero
/* FA990 800DC8A0 0C011ACF */  jal        func_80046B3C
/* FA994 800DC8A4 00A03821 */   addu      $a3, $a1, $zero
/* FA998 800DC8A8 02602021 */  addu       $a0, $s3, $zero
.Lmenu_800DC8AC:
/* FA99C 800DC8AC 3C05800D */  lui        $a1, %hi(D_menu_800CAA94)
/* FA9A0 800DC8B0 0C0025BA */  jal        func_800096E8
/* FA9A4 800DC8B4 24A5AA94 */   addiu     $a1, $a1, %lo(D_menu_800CAA94)
/* FA9A8 800DC8B8 08037240 */  j          .Lmenu_800DC900
/* FA9AC 800DC8BC 00000000 */   nop
.Lmenu_800DC8C0:
/* FA9B0 800DC8C0 0C01FB4C */  jal        func_8007ED30
/* FA9B4 800DC8C4 24040658 */   addiu     $a0, $zero, 0x658
/* FA9B8 800DC8C8 00408021 */  addu       $s0, $v0, $zero
/* FA9BC 800DC8CC 0C002504 */  jal        func_80009410
/* FA9C0 800DC8D0 02002021 */   addu      $a0, $s0, $zero
/* FA9C4 800DC8D4 3C02800D */  lui        $v0, %hi(D_menu_800CAAA0)
/* FA9C8 800DC8D8 2442AAA0 */  addiu      $v0, $v0, %lo(D_menu_800CAAA0)
/* FA9CC 800DC8DC 02009821 */  addu       $s3, $s0, $zero
/* FA9D0 800DC8E0 16600007 */  bnez       $s3, .Lmenu_800DC900
/* FA9D4 800DC8E4 AE020028 */   sw        $v0, 0x28($s0)
/* FA9D8 800DC8E8 3C04800D */  lui        $a0, %hi(D_menu_800CAA90)
/* FA9DC 800DC8EC 2484AA90 */  addiu      $a0, $a0, %lo(D_menu_800CAA90)
/* FA9E0 800DC8F0 00002821 */  addu       $a1, $zero, $zero
/* FA9E4 800DC8F4 00A03021 */  addu       $a2, $a1, $zero
/* FA9E8 800DC8F8 0C011ACF */  jal        func_80046B3C
/* FA9EC 800DC8FC 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800DC900:
/* FA9F0 800DC900 8E620028 */  lw         $v0, 0x28($s3)
/* FA9F4 800DC904 02402821 */  addu       $a1, $s2, $zero
/* FA9F8 800DC908 84440088 */  lh         $a0, 0x88($v0)
/* FA9FC 800DC90C 8C42008C */  lw         $v0, 0x8C($v0)
/* FAA00 800DC910 0040F809 */  jalr       $v0
/* FAA04 800DC914 02642021 */   addu      $a0, $s3, $a0
/* FAA08 800DC918 8E620004 */  lw         $v0, 0x4($s3)
/* FAA0C 800DC91C 30420001 */  andi       $v0, $v0, 0x1
/* FAA10 800DC920 14400006 */  bnez       $v0, .Lmenu_800DC93C
/* FAA14 800DC924 00002821 */   addu      $a1, $zero, $zero
/* FAA18 800DC928 3C04800D */  lui        $a0, %hi(D_menu_800CAA90)
/* FAA1C 800DC92C 2484AA90 */  addiu      $a0, $a0, %lo(D_menu_800CAA90)
/* FAA20 800DC930 00A03021 */  addu       $a2, $a1, $zero
/* FAA24 800DC934 0C011ACF */  jal        func_80046B3C
/* FAA28 800DC938 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800DC93C:
/* FAA2C 800DC93C 8E620028 */  lw         $v0, 0x28($s3)
/* FAA30 800DC940 844400A0 */  lh         $a0, 0xA0($v0)
/* FAA34 800DC944 8C4200A4 */  lw         $v0, 0xA4($v0)
/* FAA38 800DC948 0040F809 */  jalr       $v0
/* FAA3C 800DC94C 02642021 */   addu      $a0, $s3, $a0
/* FAA40 800DC950 2403002F */  addiu      $v1, $zero, 0x2F
/* FAA44 800DC954 10430006 */  beq        $v0, $v1, .Lmenu_800DC970
/* FAA48 800DC958 24050013 */   addiu     $a1, $zero, 0x13
/* FAA4C 800DC95C 8E620028 */  lw         $v0, 0x28($s3)
/* FAA50 800DC960 84440098 */  lh         $a0, 0x98($v0)
/* FAA54 800DC964 8C42009C */  lw         $v0, 0x9C($v0)
/* FAA58 800DC968 0040F809 */  jalr       $v0
/* FAA5C 800DC96C 02642021 */   addu      $a0, $s3, $a0
.Lmenu_800DC970:
/* FAA60 800DC970 0C037CB8 */  jal        func_menu_800DF2E0
/* FAA64 800DC974 02602021 */   addu      $a0, $s3, $zero
/* FAA68 800DC978 3C038012 */  lui        $v1, %hi(D_menu_801269AC)
/* FAA6C 800DC97C 8C6469AC */  lw         $a0, %lo(D_menu_801269AC)($v1)
/* FAA70 800DC980 0C01FB65 */  jal        func_8007ED94
/* FAA74 800DC984 AEA20008 */   sw        $v0, 0x8($s5)
/* FAA78 800DC988 8EB00008 */  lw         $s0, 0x8($s5)
/* FAA7C 800DC98C 00102040 */  sll        $a0, $s0, 1
/* FAA80 800DC990 00902021 */  addu       $a0, $a0, $s0
/* FAA84 800DC994 000420C0 */  sll        $a0, $a0, 3
/* FAA88 800DC998 0C00943C */  jal        func_800250F0
/* FAA8C 800DC99C 24840008 */   addiu     $a0, $a0, 0x8
/* FAA90 800DC9A0 24420008 */  addiu      $v0, $v0, 0x8
/* FAA94 800DC9A4 0040A021 */  addu       $s4, $v0, $zero
/* FAA98 800DC9A8 02809021 */  addu       $s2, $s4, $zero
/* FAA9C 800DC9AC 2611FFFF */  addiu      $s1, $s0, -0x1
/* FAAA0 800DC9B0 06200007 */  bltz       $s1, .Lmenu_800DC9D0
/* FAAA4 800DC9B4 AE90FFF8 */   sw        $s0, -0x8($s4)
/* FAAA8 800DC9B8 2410FFFF */  addiu      $s0, $zero, -0x1
.Lmenu_800DC9BC:
/* FAAAC 800DC9BC 0C037080 */  jal        func_menu_800DC200
/* FAAB0 800DC9C0 02402021 */   addu      $a0, $s2, $zero
/* FAAB4 800DC9C4 2631FFFF */  addiu      $s1, $s1, -0x1
/* FAAB8 800DC9C8 1630FFFC */  bne        $s1, $s0, .Lmenu_800DC9BC
/* FAABC 800DC9CC 26520018 */   addiu     $s2, $s2, 0x18
.Lmenu_800DC9D0:
/* FAAC0 800DC9D0 16800007 */  bnez       $s4, .Lmenu_800DC9F0
/* FAAC4 800DC9D4 AEB4000C */   sw        $s4, 0xC($s5)
/* FAAC8 800DC9D8 3C04800D */  lui        $a0, %hi(D_menu_800CAA90)
/* FAACC 800DC9DC 2484AA90 */  addiu      $a0, $a0, %lo(D_menu_800CAA90)
/* FAAD0 800DC9E0 00002821 */  addu       $a1, $zero, $zero
/* FAAD4 800DC9E4 00A03021 */  addu       $a2, $a1, $zero
/* FAAD8 800DC9E8 0C011ACF */  jal        func_80046B3C
/* FAADC 800DC9EC 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800DC9F0:
/* FAAE0 800DC9F0 0C01FB72 */  jal        func_8007EDC8
/* FAAE4 800DC9F4 00008821 */   addu      $s1, $zero, $zero
/* FAAE8 800DC9F8 8EA40008 */  lw         $a0, 0x8($s5)
/* FAAEC 800DC9FC 0C00943C */  jal        func_800250F0
/* FAAF0 800DCA00 00042100 */   sll       $a0, $a0, 4
/* FAAF4 800DCA04 0040A021 */  addu       $s4, $v0, $zero
/* FAAF8 800DCA08 02808021 */  addu       $s0, $s4, $zero
.Lmenu_800DCA0C:
/* FAAFC 800DCA0C 8EA20008 */  lw         $v0, 0x8($s5)
/* FAB00 800DCA10 0222102A */  slt        $v0, $s1, $v0
/* FAB04 800DCA14 1040000D */  beqz       $v0, .Lmenu_800DCA4C
/* FAB08 800DCA18 26310001 */   addiu     $s1, $s1, 0x1
/* FAB0C 800DCA1C 8E620028 */  lw         $v0, 0x28($s3)
/* FAB10 800DCA20 844400A0 */  lh         $a0, 0xA0($v0)
/* FAB14 800DCA24 8C4200A4 */  lw         $v0, 0xA4($v0)
/* FAB18 800DCA28 0040F809 */  jalr       $v0
/* FAB1C 800DCA2C 02642021 */   addu      $a0, $s3, $a0
/* FAB20 800DCA30 02002021 */  addu       $a0, $s0, $zero
/* FAB24 800DCA34 26650044 */  addiu      $a1, $s3, 0x44
/* FAB28 800DCA38 0C000708 */  jal        func_80001C20
/* FAB2C 800DCA3C 24060010 */   addiu     $a2, $zero, 0x10
/* FAB30 800DCA40 A200000F */  sb         $zero, 0xF($s0)
/* FAB34 800DCA44 08037283 */  j          .Lmenu_800DCA0C
/* FAB38 800DCA48 26100010 */   addiu     $s0, $s0, 0x10
.Lmenu_800DCA4C:
/* FAB3C 800DCA4C 8E620028 */  lw         $v0, 0x28($s3)
/* FAB40 800DCA50 844400A0 */  lh         $a0, 0xA0($v0)
/* FAB44 800DCA54 8C4200A4 */  lw         $v0, 0xA4($v0)
/* FAB48 800DCA58 0040F809 */  jalr       $v0
/* FAB4C 800DCA5C 02642021 */   addu      $a0, $s3, $a0
/* FAB50 800DCA60 24030006 */  addiu      $v1, $zero, 0x6
/* FAB54 800DCA64 10430006 */  beq        $v0, $v1, .Lmenu_800DCA80
/* FAB58 800DCA68 00602821 */   addu      $a1, $v1, $zero
/* FAB5C 800DCA6C 8E620028 */  lw         $v0, 0x28($s3)
/* FAB60 800DCA70 84440098 */  lh         $a0, 0x98($v0)
/* FAB64 800DCA74 8C42009C */  lw         $v0, 0x9C($v0)
/* FAB68 800DCA78 0040F809 */  jalr       $v0
/* FAB6C 800DCA7C 02642021 */   addu      $a0, $s3, $a0
.Lmenu_800DCA80:
/* FAB70 800DCA80 12600006 */  beqz       $s3, .Lmenu_800DCA9C
/* FAB74 800DCA84 24050003 */   addiu     $a1, $zero, 0x3
/* FAB78 800DCA88 8E620028 */  lw         $v0, 0x28($s3)
/* FAB7C 800DCA8C 84440038 */  lh         $a0, 0x38($v0)
/* FAB80 800DCA90 8C42003C */  lw         $v0, 0x3C($v0)
/* FAB84 800DCA94 0040F809 */  jalr       $v0
/* FAB88 800DCA98 02642021 */   addu      $a0, $s3, $a0
.Lmenu_800DCA9C:
/* FAB8C 800DCA9C 02808021 */  addu       $s0, $s4, $zero
/* FAB90 800DCAA0 00008821 */  addu       $s1, $zero, $zero
/* FAB94 800DCAA4 02209021 */  addu       $s2, $s1, $zero
.Lmenu_800DCAA8:
/* FAB98 800DCAA8 8EA20008 */  lw         $v0, 0x8($s5)
/* FAB9C 800DCAAC 0222102A */  slt        $v0, $s1, $v0
/* FABA0 800DCAB0 1040000E */  beqz       $v0, .Lmenu_800DCAEC
/* FABA4 800DCAB4 02002821 */   addu      $a1, $s0, $zero
/* FABA8 800DCAB8 8EA2000C */  lw         $v0, 0xC($s5)
/* FABAC 800DCABC 26100010 */  addiu      $s0, $s0, 0x10
/* FABB0 800DCAC0 02421021 */  addu       $v0, $s2, $v0
/* FABB4 800DCAC4 AC51000C */  sw         $s1, 0xC($v0)
/* FABB8 800DCAC8 8EA4000C */  lw         $a0, 0xC($s5)
/* FABBC 800DCACC 26310001 */  addiu      $s1, $s1, 0x1
/* FABC0 800DCAD0 AFB60010 */  sw         $s6, 0x10($sp)
/* FABC4 800DCAD4 8EA60004 */  lw         $a2, 0x4($s5)
/* FABC8 800DCAD8 8EA70000 */  lw         $a3, 0x0($s5)
/* FABCC 800DCADC 0C0370A7 */  jal        func_menu_800DC29C
/* FABD0 800DCAE0 00922021 */   addu      $a0, $a0, $s2
/* FABD4 800DCAE4 080372AA */  j          .Lmenu_800DCAA8
/* FABD8 800DCAE8 26520018 */   addiu     $s2, $s2, 0x18
.Lmenu_800DCAEC:
/* FABDC 800DCAEC 12800003 */  beqz       $s4, .Lmenu_800DCAFC
/* FABE0 800DCAF0 00000000 */   nop
/* FABE4 800DCAF4 0C009444 */  jal        func_80025110
/* FABE8 800DCAF8 02802021 */   addu      $a0, $s4, $zero
.Lmenu_800DCAFC:
/* FABEC 800DCAFC 8FBF0034 */  lw         $ra, 0x34($sp)
/* FABF0 800DCB00 8FB60030 */  lw         $s6, 0x30($sp)
/* FABF4 800DCB04 8FB5002C */  lw         $s5, 0x2C($sp)
/* FABF8 800DCB08 8FB40028 */  lw         $s4, 0x28($sp)
/* FABFC 800DCB0C 8FB30024 */  lw         $s3, 0x24($sp)
/* FAC00 800DCB10 8FB20020 */  lw         $s2, 0x20($sp)
/* FAC04 800DCB14 8FB1001C */  lw         $s1, 0x1C($sp)
/* FAC08 800DCB18 8FB00018 */  lw         $s0, 0x18($sp)
/* FAC0C 800DCB1C 03E00008 */  jr         $ra
/* FAC10 800DCB20 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800DCB24
/* FAC14 800DCB24 00003821 */  addu       $a3, $zero, $zero
/* FAC18 800DCB28 8C880008 */  lw         $t0, 0x8($a0)
/* FAC1C 800DCB2C 00E03021 */  addu       $a2, $a3, $zero
.Lmenu_800DCB30:
/* FAC20 800DCB30 00E8102A */  slt        $v0, $a3, $t0
/* FAC24 800DCB34 1040000B */  beqz       $v0, .Lmenu_800DCB64
/* FAC28 800DCB38 00000000 */   nop
/* FAC2C 800DCB3C 8C82000C */  lw         $v0, 0xC($a0)
/* FAC30 800DCB40 00C21821 */  addu       $v1, $a2, $v0
/* FAC34 800DCB44 8C620008 */  lw         $v0, 0x8($v1)
/* FAC38 800DCB48 14450004 */  bne        $v0, $a1, .Lmenu_800DCB5C
/* FAC3C 800DCB4C 24C60018 */   addiu     $a2, $a2, 0x18
/* FAC40 800DCB50 AC830010 */  sw         $v1, 0x10($a0)
/* FAC44 800DCB54 03E00008 */  jr         $ra
/* FAC48 800DCB58 00601021 */   addu      $v0, $v1, $zero
.Lmenu_800DCB5C:
/* FAC4C 800DCB5C 080372CC */  j          .Lmenu_800DCB30
/* FAC50 800DCB60 24E70001 */   addiu     $a3, $a3, 0x1
.Lmenu_800DCB64:
/* FAC54 800DCB64 03E00008 */  jr         $ra
/* FAC58 800DCB68 00001021 */   addu      $v0, $zero, $zero

glabel func_menu_800DCB6C
/* FAC5C 800DCB6C 00001821 */  addu       $v1, $zero, $zero
/* FAC60 800DCB70 8C870008 */  lw         $a3, 0x8($a0)
/* FAC64 800DCB74 00603021 */  addu       $a2, $v1, $zero
.Lmenu_800DCB78:
/* FAC68 800DCB78 0067102A */  slt        $v0, $v1, $a3
/* FAC6C 800DCB7C 1040000A */  beqz       $v0, .Lmenu_800DCBA8
/* FAC70 800DCB80 00000000 */   nop
/* FAC74 800DCB84 8C82000C */  lw         $v0, 0xC($a0)
/* FAC78 800DCB88 00C21021 */  addu       $v0, $a2, $v0
/* FAC7C 800DCB8C 8C420008 */  lw         $v0, 0x8($v0)
/* FAC80 800DCB90 14450003 */  bne        $v0, $a1, .Lmenu_800DCBA0
/* FAC84 800DCB94 24C60018 */   addiu     $a2, $a2, 0x18
/* FAC88 800DCB98 03E00008 */  jr         $ra
/* FAC8C 800DCB9C 00601021 */   addu      $v0, $v1, $zero
.Lmenu_800DCBA0:
/* FAC90 800DCBA0 080372DE */  j          .Lmenu_800DCB78
/* FAC94 800DCBA4 24630001 */   addiu     $v1, $v1, 0x1
.Lmenu_800DCBA8:
/* FAC98 800DCBA8 03E00008 */  jr         $ra
/* FAC9C 800DCBAC 2402FFFF */   addiu     $v0, $zero, -0x1

glabel func_menu_800DCBB0
/* FACA0 800DCBB0 3C028012 */  lui        $v0, %hi(D_menu_801269A8)
/* FACA4 800DCBB4 03E00008 */  jr         $ra
/* FACA8 800DCBB8 AC4469A8 */   sw        $a0, %lo(D_menu_801269A8)($v0)

glabel func_menu_800DCBBC
/* FACAC 800DCBBC 3C028012 */  lui        $v0, %hi(D_menu_801269AC)
/* FACB0 800DCBC0 03E00008 */  jr         $ra
/* FACB4 800DCBC4 AC4469AC */   sw        $a0, %lo(D_menu_801269AC)($v0)

glabel func_menu_800DCBC8
/* FACB8 800DCBC8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FACBC 800DCBCC AFBF0010 */  sw         $ra, 0x10($sp)
/* FACC0 800DCBD0 0C002513 */  jal        func_8000944C
/* FACC4 800DCBD4 00000000 */   nop
/* FACC8 800DCBD8 8FBF0010 */  lw         $ra, 0x10($sp)
/* FACCC 800DCBDC 03E00008 */  jr         $ra
/* FACD0 800DCBE0 27BD0018 */   addiu     $sp, $sp, 0x18
