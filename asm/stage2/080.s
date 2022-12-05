.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80046AD0
/* 3DE00 80046AD0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3DE04 80046AD4 AFB00010 */  sw         $s0, 0x10($sp)
/* 3DE08 80046AD8 00808021 */  addu       $s0, $a0, $zero
/* 3DE0C 80046ADC AFB10014 */  sw         $s1, 0x14($sp)
/* 3DE10 80046AE0 00A08821 */  addu       $s1, $a1, $zero
/* 3DE14 80046AE4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 3DE18 80046AE8 0C011B04 */  jal        func_80046C10
/* 3DE1C 80046AEC AFB20018 */   sw        $s2, 0x18($sp)
/* 3DE20 80046AF0 3C028009 */  lui        $v0, %hi(D_80089860)
/* 3DE24 80046AF4 24529860 */  addiu      $s2, $v0, %lo(D_80089860)
/* 3DE28 80046AF8 02402021 */  addu       $a0, $s2, $zero
/* 3DE2C 80046AFC 02002821 */  addu       $a1, $s0, $zero
/* 3DE30 80046B00 0C011708 */  jal        func_80045C20
/* 3DE34 80046B04 02203021 */   addu      $a2, $s1, $zero
/* 3DE38 80046B08 10400006 */  beqz       $v0, .L80046B24
/* 3DE3C 80046B0C 24020001 */   addiu     $v0, $zero, 0x1
/* 3DE40 80046B10 0C01171E */  jal        func_80045C78
/* 3DE44 80046B14 02402021 */   addu      $a0, $s2, $zero
/* 3DE48 80046B18 0C01171C */  jal        func_80045C70
/* 3DE4C 80046B1C 02402021 */   addu      $a0, $s2, $zero
/* 3DE50 80046B20 00001021 */  addu       $v0, $zero, $zero
.L80046B24:
/* 3DE54 80046B24 8FBF001C */  lw         $ra, 0x1C($sp)
/* 3DE58 80046B28 8FB20018 */  lw         $s2, 0x18($sp)
/* 3DE5C 80046B2C 8FB10014 */  lw         $s1, 0x14($sp)
/* 3DE60 80046B30 8FB00010 */  lw         $s0, 0x10($sp)
/* 3DE64 80046B34 03E00008 */  jr         $ra
/* 3DE68 80046B38 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80046B3C
/* 3DE6C 80046B3C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3DE70 80046B40 00801021 */  addu       $v0, $a0, $zero
/* 3DE74 80046B44 00A03821 */  addu       $a3, $a1, $zero
/* 3DE78 80046B48 3C04800A */  lui        $a0, %hi(D_8009BF60)
/* 3DE7C 80046B4C 3C058004 */  lui        $a1, %hi(D_8003C2A0)
/* 3DE80 80046B50 2484BF60 */  addiu      $a0, $a0, %lo(D_8009BF60)
/* 3DE84 80046B54 24A5C2A0 */  addiu      $a1, $a1, %lo(D_8003C2A0)
/* 3DE88 80046B58 AFA60010 */  sw         $a2, 0x10($sp)
/* 3DE8C 80046B5C AFBF0018 */  sw         $ra, 0x18($sp)
/* 3DE90 80046B60 0C006E14 */  jal        sprintf
/* 3DE94 80046B64 00403021 */   addu      $a2, $v0, $zero
.L80046B68:
/* 3DE98 80046B68 08011ADA */  j          .L80046B68
/* 3DE9C 80046B6C 00000000 */   nop

