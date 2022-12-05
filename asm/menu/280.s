.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800EDFE0
/* 10C0D0 800EDFE0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 10C0D4 800EDFE4 AFB20018 */  sw         $s2, 0x18($sp)
/* 10C0D8 800EDFE8 00809021 */  addu       $s2, $a0, $zero
/* 10C0DC 800EDFEC 26440208 */  addiu      $a0, $s2, 0x208
/* 10C0E0 800EDFF0 AFBF0020 */  sw         $ra, 0x20($sp)
/* 10C0E4 800EDFF4 AFB3001C */  sw         $s3, 0x1C($sp)
/* 10C0E8 800EDFF8 AFB10014 */  sw         $s1, 0x14($sp)
/* 10C0EC 800EDFFC 0C002A20 */  jal        func_8000A880
/* 10C0F0 800EE000 AFB00010 */   sw        $s0, 0x10($sp)
/* 10C0F4 800EE004 26510224 */  addiu      $s1, $s2, 0x224
/* 10C0F8 800EE008 24100002 */  addiu      $s0, $zero, 0x2
/* 10C0FC 800EE00C 2413FFFF */  addiu      $s3, $zero, -0x1
.Lmenu_800EE010:
/* 10C100 800EE010 0C001E8C */  jal        func_80007A30
/* 10C104 800EE014 02202021 */   addu      $a0, $s1, $zero
/* 10C108 800EE018 2610FFFF */  addiu      $s0, $s0, -0x1
/* 10C10C 800EE01C 1613FFFC */  bne        $s0, $s3, .Lmenu_800EE010
/* 10C110 800EE020 26310024 */   addiu     $s1, $s1, 0x24
/* 10C114 800EE024 02401021 */  addu       $v0, $s2, $zero
/* 10C118 800EE028 AC400000 */  sw         $zero, 0x0($v0)
/* 10C11C 800EE02C AC400204 */  sw         $zero, 0x204($v0)
/* 10C120 800EE030 8FBF0020 */  lw         $ra, 0x20($sp)
/* 10C124 800EE034 8FB3001C */  lw         $s3, 0x1C($sp)
/* 10C128 800EE038 8FB20018 */  lw         $s2, 0x18($sp)
/* 10C12C 800EE03C 8FB10014 */  lw         $s1, 0x14($sp)
/* 10C130 800EE040 8FB00010 */  lw         $s0, 0x10($sp)
/* 10C134 800EE044 03E00008 */  jr         $ra
/* 10C138 800EE048 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800EE04C
/* 10C13C 800EE04C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 10C140 800EE050 AFB20018 */  sw         $s2, 0x18($sp)
/* 10C144 800EE054 00809021 */  addu       $s2, $a0, $zero
/* 10C148 800EE058 AFB3001C */  sw         $s3, 0x1C($sp)
/* 10C14C 800EE05C 00A09821 */  addu       $s3, $a1, $zero
/* 10C150 800EE060 AFBF0020 */  sw         $ra, 0x20($sp)
/* 10C154 800EE064 AFB10014 */  sw         $s1, 0x14($sp)
/* 10C158 800EE068 0C03B8AF */  jal        func_menu_800EE2BC
/* 10C15C 800EE06C AFB00010 */   sw        $s0, 0x10($sp)
/* 10C160 800EE070 26420224 */  addiu      $v0, $s2, 0x224
/* 10C164 800EE074 1040000C */  beqz       $v0, .Lmenu_800EE0A8
/* 10C168 800EE078 26500290 */   addiu     $s0, $s2, 0x290
/* 10C16C 800EE07C 1050000A */  beq        $v0, $s0, .Lmenu_800EE0A8
/* 10C170 800EE080 00408821 */   addu      $s1, $v0, $zero
/* 10C174 800EE084 2610FFDC */  addiu      $s0, $s0, -0x24
.Lmenu_800EE088:
/* 10C178 800EE088 8E020000 */  lw         $v0, 0x0($s0)
/* 10C17C 800EE08C 24050002 */  addiu      $a1, $zero, 0x2
/* 10C180 800EE090 84440020 */  lh         $a0, 0x20($v0)
/* 10C184 800EE094 8C420024 */  lw         $v0, 0x24($v0)
/* 10C188 800EE098 0040F809 */  jalr       $v0
/* 10C18C 800EE09C 02042021 */   addu      $a0, $s0, $a0
/* 10C190 800EE0A0 1630FFF9 */  bne        $s1, $s0, .Lmenu_800EE088
/* 10C194 800EE0A4 2610FFDC */   addiu     $s0, $s0, -0x24
.Lmenu_800EE0A8:
/* 10C198 800EE0A8 26440208 */  addiu      $a0, $s2, 0x208
/* 10C19C 800EE0AC 0C002A2D */  jal        func_8000A8B4
/* 10C1A0 800EE0B0 24050002 */   addiu     $a1, $zero, 0x2
/* 10C1A4 800EE0B4 32620001 */  andi       $v0, $s3, 0x1
/* 10C1A8 800EE0B8 10400003 */  beqz       $v0, .Lmenu_800EE0C8
/* 10C1AC 800EE0BC 00000000 */   nop
/* 10C1B0 800EE0C0 0C01FB5C */  jal        func_8007ED70
/* 10C1B4 800EE0C4 02402021 */   addu      $a0, $s2, $zero
.Lmenu_800EE0C8:
/* 10C1B8 800EE0C8 8FBF0020 */  lw         $ra, 0x20($sp)
/* 10C1BC 800EE0CC 8FB3001C */  lw         $s3, 0x1C($sp)
/* 10C1C0 800EE0D0 8FB20018 */  lw         $s2, 0x18($sp)
/* 10C1C4 800EE0D4 8FB10014 */  lw         $s1, 0x14($sp)
/* 10C1C8 800EE0D8 8FB00010 */  lw         $s0, 0x10($sp)
/* 10C1CC 800EE0DC 03E00008 */  jr         $ra
/* 10C1D0 800EE0E0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800EE0E4
/* 10C1D4 800EE0E4 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 10C1D8 800EE0E8 AFB30024 */  sw         $s3, 0x24($sp)
/* 10C1DC 800EE0EC 00809821 */  addu       $s3, $a0, $zero
/* 10C1E0 800EE0F0 AFB00018 */  sw         $s0, 0x18($sp)
/* 10C1E4 800EE0F4 00A08021 */  addu       $s0, $a1, $zero
/* 10C1E8 800EE0F8 AFBF0034 */  sw         $ra, 0x34($sp)
/* 10C1EC 800EE0FC AFB60030 */  sw         $s6, 0x30($sp)
/* 10C1F0 800EE100 AFB5002C */  sw         $s5, 0x2C($sp)
/* 10C1F4 800EE104 AFB40028 */  sw         $s4, 0x28($sp)
/* 10C1F8 800EE108 AFB20020 */  sw         $s2, 0x20($sp)
/* 10C1FC 800EE10C AFB1001C */  sw         $s1, 0x1C($sp)
/* 10C200 800EE110 8E620000 */  lw         $v0, 0x0($s3)
/* 10C204 800EE114 10400003 */  beqz       $v0, .Lmenu_800EE124
/* 10C208 800EE118 00C0A821 */   addu      $s5, $a2, $zero
/* 10C20C 800EE11C 0C03B8AF */  jal        func_menu_800EE2BC
/* 10C210 800EE120 00000000 */   nop
.Lmenu_800EE124:
/* 10C214 800EE124 26720208 */  addiu      $s2, $s3, 0x208
/* 10C218 800EE128 02402021 */  addu       $a0, $s2, $zero
/* 10C21C 800EE12C 24050020 */  addiu      $a1, $zero, 0x20
/* 10C220 800EE130 0C002A4D */  jal        func_8000A934
/* 10C224 800EE134 AE700000 */   sw        $s0, 0x0($s3)
/* 10C228 800EE138 8E620000 */  lw         $v0, 0x0($s3)
/* 10C22C 800EE13C AE750290 */  sw         $s5, 0x290($s3)
/* 10C230 800EE140 8C500038 */  lw         $s0, 0x38($v0)
/* 10C234 800EE144 1200000A */  beqz       $s0, .Lmenu_800EE170
/* 10C238 800EE148 240500FA */   addiu     $a1, $zero, 0xFA
/* 10C23C 800EE14C 02002021 */  addu       $a0, $s0, $zero
/* 10C240 800EE150 240601F4 */  addiu      $a2, $zero, 0x1F4
/* 10C244 800EE154 0C002CFE */  jal        func_8000B3F8
/* 10C248 800EE158 AE12008C */   sw        $s2, 0x8C($s0)
/* 10C24C 800EE15C 8E020098 */  lw         $v0, 0x98($s0)
/* 10C250 800EE160 844400A8 */  lh         $a0, 0xA8($v0)
/* 10C254 800EE164 8C4200AC */  lw         $v0, 0xAC($v0)
/* 10C258 800EE168 0040F809 */  jalr       $v0
/* 10C25C 800EE16C 02042021 */   addu      $a0, $s0, $a0
.Lmenu_800EE170:
/* 10C260 800EE170 8E620000 */  lw         $v0, 0x0($s3)
/* 10C264 800EE174 8C50003C */  lw         $s0, 0x3C($v0)
/* 10C268 800EE178 12000010 */  beqz       $s0, .Lmenu_800EE1BC
/* 10C26C 800EE17C AE700204 */   sw        $s0, 0x204($s3)
/* 10C270 800EE180 02002021 */  addu       $a0, $s0, $zero
/* 10C274 800EE184 240500FA */  addiu      $a1, $zero, 0xFA
/* 10C278 800EE188 240601F4 */  addiu      $a2, $zero, 0x1F4
/* 10C27C 800EE18C 0C002CFE */  jal        func_8000B3F8
/* 10C280 800EE190 AE12008C */   sw        $s2, 0x8C($s0)
/* 10C284 800EE194 8E020098 */  lw         $v0, 0x98($s0)
/* 10C288 800EE198 84440088 */  lh         $a0, 0x88($v0)
/* 10C28C 800EE19C 8C42008C */  lw         $v0, 0x8C($v0)
/* 10C290 800EE1A0 0040F809 */  jalr       $v0
/* 10C294 800EE1A4 02042021 */   addu      $a0, $s0, $a0
/* 10C298 800EE1A8 8E020098 */  lw         $v0, 0x98($s0)
/* 10C29C 800EE1AC 844400A8 */  lh         $a0, 0xA8($v0)
/* 10C2A0 800EE1B0 8C4200AC */  lw         $v0, 0xAC($v0)
/* 10C2A4 800EE1B4 0040F809 */  jalr       $v0
/* 10C2A8 800EE1B8 02042021 */   addu      $a0, $s0, $a0
.Lmenu_800EE1BC:
/* 10C2AC 800EE1BC 00008821 */  addu       $s1, $zero, $zero
/* 10C2B0 800EE1C0 0240A021 */  addu       $s4, $s2, $zero
/* 10C2B4 800EE1C4 24160001 */  addiu      $s6, $zero, 0x1
/* 10C2B8 800EE1C8 24120224 */  addiu      $s2, $zero, 0x224
.Lmenu_800EE1CC:
/* 10C2BC 800EE1CC 8E630000 */  lw         $v1, 0x0($s3)
/* 10C2C0 800EE1D0 8C620034 */  lw         $v0, 0x34($v1)
/* 10C2C4 800EE1D4 0222102A */  slt        $v0, $s1, $v0
/* 10C2C8 800EE1D8 1040002C */  beqz       $v0, .Lmenu_800EE28C
/* 10C2CC 800EE1DC 00111080 */   sll       $v0, $s1, 2
/* 10C2D0 800EE1E0 00621021 */  addu       $v0, $v1, $v0
/* 10C2D4 800EE1E4 8C500040 */  lw         $s0, 0x40($v0)
/* 10C2D8 800EE1E8 52000026 */  beql       $s0, $zero, .Lmenu_800EE284
/* 10C2DC 800EE1EC 26520024 */   addiu     $s2, $s2, 0x24
/* 10C2E0 800EE1F0 8E020098 */  lw         $v0, 0x98($s0)
/* 10C2E4 800EE1F4 AE14008C */  sw         $s4, 0x8C($s0)
/* 10C2E8 800EE1F8 AE160020 */  sw         $s6, 0x20($s0)
/* 10C2EC 800EE1FC 844400A8 */  lh         $a0, 0xA8($v0)
/* 10C2F0 800EE200 8C4200AC */  lw         $v0, 0xAC($v0)
/* 10C2F4 800EE204 0040F809 */  jalr       $v0
/* 10C2F8 800EE208 02042021 */   addu      $a0, $s0, $a0
/* 10C2FC 800EE20C 02002021 */  addu       $a0, $s0, $zero
/* 10C300 800EE210 240500FA */  addiu      $a1, $zero, 0xFA
/* 10C304 800EE214 0C002CFE */  jal        func_8000B3F8
/* 10C308 800EE218 240601F4 */   addiu     $a2, $zero, 0x1F4
/* 10C30C 800EE21C 8E020098 */  lw         $v0, 0x98($s0)
/* 10C310 800EE220 2405003C */  addiu      $a1, $zero, 0x3C
/* 10C314 800EE224 AE150090 */  sw         $s5, 0x90($s0)
/* 10C318 800EE228 84440058 */  lh         $a0, 0x58($v0)
/* 10C31C 800EE22C 8C42005C */  lw         $v0, 0x5C($v0)
/* 10C320 800EE230 0040F809 */  jalr       $v0
/* 10C324 800EE234 02042021 */   addu      $a0, $s0, $a0
/* 10C328 800EE238 2E220003 */  sltiu      $v0, $s1, 0x3
/* 10C32C 800EE23C 10400010 */  beqz       $v0, .Lmenu_800EE280
/* 10C330 800EE240 02002021 */   addu      $a0, $s0, $zero
/* 10C334 800EE244 02728021 */  addu       $s0, $s3, $s2
/* 10C338 800EE248 0C002EC4 */  jal        func_8000BB10
/* 10C33C 800EE24C 02002821 */   addu      $a1, $s0, $zero
/* 10C340 800EE250 3C074000 */  lui        $a3, (0x40000002 >> 16)
/* 10C344 800EE254 34E70002 */  ori        $a3, $a3, (0x40000002 & 0xFFFF)
/* 10C348 800EE258 3C034000 */  lui        $v1, (0x40000001 >> 16)
/* 10C34C 800EE25C 34630001 */  ori        $v1, $v1, (0x40000001 & 0xFFFF)
/* 10C350 800EE260 02002021 */  addu       $a0, $s0, $zero
/* 10C354 800EE264 00402821 */  addu       $a1, $v0, $zero
/* 10C358 800EE268 3C064000 */  lui        $a2, (0x40000003 >> 16)
/* 10C35C 800EE26C 34C60003 */  ori        $a2, $a2, (0x40000003 & 0xFFFF)
/* 10C360 800EE270 AFA70010 */  sw         $a3, 0x10($sp)
/* 10C364 800EE274 3C074000 */  lui        $a3, (0x40000000 >> 16)
/* 10C368 800EE278 0C001EB9 */  jal        func_80007AE4
/* 10C36C 800EE27C AFA30014 */   sw        $v1, 0x14($sp)
.Lmenu_800EE280:
/* 10C370 800EE280 26520024 */  addiu      $s2, $s2, 0x24
.Lmenu_800EE284:
/* 10C374 800EE284 0803B873 */  j          .Lmenu_800EE1CC
/* 10C378 800EE288 26310001 */   addiu     $s1, $s1, 0x1
.Lmenu_800EE28C:
/* 10C37C 800EE28C 0C03B90A */  jal        func_menu_800EE428
/* 10C380 800EE290 02602021 */   addu      $a0, $s3, $zero
/* 10C384 800EE294 8FBF0034 */  lw         $ra, 0x34($sp)
/* 10C388 800EE298 8FB60030 */  lw         $s6, 0x30($sp)
/* 10C38C 800EE29C 8FB5002C */  lw         $s5, 0x2C($sp)
/* 10C390 800EE2A0 8FB40028 */  lw         $s4, 0x28($sp)
/* 10C394 800EE2A4 8FB30024 */  lw         $s3, 0x24($sp)
/* 10C398 800EE2A8 8FB20020 */  lw         $s2, 0x20($sp)
/* 10C39C 800EE2AC 8FB1001C */  lw         $s1, 0x1C($sp)
/* 10C3A0 800EE2B0 8FB00018 */  lw         $s0, 0x18($sp)
/* 10C3A4 800EE2B4 03E00008 */  jr         $ra
/* 10C3A8 800EE2B8 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800EE2BC
/* 10C3AC 800EE2BC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 10C3B0 800EE2C0 AFB3001C */  sw         $s3, 0x1C($sp)
/* 10C3B4 800EE2C4 00809821 */  addu       $s3, $a0, $zero
/* 10C3B8 800EE2C8 AFBF0020 */  sw         $ra, 0x20($sp)
/* 10C3BC 800EE2CC AFB20018 */  sw         $s2, 0x18($sp)
/* 10C3C0 800EE2D0 AFB10014 */  sw         $s1, 0x14($sp)
/* 10C3C4 800EE2D4 AFB00010 */  sw         $s0, 0x10($sp)
/* 10C3C8 800EE2D8 8E640000 */  lw         $a0, 0x0($s3)
/* 10C3CC 800EE2DC 10800047 */  beqz       $a0, .Lmenu_800EE3FC
/* 10C3D0 800EE2E0 00000000 */   nop
/* 10C3D4 800EE2E4 8C900038 */  lw         $s0, 0x38($a0)
/* 10C3D8 800EE2E8 1200000C */  beqz       $s0, .Lmenu_800EE31C
/* 10C3DC 800EE2EC 00000000 */   nop
/* 10C3E0 800EE2F0 8E020098 */  lw         $v0, 0x98($s0)
/* 10C3E4 800EE2F4 AE00008C */  sw         $zero, 0x8C($s0)
/* 10C3E8 800EE2F8 844400B0 */  lh         $a0, 0xB0($v0)
/* 10C3EC 800EE2FC 8C4200B4 */  lw         $v0, 0xB4($v0)
/* 10C3F0 800EE300 0040F809 */  jalr       $v0
/* 10C3F4 800EE304 02042021 */   addu      $a0, $s0, $a0
/* 10C3F8 800EE308 02002021 */  addu       $a0, $s0, $zero
/* 10C3FC 800EE30C 00002821 */  addu       $a1, $zero, $zero
/* 10C400 800EE310 00A03021 */  addu       $a2, $a1, $zero
/* 10C404 800EE314 0C002D1C */  jal        func_8000B470
/* 10C408 800EE318 AC80001C */   sw        $zero, 0x1C($a0)
.Lmenu_800EE31C:
/* 10C40C 800EE31C 8E620000 */  lw         $v0, 0x0($s3)
/* 10C410 800EE320 8C50003C */  lw         $s0, 0x3C($v0)
/* 10C414 800EE324 1200000E */  beqz       $s0, .Lmenu_800EE360
/* 10C418 800EE328 00008821 */   addu      $s1, $zero, $zero
/* 10C41C 800EE32C 8E020098 */  lw         $v0, 0x98($s0)
/* 10C420 800EE330 AE00008C */  sw         $zero, 0x8C($s0)
/* 10C424 800EE334 844400B0 */  lh         $a0, 0xB0($v0)
/* 10C428 800EE338 8C4200B4 */  lw         $v0, 0xB4($v0)
/* 10C42C 800EE33C 0040F809 */  jalr       $v0
/* 10C430 800EE340 02042021 */   addu      $a0, $s0, $a0
/* 10C434 800EE344 02002021 */  addu       $a0, $s0, $zero
/* 10C438 800EE348 00002821 */  addu       $a1, $zero, $zero
/* 10C43C 800EE34C 0C002D1C */  jal        func_8000B470
/* 10C440 800EE350 00A03021 */   addu      $a2, $a1, $zero
/* 10C444 800EE354 AE00001C */  sw         $zero, 0x1C($s0)
/* 10C448 800EE358 AE600204 */  sw         $zero, 0x204($s3)
/* 10C44C 800EE35C 00008821 */  addu       $s1, $zero, $zero
.Lmenu_800EE360:
/* 10C450 800EE360 24120224 */  addiu      $s2, $zero, 0x224
.Lmenu_800EE364:
/* 10C454 800EE364 8E630000 */  lw         $v1, 0x0($s3)
/* 10C458 800EE368 8C620034 */  lw         $v0, 0x34($v1)
/* 10C45C 800EE36C 0222102A */  slt        $v0, $s1, $v0
/* 10C460 800EE370 1040001E */  beqz       $v0, .Lmenu_800EE3EC
/* 10C464 800EE374 00111080 */   sll       $v0, $s1, 2
/* 10C468 800EE378 00621021 */  addu       $v0, $v1, $v0
/* 10C46C 800EE37C 8C500040 */  lw         $s0, 0x40($v0)
/* 10C470 800EE380 52000018 */  beql       $s0, $zero, .Lmenu_800EE3E4
/* 10C474 800EE384 26520024 */   addiu     $s2, $s2, 0x24
/* 10C478 800EE388 8E020098 */  lw         $v0, 0x98($s0)
/* 10C47C 800EE38C AE00008C */  sw         $zero, 0x8C($s0)
/* 10C480 800EE390 844400B0 */  lh         $a0, 0xB0($v0)
/* 10C484 800EE394 8C4200B4 */  lw         $v0, 0xB4($v0)
/* 10C488 800EE398 0040F809 */  jalr       $v0
/* 10C48C 800EE39C 02042021 */   addu      $a0, $s0, $a0
/* 10C490 800EE3A0 02002021 */  addu       $a0, $s0, $zero
/* 10C494 800EE3A4 00002821 */  addu       $a1, $zero, $zero
/* 10C498 800EE3A8 0C002D1C */  jal        func_8000B470
/* 10C49C 800EE3AC 00A03021 */   addu      $a2, $a1, $zero
/* 10C4A0 800EE3B0 8E020098 */  lw         $v0, 0x98($s0)
/* 10C4A4 800EE3B4 2405000B */  addiu      $a1, $zero, 0xB
/* 10C4A8 800EE3B8 AE00001C */  sw         $zero, 0x1C($s0)
/* 10C4AC 800EE3BC 84440058 */  lh         $a0, 0x58($v0)
/* 10C4B0 800EE3C0 8C42005C */  lw         $v0, 0x5C($v0)
/* 10C4B4 800EE3C4 0040F809 */  jalr       $v0
/* 10C4B8 800EE3C8 02042021 */   addu      $a0, $s0, $a0
/* 10C4BC 800EE3CC 2E220003 */  sltiu      $v0, $s1, 0x3
/* 10C4C0 800EE3D0 10400003 */  beqz       $v0, .Lmenu_800EE3E0
/* 10C4C4 800EE3D4 02002021 */   addu      $a0, $s0, $zero
/* 10C4C8 800EE3D8 0C002ECB */  jal        func_8000BB2C
/* 10C4CC 800EE3DC 02722821 */   addu      $a1, $s3, $s2
.Lmenu_800EE3E0:
/* 10C4D0 800EE3E0 26520024 */  addiu      $s2, $s2, 0x24
.Lmenu_800EE3E4:
/* 10C4D4 800EE3E4 0803B8D9 */  j          .Lmenu_800EE364
/* 10C4D8 800EE3E8 26310001 */   addiu     $s1, $s1, 0x1
.Lmenu_800EE3EC:
/* 10C4DC 800EE3EC 0C002A7A */  jal        func_8000A9E8
/* 10C4E0 800EE3F0 26640208 */   addiu     $a0, $s3, 0x208
/* 10C4E4 800EE3F4 AE600000 */  sw         $zero, 0x0($s3)
/* 10C4E8 800EE3F8 AE600204 */  sw         $zero, 0x204($s3)
.Lmenu_800EE3FC:
/* 10C4EC 800EE3FC 8FBF0020 */  lw         $ra, 0x20($sp)
/* 10C4F0 800EE400 8FB3001C */  lw         $s3, 0x1C($sp)
/* 10C4F4 800EE404 8FB20018 */  lw         $s2, 0x18($sp)
/* 10C4F8 800EE408 8FB10014 */  lw         $s1, 0x14($sp)
/* 10C4FC 800EE40C 8FB00010 */  lw         $s0, 0x10($sp)
/* 10C500 800EE410 03E00008 */  jr         $ra
/* 10C504 800EE414 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800EE418
/* 10C508 800EE418 8C820000 */  lw         $v0, 0x0($a0)
/* 10C50C 800EE41C 8C420038 */  lw         $v0, 0x38($v0)
/* 10C510 800EE420 03E00008 */  jr         $ra
/* 10C514 800EE424 0002102B */   sltu      $v0, $zero, $v0

