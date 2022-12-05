.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800D7860
/* F5950 800D7860 AC800000 */  sw         $zero, 0x0($a0)
/* F5954 800D7864 AC80000C */  sw         $zero, 0xC($a0)
/* F5958 800D7868 AC800028 */  sw         $zero, 0x28($a0)
/* F595C 800D786C 03E00008 */  jr         $ra
/* F5960 800D7870 AC80002C */   sw        $zero, 0x2C($a0)

glabel func_menu_800D7874
/* F5964 800D7874 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F5968 800D7878 AFB00010 */  sw         $s0, 0x10($sp)
/* F596C 800D787C AFBF0014 */  sw         $ra, 0x14($sp)
/* F5970 800D7880 0C035E18 */  jal        func_menu_800D7860
/* F5974 800D7884 00808021 */   addu      $s0, $a0, $zero
/* F5978 800D7888 02001021 */  addu       $v0, $s0, $zero
/* F597C 800D788C 8FBF0014 */  lw         $ra, 0x14($sp)
/* F5980 800D7890 8FB00010 */  lw         $s0, 0x10($sp)
/* F5984 800D7894 03E00008 */  jr         $ra
/* F5988 800D7898 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800D789C
/* F598C 800D789C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F5990 800D78A0 AFB10014 */  sw         $s1, 0x14($sp)
/* F5994 800D78A4 00808821 */  addu       $s1, $a0, $zero
/* F5998 800D78A8 AFB00010 */  sw         $s0, 0x10($sp)
/* F599C 800D78AC AFBF0018 */  sw         $ra, 0x18($sp)
/* F59A0 800D78B0 0C035E38 */  jal        func_menu_800D78E0
/* F59A4 800D78B4 00A08021 */   addu      $s0, $a1, $zero
/* F59A8 800D78B8 32100001 */  andi       $s0, $s0, 0x1
/* F59AC 800D78BC 12000003 */  beqz       $s0, .Lmenu_800D78CC
/* F59B0 800D78C0 00000000 */   nop
/* F59B4 800D78C4 0C01FB5C */  jal        func_8007ED70
/* F59B8 800D78C8 02202021 */   addu      $a0, $s1, $zero
.Lmenu_800D78CC:
/* F59BC 800D78CC 8FBF0018 */  lw         $ra, 0x18($sp)
/* F59C0 800D78D0 8FB10014 */  lw         $s1, 0x14($sp)
/* F59C4 800D78D4 8FB00010 */  lw         $s0, 0x10($sp)
/* F59C8 800D78D8 03E00008 */  jr         $ra
/* F59CC 800D78DC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800D78E0
/* F59D0 800D78E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F59D4 800D78E4 AFBF0010 */  sw         $ra, 0x10($sp)
/* F59D8 800D78E8 0C035E18 */  jal        func_menu_800D7860
/* F59DC 800D78EC 00000000 */   nop
/* F59E0 800D78F0 8FBF0010 */  lw         $ra, 0x10($sp)
/* F59E4 800D78F4 03E00008 */  jr         $ra
/* F59E8 800D78F8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800D78FC
/* F59EC 800D78FC 03E00008 */  jr         $ra
/* F59F0 800D7900 00000000 */   nop

glabel func_menu_800D7904
/* F59F4 800D7904 00803021 */  addu       $a2, $a0, $zero
/* F59F8 800D7908 8CC20028 */  lw         $v0, 0x28($a2)
/* F59FC 800D790C 30420001 */  andi       $v0, $v0, 0x1
/* F5A00 800D7910 10400026 */  beqz       $v0, .Lmenu_800D79AC
/* F5A04 800D7914 24020001 */   addiu     $v0, $zero, 0x1
/* F5A08 800D7918 8CC3002C */  lw         $v1, 0x2C($a2)
/* F5A0C 800D791C 10620011 */  beq        $v1, $v0, .Lmenu_800D7964
/* F5A10 800D7920 28620002 */   slti      $v0, $v1, 0x2
/* F5A14 800D7924 50400005 */  beql       $v0, $zero, .Lmenu_800D793C
/* F5A18 800D7928 24020002 */   addiu     $v0, $zero, 0x2
/* F5A1C 800D792C 10600009 */  beqz       $v1, .Lmenu_800D7954
/* F5A20 800D7930 00000000 */   nop
/* F5A24 800D7934 03E00008 */  jr         $ra
/* F5A28 800D7938 00000000 */   nop
.Lmenu_800D793C:
/* F5A2C 800D793C 1062000E */  beq        $v1, $v0, .Lmenu_800D7978
/* F5A30 800D7940 24020003 */   addiu     $v0, $zero, 0x3
/* F5A34 800D7944 10620013 */  beq        $v1, $v0, .Lmenu_800D7994
/* F5A38 800D7948 00000000 */   nop
/* F5A3C 800D794C 03E00008 */  jr         $ra
/* F5A40 800D7950 00000000 */   nop
.Lmenu_800D7954:
/* F5A44 800D7954 8CC20004 */  lw         $v0, 0x4($a2)
/* F5A48 800D7958 8CC30008 */  lw         $v1, 0x8($a2)
/* F5A4C 800D795C 08035E8E */  j          .Lmenu_800D7A38
/* F5A50 800D7960 ACC20018 */   sw        $v0, 0x18($a2)
.Lmenu_800D7964:
/* F5A54 800D7964 8CC30008 */  lw         $v1, 0x8($a2)
/* F5A58 800D7968 8CC40020 */  lw         $a0, 0x20($a2)
/* F5A5C 800D796C 8CC20004 */  lw         $v0, 0x4($a2)
/* F5A60 800D7970 08035E8D */  j          .Lmenu_800D7A34
/* F5A64 800D7974 00641823 */   subu      $v1, $v1, $a0
.Lmenu_800D7978:
/* F5A68 800D7978 8CC20004 */  lw         $v0, 0x4($a2)
/* F5A6C 800D797C 8CC30024 */  lw         $v1, 0x24($a2)
.Lmenu_800D7980:
/* F5A70 800D7980 8CC40008 */  lw         $a0, 0x8($a2)
/* F5A74 800D7984 00431023 */  subu       $v0, $v0, $v1
/* F5A78 800D7988 ACC20018 */  sw         $v0, 0x18($a2)
/* F5A7C 800D798C 03E00008 */  jr         $ra
/* F5A80 800D7990 ACC4001C */   sw        $a0, 0x1C($a2)
.Lmenu_800D7994:
/* F5A84 800D7994 8CC20004 */  lw         $v0, 0x4($a2)
/* F5A88 800D7998 8CC40024 */  lw         $a0, 0x24($a2)
/* F5A8C 800D799C 8CC30008 */  lw         $v1, 0x8($a2)
/* F5A90 800D79A0 8CC50020 */  lw         $a1, 0x20($a2)
/* F5A94 800D79A4 08035E8C */  j          .Lmenu_800D7A30
/* F5A98 800D79A8 00441023 */   subu      $v0, $v0, $a0
.Lmenu_800D79AC:
/* F5A9C 800D79AC 8CC3002C */  lw         $v1, 0x2C($a2)
/* F5AA0 800D79B0 10620011 */  beq        $v1, $v0, .Lmenu_800D79F8
/* F5AA4 800D79B4 28620002 */   slti      $v0, $v1, 0x2
/* F5AA8 800D79B8 50400005 */  beql       $v0, $zero, .Lmenu_800D79D0
/* F5AAC 800D79BC 24020002 */   addiu     $v0, $zero, 0x2
/* F5AB0 800D79C0 10600009 */  beqz       $v1, .Lmenu_800D79E8
/* F5AB4 800D79C4 00000000 */   nop
/* F5AB8 800D79C8 03E00008 */  jr         $ra
/* F5ABC 800D79CC 00000000 */   nop
.Lmenu_800D79D0:
/* F5AC0 800D79D0 1062000E */  beq        $v1, $v0, .Lmenu_800D7A0C
/* F5AC4 800D79D4 24020003 */   addiu     $v0, $zero, 0x3
/* F5AC8 800D79D8 10620010 */  beq        $v1, $v0, .Lmenu_800D7A1C
/* F5ACC 800D79DC 00000000 */   nop
/* F5AD0 800D79E0 03E00008 */  jr         $ra
/* F5AD4 800D79E4 00000000 */   nop
.Lmenu_800D79E8:
/* F5AD8 800D79E8 8CC20004 */  lw         $v0, 0x4($a2)
/* F5ADC 800D79EC 8CC30008 */  lw         $v1, 0x8($a2)
/* F5AE0 800D79F0 08035E8E */  j          .Lmenu_800D7A38
/* F5AE4 800D79F4 ACC20018 */   sw        $v0, 0x18($a2)
.Lmenu_800D79F8:
/* F5AE8 800D79F8 8CC30008 */  lw         $v1, 0x8($a2)
/* F5AEC 800D79FC 8CC40024 */  lw         $a0, 0x24($a2)
/* F5AF0 800D7A00 8CC20004 */  lw         $v0, 0x4($a2)
/* F5AF4 800D7A04 08035E8D */  j          .Lmenu_800D7A34
/* F5AF8 800D7A08 00641823 */   subu      $v1, $v1, $a0
.Lmenu_800D7A0C:
/* F5AFC 800D7A0C 8CC20004 */  lw         $v0, 0x4($a2)
/* F5B00 800D7A10 8CC30020 */  lw         $v1, 0x20($a2)
/* F5B04 800D7A14 08035E60 */  j          .Lmenu_800D7980
/* F5B08 800D7A18 00000000 */   nop
.Lmenu_800D7A1C:
/* F5B0C 800D7A1C 8CC20004 */  lw         $v0, 0x4($a2)
/* F5B10 800D7A20 8CC40020 */  lw         $a0, 0x20($a2)
/* F5B14 800D7A24 8CC30008 */  lw         $v1, 0x8($a2)
/* F5B18 800D7A28 8CC50024 */  lw         $a1, 0x24($a2)
/* F5B1C 800D7A2C 00441023 */  subu       $v0, $v0, $a0
.Lmenu_800D7A30:
/* F5B20 800D7A30 00651823 */  subu       $v1, $v1, $a1
.Lmenu_800D7A34:
/* F5B24 800D7A34 ACC20018 */  sw         $v0, 0x18($a2)
.Lmenu_800D7A38:
/* F5B28 800D7A38 03E00008 */  jr         $ra
/* F5B2C 800D7A3C ACC3001C */   sw        $v1, 0x1C($a2)

