.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osSpTaskLoad
/* 1EB90 8001DF90 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1EB94 8001DF94 AFB00010 */  sw         $s0, 0x10($sp)
/* 1EB98 8001DF98 00808021 */  addu       $s0, $a0, $zero
/* 1EB9C 8001DF9C AFB10014 */  sw         $s1, 0x14($sp)
/* 1EBA0 8001DFA0 3C118004 */  lui        $s1, %hi(D_8003A7C0)
/* 1EBA4 8001DFA4 2631A7C0 */  addiu      $s1, $s1, %lo(D_8003A7C0)
/* 1EBA8 8001DFA8 02202821 */  addu       $a1, $s1, $zero
/* 1EBAC 8001DFAC AFBF0018 */  sw         $ra, 0x18($sp)
/* 1EBB0 8001DFB0 0C007874 */  jal        func_8001E1D0
/* 1EBB4 8001DFB4 24060040 */   addiu     $a2, $zero, 0x40
/* 1EBB8 8001DFB8 3C048004 */  lui        $a0, %hi(D_8003A7D0)
/* 1EBBC 8001DFBC 8C84A7D0 */  lw         $a0, %lo(D_8003A7D0)($a0)
/* 1EBC0 8001DFC0 10800005 */  beqz       $a0, .L8001DFD8
/* 1EBC4 8001DFC4 00000000 */   nop
/* 1EBC8 8001DFC8 0C006BB0 */  jal        osVirtualToPhysical
/* 1EBCC 8001DFCC 00000000 */   nop
/* 1EBD0 8001DFD0 3C018004 */  lui        $at, %hi(D_8003A7D0)
/* 1EBD4 8001DFD4 AC22A7D0 */  sw         $v0, %lo(D_8003A7D0)($at)
.L8001DFD8:
/* 1EBD8 8001DFD8 3C048004 */  lui        $a0, %hi(D_8003A7D8)
/* 1EBDC 8001DFDC 8C84A7D8 */  lw         $a0, %lo(D_8003A7D8)($a0)
/* 1EBE0 8001DFE0 10800005 */  beqz       $a0, .L8001DFF8
/* 1EBE4 8001DFE4 00000000 */   nop
/* 1EBE8 8001DFE8 0C006BB0 */  jal        osVirtualToPhysical
/* 1EBEC 8001DFEC 00000000 */   nop
/* 1EBF0 8001DFF0 3C018004 */  lui        $at, %hi(D_8003A7D8)
/* 1EBF4 8001DFF4 AC22A7D8 */  sw         $v0, %lo(D_8003A7D8)($at)
.L8001DFF8:
/* 1EBF8 8001DFF8 3C048004 */  lui        $a0, %hi(D_8003A7E0)
/* 1EBFC 8001DFFC 8C84A7E0 */  lw         $a0, %lo(D_8003A7E0)($a0)
/* 1EC00 8001E000 10800005 */  beqz       $a0, .L8001E018
/* 1EC04 8001E004 00000000 */   nop
/* 1EC08 8001E008 0C006BB0 */  jal        osVirtualToPhysical
/* 1EC0C 8001E00C 00000000 */   nop
/* 1EC10 8001E010 3C018004 */  lui        $at, %hi(D_8003A7E0)
/* 1EC14 8001E014 AC22A7E0 */  sw         $v0, %lo(D_8003A7E0)($at)
.L8001E018:
/* 1EC18 8001E018 3C048004 */  lui        $a0, %hi(D_8003A7E8)
/* 1EC1C 8001E01C 8C84A7E8 */  lw         $a0, %lo(D_8003A7E8)($a0)
/* 1EC20 8001E020 10800005 */  beqz       $a0, .L8001E038
/* 1EC24 8001E024 00000000 */   nop
/* 1EC28 8001E028 0C006BB0 */  jal        osVirtualToPhysical
/* 1EC2C 8001E02C 00000000 */   nop
/* 1EC30 8001E030 3C018004 */  lui        $at, %hi(D_8003A7E8)
/* 1EC34 8001E034 AC22A7E8 */  sw         $v0, %lo(D_8003A7E8)($at)
.L8001E038:
/* 1EC38 8001E038 3C048004 */  lui        $a0, %hi(D_8003A7EC)
/* 1EC3C 8001E03C 8C84A7EC */  lw         $a0, %lo(D_8003A7EC)($a0)
/* 1EC40 8001E040 10800005 */  beqz       $a0, .L8001E058
/* 1EC44 8001E044 00000000 */   nop
/* 1EC48 8001E048 0C006BB0 */  jal        osVirtualToPhysical
/* 1EC4C 8001E04C 00000000 */   nop
/* 1EC50 8001E050 3C018004 */  lui        $at, %hi(D_8003A7EC)
/* 1EC54 8001E054 AC22A7EC */  sw         $v0, %lo(D_8003A7EC)($at)
.L8001E058:
/* 1EC58 8001E058 3C048004 */  lui        $a0, %hi(D_8003A7F0)
/* 1EC5C 8001E05C 8C84A7F0 */  lw         $a0, %lo(D_8003A7F0)($a0)
/* 1EC60 8001E060 10800005 */  beqz       $a0, .L8001E078
/* 1EC64 8001E064 00000000 */   nop
/* 1EC68 8001E068 0C006BB0 */  jal        osVirtualToPhysical
/* 1EC6C 8001E06C 00000000 */   nop
/* 1EC70 8001E070 3C018004 */  lui        $at, %hi(D_8003A7F0)
/* 1EC74 8001E074 AC22A7F0 */  sw         $v0, %lo(D_8003A7F0)($at)
.L8001E078:
/* 1EC78 8001E078 3C048004 */  lui        $a0, %hi(D_8003A7F8)
/* 1EC7C 8001E07C 8C84A7F8 */  lw         $a0, %lo(D_8003A7F8)($a0)
/* 1EC80 8001E080 10800005 */  beqz       $a0, .L8001E098
/* 1EC84 8001E084 00000000 */   nop
/* 1EC88 8001E088 0C006BB0 */  jal        osVirtualToPhysical
/* 1EC8C 8001E08C 00000000 */   nop
/* 1EC90 8001E090 3C018004 */  lui        $at, %hi(D_8003A7F8)
/* 1EC94 8001E094 AC22A7F8 */  sw         $v0, %lo(D_8003A7F8)($at)
.L8001E098:
/* 1EC98 8001E098 3C028004 */  lui        $v0, %hi(D_8003A7C4)
/* 1EC9C 8001E09C 8C42A7C4 */  lw         $v0, %lo(D_8003A7C4)($v0)
/* 1ECA0 8001E0A0 30420001 */  andi       $v0, $v0, 0x1
/* 1ECA4 8001E0A4 10400019 */  beqz       $v0, .L8001E10C
/* 1ECA8 8001E0A8 02202021 */   addu      $a0, $s1, $zero
/* 1ECAC 8001E0AC 3C028004 */  lui        $v0, %hi(D_8003A7F8)
/* 1ECB0 8001E0B0 8C42A7F8 */  lw         $v0, %lo(D_8003A7F8)($v0)
/* 1ECB4 8001E0B4 3C038004 */  lui        $v1, %hi(D_8003A7FC)
/* 1ECB8 8001E0B8 8C63A7FC */  lw         $v1, %lo(D_8003A7FC)($v1)
/* 1ECBC 8001E0BC 3C018004 */  lui        $at, %hi(D_8003A7D8)
/* 1ECC0 8001E0C0 AC22A7D8 */  sw         $v0, %lo(D_8003A7D8)($at)
/* 1ECC4 8001E0C4 3C018004 */  lui        $at, %hi(D_8003A7DC)
/* 1ECC8 8001E0C8 AC23A7DC */  sw         $v1, %lo(D_8003A7DC)($at)
/* 1ECCC 8001E0CC 8E020004 */  lw         $v0, 0x4($s0)
/* 1ECD0 8001E0D0 2403FFFE */  addiu      $v1, $zero, -0x2
/* 1ECD4 8001E0D4 00431024 */  and        $v0, $v0, $v1
/* 1ECD8 8001E0D8 AE020004 */  sw         $v0, 0x4($s0)
/* 1ECDC 8001E0DC 3C028004 */  lui        $v0, %hi(D_8003A7C4)
/* 1ECE0 8001E0E0 8C42A7C4 */  lw         $v0, %lo(D_8003A7C4)($v0)
/* 1ECE4 8001E0E4 30420004 */  andi       $v0, $v0, 0x4
/* 1ECE8 8001E0E8 10400008 */  beqz       $v0, .L8001E10C
/* 1ECEC 8001E0EC 3C03A000 */   lui       $v1, %hi(D_A0000000)
/* 1ECF0 8001E0F0 8E020038 */  lw         $v0, 0x38($s0)
/* 1ECF4 8001E0F4 24420BFC */  addiu      $v0, $v0, 0xBFC
/* 1ECF8 8001E0F8 00431025 */  or         $v0, $v0, $v1
/* 1ECFC 8001E0FC 8C420000 */  lw         $v0, %lo(D_A0000000)($v0)
/* 1ED00 8001E100 3C018004 */  lui        $at, %hi(D_8003A7D0)
/* 1ED04 8001E104 AC22A7D0 */  sw         $v0, %lo(D_8003A7D0)($at)
/* 1ED08 8001E108 02202021 */  addu       $a0, $s1, $zero
.L8001E10C:
/* 1ED0C 8001E10C 0C006A20 */  jal        osWritebackDCache
/* 1ED10 8001E110 24050040 */   addiu     $a1, $zero, 0x40
/* 1ED14 8001E114 0C007944 */  jal        func_8001E510
/* 1ED18 8001E118 24042B00 */   addiu     $a0, $zero, 0x2B00
/* 1ED1C 8001E11C 2410FFFF */  addiu      $s0, $zero, -0x1
/* 1ED20 8001E120 3C040400 */  lui        $a0, (0x4001000 >> 16)
.L8001E124:
/* 1ED24 8001E124 0C007948 */  jal        func_8001E520
/* 1ED28 8001E128 34841000 */   ori       $a0, $a0, (0x4001000 & 0xFFFF)
/* 1ED2C 8001E12C 1050FFFD */  beq        $v0, $s0, .L8001E124
/* 1ED30 8001E130 3C040400 */   lui       $a0, (0x4001000 >> 16)
/* 1ED34 8001E134 2410FFFF */  addiu      $s0, $zero, -0x1
/* 1ED38 8001E138 24040001 */  addiu      $a0, $zero, 0x1
.L8001E13C:
/* 1ED3C 8001E13C 3C050400 */  lui        $a1, (0x4000FC0 >> 16)
/* 1ED40 8001E140 34A50FC0 */  ori        $a1, $a1, (0x4000FC0 & 0xFFFF)
/* 1ED44 8001E144 02203021 */  addu       $a2, $s1, $zero
/* 1ED48 8001E148 0C007954 */  jal        func_8001E550
/* 1ED4C 8001E14C 24070040 */   addiu     $a3, $zero, 0x40
/* 1ED50 8001E150 1050FFFA */  beq        $v0, $s0, .L8001E13C
/* 1ED54 8001E154 24040001 */   addiu     $a0, $zero, 0x1
.L8001E158:
/* 1ED58 8001E158 0C00793C */  jal        func_8001E4F0
/* 1ED5C 8001E15C 00000000 */   nop
/* 1ED60 8001E160 1440FFFD */  bnez       $v0, .L8001E158
/* 1ED64 8001E164 24040001 */   addiu     $a0, $zero, 0x1
/* 1ED68 8001E168 2410FFFF */  addiu      $s0, $zero, -0x1
.L8001E16C:
/* 1ED6C 8001E16C 8E260008 */  lw         $a2, 0x8($s1)
/* 1ED70 8001E170 8E27000C */  lw         $a3, 0xC($s1)
/* 1ED74 8001E174 3C050400 */  lui        $a1, (0x4001000 >> 16)
/* 1ED78 8001E178 0C007954 */  jal        func_8001E550
/* 1ED7C 8001E17C 34A51000 */   ori       $a1, $a1, (0x4001000 & 0xFFFF)
/* 1ED80 8001E180 1050FFFA */  beq        $v0, $s0, .L8001E16C
/* 1ED84 8001E184 24040001 */   addiu     $a0, $zero, 0x1
/* 1ED88 8001E188 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1ED8C 8001E18C 8FB10014 */  lw         $s1, 0x14($sp)
/* 1ED90 8001E190 8FB00010 */  lw         $s0, 0x10($sp)
/* 1ED94 8001E194 03E00008 */  jr         $ra
/* 1ED98 8001E198 27BD0020 */   addiu     $sp, $sp, 0x20

glabel osSpTaskStartGo
/* 1ED9C 8001E19C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1EDA0 8001E1A0 AFBF0010 */  sw         $ra, 0x10($sp)
.L8001E1A4:
/* 1EDA4 8001E1A4 0C00793C */  jal        func_8001E4F0
/* 1EDA8 8001E1A8 00000000 */   nop
/* 1EDAC 8001E1AC 1440FFFD */  bnez       $v0, .L8001E1A4
/* 1EDB0 8001E1B0 00000000 */   nop
/* 1EDB4 8001E1B4 0C007944 */  jal        func_8001E510
/* 1EDB8 8001E1B8 24040125 */   addiu     $a0, $zero, 0x125
/* 1EDBC 8001E1BC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1EDC0 8001E1C0 03E00008 */  jr         $ra
/* 1EDC4 8001E1C4 27BD0018 */   addiu     $sp, $sp, 0x18
/* 1EDC8 8001E1C8 00000000 */  nop
/* 1EDCC 8001E1CC 00000000 */  nop