glabel func_menu_800EE428
/* 10C518 800EE428 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 10C51C 800EE42C AFB3001C */  sw         $s3, 0x1C($sp)
/* 10C520 800EE430 00809821 */  addu       $s3, $a0, $zero
/* 10C524 800EE434 AFB40020 */  sw         $s4, 0x20($sp)
/* 10C528 800EE438 0000A021 */  addu       $s4, $zero, $zero
/* 10C52C 800EE43C AFB7002C */  sw         $s7, 0x2C($sp)
/* 10C530 800EE440 24170001 */  addiu      $s7, $zero, 0x1
/* 10C534 800EE444 AFB50024 */  sw         $s5, 0x24($sp)
/* 10C538 800EE448 24150004 */  addiu      $s5, $zero, 0x4
/* 10C53C 800EE44C AFB60028 */  sw         $s6, 0x28($sp)
/* 10C540 800EE450 24160005 */  addiu      $s6, $zero, 0x5
/* 10C544 800EE454 AFBF0030 */  sw         $ra, 0x30($sp)
/* 10C548 800EE458 AFB20018 */  sw         $s2, 0x18($sp)
/* 10C54C 800EE45C AFB10014 */  sw         $s1, 0x14($sp)
/* 10C550 800EE460 AFB00010 */  sw         $s0, 0x10($sp)
.Lmenu_800EE464:
/* 10C554 800EE464 8E630000 */  lw         $v1, 0x0($s3)
/* 10C558 800EE468 8C620034 */  lw         $v0, 0x34($v1)
/* 10C55C 800EE46C 0282102A */  slt        $v0, $s4, $v0
/* 10C560 800EE470 1040002D */  beqz       $v0, .Lmenu_800EE528
/* 10C564 800EE474 00141080 */   sll       $v0, $s4, 2
/* 10C568 800EE478 00621021 */  addu       $v0, $v1, $v0
/* 10C56C 800EE47C 8C520040 */  lw         $s2, 0x40($v0)
/* 10C570 800EE480 12400027 */  beqz       $s2, .Lmenu_800EE520
/* 10C574 800EE484 00008821 */   addu      $s1, $zero, $zero
/* 10C578 800EE488 02608021 */  addu       $s0, $s3, $zero
.Lmenu_800EE48C:
/* 10C57C 800EE48C 8E420098 */  lw         $v0, 0x98($s2)
/* 10C580 800EE490 84440040 */  lh         $a0, 0x40($v0)
/* 10C584 800EE494 8C420044 */  lw         $v0, 0x44($v0)
/* 10C588 800EE498 0040F809 */  jalr       $v0
/* 10C58C 800EE49C 02442021 */   addu      $a0, $s2, $a0
/* 10C590 800EE4A0 0222102A */  slt        $v0, $s1, $v0
/* 10C594 800EE4A4 10400004 */  beqz       $v0, .Lmenu_800EE4B8
/* 10C598 800EE4A8 26310001 */   addiu     $s1, $s1, 0x1
/* 10C59C 800EE4AC A6170004 */  sh         $s7, 0x4($s0)
/* 10C5A0 800EE4B0 0803B923 */  j          .Lmenu_800EE48C
/* 10C5A4 800EE4B4 26100002 */   addiu     $s0, $s0, 0x2
.Lmenu_800EE4B8:
/* 10C5A8 800EE4B8 02402021 */  addu       $a0, $s2, $zero
/* 10C5AC 800EE4BC 2402000F */  addiu      $v0, $zero, 0xF
/* 10C5B0 800EE4C0 A6620004 */  sh         $v0, 0x4($s3)
/* 10C5B4 800EE4C4 2402000E */  addiu      $v0, $zero, 0xE
/* 10C5B8 800EE4C8 A6620006 */  sh         $v0, 0x6($s3)
/* 10C5BC 800EE4CC 2402000C */  addiu      $v0, $zero, 0xC
/* 10C5C0 800EE4D0 A662000A */  sh         $v0, 0xA($s3)
/* 10C5C4 800EE4D4 2402000D */  addiu      $v0, $zero, 0xD
/* 10C5C8 800EE4D8 A6620008 */  sh         $v0, 0x8($s3)
/* 10C5CC 800EE4DC 24020007 */  addiu      $v0, $zero, 0x7
/* 10C5D0 800EE4E0 A6620014 */  sh         $v0, 0x14($s3)
/* 10C5D4 800EE4E4 24020008 */  addiu      $v0, $zero, 0x8
/* 10C5D8 800EE4E8 A6620018 */  sh         $v0, 0x18($s3)
/* 10C5DC 800EE4EC 24020009 */  addiu      $v0, $zero, 0x9
/* 10C5E0 800EE4F0 A6620016 */  sh         $v0, 0x16($s3)
/* 10C5E4 800EE4F4 24020006 */  addiu      $v0, $zero, 0x6
/* 10C5E8 800EE4F8 26650004 */  addiu      $a1, $s3, 0x4
/* 10C5EC 800EE4FC 00003021 */  addu       $a2, $zero, $zero
/* 10C5F0 800EE500 A6750022 */  sh         $s5, 0x22($s3)
/* 10C5F4 800EE504 A675001E */  sh         $s5, 0x1E($s3)
/* 10C5F8 800EE508 A675000C */  sh         $s5, 0xC($s3)
/* 10C5FC 800EE50C A6760020 */  sh         $s6, 0x20($s3)
/* 10C600 800EE510 A676000E */  sh         $s6, 0xE($s3)
/* 10C604 800EE514 A662001A */  sh         $v0, 0x1A($s3)
/* 10C608 800EE518 0C002D1C */  jal        func_8000B470
/* 10C60C 800EE51C A675001C */   sh        $s5, 0x1C($s3)
.Lmenu_800EE520:
/* 10C610 800EE520 0803B919 */  j          .Lmenu_800EE464
/* 10C614 800EE524 26940001 */   addiu     $s4, $s4, 0x1
.Lmenu_800EE528:
/* 10C618 800EE528 8FBF0030 */  lw         $ra, 0x30($sp)
/* 10C61C 800EE52C 8FB7002C */  lw         $s7, 0x2C($sp)
/* 10C620 800EE530 8FB60028 */  lw         $s6, 0x28($sp)
/* 10C624 800EE534 8FB50024 */  lw         $s5, 0x24($sp)
/* 10C628 800EE538 8FB40020 */  lw         $s4, 0x20($sp)
/* 10C62C 800EE53C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 10C630 800EE540 8FB20018 */  lw         $s2, 0x18($sp)
/* 10C634 800EE544 8FB10014 */  lw         $s1, 0x14($sp)
/* 10C638 800EE548 8FB00010 */  lw         $s0, 0x10($sp)
/* 10C63C 800EE54C 03E00008 */  jr         $ra
/* 10C640 800EE550 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800EE554
/* 10C644 800EE554 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 10C648 800EE558 AFB10014 */  sw         $s1, 0x14($sp)
/* 10C64C 800EE55C 00808821 */  addu       $s1, $a0, $zero
/* 10C650 800EE560 AFB00010 */  sw         $s0, 0x10($sp)
/* 10C654 800EE564 00008021 */  addu       $s0, $zero, $zero
/* 10C658 800EE568 AFBF0018 */  sw         $ra, 0x18($sp)
.Lmenu_800EE56C:
/* 10C65C 800EE56C 8E230000 */  lw         $v1, 0x0($s1)
/* 10C660 800EE570 8C620034 */  lw         $v0, 0x34($v1)
/* 10C664 800EE574 0202102A */  slt        $v0, $s0, $v0
/* 10C668 800EE578 10400009 */  beqz       $v0, .Lmenu_800EE5A0
/* 10C66C 800EE57C 00101080 */   sll       $v0, $s0, 2
/* 10C670 800EE580 00621021 */  addu       $v0, $v1, $v0
/* 10C674 800EE584 8C440040 */  lw         $a0, 0x40($v0)
/* 10C678 800EE588 10800003 */  beqz       $a0, .Lmenu_800EE598
/* 10C67C 800EE58C 00002821 */   addu      $a1, $zero, $zero
/* 10C680 800EE590 0C002D1C */  jal        func_8000B470
/* 10C684 800EE594 00A03021 */   addu      $a2, $a1, $zero
.Lmenu_800EE598:
/* 10C688 800EE598 0803B95B */  j          .Lmenu_800EE56C
/* 10C68C 800EE59C 26100001 */   addiu     $s0, $s0, 0x1
.Lmenu_800EE5A0:
/* 10C690 800EE5A0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 10C694 800EE5A4 8FB10014 */  lw         $s1, 0x14($sp)
/* 10C698 800EE5A8 8FB00010 */  lw         $s0, 0x10($sp)
/* 10C69C 800EE5AC 03E00008 */  jr         $ra
/* 10C6A0 800EE5B0 27BD0020 */   addiu     $sp, $sp, 0x20