glabel func_menu_800D7A40
/* F5B30 800D7A40 00803021 */  addu       $a2, $a0, $zero
/* F5B34 800D7A44 8CC20028 */  lw         $v0, 0x28($a2)
/* F5B38 800D7A48 30420001 */  andi       $v0, $v0, 0x1
/* F5B3C 800D7A4C 10400026 */  beqz       $v0, .Lmenu_800D7AE8
/* F5B40 800D7A50 24020001 */   addiu     $v0, $zero, 0x1
/* F5B44 800D7A54 8CC3002C */  lw         $v1, 0x2C($a2)
/* F5B48 800D7A58 10620011 */  beq        $v1, $v0, .Lmenu_800D7AA0
/* F5B4C 800D7A5C 28620002 */   slti      $v0, $v1, 0x2
/* F5B50 800D7A60 50400005 */  beql       $v0, $zero, .Lmenu_800D7A78
/* F5B54 800D7A64 24020002 */   addiu     $v0, $zero, 0x2
/* F5B58 800D7A68 10600009 */  beqz       $v1, .Lmenu_800D7A90
/* F5B5C 800D7A6C 00000000 */   nop
/* F5B60 800D7A70 03E00008 */  jr         $ra
/* F5B64 800D7A74 00000000 */   nop
.Lmenu_800D7A78:
/* F5B68 800D7A78 1062000E */  beq        $v1, $v0, .Lmenu_800D7AB4
/* F5B6C 800D7A7C 24020003 */   addiu     $v0, $zero, 0x3
/* F5B70 800D7A80 10620013 */  beq        $v1, $v0, .Lmenu_800D7AD0
/* F5B74 800D7A84 00000000 */   nop
/* F5B78 800D7A88 03E00008 */  jr         $ra
/* F5B7C 800D7A8C 00000000 */   nop
.Lmenu_800D7A90:
/* F5B80 800D7A90 8CC20018 */  lw         $v0, 0x18($a2)
/* F5B84 800D7A94 8CC3001C */  lw         $v1, 0x1C($a2)
/* F5B88 800D7A98 08035EDD */  j          .Lmenu_800D7B74
/* F5B8C 800D7A9C ACC20004 */   sw        $v0, 0x4($a2)
.Lmenu_800D7AA0:
/* F5B90 800D7AA0 8CC3001C */  lw         $v1, 0x1C($a2)
/* F5B94 800D7AA4 8CC40020 */  lw         $a0, 0x20($a2)
/* F5B98 800D7AA8 8CC20018 */  lw         $v0, 0x18($a2)
/* F5B9C 800D7AAC 08035EDC */  j          .Lmenu_800D7B70
/* F5BA0 800D7AB0 00641821 */   addu      $v1, $v1, $a0
.Lmenu_800D7AB4:
/* F5BA4 800D7AB4 8CC20018 */  lw         $v0, 0x18($a2)
/* F5BA8 800D7AB8 8CC30024 */  lw         $v1, 0x24($a2)
.Lmenu_800D7ABC:
/* F5BAC 800D7ABC 8CC4001C */  lw         $a0, 0x1C($a2)
/* F5BB0 800D7AC0 00431021 */  addu       $v0, $v0, $v1
/* F5BB4 800D7AC4 ACC20004 */  sw         $v0, 0x4($a2)
/* F5BB8 800D7AC8 03E00008 */  jr         $ra
/* F5BBC 800D7ACC ACC40008 */   sw        $a0, 0x8($a2)
.Lmenu_800D7AD0:
/* F5BC0 800D7AD0 8CC20018 */  lw         $v0, 0x18($a2)
/* F5BC4 800D7AD4 8CC40024 */  lw         $a0, 0x24($a2)
/* F5BC8 800D7AD8 8CC3001C */  lw         $v1, 0x1C($a2)
/* F5BCC 800D7ADC 8CC50020 */  lw         $a1, 0x20($a2)
/* F5BD0 800D7AE0 08035EDB */  j          .Lmenu_800D7B6C
/* F5BD4 800D7AE4 00441021 */   addu      $v0, $v0, $a0
.Lmenu_800D7AE8:
/* F5BD8 800D7AE8 8CC3002C */  lw         $v1, 0x2C($a2)
/* F5BDC 800D7AEC 10620011 */  beq        $v1, $v0, .Lmenu_800D7B34
/* F5BE0 800D7AF0 28620002 */   slti      $v0, $v1, 0x2
/* F5BE4 800D7AF4 50400005 */  beql       $v0, $zero, .Lmenu_800D7B0C
/* F5BE8 800D7AF8 24020002 */   addiu     $v0, $zero, 0x2
/* F5BEC 800D7AFC 10600009 */  beqz       $v1, .Lmenu_800D7B24
/* F5BF0 800D7B00 00000000 */   nop
/* F5BF4 800D7B04 03E00008 */  jr         $ra
/* F5BF8 800D7B08 00000000 */   nop
.Lmenu_800D7B0C:
/* F5BFC 800D7B0C 1062000E */  beq        $v1, $v0, .Lmenu_800D7B48
/* F5C00 800D7B10 24020003 */   addiu     $v0, $zero, 0x3
/* F5C04 800D7B14 10620010 */  beq        $v1, $v0, .Lmenu_800D7B58
/* F5C08 800D7B18 00000000 */   nop
/* F5C0C 800D7B1C 03E00008 */  jr         $ra
/* F5C10 800D7B20 00000000 */   nop
.Lmenu_800D7B24:
/* F5C14 800D7B24 8CC20018 */  lw         $v0, 0x18($a2)
/* F5C18 800D7B28 8CC3001C */  lw         $v1, 0x1C($a2)
/* F5C1C 800D7B2C 08035EDD */  j          .Lmenu_800D7B74
/* F5C20 800D7B30 ACC20004 */   sw        $v0, 0x4($a2)
.Lmenu_800D7B34:
/* F5C24 800D7B34 8CC3001C */  lw         $v1, 0x1C($a2)
/* F5C28 800D7B38 8CC40024 */  lw         $a0, 0x24($a2)
/* F5C2C 800D7B3C 8CC20018 */  lw         $v0, 0x18($a2)
/* F5C30 800D7B40 08035EDC */  j          .Lmenu_800D7B70
/* F5C34 800D7B44 00641821 */   addu      $v1, $v1, $a0
.Lmenu_800D7B48:
/* F5C38 800D7B48 8CC20018 */  lw         $v0, 0x18($a2)
/* F5C3C 800D7B4C 8CC30020 */  lw         $v1, 0x20($a2)
/* F5C40 800D7B50 08035EAF */  j          .Lmenu_800D7ABC
/* F5C44 800D7B54 00000000 */   nop
.Lmenu_800D7B58:
/* F5C48 800D7B58 8CC20018 */  lw         $v0, 0x18($a2)
/* F5C4C 800D7B5C 8CC40020 */  lw         $a0, 0x20($a2)
/* F5C50 800D7B60 8CC3001C */  lw         $v1, 0x1C($a2)
/* F5C54 800D7B64 8CC50024 */  lw         $a1, 0x24($a2)
/* F5C58 800D7B68 00441021 */  addu       $v0, $v0, $a0
.Lmenu_800D7B6C:
/* F5C5C 800D7B6C 00651821 */  addu       $v1, $v1, $a1
.Lmenu_800D7B70:
/* F5C60 800D7B70 ACC20004 */  sw         $v0, 0x4($a2)
.Lmenu_800D7B74:
/* F5C64 800D7B74 03E00008 */  jr         $ra
/* F5C68 800D7B78 ACC30008 */   sw        $v1, 0x8($a2)