glabel func_80046B70
/* 3DEA0 80046B70 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3DEA4 80046B74 24830007 */  addiu      $v1, $a0, 0x7
/* 3DEA8 80046B78 2C620008 */  sltiu      $v0, $v1, 0x8
/* 3DEAC 80046B7C 1040001D */  beqz       $v0, L80046BF4
/* 3DEB0 80046B80 AFBF0010 */   sw        $ra, 0x10($sp)
/* 3DEB4 80046B84 3C028004 */  lui        $v0, %hi(jtbl_8003C388)
/* 3DEB8 80046B88 2442C388 */  addiu      $v0, $v0, %lo(jtbl_8003C388)
/* 3DEBC 80046B8C 00031880 */  sll        $v1, $v1, 2
/* 3DEC0 80046B90 00621821 */  addu       $v1, $v1, $v0
/* 3DEC4 80046B94 8C620000 */  lw         $v0, 0x0($v1)
/* 3DEC8 80046B98 00400008 */  jr         $v0
/* 3DECC 80046B9C 00000000 */   nop
glabel L80046BA0
/* 3DED0 80046BA0 3C028004 */  lui        $v0, %hi(D_8003C2B8)
/* 3DED4 80046BA4 08011AFF */  j          .L80046BFC
/* 3DED8 80046BA8 2444C2B8 */   addiu     $a0, $v0, %lo(D_8003C2B8)
glabel L80046BAC
/* 3DEDC 80046BAC 3C028004 */  lui        $v0, %hi(D_8003C2D0)
/* 3DEE0 80046BB0 08011AFF */  j          .L80046BFC
/* 3DEE4 80046BB4 2444C2D0 */   addiu     $a0, $v0, %lo(D_8003C2D0)
glabel L80046BB8
/* 3DEE8 80046BB8 3C028004 */  lui        $v0, %hi(D_8003C2E8)
/* 3DEEC 80046BBC 08011AFF */  j          .L80046BFC
/* 3DEF0 80046BC0 2444C2E8 */   addiu     $a0, $v0, %lo(D_8003C2E8)
glabel L80046BC4
/* 3DEF4 80046BC4 3C028004 */  lui        $v0, %hi(D_8003C304)
/* 3DEF8 80046BC8 08011AFF */  j          .L80046BFC
/* 3DEFC 80046BCC 2444C304 */   addiu     $a0, $v0, %lo(D_8003C304)
glabel L80046BD0
/* 3DF00 80046BD0 3C028004 */  lui        $v0, %hi(D_8003C31C)
/* 3DF04 80046BD4 08011AFF */  j          .L80046BFC
/* 3DF08 80046BD8 2444C31C */   addiu     $a0, $v0, %lo(D_8003C31C)
glabel L80046BDC
/* 3DF0C 80046BDC 3C028004 */  lui        $v0, %hi(D_8003C338)
/* 3DF10 80046BE0 08011AFF */  j          .L80046BFC
/* 3DF14 80046BE4 2444C338 */   addiu     $a0, $v0, %lo(D_8003C338)
glabel L80046BE8
/* 3DF18 80046BE8 3C028004 */  lui        $v0, %hi(D_8003C350)
/* 3DF1C 80046BEC 08011AFF */  j          .L80046BFC
/* 3DF20 80046BF0 2444C350 */   addiu     $a0, $v0, %lo(D_8003C350)
glabel L80046BF4
/* 3DF24 80046BF4 3C028004 */  lui        $v0, %hi(D_8003C364)
/* 3DF28 80046BF8 2444C364 */  addiu      $a0, $v0, %lo(D_8003C364)
.L80046BFC:
/* 3DF2C 80046BFC 0C011ACF */  jal        func_80046B3C
/* 3DF30 80046C00 00000000 */   nop
/* 3DF34 80046C04 8FBF0010 */  lw         $ra, 0x10($sp)
/* 3DF38 80046C08 03E00008 */  jr         $ra
/* 3DF3C 80046C0C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80046C10
/* 3DF40 80046C10 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3DF44 80046C14 3C028008 */  lui        $v0, %hi(D_80087570)
/* 3DF48 80046C18 AFB00010 */  sw         $s0, 0x10($sp)
/* 3DF4C 80046C1C 24507570 */  addiu      $s0, $v0, %lo(D_80087570)
/* 3DF50 80046C20 02002021 */  addu       $a0, $s0, $zero
/* 3DF54 80046C24 3C050003 */  lui        $a1, (0x34000 >> 16)
/* 3DF58 80046C28 34A54000 */  ori        $a1, $a1, (0x34000 & 0xFFFF)
/* 3DF5C 80046C2C 24060006 */  addiu      $a2, $zero, 0x6
/* 3DF60 80046C30 AFBF001C */  sw         $ra, 0x1C($sp)
/* 3DF64 80046C34 AFB20018 */  sw         $s2, 0x18($sp)
/* 3DF68 80046C38 0C01F9C2 */  jal        func_8007E708
/* 3DF6C 80046C3C AFB10014 */   sw        $s1, 0x14($sp)
/* 3DF70 80046C40 02002021 */  addu       $a0, $s0, $zero
/* 3DF74 80046C44 3C050001 */  lui        $a1, (0x14400 >> 16)
/* 3DF78 80046C48 34A54400 */  ori        $a1, $a1, (0x14400 & 0xFFFF)
/* 3DF7C 80046C4C 24060003 */  addiu      $a2, $zero, 0x3
/* 3DF80 80046C50 3C038008 */  lui        $v1, %hi(D_80082820)
/* 3DF84 80046C54 0C01F9C2 */  jal        func_8007E708
/* 3DF88 80046C58 AC622820 */   sw        $v0, %lo(D_80082820)($v1)
/* 3DF8C 80046C5C 02002021 */  addu       $a0, $s0, $zero
/* 3DF90 80046C60 3405A000 */  ori        $a1, $zero, 0xA000
/* 3DF94 80046C64 24060002 */  addiu      $a2, $zero, 0x2
/* 3DF98 80046C68 3C038008 */  lui        $v1, %hi(D_8008281C)
/* 3DF9C 80046C6C 0C01F9C2 */  jal        func_8007E708
/* 3DFA0 80046C70 AC62281C */   sw        $v0, %lo(D_8008281C)($v1)
/* 3DFA4 80046C74 3C12000C */  lui        $s2, (0xCA500 >> 16)
/* 3DFA8 80046C78 3652A500 */  ori        $s2, $s2, (0xCA500 & 0xFFFF)
/* 3DFAC 80046C7C 02002021 */  addu       $a0, $s0, $zero
/* 3DFB0 80046C80 3C050007 */  lui        $a1, (0x78100 >> 16)
/* 3DFB4 80046C84 34A58100 */  ori        $a1, $a1, (0x78100 & 0xFFFF)
/* 3DFB8 80046C88 24060006 */  addiu      $a2, $zero, 0x6
/* 3DFBC 80046C8C 3C038008 */  lui        $v1, %hi(D_80082828)
/* 3DFC0 80046C90 0C01F9C2 */  jal        func_8007E708
/* 3DFC4 80046C94 AC622828 */   sw        $v0, %lo(D_80082828)($v1)
/* 3DFC8 80046C98 3C038008 */  lui        $v1, %hi(D_80082814)
/* 3DFCC 80046C9C AC622814 */  sw         $v0, %lo(D_80082814)($v1)
/* 3DFD0 80046CA0 8E030004 */  lw         $v1, 0x4($s0)
/* 3DFD4 80046CA4 3C020040 */  lui        $v0, (0x400000 >> 16)
/* 3DFD8 80046CA8 0043102B */  sltu       $v0, $v0, $v1
/* 3DFDC 80046CAC 1040000B */  beqz       $v0, .L80046CDC
/* 3DFE0 80046CB0 02002021 */   addu      $a0, $s0, $zero
/* 3DFE4 80046CB4 3C12000D */  lui        $s2, (0xD7300 >> 16)
/* 3DFE8 80046CB8 36527300 */  ori        $s2, $s2, (0xD7300 & 0xFFFF)
/* 3DFEC 80046CBC 3405CE00 */  ori        $a1, $zero, 0xCE00
/* 3DFF0 80046CC0 0C01F9C2 */  jal        func_8007E708
/* 3DFF4 80046CC4 24060006 */   addiu     $a2, $zero, 0x6
/* 3DFF8 80046CC8 3C038008 */  lui        $v1, %hi(D_80082810)
/* 3DFFC 80046CCC AC622810 */  sw         $v0, %lo(D_80082810)($v1)
/* 3E000 80046CD0 3C050008 */  lui        $a1, (0x84400 >> 16)
/* 3E004 80046CD4 08011B39 */  j          .L80046CE4
/* 3E008 80046CD8 34A54400 */   ori       $a1, $a1, (0x84400 & 0xFFFF)
.L80046CDC:
/* 3E00C 80046CDC 3C050005 */  lui        $a1, (0x57C00 >> 16)
/* 3E010 80046CE0 34A57C00 */  ori        $a1, $a1, (0x57C00 & 0xFFFF)
.L80046CE4:
/* 3E014 80046CE4 02459021 */  addu       $s2, $s2, $a1
/* 3E018 80046CE8 3C108008 */  lui        $s0, %hi(D_80087570)
/* 3E01C 80046CEC 26107570 */  addiu      $s0, $s0, %lo(D_80087570)
/* 3E020 80046CF0 02002021 */  addu       $a0, $s0, $zero
/* 3E024 80046CF4 0C01F9C2 */  jal        func_8007E708
/* 3E028 80046CF8 24060006 */   addiu     $a2, $zero, 0x6
/* 3E02C 80046CFC 3C030003 */  lui        $v1, (0x3C100 >> 16)
/* 3E030 80046D00 3463C100 */  ori        $v1, $v1, (0x3C100 & 0xFFFF)
/* 3E034 80046D04 02439021 */  addu       $s2, $s2, $v1
/* 3E038 80046D08 02002021 */  addu       $a0, $s0, $zero
/* 3E03C 80046D0C 24060003 */  addiu      $a2, $zero, 0x3
/* 3E040 80046D10 3C038002 */  lui        $v1, %hi(D_80025240)
/* 3E044 80046D14 8C655240 */  lw         $a1, %lo(D_80025240)($v1)
/* 3E048 80046D18 3C118008 */  lui        $s1, %hi(D_80082818)
/* 3E04C 80046D1C AE222818 */  sw         $v0, %lo(D_80082818)($s1)
/* 3E050 80046D20 00B22823 */  subu       $a1, $a1, $s2
/* 3E054 80046D24 0C01F9C2 */  jal        func_8007E708
/* 3E058 80046D28 24A5FF80 */   addiu     $a1, $a1, -0x80
/* 3E05C 80046D2C 02002021 */  addu       $a0, $s0, $zero
/* 3E060 80046D30 3C050003 */  lui        $a1, (0x3C100 >> 16)
/* 3E064 80046D34 34A5C100 */  ori        $a1, $a1, (0x3C100 & 0xFFFF)
/* 3E068 80046D38 24060006 */  addiu      $a2, $zero, 0x6
/* 3E06C 80046D3C 3C038008 */  lui        $v1, %hi(D_80082824)
/* 3E070 80046D40 0C01F9C2 */  jal        func_8007E708
/* 3E074 80046D44 AC622824 */   sw        $v0, %lo(D_80082824)($v1)
/* 3E078 80046D48 3C038008 */  lui        $v1, %hi(D_80082814)
/* 3E07C 80046D4C 8C642814 */  lw         $a0, %lo(D_80082814)($v1)
/* 3E080 80046D50 3C128008 */  lui        $s2, %hi(D_8008282C)
/* 3E084 80046D54 0C01AE13 */  jal        func_8006B84C
/* 3E088 80046D58 AE42282C */   sw        $v0, %lo(D_8008282C)($s2)
/* 3E08C 80046D5C 8E242818 */  lw         $a0, %lo(D_80082818)($s1)
/* 3E090 80046D60 0C01ACD0 */  jal        func_8006B340
/* 3E094 80046D64 3C108008 */   lui       $s0, %hi(D_8008281C)
/* 3E098 80046D68 8E242818 */  lw         $a0, %lo(D_80082818)($s1)
/* 3E09C 80046D6C 0C01CBA0 */  jal        func_80072E80
/* 3E0A0 80046D70 00000000 */   nop
/* 3E0A4 80046D74 8E04281C */  lw         $a0, %lo(D_8008281C)($s0)
/* 3E0A8 80046D78 0C001E11 */  jal        func_80007844
/* 3E0AC 80046D7C 00000000 */   nop
/* 3E0B0 80046D80 8E04281C */  lw         $a0, %lo(D_8008281C)($s0)
/* 3E0B4 80046D84 0C002352 */  jal        func_80008D48
/* 3E0B8 80046D88 00000000 */   nop
/* 3E0BC 80046D8C 3C028008 */  lui        $v0, %hi(D_80082820)
/* 3E0C0 80046D90 8C442820 */  lw         $a0, %lo(D_80082820)($v0)
/* 3E0C4 80046D94 0C0200B5 */  jal        func_800802D4
/* 3E0C8 80046D98 00000000 */   nop
/* 3E0CC 80046D9C 8E44282C */  lw         $a0, %lo(D_8008282C)($s2)
/* 3E0D0 80046DA0 0C01EDBC */  jal        func_8007B6F0
/* 3E0D4 80046DA4 00000000 */   nop
/* 3E0D8 80046DA8 3C028008 */  lui        $v0, %hi(D_80082828)
/* 3E0DC 80046DAC 8C442828 */  lw         $a0, %lo(D_80082828)($v0)
/* 3E0E0 80046DB0 0C01FB65 */  jal        func_8007ED94
/* 3E0E4 80046DB4 00000000 */   nop
/* 3E0E8 80046DB8 8FBF001C */  lw         $ra, 0x1C($sp)
/* 3E0EC 80046DBC 8FB20018 */  lw         $s2, 0x18($sp)
/* 3E0F0 80046DC0 8FB10014 */  lw         $s1, 0x14($sp)
/* 3E0F4 80046DC4 8FB00010 */  lw         $s0, 0x10($sp)
/* 3E0F8 80046DC8 03E00008 */  jr         $ra
/* 3E0FC 80046DCC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80046DD0
/* 3E100 80046DD0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3E104 80046DD4 3C048009 */  lui        $a0, %hi(D_80089860)
/* 3E108 80046DD8 24849860 */  addiu      $a0, $a0, %lo(D_80089860)
/* 3E10C 80046DDC AFBF0010 */  sw         $ra, 0x10($sp)
/* 3E110 80046DE0 0C0116EC */  jal        func_80045BB0
/* 3E114 80046DE4 24050002 */   addiu     $a1, $zero, 0x2
/* 3E118 80046DE8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 3E11C 80046DEC 03E00008 */  jr         $ra
/* 3E120 80046DF0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80046DF4
/* 3E124 80046DF4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3E128 80046DF8 3C048009 */  lui        $a0, %hi(D_80089860)
/* 3E12C 80046DFC AFBF0010 */  sw         $ra, 0x10($sp)
/* 3E130 80046E00 0C011690 */  jal        func_80045A40
/* 3E134 80046E04 24849860 */   addiu     $a0, $a0, %lo(D_80089860)
/* 3E138 80046E08 8FBF0010 */  lw         $ra, 0x10($sp)
/* 3E13C 80046E0C 03E00008 */  jr         $ra
/* 3E140 80046E10 27BD0018 */   addiu     $sp, $sp, 0x18