glabel func_menu_800D7B7C
/* F5C6C 800D7B7C 8C820028 */  lw         $v0, 0x28($a0)
/* F5C70 800D7B80 30420001 */  andi       $v0, $v0, 0x1
/* F5C74 800D7B84 10400019 */  beqz       $v0, .Lmenu_800D7BEC
/* F5C78 800D7B88 24020002 */   addiu     $v0, $zero, 0x2
/* F5C7C 800D7B8C 8C83002C */  lw         $v1, 0x2C($a0)
/* F5C80 800D7B90 10620012 */  beq        $v1, $v0, .Lmenu_800D7BDC
/* F5C84 800D7B94 28620003 */   slti      $v0, $v1, 0x3
/* F5C88 800D7B98 10400005 */  beqz       $v0, .Lmenu_800D7BB0
/* F5C8C 800D7B9C 24020001 */   addiu     $v0, $zero, 0x1
/* F5C90 800D7BA0 1062000A */  beq        $v1, $v0, .Lmenu_800D7BCC
/* F5C94 800D7BA4 00000000 */   nop
/* F5C98 800D7BA8 08035F14 */  j          .Lmenu_800D7C50
/* F5C9C 800D7BAC 00000000 */   nop
.Lmenu_800D7BB0:
/* F5CA0 800D7BB0 24020003 */  addiu      $v0, $zero, 0x3
/* F5CA4 800D7BB4 14620026 */  bne        $v1, $v0, .Lmenu_800D7C50
/* F5CA8 800D7BB8 00000000 */   nop
/* F5CAC 800D7BBC 8C820004 */  lw         $v0, 0x4($a0)
/* F5CB0 800D7BC0 8C830024 */  lw         $v1, 0x24($a0)
/* F5CB4 800D7BC4 00431023 */  subu       $v0, $v0, $v1
/* F5CB8 800D7BC8 AC820004 */  sw         $v0, 0x4($a0)
.Lmenu_800D7BCC:
/* F5CBC 800D7BCC 8C820008 */  lw         $v0, 0x8($a0)
/* F5CC0 800D7BD0 8C830020 */  lw         $v1, 0x20($a0)
/* F5CC4 800D7BD4 08035F0E */  j          .Lmenu_800D7C38
/* F5CC8 800D7BD8 00431023 */   subu      $v0, $v0, $v1
.Lmenu_800D7BDC:
/* F5CCC 800D7BDC 8C820004 */  lw         $v0, 0x4($a0)
/* F5CD0 800D7BE0 8C830024 */  lw         $v1, 0x24($a0)
/* F5CD4 800D7BE4 08035F13 */  j          .Lmenu_800D7C4C
/* F5CD8 800D7BE8 00431023 */   subu      $v0, $v0, $v1
.Lmenu_800D7BEC:
/* F5CDC 800D7BEC 8C83002C */  lw         $v1, 0x2C($a0)
/* F5CE0 800D7BF0 10620013 */  beq        $v1, $v0, .Lmenu_800D7C40
/* F5CE4 800D7BF4 28620003 */   slti      $v0, $v1, 0x3
/* F5CE8 800D7BF8 10400005 */  beqz       $v0, .Lmenu_800D7C10
/* F5CEC 800D7BFC 24020001 */   addiu     $v0, $zero, 0x1
/* F5CF0 800D7C00 1062000A */  beq        $v1, $v0, .Lmenu_800D7C2C
/* F5CF4 800D7C04 00000000 */   nop
/* F5CF8 800D7C08 08035F14 */  j          .Lmenu_800D7C50
/* F5CFC 800D7C0C 00000000 */   nop
.Lmenu_800D7C10:
/* F5D00 800D7C10 24020003 */  addiu      $v0, $zero, 0x3
/* F5D04 800D7C14 1462000E */  bne        $v1, $v0, .Lmenu_800D7C50
/* F5D08 800D7C18 00000000 */   nop
/* F5D0C 800D7C1C 8C820004 */  lw         $v0, 0x4($a0)
/* F5D10 800D7C20 8C830020 */  lw         $v1, 0x20($a0)
/* F5D14 800D7C24 00431023 */  subu       $v0, $v0, $v1
/* F5D18 800D7C28 AC820004 */  sw         $v0, 0x4($a0)
.Lmenu_800D7C2C:
/* F5D1C 800D7C2C 8C820008 */  lw         $v0, 0x8($a0)
/* F5D20 800D7C30 8C830024 */  lw         $v1, 0x24($a0)
/* F5D24 800D7C34 00431023 */  subu       $v0, $v0, $v1
.Lmenu_800D7C38:
/* F5D28 800D7C38 08035F14 */  j          .Lmenu_800D7C50
/* F5D2C 800D7C3C AC820008 */   sw        $v0, 0x8($a0)
.Lmenu_800D7C40:
/* F5D30 800D7C40 8C820004 */  lw         $v0, 0x4($a0)
/* F5D34 800D7C44 8C830020 */  lw         $v1, 0x20($a0)
/* F5D38 800D7C48 00431023 */  subu       $v0, $v0, $v1
.Lmenu_800D7C4C:
/* F5D3C 800D7C4C AC820004 */  sw         $v0, 0x4($a0)
.Lmenu_800D7C50:
/* F5D40 800D7C50 8C820028 */  lw         $v0, 0x28($a0)
/* F5D44 800D7C54 30420001 */  andi       $v0, $v0, 0x1
/* F5D48 800D7C58 1040001A */  beqz       $v0, .Lmenu_800D7CC4
/* F5D4C 800D7C5C AC85002C */   sw        $a1, 0x2C($a0)
/* F5D50 800D7C60 24020002 */  addiu      $v0, $zero, 0x2
/* F5D54 800D7C64 10A20013 */  beq        $a1, $v0, .Lmenu_800D7CB4
/* F5D58 800D7C68 28A20003 */   slti      $v0, $a1, 0x3
/* F5D5C 800D7C6C 10400005 */  beqz       $v0, .Lmenu_800D7C84
/* F5D60 800D7C70 24020001 */   addiu     $v0, $zero, 0x1
/* F5D64 800D7C74 10A2000A */  beq        $a1, $v0, .Lmenu_800D7CA0
/* F5D68 800D7C78 00000000 */   nop
/* F5D6C 800D7C7C 03E00008 */  jr         $ra
/* F5D70 800D7C80 00000000 */   nop
.Lmenu_800D7C84:
/* F5D74 800D7C84 24020003 */  addiu      $v0, $zero, 0x3
/* F5D78 800D7C88 14A20026 */  bne        $a1, $v0, .Lmenu_800D7D24
/* F5D7C 800D7C8C 00000000 */   nop
/* F5D80 800D7C90 8C820004 */  lw         $v0, 0x4($a0)
/* F5D84 800D7C94 8C830024 */  lw         $v1, 0x24($a0)
/* F5D88 800D7C98 00431021 */  addu       $v0, $v0, $v1
/* F5D8C 800D7C9C AC820004 */  sw         $v0, 0x4($a0)
.Lmenu_800D7CA0:
/* F5D90 800D7CA0 8C820008 */  lw         $v0, 0x8($a0)
/* F5D94 800D7CA4 8C830020 */  lw         $v1, 0x20($a0)
/* F5D98 800D7CA8 00431021 */  addu       $v0, $v0, $v1
.Lmenu_800D7CAC:
/* F5D9C 800D7CAC 03E00008 */  jr         $ra
/* F5DA0 800D7CB0 AC820008 */   sw        $v0, 0x8($a0)
.Lmenu_800D7CB4:
/* F5DA4 800D7CB4 8C820004 */  lw         $v0, 0x4($a0)
/* F5DA8 800D7CB8 8C830024 */  lw         $v1, 0x24($a0)
/* F5DAC 800D7CBC 08035F48 */  j          .Lmenu_800D7D20
/* F5DB0 800D7CC0 00431021 */   addu      $v0, $v0, $v1
.Lmenu_800D7CC4:
/* F5DB4 800D7CC4 24020002 */  addiu      $v0, $zero, 0x2
/* F5DB8 800D7CC8 10A20012 */  beq        $a1, $v0, .Lmenu_800D7D14
/* F5DBC 800D7CCC 28A20003 */   slti      $v0, $a1, 0x3
/* F5DC0 800D7CD0 10400005 */  beqz       $v0, .Lmenu_800D7CE8
/* F5DC4 800D7CD4 24020001 */   addiu     $v0, $zero, 0x1
/* F5DC8 800D7CD8 10A2000A */  beq        $a1, $v0, .Lmenu_800D7D04
/* F5DCC 800D7CDC 00000000 */   nop
/* F5DD0 800D7CE0 03E00008 */  jr         $ra
/* F5DD4 800D7CE4 00000000 */   nop
.Lmenu_800D7CE8:
/* F5DD8 800D7CE8 24020003 */  addiu      $v0, $zero, 0x3
/* F5DDC 800D7CEC 14A2000D */  bne        $a1, $v0, .Lmenu_800D7D24
/* F5DE0 800D7CF0 00000000 */   nop
/* F5DE4 800D7CF4 8C820004 */  lw         $v0, 0x4($a0)
/* F5DE8 800D7CF8 8C830020 */  lw         $v1, 0x20($a0)
/* F5DEC 800D7CFC 00431021 */  addu       $v0, $v0, $v1
/* F5DF0 800D7D00 AC820004 */  sw         $v0, 0x4($a0)
.Lmenu_800D7D04:
/* F5DF4 800D7D04 8C820008 */  lw         $v0, 0x8($a0)
/* F5DF8 800D7D08 8C830024 */  lw         $v1, 0x24($a0)
/* F5DFC 800D7D0C 08035F2B */  j          .Lmenu_800D7CAC
/* F5E00 800D7D10 00431021 */   addu      $v0, $v0, $v1
.Lmenu_800D7D14:
/* F5E04 800D7D14 8C820004 */  lw         $v0, 0x4($a0)
/* F5E08 800D7D18 8C830020 */  lw         $v1, 0x20($a0)
/* F5E0C 800D7D1C 00431021 */  addu       $v0, $v0, $v1
.Lmenu_800D7D20:
/* F5E10 800D7D20 AC820004 */  sw         $v0, 0x4($a0)
.Lmenu_800D7D24:
/* F5E14 800D7D24 03E00008 */  jr         $ra
/* F5E18 800D7D28 00000000 */   nop

glabel func_menu_800D7D2C
/* F5E1C 800D7D2C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F5E20 800D7D30 AFBF0010 */  sw         $ra, 0x10($sp)
/* F5E24 800D7D34 8C83002C */  lw         $v1, 0x2C($a0)
/* F5E28 800D7D38 24020001 */  addiu      $v0, $zero, 0x1
/* F5E2C 800D7D3C 1062001D */  beq        $v1, $v0, .Lmenu_800D7DB4
/* F5E30 800D7D40 28620002 */   slti      $v0, $v1, 0x2
/* F5E34 800D7D44 50400005 */  beql       $v0, $zero, .Lmenu_800D7D5C
/* F5E38 800D7D48 24020002 */   addiu     $v0, $zero, 0x2
/* F5E3C 800D7D4C 10600009 */  beqz       $v1, .Lmenu_800D7D74
/* F5E40 800D7D50 00000000 */   nop
/* F5E44 800D7D54 08035F9D */  j          .Lmenu_800D7E74
/* F5E48 800D7D58 00000000 */   nop
.Lmenu_800D7D5C:
/* F5E4C 800D7D5C 10620025 */  beq        $v1, $v0, .Lmenu_800D7DF4
/* F5E50 800D7D60 24020003 */   addiu     $v0, $zero, 0x3
/* F5E54 800D7D64 10620033 */  beq        $v1, $v0, .Lmenu_800D7E34
/* F5E58 800D7D68 00000000 */   nop
/* F5E5C 800D7D6C 08035F9D */  j          .Lmenu_800D7E74
/* F5E60 800D7D70 00000000 */   nop
.Lmenu_800D7D74:
/* F5E64 800D7D74 8C820004 */  lw         $v0, 0x4($a0)
/* F5E68 800D7D78 28420005 */  slti       $v0, $v0, 0x5
/* F5E6C 800D7D7C 14400007 */  bnez       $v0, .Lmenu_800D7D9C
/* F5E70 800D7D80 00000000 */   nop
/* F5E74 800D7D84 8C820008 */  lw         $v0, 0x8($a0)
/* F5E78 800D7D88 28420003 */  slti       $v0, $v0, 0x3
/* F5E7C 800D7D8C 10400037 */  beqz       $v0, .Lmenu_800D7E6C
/* F5E80 800D7D90 24050003 */   addiu     $a1, $zero, 0x3
/* F5E84 800D7D94 08035F9B */  j          .Lmenu_800D7E6C
/* F5E88 800D7D98 24050002 */   addiu     $a1, $zero, 0x2
.Lmenu_800D7D9C:
/* F5E8C 800D7D9C 8C820008 */  lw         $v0, 0x8($a0)
/* F5E90 800D7DA0 28420003 */  slti       $v0, $v0, 0x3
/* F5E94 800D7DA4 14400033 */  bnez       $v0, .Lmenu_800D7E74
/* F5E98 800D7DA8 24050001 */   addiu     $a1, $zero, 0x1
/* F5E9C 800D7DAC 08035F9B */  j          .Lmenu_800D7E6C
/* F5EA0 800D7DB0 00000000 */   nop
.Lmenu_800D7DB4:
/* F5EA4 800D7DB4 8C820004 */  lw         $v0, 0x4($a0)
/* F5EA8 800D7DB8 28420005 */  slti       $v0, $v0, 0x5
/* F5EAC 800D7DBC 14400007 */  bnez       $v0, .Lmenu_800D7DDC
/* F5EB0 800D7DC0 00000000 */   nop
/* F5EB4 800D7DC4 8C820008 */  lw         $v0, 0x8($a0)
/* F5EB8 800D7DC8 28420003 */  slti       $v0, $v0, 0x3
/* F5EBC 800D7DCC 10400027 */  beqz       $v0, .Lmenu_800D7E6C
/* F5EC0 800D7DD0 24050003 */   addiu     $a1, $zero, 0x3
/* F5EC4 800D7DD4 08035F9B */  j          .Lmenu_800D7E6C
/* F5EC8 800D7DD8 24050002 */   addiu     $a1, $zero, 0x2
.Lmenu_800D7DDC:
/* F5ECC 800D7DDC 8C820008 */  lw         $v0, 0x8($a0)
/* F5ED0 800D7DE0 28420003 */  slti       $v0, $v0, 0x3
/* F5ED4 800D7DE4 10400023 */  beqz       $v0, .Lmenu_800D7E74
/* F5ED8 800D7DE8 00002821 */   addu      $a1, $zero, $zero
/* F5EDC 800D7DEC 08035F9B */  j          .Lmenu_800D7E6C
/* F5EE0 800D7DF0 00000000 */   nop
.Lmenu_800D7DF4:
/* F5EE4 800D7DF4 8C820004 */  lw         $v0, 0x4($a0)
/* F5EE8 800D7DF8 28420005 */  slti       $v0, $v0, 0x5
/* F5EEC 800D7DFC 10400007 */  beqz       $v0, .Lmenu_800D7E1C
/* F5EF0 800D7E00 00000000 */   nop
/* F5EF4 800D7E04 8C820008 */  lw         $v0, 0x8($a0)
/* F5EF8 800D7E08 28420003 */  slti       $v0, $v0, 0x3
/* F5EFC 800D7E0C 10400017 */  beqz       $v0, .Lmenu_800D7E6C
/* F5F00 800D7E10 24050001 */   addiu     $a1, $zero, 0x1
/* F5F04 800D7E14 08035F9B */  j          .Lmenu_800D7E6C
/* F5F08 800D7E18 00002821 */   addu      $a1, $zero, $zero
.Lmenu_800D7E1C:
/* F5F0C 800D7E1C 8C820008 */  lw         $v0, 0x8($a0)
/* F5F10 800D7E20 28420003 */  slti       $v0, $v0, 0x3
/* F5F14 800D7E24 14400013 */  bnez       $v0, .Lmenu_800D7E74
/* F5F18 800D7E28 24050003 */   addiu     $a1, $zero, 0x3
/* F5F1C 800D7E2C 08035F9B */  j          .Lmenu_800D7E6C
/* F5F20 800D7E30 00000000 */   nop
.Lmenu_800D7E34:
/* F5F24 800D7E34 8C820004 */  lw         $v0, 0x4($a0)
/* F5F28 800D7E38 28420005 */  slti       $v0, $v0, 0x5
/* F5F2C 800D7E3C 10400007 */  beqz       $v0, .Lmenu_800D7E5C
/* F5F30 800D7E40 00000000 */   nop
/* F5F34 800D7E44 8C820008 */  lw         $v0, 0x8($a0)
/* F5F38 800D7E48 28420003 */  slti       $v0, $v0, 0x3
/* F5F3C 800D7E4C 10400007 */  beqz       $v0, .Lmenu_800D7E6C
/* F5F40 800D7E50 24050001 */   addiu     $a1, $zero, 0x1
/* F5F44 800D7E54 08035F9B */  j          .Lmenu_800D7E6C
/* F5F48 800D7E58 00002821 */   addu      $a1, $zero, $zero
.Lmenu_800D7E5C:
/* F5F4C 800D7E5C 8C820008 */  lw         $v0, 0x8($a0)
/* F5F50 800D7E60 28420003 */  slti       $v0, $v0, 0x3
/* F5F54 800D7E64 10400003 */  beqz       $v0, .Lmenu_800D7E74
/* F5F58 800D7E68 24050002 */   addiu     $a1, $zero, 0x2
.Lmenu_800D7E6C:
/* F5F5C 800D7E6C 0C035EDF */  jal        func_menu_800D7B7C
/* F5F60 800D7E70 00000000 */   nop
.Lmenu_800D7E74:
/* F5F64 800D7E74 8FBF0010 */  lw         $ra, 0x10($sp)
/* F5F68 800D7E78 03E00008 */  jr         $ra
/* F5F6C 800D7E7C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800D7E80
/* F5F70 800D7E80 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* F5F74 800D7E84 AFB20018 */  sw         $s2, 0x18($sp)
/* F5F78 800D7E88 00809021 */  addu       $s2, $a0, $zero
/* F5F7C 800D7E8C AFB3001C */  sw         $s3, 0x1C($sp)
/* F5F80 800D7E90 00A09821 */  addu       $s3, $a1, $zero
/* F5F84 800D7E94 AFB00010 */  sw         $s0, 0x10($sp)
/* F5F88 800D7E98 00C08021 */  addu       $s0, $a2, $zero
/* F5F8C 800D7E9C AFB10014 */  sw         $s1, 0x14($sp)
/* F5F90 800D7EA0 00E08821 */  addu       $s1, $a3, $zero
/* F5F94 800D7EA4 AFBF0020 */  sw         $ra, 0x20($sp)
/* F5F98 800D7EA8 0C037D27 */  jal        func_menu_800DF49C
/* F5F9C 800D7EAC 02602021 */   addu      $a0, $s3, $zero
/* F5FA0 800D7EB0 02602021 */  addu       $a0, $s3, $zero
/* F5FA4 800D7EB4 0C037D2B */  jal        func_menu_800DF4AC
/* F5FA8 800D7EB8 AE420020 */   sw        $v0, 0x20($s2)
/* F5FAC 800D7EBC 8E43000C */  lw         $v1, 0xC($s2)
/* F5FB0 800D7EC0 AE420024 */  sw         $v0, 0x24($s2)
/* F5FB4 800D7EC4 AE500010 */  sw         $s0, 0x10($s2)
/* F5FB8 800D7EC8 1460001C */  bnez       $v1, .Lmenu_800D7F3C
/* F5FBC 800D7ECC AE510014 */   sw        $s1, 0x14($s2)
/* F5FC0 800D7ED0 2405000A */  addiu      $a1, $zero, 0xA
/* F5FC4 800D7ED4 8E420020 */  lw         $v0, 0x20($s2)
/* F5FC8 800D7ED8 24040006 */  addiu      $a0, $zero, 0x6
/* F5FCC 800D7EDC AE40002C */  sw         $zero, 0x2C($s2)
/* F5FD0 800D7EE0 AE400028 */  sw         $zero, 0x28($s2)
/* F5FD4 800D7EE4 00A21023 */  subu       $v0, $a1, $v0
/* F5FD8 800D7EE8 00021043 */  sra        $v0, $v0, 1
/* F5FDC 800D7EEC AE420018 */  sw         $v0, 0x18($s2)
/* F5FE0 800D7EF0 8E420024 */  lw         $v0, 0x24($s2)
/* F5FE4 800D7EF4 8E430018 */  lw         $v1, 0x18($s2)
/* F5FE8 800D7EF8 00821023 */  subu       $v0, $a0, $v0
/* F5FEC 800D7EFC 00021043 */  sra        $v0, $v0, 1
/* F5FF0 800D7F00 04600003 */  bltz       $v1, .Lmenu_800D7F10
/* F5FF4 800D7F04 AE42001C */   sw        $v0, 0x1C($s2)
/* F5FF8 800D7F08 04410091 */  bgez       $v0, .Lmenu_800D8150
/* F5FFC 800D7F0C 00000000 */   nop
.Lmenu_800D7F10:
/* F6000 800D7F10 8E420024 */  lw         $v0, 0x24($s2)
/* F6004 800D7F14 24030001 */  addiu      $v1, $zero, 0x1
/* F6008 800D7F18 AE430028 */  sw         $v1, 0x28($s2)
/* F600C 800D7F1C 8E430020 */  lw         $v1, 0x20($s2)
/* F6010 800D7F20 00A21023 */  subu       $v0, $a1, $v0
/* F6014 800D7F24 00021043 */  sra        $v0, $v0, 1
/* F6018 800D7F28 00831823 */  subu       $v1, $a0, $v1
/* F601C 800D7F2C 00031843 */  sra        $v1, $v1, 1
/* F6020 800D7F30 AE420018 */  sw         $v0, 0x18($s2)
/* F6024 800D7F34 08036054 */  j          .Lmenu_800D8150
/* F6028 800D7F38 AE43001C */   sw        $v1, 0x1C($s2)
.Lmenu_800D7F3C:
/* F602C 800D7F3C 8E430028 */  lw         $v1, 0x28($s2)
/* F6030 800D7F40 30620001 */  andi       $v0, $v1, 0x1
/* F6034 800D7F44 10400008 */  beqz       $v0, .Lmenu_800D7F68
/* F6038 800D7F48 00000000 */   nop
/* F603C 800D7F4C 8E420020 */  lw         $v0, 0x20($s2)
/* F6040 800D7F50 28420007 */  slti       $v0, $v0, 0x7
/* F6044 800D7F54 5040000C */  beql       $v0, $zero, .Lmenu_800D7F88
/* F6048 800D7F58 24620001 */   addiu     $v0, $v1, 0x1
/* F604C 800D7F5C 8E420024 */  lw         $v0, 0x24($s2)
/* F6050 800D7F60 08035FE0 */  j          .Lmenu_800D7F80
/* F6054 800D7F64 2842000B */   slti      $v0, $v0, 0xB
.Lmenu_800D7F68:
/* F6058 800D7F68 8E420020 */  lw         $v0, 0x20($s2)
/* F605C 800D7F6C 2842000B */  slti       $v0, $v0, 0xB
/* F6060 800D7F70 10400005 */  beqz       $v0, .Lmenu_800D7F88
/* F6064 800D7F74 24620001 */   addiu     $v0, $v1, 0x1
/* F6068 800D7F78 8E420024 */  lw         $v0, 0x24($s2)
/* F606C 800D7F7C 28420007 */  slti       $v0, $v0, 0x7
.Lmenu_800D7F80:
/* F6070 800D7F80 14400002 */  bnez       $v0, .Lmenu_800D7F8C
/* F6074 800D7F84 24620001 */   addiu     $v0, $v1, 0x1
.Lmenu_800D7F88:
/* F6078 800D7F88 AE420028 */  sw         $v0, 0x28($s2)
.Lmenu_800D7F8C:
/* F607C 800D7F8C 8E420028 */  lw         $v0, 0x28($s2)
/* F6080 800D7F90 30430003 */  andi       $v1, $v0, 0x3
/* F6084 800D7F94 30420001 */  andi       $v0, $v0, 0x1
/* F6088 800D7F98 10400035 */  beqz       $v0, .Lmenu_800D8070
/* F608C 800D7F9C AE430028 */   sw        $v1, 0x28($s2)
/* F6090 800D7FA0 8E43002C */  lw         $v1, 0x2C($s2)
/* F6094 800D7FA4 24020001 */  addiu      $v0, $zero, 0x1
/* F6098 800D7FA8 10620011 */  beq        $v1, $v0, .Lmenu_800D7FF0
/* F609C 800D7FAC 28620002 */   slti      $v0, $v1, 0x2
/* F60A0 800D7FB0 10400005 */  beqz       $v0, .Lmenu_800D7FC8
/* F60A4 800D7FB4 24020002 */   addiu     $v0, $zero, 0x2
/* F60A8 800D7FB8 10600009 */  beqz       $v1, .Lmenu_800D7FE0
/* F60AC 800D7FBC 00000000 */   nop
/* F60B0 800D7FC0 08036010 */  j          .Lmenu_800D8040
/* F60B4 800D7FC4 00000000 */   nop
.Lmenu_800D7FC8:
/* F60B8 800D7FC8 1062000E */  beq        $v1, $v0, .Lmenu_800D8004
/* F60BC 800D7FCC 24020003 */   addiu     $v0, $zero, 0x3
/* F60C0 800D7FD0 10620013 */  beq        $v1, $v0, .Lmenu_800D8020
/* F60C4 800D7FD4 00000000 */   nop
/* F60C8 800D7FD8 08036010 */  j          .Lmenu_800D8040
/* F60CC 800D7FDC 00000000 */   nop
.Lmenu_800D7FE0:
/* F60D0 800D7FE0 8E420004 */  lw         $v0, 0x4($s2)
/* F60D4 800D7FE4 8E430008 */  lw         $v1, 0x8($s2)
/* F60D8 800D7FE8 0803600F */  j          .Lmenu_800D803C
/* F60DC 800D7FEC AE420018 */   sw        $v0, 0x18($s2)
.Lmenu_800D7FF0:
/* F60E0 800D7FF0 8E430008 */  lw         $v1, 0x8($s2)
/* F60E4 800D7FF4 8E440020 */  lw         $a0, 0x20($s2)
/* F60E8 800D7FF8 8E420004 */  lw         $v0, 0x4($s2)
/* F60EC 800D7FFC 0803600E */  j          .Lmenu_800D8038
/* F60F0 800D8000 00641823 */   subu      $v1, $v1, $a0
.Lmenu_800D8004:
/* F60F4 800D8004 8E420004 */  lw         $v0, 0x4($s2)
/* F60F8 800D8008 8E430024 */  lw         $v1, 0x24($s2)
/* F60FC 800D800C 8E440008 */  lw         $a0, 0x8($s2)
/* F6100 800D8010 00431023 */  subu       $v0, $v0, $v1
/* F6104 800D8014 AE420018 */  sw         $v0, 0x18($s2)
/* F6108 800D8018 08036010 */  j          .Lmenu_800D8040
/* F610C 800D801C AE44001C */   sw        $a0, 0x1C($s2)
.Lmenu_800D8020:
/* F6110 800D8020 8E420004 */  lw         $v0, 0x4($s2)
/* F6114 800D8024 8E440024 */  lw         $a0, 0x24($s2)
/* F6118 800D8028 8E430008 */  lw         $v1, 0x8($s2)
/* F611C 800D802C 8E450020 */  lw         $a1, 0x20($s2)
/* F6120 800D8030 00441023 */  subu       $v0, $v0, $a0
/* F6124 800D8034 00651823 */  subu       $v1, $v1, $a1
.Lmenu_800D8038:
/* F6128 800D8038 AE420018 */  sw         $v0, 0x18($s2)
.Lmenu_800D803C:
/* F612C 800D803C AE43001C */  sw         $v1, 0x1C($s2)
.Lmenu_800D8040:
/* F6130 800D8040 8E420018 */  lw         $v0, 0x18($s2)
/* F6134 800D8044 8E430024 */  lw         $v1, 0x24($s2)
/* F6138 800D8048 00431021 */  addu       $v0, $v0, $v1
/* F613C 800D804C 2842000B */  slti       $v0, $v0, 0xB
/* F6140 800D8050 14400003 */  bnez       $v0, .Lmenu_800D8060
/* F6144 800D8054 2402000A */   addiu     $v0, $zero, 0xA
/* F6148 800D8058 00431023 */  subu       $v0, $v0, $v1
/* F614C 800D805C AE420018 */  sw         $v0, 0x18($s2)
.Lmenu_800D8060:
/* F6150 800D8060 8E42001C */  lw         $v0, 0x1C($s2)
/* F6154 800D8064 8E430020 */  lw         $v1, 0x20($s2)
/* F6158 800D8068 0803604F */  j          .Lmenu_800D813C
/* F615C 800D806C 00431021 */   addu      $v0, $v0, $v1
.Lmenu_800D8070:
/* F6160 800D8070 8E43002C */  lw         $v1, 0x2C($s2)
/* F6164 800D8074 24020001 */  addiu      $v0, $zero, 0x1
/* F6168 800D8078 10620011 */  beq        $v1, $v0, .Lmenu_800D80C0
/* F616C 800D807C 28620002 */   slti      $v0, $v1, 0x2
/* F6170 800D8080 10400005 */  beqz       $v0, .Lmenu_800D8098
/* F6174 800D8084 24020002 */   addiu     $v0, $zero, 0x2
/* F6178 800D8088 10600009 */  beqz       $v1, .Lmenu_800D80B0
/* F617C 800D808C 00000000 */   nop
/* F6180 800D8090 08036044 */  j          .Lmenu_800D8110
/* F6184 800D8094 00000000 */   nop
.Lmenu_800D8098:
/* F6188 800D8098 1062000E */  beq        $v1, $v0, .Lmenu_800D80D4
/* F618C 800D809C 24020003 */   addiu     $v0, $zero, 0x3
/* F6190 800D80A0 10620013 */  beq        $v1, $v0, .Lmenu_800D80F0
/* F6194 800D80A4 00000000 */   nop
/* F6198 800D80A8 08036044 */  j          .Lmenu_800D8110
/* F619C 800D80AC 00000000 */   nop
.Lmenu_800D80B0:
/* F61A0 800D80B0 8E420004 */  lw         $v0, 0x4($s2)
/* F61A4 800D80B4 8E430008 */  lw         $v1, 0x8($s2)
/* F61A8 800D80B8 08036043 */  j          .Lmenu_800D810C
/* F61AC 800D80BC AE420018 */   sw        $v0, 0x18($s2)
.Lmenu_800D80C0:
/* F61B0 800D80C0 8E430008 */  lw         $v1, 0x8($s2)
/* F61B4 800D80C4 8E440024 */  lw         $a0, 0x24($s2)
/* F61B8 800D80C8 8E420004 */  lw         $v0, 0x4($s2)
/* F61BC 800D80CC 08036042 */  j          .Lmenu_800D8108
/* F61C0 800D80D0 00641823 */   subu      $v1, $v1, $a0
.Lmenu_800D80D4:
/* F61C4 800D80D4 8E420004 */  lw         $v0, 0x4($s2)
/* F61C8 800D80D8 8E430020 */  lw         $v1, 0x20($s2)
/* F61CC 800D80DC 8E440008 */  lw         $a0, 0x8($s2)
/* F61D0 800D80E0 00431023 */  subu       $v0, $v0, $v1
/* F61D4 800D80E4 AE420018 */  sw         $v0, 0x18($s2)
/* F61D8 800D80E8 08036044 */  j          .Lmenu_800D8110
/* F61DC 800D80EC AE44001C */   sw        $a0, 0x1C($s2)
.Lmenu_800D80F0:
/* F61E0 800D80F0 8E420004 */  lw         $v0, 0x4($s2)
/* F61E4 800D80F4 8E440020 */  lw         $a0, 0x20($s2)
/* F61E8 800D80F8 8E430008 */  lw         $v1, 0x8($s2)
/* F61EC 800D80FC 8E450024 */  lw         $a1, 0x24($s2)
/* F61F0 800D8100 00441023 */  subu       $v0, $v0, $a0
/* F61F4 800D8104 00651823 */  subu       $v1, $v1, $a1
.Lmenu_800D8108:
/* F61F8 800D8108 AE420018 */  sw         $v0, 0x18($s2)
.Lmenu_800D810C:
/* F61FC 800D810C AE43001C */  sw         $v1, 0x1C($s2)
.Lmenu_800D8110:
/* F6200 800D8110 8E420018 */  lw         $v0, 0x18($s2)
/* F6204 800D8114 8E430020 */  lw         $v1, 0x20($s2)
/* F6208 800D8118 00431021 */  addu       $v0, $v0, $v1
/* F620C 800D811C 2842000B */  slti       $v0, $v0, 0xB
/* F6210 800D8120 14400003 */  bnez       $v0, .Lmenu_800D8130
/* F6214 800D8124 2402000A */   addiu     $v0, $zero, 0xA
/* F6218 800D8128 00431023 */  subu       $v0, $v0, $v1
/* F621C 800D812C AE420018 */  sw         $v0, 0x18($s2)
.Lmenu_800D8130:
/* F6220 800D8130 8E42001C */  lw         $v0, 0x1C($s2)
/* F6224 800D8134 8E430024 */  lw         $v1, 0x24($s2)
/* F6228 800D8138 00431021 */  addu       $v0, $v0, $v1
.Lmenu_800D813C:
/* F622C 800D813C 28420007 */  slti       $v0, $v0, 0x7
/* F6230 800D8140 14400003 */  bnez       $v0, .Lmenu_800D8150
/* F6234 800D8144 24020006 */   addiu     $v0, $zero, 0x6
/* F6238 800D8148 00431023 */  subu       $v0, $v0, $v1
/* F623C 800D814C AE42001C */  sw         $v0, 0x1C($s2)
.Lmenu_800D8150:
/* F6240 800D8150 8E420018 */  lw         $v0, 0x18($s2)
/* F6244 800D8154 04420001 */  bltzl      $v0, .Lmenu_800D815C
/* F6248 800D8158 AE400018 */   sw        $zero, 0x18($s2)
.Lmenu_800D815C:
/* F624C 800D815C 8E42001C */  lw         $v0, 0x1C($s2)
/* F6250 800D8160 04420001 */  bltzl      $v0, .Lmenu_800D8168
/* F6254 800D8164 AE40001C */   sw        $zero, 0x1C($s2)
.Lmenu_800D8168:
/* F6258 800D8168 02402021 */  addu       $a0, $s2, $zero
/* F625C 800D816C 0C035E90 */  jal        func_menu_800D7A40
/* F6260 800D8170 AE53000C */   sw        $s3, 0xC($s2)
/* F6264 800D8174 0C035F4B */  jal        func_menu_800D7D2C
/* F6268 800D8178 02402021 */   addu      $a0, $s2, $zero
/* F626C 800D817C 8FBF0020 */  lw         $ra, 0x20($sp)
/* F6270 800D8180 8FB3001C */  lw         $s3, 0x1C($sp)
/* F6274 800D8184 8FB20018 */  lw         $s2, 0x18($sp)
/* F6278 800D8188 8FB10014 */  lw         $s1, 0x14($sp)
/* F627C 800D818C 8FB00010 */  lw         $s0, 0x10($sp)
/* F6280 800D8190 03E00008 */  jr         $ra
/* F6284 800D8194 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800D8198
/* F6288 800D8198 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F628C 800D819C AFB00010 */  sw         $s0, 0x10($sp)
/* F6290 800D81A0 AFBF0014 */  sw         $ra, 0x14($sp)
/* F6294 800D81A4 0C035E41 */  jal        func_menu_800D7904
/* F6298 800D81A8 00808021 */   addu      $s0, $a0, $zero
/* F629C 800D81AC 8E020018 */  lw         $v0, 0x18($s0)
/* F62A0 800D81B0 04420001 */  bltzl      $v0, .Lmenu_800D81B8
/* F62A4 800D81B4 AE000018 */   sw        $zero, 0x18($s0)
.Lmenu_800D81B8:
/* F62A8 800D81B8 8E02001C */  lw         $v0, 0x1C($s0)
/* F62AC 800D81BC 04420001 */  bltzl      $v0, .Lmenu_800D81C4
/* F62B0 800D81C0 AE00001C */   sw        $zero, 0x1C($s0)
.Lmenu_800D81C4:
/* F62B4 800D81C4 8E020028 */  lw         $v0, 0x28($s0)
/* F62B8 800D81C8 30420001 */  andi       $v0, $v0, 0x1
/* F62BC 800D81CC 1040000D */  beqz       $v0, .Lmenu_800D8204
/* F62C0 800D81D0 00000000 */   nop
/* F62C4 800D81D4 8E020018 */  lw         $v0, 0x18($s0)
/* F62C8 800D81D8 8E030024 */  lw         $v1, 0x24($s0)
/* F62CC 800D81DC 00431021 */  addu       $v0, $v0, $v1
/* F62D0 800D81E0 2842000B */  slti       $v0, $v0, 0xB
/* F62D4 800D81E4 14400003 */  bnez       $v0, .Lmenu_800D81F4
/* F62D8 800D81E8 2402000A */   addiu     $v0, $zero, 0xA
/* F62DC 800D81EC 00431023 */  subu       $v0, $v0, $v1
/* F62E0 800D81F0 AE020018 */  sw         $v0, 0x18($s0)
.Lmenu_800D81F4:
/* F62E4 800D81F4 8E02001C */  lw         $v0, 0x1C($s0)
/* F62E8 800D81F8 8E030020 */  lw         $v1, 0x20($s0)
/* F62EC 800D81FC 0803608C */  j          .Lmenu_800D8230
/* F62F0 800D8200 00431021 */   addu      $v0, $v0, $v1
.Lmenu_800D8204:
/* F62F4 800D8204 8E020018 */  lw         $v0, 0x18($s0)
/* F62F8 800D8208 8E030020 */  lw         $v1, 0x20($s0)
/* F62FC 800D820C 00431021 */  addu       $v0, $v0, $v1
/* F6300 800D8210 2842000B */  slti       $v0, $v0, 0xB
/* F6304 800D8214 14400003 */  bnez       $v0, .Lmenu_800D8224
/* F6308 800D8218 2402000A */   addiu     $v0, $zero, 0xA
/* F630C 800D821C 00431023 */  subu       $v0, $v0, $v1
/* F6310 800D8220 AE020018 */  sw         $v0, 0x18($s0)
.Lmenu_800D8224:
/* F6314 800D8224 8E02001C */  lw         $v0, 0x1C($s0)
/* F6318 800D8228 8E030024 */  lw         $v1, 0x24($s0)
/* F631C 800D822C 00431021 */  addu       $v0, $v0, $v1
.Lmenu_800D8230:
/* F6320 800D8230 28420007 */  slti       $v0, $v0, 0x7
/* F6324 800D8234 14400003 */  bnez       $v0, .Lmenu_800D8244
/* F6328 800D8238 24020006 */   addiu     $v0, $zero, 0x6
/* F632C 800D823C 00431023 */  subu       $v0, $v0, $v1
/* F6330 800D8240 AE02001C */  sw         $v0, 0x1C($s0)
.Lmenu_800D8244:
/* F6334 800D8244 0C035E90 */  jal        func_menu_800D7A40
/* F6338 800D8248 02002021 */   addu      $a0, $s0, $zero
/* F633C 800D824C 8FBF0014 */  lw         $ra, 0x14($sp)
/* F6340 800D8250 8FB00010 */  lw         $s0, 0x10($sp)
/* F6344 800D8254 03E00008 */  jr         $ra
/* F6348 800D8258 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800D825C
/* F634C 800D825C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F6350 800D8260 AFBF0010 */  sw         $ra, 0x10($sp)
/* F6354 800D8264 8C830028 */  lw         $v1, 0x28($a0)
/* F6358 800D8268 30620001 */  andi       $v0, $v1, 0x1
/* F635C 800D826C 10400008 */  beqz       $v0, .Lmenu_800D8290
/* F6360 800D8270 00000000 */   nop
/* F6364 800D8274 8C820024 */  lw         $v0, 0x24($a0)
/* F6368 800D8278 28420007 */  slti       $v0, $v0, 0x7
/* F636C 800D827C 1040000C */  beqz       $v0, .Lmenu_800D82B0
/* F6370 800D8280 24620001 */   addiu     $v0, $v1, 0x1
/* F6374 800D8284 8C820020 */  lw         $v0, 0x20($a0)
/* F6378 800D8288 080360AA */  j          .Lmenu_800D82A8
/* F637C 800D828C 2842000B */   slti      $v0, $v0, 0xB
.Lmenu_800D8290:
/* F6380 800D8290 8C820020 */  lw         $v0, 0x20($a0)
/* F6384 800D8294 28420007 */  slti       $v0, $v0, 0x7
/* F6388 800D8298 10400005 */  beqz       $v0, .Lmenu_800D82B0
/* F638C 800D829C 24620001 */   addiu     $v0, $v1, 0x1
/* F6390 800D82A0 8C820024 */  lw         $v0, 0x24($a0)
/* F6394 800D82A4 2842000B */  slti       $v0, $v0, 0xB
.Lmenu_800D82A8:
/* F6398 800D82A8 14400002 */  bnez       $v0, .Lmenu_800D82B4
/* F639C 800D82AC 24620001 */   addiu     $v0, $v1, 0x1
.Lmenu_800D82B0:
/* F63A0 800D82B0 AC820028 */  sw         $v0, 0x28($a0)
.Lmenu_800D82B4:
/* F63A4 800D82B4 8C820028 */  lw         $v0, 0x28($a0)
/* F63A8 800D82B8 24420001 */  addiu      $v0, $v0, 0x1
/* F63AC 800D82BC 30420003 */  andi       $v0, $v0, 0x3
/* F63B0 800D82C0 0C036066 */  jal        func_menu_800D8198
/* F63B4 800D82C4 AC820028 */   sw        $v0, 0x28($a0)
/* F63B8 800D82C8 8FBF0010 */  lw         $ra, 0x10($sp)
/* F63BC 800D82CC 03E00008 */  jr         $ra
/* F63C0 800D82D0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800D82D4
/* F63C4 800D82D4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F63C8 800D82D8 AFBF0010 */  sw         $ra, 0x10($sp)
/* F63CC 800D82DC 8C830028 */  lw         $v1, 0x28($a0)
/* F63D0 800D82E0 30620001 */  andi       $v0, $v1, 0x1
/* F63D4 800D82E4 10400008 */  beqz       $v0, .Lmenu_800D8308
/* F63D8 800D82E8 00000000 */   nop
/* F63DC 800D82EC 8C820024 */  lw         $v0, 0x24($a0)
/* F63E0 800D82F0 28420007 */  slti       $v0, $v0, 0x7
/* F63E4 800D82F4 1040000C */  beqz       $v0, .Lmenu_800D8328
/* F63E8 800D82F8 2462FFFF */   addiu     $v0, $v1, -0x1
/* F63EC 800D82FC 8C820020 */  lw         $v0, 0x20($a0)
/* F63F0 800D8300 080360C8 */  j          .Lmenu_800D8320
/* F63F4 800D8304 2842000B */   slti      $v0, $v0, 0xB
.Lmenu_800D8308:
/* F63F8 800D8308 8C820020 */  lw         $v0, 0x20($a0)
/* F63FC 800D830C 28420007 */  slti       $v0, $v0, 0x7
/* F6400 800D8310 10400005 */  beqz       $v0, .Lmenu_800D8328
/* F6404 800D8314 2462FFFF */   addiu     $v0, $v1, -0x1
/* F6408 800D8318 8C820024 */  lw         $v0, 0x24($a0)
/* F640C 800D831C 2842000B */  slti       $v0, $v0, 0xB
.Lmenu_800D8320:
/* F6410 800D8320 14400002 */  bnez       $v0, .Lmenu_800D832C
/* F6414 800D8324 2462FFFF */   addiu     $v0, $v1, -0x1
.Lmenu_800D8328:
/* F6418 800D8328 AC820028 */  sw         $v0, 0x28($a0)
.Lmenu_800D832C:
/* F641C 800D832C 8C820028 */  lw         $v0, 0x28($a0)
/* F6420 800D8330 2442FFFF */  addiu      $v0, $v0, -0x1
/* F6424 800D8334 30420003 */  andi       $v0, $v0, 0x3
/* F6428 800D8338 0C036066 */  jal        func_menu_800D8198
/* F642C 800D833C AC820028 */   sw        $v0, 0x28($a0)
/* F6430 800D8340 8FBF0010 */  lw         $ra, 0x10($sp)
/* F6434 800D8344 03E00008 */  jr         $ra
/* F6438 800D8348 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800D834C
/* F643C 800D834C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F6440 800D8350 AFB00010 */  sw         $s0, 0x10($sp)
/* F6444 800D8354 00808021 */  addu       $s0, $a0, $zero
/* F6448 800D8358 AFBF0014 */  sw         $ra, 0x14($sp)
/* F644C 800D835C 8E020028 */  lw         $v0, 0x28($s0)
/* F6450 800D8360 30420001 */  andi       $v0, $v0, 0x1
/* F6454 800D8364 10400009 */  beqz       $v0, .Lmenu_800D838C
/* F6458 800D8368 00000000 */   nop
/* F645C 800D836C 8E030018 */  lw         $v1, 0x18($s0)
/* F6460 800D8370 8E020024 */  lw         $v0, 0x24($s0)
/* F6464 800D8374 00621021 */  addu       $v0, $v1, $v0
/* F6468 800D8378 2842000A */  slti       $v0, $v0, 0xA
/* F646C 800D837C 1040000F */  beqz       $v0, .Lmenu_800D83BC
/* F6470 800D8380 24620001 */   addiu     $v0, $v1, 0x1
/* F6474 800D8384 080360EB */  j          .Lmenu_800D83AC
/* F6478 800D8388 AE020018 */   sw        $v0, 0x18($s0)
.Lmenu_800D838C:
/* F647C 800D838C 8E030018 */  lw         $v1, 0x18($s0)
/* F6480 800D8390 8E020020 */  lw         $v0, 0x20($s0)
/* F6484 800D8394 00621021 */  addu       $v0, $v1, $v0
/* F6488 800D8398 2842000A */  slti       $v0, $v0, 0xA
/* F648C 800D839C 10400007 */  beqz       $v0, .Lmenu_800D83BC
/* F6490 800D83A0 24620001 */   addiu     $v0, $v1, 0x1
/* F6494 800D83A4 AE020018 */  sw         $v0, 0x18($s0)
/* F6498 800D83A8 02002021 */  addu       $a0, $s0, $zero
.Lmenu_800D83AC:
/* F649C 800D83AC 0C035E90 */  jal        func_menu_800D7A40
/* F64A0 800D83B0 00000000 */   nop
/* F64A4 800D83B4 0C035F4B */  jal        func_menu_800D7D2C
/* F64A8 800D83B8 02002021 */   addu      $a0, $s0, $zero
.Lmenu_800D83BC:
/* F64AC 800D83BC 8FBF0014 */  lw         $ra, 0x14($sp)
/* F64B0 800D83C0 8FB00010 */  lw         $s0, 0x10($sp)
/* F64B4 800D83C4 03E00008 */  jr         $ra
/* F64B8 800D83C8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800D83CC
/* F64BC 800D83CC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F64C0 800D83D0 AFB00010 */  sw         $s0, 0x10($sp)
/* F64C4 800D83D4 00808021 */  addu       $s0, $a0, $zero
/* F64C8 800D83D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* F64CC 800D83DC 8E020018 */  lw         $v0, 0x18($s0)
/* F64D0 800D83E0 18400005 */  blez       $v0, .Lmenu_800D83F8
/* F64D4 800D83E4 2442FFFF */   addiu     $v0, $v0, -0x1
/* F64D8 800D83E8 0C035E90 */  jal        func_menu_800D7A40
/* F64DC 800D83EC AE020018 */   sw        $v0, 0x18($s0)
/* F64E0 800D83F0 0C035F4B */  jal        func_menu_800D7D2C
/* F64E4 800D83F4 02002021 */   addu      $a0, $s0, $zero
.Lmenu_800D83F8:
/* F64E8 800D83F8 8FBF0014 */  lw         $ra, 0x14($sp)
/* F64EC 800D83FC 8FB00010 */  lw         $s0, 0x10($sp)
/* F64F0 800D8400 03E00008 */  jr         $ra
/* F64F4 800D8404 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800D8408
/* F64F8 800D8408 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F64FC 800D840C AFB00010 */  sw         $s0, 0x10($sp)
/* F6500 800D8410 00808021 */  addu       $s0, $a0, $zero
/* F6504 800D8414 AFBF0014 */  sw         $ra, 0x14($sp)
/* F6508 800D8418 8E020028 */  lw         $v0, 0x28($s0)
/* F650C 800D841C 30420001 */  andi       $v0, $v0, 0x1
/* F6510 800D8420 10400009 */  beqz       $v0, .Lmenu_800D8448
/* F6514 800D8424 00000000 */   nop
/* F6518 800D8428 8E03001C */  lw         $v1, 0x1C($s0)
/* F651C 800D842C 8E020020 */  lw         $v0, 0x20($s0)
/* F6520 800D8430 00621021 */  addu       $v0, $v1, $v0
/* F6524 800D8434 28420006 */  slti       $v0, $v0, 0x6
/* F6528 800D8438 1040000F */  beqz       $v0, .Lmenu_800D8478
/* F652C 800D843C 24620001 */   addiu     $v0, $v1, 0x1
/* F6530 800D8440 0803611A */  j          .Lmenu_800D8468
/* F6534 800D8444 AE02001C */   sw        $v0, 0x1C($s0)
.Lmenu_800D8448:
/* F6538 800D8448 8E03001C */  lw         $v1, 0x1C($s0)
/* F653C 800D844C 8E020024 */  lw         $v0, 0x24($s0)
/* F6540 800D8450 00621021 */  addu       $v0, $v1, $v0
/* F6544 800D8454 28420006 */  slti       $v0, $v0, 0x6
/* F6548 800D8458 10400007 */  beqz       $v0, .Lmenu_800D8478
/* F654C 800D845C 24620001 */   addiu     $v0, $v1, 0x1
/* F6550 800D8460 AE02001C */  sw         $v0, 0x1C($s0)
/* F6554 800D8464 02002021 */  addu       $a0, $s0, $zero
.Lmenu_800D8468:
/* F6558 800D8468 0C035E90 */  jal        func_menu_800D7A40
/* F655C 800D846C 00000000 */   nop
/* F6560 800D8470 0C035F4B */  jal        func_menu_800D7D2C
/* F6564 800D8474 02002021 */   addu      $a0, $s0, $zero
.Lmenu_800D8478:
/* F6568 800D8478 8FBF0014 */  lw         $ra, 0x14($sp)
/* F656C 800D847C 8FB00010 */  lw         $s0, 0x10($sp)
/* F6570 800D8480 03E00008 */  jr         $ra
/* F6574 800D8484 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800D8488
/* F6578 800D8488 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F657C 800D848C AFB00010 */  sw         $s0, 0x10($sp)
/* F6580 800D8490 00808021 */  addu       $s0, $a0, $zero
/* F6584 800D8494 AFBF0014 */  sw         $ra, 0x14($sp)
/* F6588 800D8498 8E02001C */  lw         $v0, 0x1C($s0)
/* F658C 800D849C 18400005 */  blez       $v0, .Lmenu_800D84B4
/* F6590 800D84A0 2442FFFF */   addiu     $v0, $v0, -0x1
/* F6594 800D84A4 0C035E90 */  jal        func_menu_800D7A40
/* F6598 800D84A8 AE02001C */   sw        $v0, 0x1C($s0)
/* F659C 800D84AC 0C035F4B */  jal        func_menu_800D7D2C
/* F65A0 800D84B0 02002021 */   addu      $a0, $s0, $zero
.Lmenu_800D84B4:
/* F65A4 800D84B4 8FBF0014 */  lw         $ra, 0x14($sp)
/* F65A8 800D84B8 8FB00010 */  lw         $s0, 0x10($sp)
/* F65AC 800D84BC 03E00008 */  jr         $ra
/* F65B0 800D84C0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800D84C4
/* F65B4 800D84C4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F65B8 800D84C8 AFB10014 */  sw         $s1, 0x14($sp)
/* F65BC 800D84CC 00808821 */  addu       $s1, $a0, $zero
/* F65C0 800D84D0 AFB00010 */  sw         $s0, 0x10($sp)
/* F65C4 800D84D4 00A08021 */  addu       $s0, $a1, $zero
/* F65C8 800D84D8 1A000008 */  blez       $s0, .Lmenu_800D84FC
/* F65CC 800D84DC AFBF0018 */   sw        $ra, 0x18($sp)
.Lmenu_800D84E0:
/* F65D0 800D84E0 0C0360D3 */  jal        func_menu_800D834C
/* F65D4 800D84E4 02202021 */   addu      $a0, $s1, $zero
/* F65D8 800D84E8 2610FFFF */  addiu      $s0, $s0, -0x1
/* F65DC 800D84EC 1A00000A */  blez       $s0, .Lmenu_800D8518
/* F65E0 800D84F0 00000000 */   nop
/* F65E4 800D84F4 08036138 */  j          .Lmenu_800D84E0
/* F65E8 800D84F8 00000000 */   nop
.Lmenu_800D84FC:
/* F65EC 800D84FC 06010006 */  bgez       $s0, .Lmenu_800D8518
/* F65F0 800D8500 00000000 */   nop
.Lmenu_800D8504:
/* F65F4 800D8504 0C0360F3 */  jal        func_menu_800D83CC
/* F65F8 800D8508 02202021 */   addu      $a0, $s1, $zero
/* F65FC 800D850C 26100001 */  addiu      $s0, $s0, 0x1
/* F6600 800D8510 0600FFFC */  bltz       $s0, .Lmenu_800D8504
/* F6604 800D8514 00000000 */   nop
.Lmenu_800D8518:
/* F6608 800D8518 8FBF0018 */  lw         $ra, 0x18($sp)
/* F660C 800D851C 8FB10014 */  lw         $s1, 0x14($sp)
/* F6610 800D8520 8FB00010 */  lw         $s0, 0x10($sp)
/* F6614 800D8524 03E00008 */  jr         $ra
/* F6618 800D8528 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800D852C
/* F661C 800D852C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F6620 800D8530 AFB10014 */  sw         $s1, 0x14($sp)
/* F6624 800D8534 00808821 */  addu       $s1, $a0, $zero
/* F6628 800D8538 AFB00010 */  sw         $s0, 0x10($sp)
/* F662C 800D853C 00A08021 */  addu       $s0, $a1, $zero
/* F6630 800D8540 1A000008 */  blez       $s0, .Lmenu_800D8564
/* F6634 800D8544 AFBF0018 */   sw        $ra, 0x18($sp)
.Lmenu_800D8548:
/* F6638 800D8548 0C036102 */  jal        func_menu_800D8408
/* F663C 800D854C 02202021 */   addu      $a0, $s1, $zero
/* F6640 800D8550 2610FFFF */  addiu      $s0, $s0, -0x1
/* F6644 800D8554 1A00000A */  blez       $s0, .Lmenu_800D8580
/* F6648 800D8558 00000000 */   nop
/* F664C 800D855C 08036152 */  j          .Lmenu_800D8548
/* F6650 800D8560 00000000 */   nop
.Lmenu_800D8564:
/* F6654 800D8564 06010006 */  bgez       $s0, .Lmenu_800D8580
/* F6658 800D8568 00000000 */   nop
.Lmenu_800D856C:
/* F665C 800D856C 0C036122 */  jal        func_menu_800D8488
/* F6660 800D8570 02202021 */   addu      $a0, $s1, $zero
/* F6664 800D8574 26100001 */  addiu      $s0, $s0, 0x1
/* F6668 800D8578 0600FFFC */  bltz       $s0, .Lmenu_800D856C
/* F666C 800D857C 00000000 */   nop
.Lmenu_800D8580:
/* F6670 800D8580 8FBF0018 */  lw         $ra, 0x18($sp)
/* F6674 800D8584 8FB10014 */  lw         $s1, 0x14($sp)
/* F6678 800D8588 8FB00010 */  lw         $s0, 0x10($sp)
/* F667C 800D858C 03E00008 */  jr         $ra
/* F6680 800D8590 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800D8594
/* F6684 800D8594 8C820018 */  lw         $v0, 0x18($a0)
/* F6688 800D8598 ACA20000 */  sw         $v0, 0x0($a1)
/* F668C 800D859C 8C82001C */  lw         $v0, 0x1C($a0)
/* F6690 800D85A0 ACC20000 */  sw         $v0, 0x0($a2)
/* F6694 800D85A4 8C820028 */  lw         $v0, 0x28($a0)
/* F6698 800D85A8 03E00008 */  jr         $ra
/* F669C 800D85AC ACE20000 */   sw        $v0, 0x0($a3)

glabel func_menu_800D85B0
/* F66A0 800D85B0 8C820004 */  lw         $v0, 0x4($a0)
/* F66A4 800D85B4 ACA20000 */  sw         $v0, 0x0($a1)
/* F66A8 800D85B8 8C820008 */  lw         $v0, 0x8($a0)
/* F66AC 800D85BC ACC20000 */  sw         $v0, 0x0($a2)
/* F66B0 800D85C0 8C82002C */  lw         $v0, 0x2C($a0)
/* F66B4 800D85C4 03E00008 */  jr         $ra
/* F66B8 800D85C8 ACE20000 */   sw        $v0, 0x0($a3)

glabel func_menu_800D85CC
/* F66BC 800D85CC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F66C0 800D85D0 8FA20028 */  lw         $v0, 0x28($sp)
/* F66C4 800D85D4 AFBF0010 */  sw         $ra, 0x10($sp)
/* F66C8 800D85D8 AC850004 */  sw         $a1, 0x4($a0)
/* F66CC 800D85DC 8C85000C */  lw         $a1, 0xC($a0)
/* F66D0 800D85E0 AC860008 */  sw         $a2, 0x8($a0)
/* F66D4 800D85E4 8C860010 */  lw         $a2, 0x10($a0)
/* F66D8 800D85E8 30E70003 */  andi       $a3, $a3, 0x3
/* F66DC 800D85EC AC870028 */  sw         $a3, 0x28($a0)
/* F66E0 800D85F0 8C870014 */  lw         $a3, 0x14($a0)
/* F66E4 800D85F4 30420003 */  andi       $v0, $v0, 0x3
/* F66E8 800D85F8 0C035FA0 */  jal        func_menu_800D7E80
/* F66EC 800D85FC AC82002C */   sw        $v0, 0x2C($a0)
/* F66F0 800D8600 8FBF0010 */  lw         $ra, 0x10($sp)
/* F66F4 800D8604 03E00008 */  jr         $ra
/* F66F8 800D8608 27BD0018 */   addiu     $sp, $sp, 0x18
