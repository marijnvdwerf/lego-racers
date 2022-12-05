.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80022230
/* 22E30 80022230 00851026 */  xor        $v0, $a0, $a1
/* 22E34 80022234 28C10010 */  slti       $at, $a2, 0x10
/* 22E38 80022238 14200034 */  bnez       $at, .L8002230C
/* 22E3C 8002223C 00000000 */   nop
/* 22E40 80022240 30420003 */  andi       $v0, $v0, 0x3
/* 22E44 80022244 14400018 */  bnez       $v0, .L800222A8
/* 22E48 80022248 0004C023 */   negu      $t8, $a0
/* 22E4C 8002224C 33180003 */  andi       $t8, $t8, 0x3
/* 22E50 80022250 13000007 */  beqz       $t8, .L80022270
/* 22E54 80022254 00D83023 */   subu      $a2, $a2, $t8
/* 22E58 80022258 00601021 */  addu       $v0, $v1, $zero
/* 22E5C 8002225C 88820000 */  lwl        $v0, 0x0($a0)
/* 22E60 80022260 88A30000 */  lwl        $v1, 0x0($a1)
/* 22E64 80022264 00982021 */  addu       $a0, $a0, $t8
/* 22E68 80022268 14430033 */  bne        $v0, $v1, .L80022338
/* 22E6C 8002226C 00B82821 */   addu      $a1, $a1, $t8
.L80022270:
/* 22E70 80022270 2401FFFC */  addiu      $at, $zero, -0x4
/* 22E74 80022274 00C13824 */  and        $a3, $a2, $at
/* 22E78 80022278 10E00024 */  beqz       $a3, .L8002230C
/* 22E7C 8002227C 00C73023 */   subu      $a2, $a2, $a3
/* 22E80 80022280 00E43821 */  addu       $a3, $a3, $a0
.L80022284:
/* 22E84 80022284 8C820000 */  lw         $v0, 0x0($a0)
/* 22E88 80022288 8CA30000 */  lw         $v1, 0x0($a1)
/* 22E8C 8002228C 24840004 */  addiu      $a0, $a0, 0x4
/* 22E90 80022290 14430029 */  bne        $v0, $v1, .L80022338
/* 22E94 80022294 24A50004 */   addiu     $a1, $a1, 0x4
/* 22E98 80022298 1487FFFA */  bne        $a0, $a3, .L80022284
/* 22E9C 8002229C 00000000 */   nop
/* 22EA0 800222A0 1000001A */  b          .L8002230C
/* 22EA4 800222A4 00000000 */   nop
.L800222A8:
/* 22EA8 800222A8 00053823 */  negu       $a3, $a1
/* 22EAC 800222AC 30E70003 */  andi       $a3, $a3, 0x3
/* 22EB0 800222B0 10E00009 */  beqz       $a3, .L800222D8
/* 22EB4 800222B4 00C73023 */   subu      $a2, $a2, $a3
/* 22EB8 800222B8 00E43821 */  addu       $a3, $a3, $a0
.L800222BC:
/* 22EBC 800222BC 90820000 */  lbu        $v0, 0x0($a0)
/* 22EC0 800222C0 90A30000 */  lbu        $v1, 0x0($a1)
/* 22EC4 800222C4 24840001 */  addiu      $a0, $a0, 0x1
/* 22EC8 800222C8 1443001B */  bne        $v0, $v1, .L80022338
/* 22ECC 800222CC 24A50001 */   addiu     $a1, $a1, 0x1
/* 22ED0 800222D0 1487FFFA */  bne        $a0, $a3, .L800222BC
/* 22ED4 800222D4 00000000 */   nop
.L800222D8:
/* 22ED8 800222D8 2401FFFC */  addiu      $at, $zero, -0x4
/* 22EDC 800222DC 00C13824 */  and        $a3, $a2, $at
/* 22EE0 800222E0 10E0000A */  beqz       $a3, .L8002230C
/* 22EE4 800222E4 00C73023 */   subu      $a2, $a2, $a3
/* 22EE8 800222E8 00E43821 */  addu       $a3, $a3, $a0
.L800222EC:
/* 22EEC 800222EC 88820000 */  lwl        $v0, 0x0($a0)
/* 22EF0 800222F0 98820003 */  lwr        $v0, 0x3($a0)
/* 22EF4 800222F4 8CA30000 */  lw         $v1, 0x0($a1)
/* 22EF8 800222F8 24840004 */  addiu      $a0, $a0, 0x4
/* 22EFC 800222FC 1443000E */  bne        $v0, $v1, .L80022338
/* 22F00 80022300 24A50004 */   addiu     $a1, $a1, 0x4
/* 22F04 80022304 1487FFF9 */  bne        $a0, $a3, .L800222EC
/* 22F08 80022308 00000000 */   nop
.L8002230C:
/* 22F0C 8002230C 18C00008 */  blez       $a2, .L80022330
/* 22F10 80022310 00C43821 */   addu      $a3, $a2, $a0
.L80022314:
/* 22F14 80022314 90820000 */  lbu        $v0, 0x0($a0)
/* 22F18 80022318 90A30000 */  lbu        $v1, 0x0($a1)
/* 22F1C 8002231C 24840001 */  addiu      $a0, $a0, 0x1
/* 22F20 80022320 14430005 */  bne        $v0, $v1, .L80022338
/* 22F24 80022324 24A50001 */   addiu     $a1, $a1, 0x1
/* 22F28 80022328 1487FFFA */  bne        $a0, $a3, .L80022314
/* 22F2C 8002232C 00000000 */   nop
.L80022330:
/* 22F30 80022330 03E00008 */  jr         $ra
/* 22F34 80022334 00001021 */   addu      $v0, $zero, $zero
.L80022338:
/* 22F38 80022338 03E00008 */  jr         $ra
/* 22F3C 8002233C 24020001 */   addiu     $v0, $zero, 0x1

glabel func_80022340
/* 22F40 80022340 27BDFB60 */  addiu      $sp, $sp, -0x4A0
/* 22F44 80022344 AFB1047C */  sw         $s1, 0x47C($sp)
/* 22F48 80022348 00808821 */  addu       $s1, $a0, $zero
/* 22F4C 8002234C AFBE0498 */  sw         $fp, 0x498($sp)
/* 22F50 80022350 0000F021 */  addu       $fp, $zero, $zero
/* 22F54 80022354 AFB60490 */  sw         $s6, 0x490($sp)
/* 22F58 80022358 241600FE */  addiu      $s6, $zero, 0xFE
/* 22F5C 8002235C AFBF049C */  sw         $ra, 0x49C($sp)
/* 22F60 80022360 AFB70494 */  sw         $s7, 0x494($sp)
/* 22F64 80022364 AFB5048C */  sw         $s5, 0x48C($sp)
/* 22F68 80022368 AFB40488 */  sw         $s4, 0x488($sp)
/* 22F6C 8002236C AFB30484 */  sw         $s3, 0x484($sp)
/* 22F70 80022370 AFB20480 */  sw         $s2, 0x480($sp)
/* 22F74 80022374 0C008CF5 */  jal        func_800233D4
/* 22F78 80022378 AFB00478 */   sw        $s0, 0x478($sp)
/* 22F7C 8002237C 00408021 */  addu       $s0, $v0, $zero
/* 22F80 80022380 24020002 */  addiu      $v0, $zero, 0x2
/* 22F84 80022384 16020004 */  bne        $s0, $v0, .L80022398
/* 22F88 80022388 00000000 */   nop
/* 22F8C 8002238C 0C008C82 */  jal        func_80023208
/* 22F90 80022390 02202021 */   addu      $a0, $s1, $zero
/* 22F94 80022394 00408021 */  addu       $s0, $v0, $zero
.L80022398:
/* 22F98 80022398 12000003 */  beqz       $s0, .L800223A8
/* 22F9C 8002239C 02202021 */   addu      $a0, $s1, $zero
.L800223A0:
/* 22FA0 800223A0 080089DC */  j          .L80022770
/* 22FA4 800223A4 02001021 */   addu      $v0, $s0, $zero
.L800223A8:
/* 22FA8 800223A8 0C0089E8 */  jal        func_800227A0
/* 22FAC 800223AC 27A50258 */   addiu     $a1, $sp, 0x258
/* 22FB0 800223B0 00408021 */  addu       $s0, $v0, $zero
/* 22FB4 800223B4 160000EE */  bnez       $s0, .L80022770
/* 22FB8 800223B8 00000000 */   nop
/* 22FBC 800223BC 8E220050 */  lw         $v0, 0x50($s1)
/* 22FC0 800223C0 0202102A */  slt        $v0, $s0, $v0
/* 22FC4 800223C4 1040006B */  beqz       $v0, .L80022574
/* 22FC8 800223C8 00009021 */   addu      $s2, $zero, $zero
/* 22FCC 800223CC 27B70018 */  addiu      $s7, $sp, 0x18
.L800223D0:
/* 22FD0 800223D0 8E240004 */  lw         $a0, 0x4($s1)
/* 22FD4 800223D4 8E26005C */  lw         $a2, 0x5C($s1)
/* 22FD8 800223D8 8E250008 */  lw         $a1, 0x8($s1)
/* 22FDC 800223DC 27A70218 */  addiu      $a3, $sp, 0x218
/* 22FE0 800223E0 00D23021 */  addu       $a2, $a2, $s2
/* 22FE4 800223E4 0C008DF4 */  jal        func_800237D0
/* 22FE8 800223E8 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 22FEC 800223EC 00408021 */  addu       $s0, $v0, $zero
/* 22FF0 800223F0 160000DF */  bnez       $s0, .L80022770
/* 22FF4 800223F4 02001021 */   addu      $v0, $s0, $zero
/* 22FF8 800223F8 97A2021C */  lhu        $v0, 0x21C($sp)
/* 22FFC 800223FC 14400006 */  bnez       $v0, .L80022418
/* 23000 80022400 00000000 */   nop
/* 23004 80022404 8FA20218 */  lw         $v0, 0x218($sp)
/* 23008 80022408 10400055 */  beqz       $v0, .L80022560
/* 2300C 8002240C 2405FFFF */   addiu     $a1, $zero, -0x1
/* 23010 80022410 0800893C */  j          .L800224F0
/* 23014 80022414 00000000 */   nop
.L80022418:
/* 23018 80022418 8FA20218 */  lw         $v0, 0x218($sp)
/* 2301C 8002241C 14400003 */  bnez       $v0, .L8002242C
/* 23020 80022420 00002821 */   addu      $a1, $zero, $zero
/* 23024 80022424 0800893C */  j          .L800224F0
/* 23028 80022428 2405FFFF */   addiu     $a1, $zero, -0x1
.L8002242C:
/* 2302C 8002242C 97B4021E */  lhu        $s4, 0x21E($sp)
/* 23030 80022430 0000A821 */  addu       $s5, $zero, $zero
/* 23034 80022434 8E220060 */  lw         $v0, 0x60($s1)
/* 23038 80022438 08008934 */  j          .L800224D0
/* 2303C 8002243C 241300FF */   addiu     $s3, $zero, 0xFF
.L80022440:
/* 23040 80022440 0002182B */  sltu       $v1, $zero, $v0
/* 23044 80022444 2C420080 */  sltiu      $v0, $v0, 0x80
/* 23048 80022448 00621824 */  and        $v1, $v1, $v0
/* 2304C 8002244C 10600028 */  beqz       $v1, .L800224F0
/* 23050 80022450 00041A02 */   srl       $v1, $a0, 8
/* 23054 80022454 326200FF */  andi       $v0, $s3, 0xFF
/* 23058 80022458 306700FF */  andi       $a3, $v1, 0xFF
/* 2305C 8002245C 1047000F */  beq        $v0, $a3, .L8002249C
/* 23060 80022460 32C200FF */   andi      $v0, $s6, 0xFF
/* 23064 80022464 10470007 */  beq        $v0, $a3, .L80022484
/* 23068 80022468 00609821 */   addu      $s3, $v1, $zero
/* 2306C 8002246C 02202021 */  addu       $a0, $s1, $zero
/* 23070 80022470 27A50118 */  addiu      $a1, $sp, 0x118
/* 23074 80022474 0C008D23 */  jal        func_8002348C
/* 23078 80022478 00003021 */   addu      $a2, $zero, $zero
/* 2307C 8002247C 00408021 */  addu       $s0, $v0, $zero
/* 23080 80022480 0260B021 */  addu       $s6, $s3, $zero
.L80022484:
/* 23084 80022484 0010182B */  sltu       $v1, $zero, $s0
/* 23088 80022488 3A020003 */  xori       $v0, $s0, 0x3
/* 2308C 8002248C 0002102B */  sltu       $v0, $zero, $v0
/* 23090 80022490 00621824 */  and        $v1, $v1, $v0
/* 23094 80022494 146000B6 */  bnez       $v1, .L80022770
/* 23098 80022498 02001021 */   addu      $v0, $s0, $zero
.L8002249C:
/* 2309C 8002249C 02202021 */  addu       $a0, $s1, $zero
/* 230A0 800224A0 02802821 */  addu       $a1, $s4, $zero
/* 230A4 800224A4 27A60258 */  addiu      $a2, $sp, 0x258
/* 230A8 800224A8 0C008A3E */  jal        func_800228F8
/* 230AC 800224AC 00052C00 */   sll       $a1, $a1, 16
/* 230B0 800224B0 00552823 */  subu       $a1, $v0, $s5
/* 230B4 800224B4 14A00014 */  bnez       $a1, .L80022508
/* 230B8 800224B8 328200FF */   andi      $v0, $s4, 0xFF
/* 230BC 800224BC 00021040 */  sll        $v0, $v0, 1
/* 230C0 800224C0 00571021 */  addu       $v0, $v0, $s7
/* 230C4 800224C4 94540100 */  lhu        $s4, 0x100($v0)
/* 230C8 800224C8 8E220060 */  lw         $v0, 0x60($s1)
/* 230CC 800224CC 24150001 */  addiu      $s5, $zero, 0x1
.L800224D0:
/* 230D0 800224D0 3284FFFF */  andi       $a0, $s4, 0xFFFF
/* 230D4 800224D4 0082102A */  slt        $v0, $a0, $v0
/* 230D8 800224D8 14400005 */  bnez       $v0, .L800224F0
/* 230DC 800224DC 00041202 */   srl       $v0, $a0, 8
/* 230E0 800224E0 92230064 */  lbu        $v1, 0x64($s1)
/* 230E4 800224E4 0043102B */  sltu       $v0, $v0, $v1
/* 230E8 800224E8 1440FFD5 */  bnez       $v0, .L80022440
/* 230EC 800224EC 328200FF */   andi      $v0, $s4, 0xFF
.L800224F0:
/* 230F0 800224F0 54A00006 */  bnel       $a1, $zero, .L8002250C
/* 230F4 800224F4 27A40218 */   addiu     $a0, $sp, 0x218
/* 230F8 800224F8 3283FFFF */  andi       $v1, $s4, 0xFFFF
/* 230FC 800224FC 24020001 */  addiu      $v0, $zero, 0x1
/* 23100 80022500 10620017 */  beq        $v1, $v0, .L80022560
/* 23104 80022504 00000000 */   nop
.L80022508:
/* 23108 80022508 27A40218 */  addiu      $a0, $sp, 0x218
.L8002250C:
/* 2310C 8002250C 0C006DC8 */  jal        func_8001B720
/* 23110 80022510 24050020 */   addiu     $a1, $zero, 0x20
/* 23114 80022514 92220065 */  lbu        $v0, 0x65($s1)
/* 23118 80022518 10400006 */  beqz       $v0, .L80022534
/* 2311C 8002251C 02202021 */   addu      $a0, $s1, $zero
/* 23120 80022520 0C008B34 */  jal        func_80022CD0
/* 23124 80022524 00002821 */   addu      $a1, $zero, $zero
/* 23128 80022528 00408021 */  addu       $s0, $v0, $zero
/* 2312C 8002252C 16000090 */  bnez       $s0, .L80022770
/* 23130 80022530 02001021 */   addu      $v0, $s0, $zero
.L80022534:
/* 23134 80022534 8E26005C */  lw         $a2, 0x5C($s1)
/* 23138 80022538 AFA00010 */  sw         $zero, 0x10($sp)
/* 2313C 8002253C 8E240004 */  lw         $a0, 0x4($s1)
/* 23140 80022540 8E250008 */  lw         $a1, 0x8($s1)
/* 23144 80022544 27A70218 */  addiu      $a3, $sp, 0x218
/* 23148 80022548 00D23021 */  addu       $a2, $a2, $s2
/* 2314C 8002254C 0C008E70 */  jal        func_800239C0
/* 23150 80022550 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 23154 80022554 00408021 */  addu       $s0, $v0, $zero
/* 23158 80022558 1600FF91 */  bnez       $s0, .L800223A0
/* 2315C 8002255C 27DE0001 */   addiu     $fp, $fp, 0x1
.L80022560:
/* 23160 80022560 8E220050 */  lw         $v0, 0x50($s1)
/* 23164 80022564 26520001 */  addiu      $s2, $s2, 0x1
/* 23168 80022568 0242102A */  slt        $v0, $s2, $v0
/* 2316C 8002256C 1440FF98 */  bnez       $v0, .L800223D0
/* 23170 80022570 00000000 */   nop
.L80022574:
/* 23174 80022574 8E220050 */  lw         $v0, 0x50($s1)
/* 23178 80022578 1840001D */  blez       $v0, .L800225F0
/* 2317C 8002257C 00009021 */   addu      $s2, $zero, $zero
/* 23180 80022580 27B30238 */  addiu      $s3, $sp, 0x238
.L80022584:
/* 23184 80022584 8E240004 */  lw         $a0, 0x4($s1)
/* 23188 80022588 8E26005C */  lw         $a2, 0x5C($s1)
/* 2318C 8002258C 8E250008 */  lw         $a1, 0x8($s1)
/* 23190 80022590 27A70218 */  addiu      $a3, $sp, 0x218
/* 23194 80022594 00D23021 */  addu       $a2, $a2, $s2
/* 23198 80022598 0C008DF4 */  jal        func_800237D0
/* 2319C 8002259C 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 231A0 800225A0 00408021 */  addu       $s0, $v0, $zero
/* 231A4 800225A4 16000072 */  bnez       $s0, .L80022770
/* 231A8 800225A8 02001021 */   addu      $v0, $s0, $zero
/* 231AC 800225AC 97A2021C */  lhu        $v0, 0x21C($sp)
/* 231B0 800225B0 5040000A */  beql       $v0, $zero, .L800225DC
/* 231B4 800225B4 A6600000 */   sh        $zero, 0x0($s3)
/* 231B8 800225B8 8FA20218 */  lw         $v0, 0x218($sp)
/* 231BC 800225BC 50400007 */  beql       $v0, $zero, .L800225DC
/* 231C0 800225C0 A6600000 */   sh        $zero, 0x0($s3)
/* 231C4 800225C4 97A3021E */  lhu        $v1, 0x21E($sp)
/* 231C8 800225C8 96220062 */  lhu        $v0, 0x62($s1)
/* 231CC 800225CC 0062102B */  sltu       $v0, $v1, $v0
/* 231D0 800225D0 54400002 */  bnel       $v0, $zero, .L800225DC
/* 231D4 800225D4 A6600000 */   sh        $zero, 0x0($s3)
/* 231D8 800225D8 A6630000 */  sh         $v1, 0x0($s3)
.L800225DC:
/* 231DC 800225DC 8E220050 */  lw         $v0, 0x50($s1)
/* 231E0 800225E0 26520001 */  addiu      $s2, $s2, 0x1
/* 231E4 800225E4 0242102A */  slt        $v0, $s2, $v0
/* 231E8 800225E8 1440FFE6 */  bnez       $v0, .L80022584
/* 231EC 800225EC 26730002 */   addiu     $s3, $s3, 0x2
.L800225F0:
/* 231F0 800225F0 92220064 */  lbu        $v0, 0x64($s1)
/* 231F4 800225F4 10400055 */  beqz       $v0, .L8002274C
/* 231F8 800225F8 00009821 */   addu      $s3, $zero, $zero
/* 231FC 800225FC 27B40018 */  addiu      $s4, $sp, 0x18
/* 23200 80022600 27B60118 */  addiu      $s6, $sp, 0x118
/* 23204 80022604 27B50238 */  addiu      $s5, $sp, 0x238
/* 23208 80022608 02202021 */  addu       $a0, $s1, $zero
.L8002260C:
/* 2320C 8002260C 27A50118 */  addiu      $a1, $sp, 0x118
/* 23210 80022610 00003021 */  addu       $a2, $zero, $zero
/* 23214 80022614 327200FF */  andi       $s2, $s3, 0xFF
/* 23218 80022618 0C008D23 */  jal        func_8002348C
/* 2321C 8002261C 02403821 */   addu      $a3, $s2, $zero
/* 23220 80022620 00408021 */  addu       $s0, $v0, $zero
/* 23224 80022624 0010182B */  sltu       $v1, $zero, $s0
/* 23228 80022628 3A020003 */  xori       $v0, $s0, 0x3
/* 2322C 8002262C 0002102B */  sltu       $v0, $zero, $v0
/* 23230 80022630 00621824 */  and        $v1, $v1, $v0
/* 23234 80022634 5460004E */  bnel       $v1, $zero, .L80022770
/* 23238 80022638 02001021 */   addu      $v0, $s0, $zero
/* 2323C 8002263C 16400002 */  bnez       $s2, .L80022648
/* 23240 80022640 24050001 */   addiu     $a1, $zero, 0x1
/* 23244 80022644 8E250060 */  lw         $a1, 0x60($s1)
.L80022648:
/* 23248 80022648 18A0000A */  blez       $a1, .L80022674
/* 2324C 8002264C 00009021 */   addu      $s2, $zero, $zero
/* 23250 80022650 02802021 */  addu       $a0, $s4, $zero
/* 23254 80022654 02C01821 */  addu       $v1, $s6, $zero
.L80022658:
/* 23258 80022658 94620000 */  lhu        $v0, 0x0($v1)
/* 2325C 8002265C 24630002 */  addiu      $v1, $v1, 0x2
/* 23260 80022660 26520001 */  addiu      $s2, $s2, 0x1
/* 23264 80022664 A4820000 */  sh         $v0, 0x0($a0)
/* 23268 80022668 0245102A */  slt        $v0, $s2, $a1
/* 2326C 8002266C 1440FFFA */  bnez       $v0, .L80022658
/* 23270 80022670 24840002 */   addiu     $a0, $a0, 0x2
.L80022674:
/* 23274 80022674 2A420080 */  slti       $v0, $s2, 0x80
/* 23278 80022678 10400008 */  beqz       $v0, .L8002269C
/* 2327C 8002267C 00121040 */   sll       $v0, $s2, 1
/* 23280 80022680 24040003 */  addiu      $a0, $zero, 0x3
/* 23284 80022684 00541821 */  addu       $v1, $v0, $s4
.L80022688:
/* 23288 80022688 A4640000 */  sh         $a0, 0x0($v1)
/* 2328C 8002268C 26520001 */  addiu      $s2, $s2, 0x1
/* 23290 80022690 2A420080 */  slti       $v0, $s2, 0x80
/* 23294 80022694 1440FFFC */  bnez       $v0, .L80022688
/* 23298 80022698 24630002 */   addiu     $v1, $v1, 0x2
.L8002269C:
/* 2329C 8002269C 8E220050 */  lw         $v0, 0x50($s1)
/* 232A0 800226A0 1840001D */  blez       $v0, .L80022718
/* 232A4 800226A4 00009021 */   addu      $s2, $zero, $zero
/* 232A8 800226A8 326800FF */  andi       $t0, $s3, 0xFF
/* 232AC 800226AC 00003021 */  addu       $a2, $zero, $zero
/* 232B0 800226B0 02A03821 */  addu       $a3, $s5, $zero
.L800226B4:
/* 232B4 800226B4 90E20000 */  lbu        $v0, 0x0($a3)
/* 232B8 800226B8 14480011 */  bne        $v0, $t0, .L80022700
/* 232BC 800226BC 02A02821 */   addu      $a1, $s5, $zero
.L800226C0:
/* 232C0 800226C0 00A62021 */  addu       $a0, $a1, $a2
/* 232C4 800226C4 94830000 */  lhu        $v1, 0x0($a0)
/* 232C8 800226C8 96220062 */  lhu        $v0, 0x62($s1)
/* 232CC 800226CC 0062182B */  sltu       $v1, $v1, $v0
/* 232D0 800226D0 5460000C */  bnel       $v1, $zero, .L80022704
/* 232D4 800226D4 24C60002 */   addiu     $a2, $a2, 0x2
/* 232D8 800226D8 90820001 */  lbu        $v0, 0x1($a0)
/* 232DC 800226DC 00021040 */  sll        $v0, $v0, 1
/* 232E0 800226E0 00541021 */  addu       $v0, $v0, $s4
/* 232E4 800226E4 94430100 */  lhu        $v1, 0x100($v0)
/* 232E8 800226E8 A4430000 */  sh         $v1, 0x0($v0)
/* 232EC 800226EC 00D41021 */  addu       $v0, $a2, $s4
/* 232F0 800226F0 A4430220 */  sh         $v1, 0x220($v0)
/* 232F4 800226F4 90820000 */  lbu        $v0, 0x0($a0)
/* 232F8 800226F8 1048FFF1 */  beq        $v0, $t0, .L800226C0
/* 232FC 800226FC 00000000 */   nop
.L80022700:
/* 23300 80022700 24C60002 */  addiu      $a2, $a2, 0x2
.L80022704:
/* 23304 80022704 8E220050 */  lw         $v0, 0x50($s1)
/* 23308 80022708 26520001 */  addiu      $s2, $s2, 0x1
/* 2330C 8002270C 0242102A */  slt        $v0, $s2, $v0
/* 23310 80022710 1440FFE8 */  bnez       $v0, .L800226B4
/* 23314 80022714 24E70002 */   addiu     $a3, $a3, 0x2
.L80022718:
/* 23318 80022718 02202021 */  addu       $a0, $s1, $zero
/* 2331C 8002271C 27A50018 */  addiu      $a1, $sp, 0x18
/* 23320 80022720 24060001 */  addiu      $a2, $zero, 0x1
/* 23324 80022724 0C008D23 */  jal        func_8002348C
/* 23328 80022728 326700FF */   andi      $a3, $s3, 0xFF
/* 2332C 8002272C 00408021 */  addu       $s0, $v0, $zero
/* 23330 80022730 1600FF1B */  bnez       $s0, .L800223A0
/* 23334 80022734 26730001 */   addiu     $s3, $s3, 0x1
/* 23338 80022738 92230064 */  lbu        $v1, 0x64($s1)
/* 2333C 8002273C 326200FF */  andi       $v0, $s3, 0xFF
/* 23340 80022740 0043102B */  sltu       $v0, $v0, $v1
/* 23344 80022744 1440FFB1 */  bnez       $v0, .L8002260C
/* 23348 80022748 02202021 */   addu      $a0, $s1, $zero
.L8002274C:
/* 2334C 8002274C 13C00004 */  beqz       $fp, .L80022760
/* 23350 80022750 2403FFFD */   addiu     $v1, $zero, -0x3
/* 23354 80022754 8E220000 */  lw         $v0, 0x0($s1)
/* 23358 80022758 080089DA */  j          .L80022768
/* 2335C 8002275C 34420002 */   ori       $v0, $v0, 0x2
.L80022760:
/* 23360 80022760 8E220000 */  lw         $v0, 0x0($s1)
/* 23364 80022764 00431024 */  and        $v0, $v0, $v1
.L80022768:
/* 23368 80022768 AE220000 */  sw         $v0, 0x0($s1)
/* 2336C 8002276C 00001021 */  addu       $v0, $zero, $zero
.L80022770:
/* 23370 80022770 8FBF049C */  lw         $ra, 0x49C($sp)
/* 23374 80022774 8FBE0498 */  lw         $fp, 0x498($sp)
/* 23378 80022778 8FB70494 */  lw         $s7, 0x494($sp)
/* 2337C 8002277C 8FB60490 */  lw         $s6, 0x490($sp)
/* 23380 80022780 8FB5048C */  lw         $s5, 0x48C($sp)
/* 23384 80022784 8FB40488 */  lw         $s4, 0x488($sp)
/* 23388 80022788 8FB30484 */  lw         $s3, 0x484($sp)
/* 2338C 8002278C 8FB20480 */  lw         $s2, 0x480($sp)
/* 23390 80022790 8FB1047C */  lw         $s1, 0x47C($sp)
/* 23394 80022794 8FB00478 */  lw         $s0, 0x478($sp)
/* 23398 80022798 03E00008 */  jr         $ra
/* 2339C 8002279C 27BD04A0 */   addiu     $sp, $sp, 0x4A0

glabel func_800227A0
/* 233A0 800227A0 27BDFED0 */  addiu      $sp, $sp, -0x130
/* 233A4 800227A4 AFB20118 */  sw         $s2, 0x118($sp)
/* 233A8 800227A8 00809021 */  addu       $s2, $a0, $zero
/* 233AC 800227AC AFB40120 */  sw         $s4, 0x120($sp)
/* 233B0 800227B0 00A0A021 */  addu       $s4, $a1, $zero
/* 233B4 800227B4 240500FF */  addiu      $a1, $zero, 0xFF
/* 233B8 800227B8 268200FF */  addiu      $v0, $s4, 0xFF
/* 233BC 800227BC AFBF012C */  sw         $ra, 0x12C($sp)
/* 233C0 800227C0 AFB60128 */  sw         $s6, 0x128($sp)
/* 233C4 800227C4 AFB50124 */  sw         $s5, 0x124($sp)
/* 233C8 800227C8 AFB3011C */  sw         $s3, 0x11C($sp)
/* 233CC 800227CC AFB10114 */  sw         $s1, 0x114($sp)
/* 233D0 800227D0 AFB00110 */  sw         $s0, 0x110($sp)
.L800227D4:
/* 233D4 800227D4 A0400101 */  sb         $zero, 0x101($v0)
/* 233D8 800227D8 24A5FFFF */  addiu      $a1, $a1, -0x1
/* 233DC 800227DC 04A1FFFD */  bgez       $a1, .L800227D4
/* 233E0 800227E0 2442FFFF */   addiu     $v0, $v0, -0x1
/* 233E4 800227E4 240200FF */  addiu      $v0, $zero, 0xFF
/* 233E8 800227E8 A2820100 */  sb         $v0, 0x100($s4)
/* 233EC 800227EC 92420064 */  lbu        $v0, 0x64($s2)
/* 233F0 800227F0 10400036 */  beqz       $v0, .L800228CC
/* 233F4 800227F4 00009821 */   addu      $s3, $zero, $zero
/* 233F8 800227F8 27B50010 */  addiu      $s5, $sp, 0x10
/* 233FC 800227FC 24160001 */  addiu      $s6, $zero, 0x1
/* 23400 80022800 327000FF */  andi       $s0, $s3, 0xFF
.L80022804:
/* 23404 80022804 16000002 */  bnez       $s0, .L80022810
/* 23408 80022808 24110001 */   addiu     $s1, $zero, 0x1
/* 2340C 8002280C 8E510060 */  lw         $s1, 0x60($s2)
.L80022810:
/* 23410 80022810 02402021 */  addu       $a0, $s2, $zero
/* 23414 80022814 27A50010 */  addiu      $a1, $sp, 0x10
/* 23418 80022818 00003021 */  addu       $a2, $zero, $zero
/* 2341C 8002281C 0C008D23 */  jal        func_8002348C
/* 23420 80022820 02003821 */   addu      $a3, $s0, $zero
/* 23424 80022824 00402021 */  addu       $a0, $v0, $zero
/* 23428 80022828 0004182B */  sltu       $v1, $zero, $a0
/* 2342C 8002282C 38820003 */  xori       $v0, $a0, 0x3
/* 23430 80022830 0002102B */  sltu       $v0, $zero, $v0
/* 23434 80022834 00621824 */  and        $v1, $v1, $v0
/* 23438 80022838 14600025 */  bnez       $v1, .L800228D0
/* 2343C 8002283C 00801021 */   addu      $v0, $a0, $zero
/* 23440 80022840 02202821 */  addu       $a1, $s1, $zero
/* 23444 80022844 28A20080 */  slti       $v0, $a1, 0x80
/* 23448 80022848 1040001A */  beqz       $v0, .L800228B4
/* 2344C 8002284C 32020007 */   andi      $v0, $s0, 0x7
/* 23450 80022850 02003821 */  addu       $a3, $s0, $zero
/* 23454 80022854 00564004 */  sllv       $t0, $s6, $v0
/* 23458 80022858 00051040 */  sll        $v0, $a1, 1
/* 2345C 8002285C 00553021 */  addu       $a2, $v0, $s5
.L80022860:
/* 23460 80022860 94C40000 */  lhu        $a0, 0x0($a2)
/* 23464 80022864 8E420060 */  lw         $v0, 0x60($s2)
/* 23468 80022868 3083FFFF */  andi       $v1, $a0, 0xFFFF
/* 2346C 8002286C 0062102A */  slt        $v0, $v1, $v0
/* 23470 80022870 1440000D */  bnez       $v0, .L800228A8
/* 23474 80022874 24A50001 */   addiu     $a1, $a1, 0x1
/* 23478 80022878 00031A02 */  srl        $v1, $v1, 8
/* 2347C 8002287C 1067000A */  beq        $v1, $a3, .L800228A8
/* 23480 80022880 00000000 */   nop
/* 23484 80022884 3082007F */  andi       $v0, $a0, 0x7F
/* 23488 80022888 00021082 */  srl        $v0, $v0, 2
/* 2348C 8002288C 30630007 */  andi       $v1, $v1, 0x7
/* 23490 80022890 00031940 */  sll        $v1, $v1, 5
/* 23494 80022894 00431021 */  addu       $v0, $v0, $v1
/* 23498 80022898 02821021 */  addu       $v0, $s4, $v0
/* 2349C 8002289C 90430101 */  lbu        $v1, 0x101($v0)
/* 234A0 800228A0 00681825 */  or         $v1, $v1, $t0
/* 234A4 800228A4 A0430101 */  sb         $v1, 0x101($v0)
.L800228A8:
/* 234A8 800228A8 28A20080 */  slti       $v0, $a1, 0x80
/* 234AC 800228AC 1440FFEC */  bnez       $v0, .L80022860
/* 234B0 800228B0 24C60002 */   addiu     $a2, $a2, 0x2
.L800228B4:
/* 234B4 800228B4 92430064 */  lbu        $v1, 0x64($s2)
/* 234B8 800228B8 26730001 */  addiu      $s3, $s3, 0x1
/* 234BC 800228BC 326200FF */  andi       $v0, $s3, 0xFF
/* 234C0 800228C0 0043102B */  sltu       $v0, $v0, $v1
/* 234C4 800228C4 1440FFCF */  bnez       $v0, .L80022804
/* 234C8 800228C8 327000FF */   andi      $s0, $s3, 0xFF
.L800228CC:
/* 234CC 800228CC 00001021 */  addu       $v0, $zero, $zero
.L800228D0:
/* 234D0 800228D0 8FBF012C */  lw         $ra, 0x12C($sp)
/* 234D4 800228D4 8FB60128 */  lw         $s6, 0x128($sp)
/* 234D8 800228D8 8FB50124 */  lw         $s5, 0x124($sp)
/* 234DC 800228DC 8FB40120 */  lw         $s4, 0x120($sp)
/* 234E0 800228E0 8FB3011C */  lw         $s3, 0x11C($sp)
/* 234E4 800228E4 8FB20118 */  lw         $s2, 0x118($sp)
/* 234E8 800228E8 8FB10114 */  lw         $s1, 0x114($sp)
/* 234EC 800228EC 8FB00110 */  lw         $s0, 0x110($sp)
/* 234F0 800228F0 03E00008 */  jr         $ra
/* 234F4 800228F4 27BD0130 */   addiu     $sp, $sp, 0x130

glabel func_800228F8
/* 234F8 800228F8 00052C03 */  sra        $a1, $a1, 16
/* 234FC 800228FC 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 23500 80022900 AFB40028 */  sw         $s4, 0x28($sp)
/* 23504 80022904 0080A021 */  addu       $s4, $a0, $zero
/* 23508 80022908 AFB1001C */  sw         $s1, 0x1C($sp)
/* 2350C 8002290C 00C08821 */  addu       $s1, $a2, $zero
/* 23510 80022910 AFB20020 */  sw         $s2, 0x20($sp)
/* 23514 80022914 00009021 */  addu       $s2, $zero, $zero
/* 23518 80022918 AFB00018 */  sw         $s0, 0x18($sp)
/* 2351C 8002291C 00008021 */  addu       $s0, $zero, $zero
/* 23520 80022920 30A300FF */  andi       $v1, $a1, 0xFF
/* 23524 80022924 00031882 */  srl        $v1, $v1, 2
/* 23528 80022928 30A5FFFF */  andi       $a1, $a1, 0xFFFF
/* 2352C 8002292C 00053202 */  srl        $a2, $a1, 8
/* 23530 80022930 30C20007 */  andi       $v0, $a2, 0x7
/* 23534 80022934 AFBF0038 */  sw         $ra, 0x38($sp)
/* 23538 80022938 AFB70034 */  sw         $s7, 0x34($sp)
/* 2353C 8002293C AFB60030 */  sw         $s6, 0x30($sp)
/* 23540 80022940 AFB5002C */  sw         $s5, 0x2C($sp)
/* 23544 80022944 AFB30024 */  sw         $s3, 0x24($sp)
/* 23548 80022948 92840064 */  lbu        $a0, 0x64($s4)
/* 2354C 8002294C 00021140 */  sll        $v0, $v0, 5
/* 23550 80022950 10800037 */  beqz       $a0, .L80022A30
/* 23554 80022954 0062B821 */   addu      $s7, $v1, $v0
/* 23558 80022958 00A0A821 */  addu       $s5, $a1, $zero
/* 2355C 8002295C 00C0B021 */  addu       $s6, $a2, $zero
/* 23560 80022960 324700FF */  andi       $a3, $s2, 0xFF
.L80022964:
/* 23564 80022964 14E00002 */  bnez       $a3, .L80022970
/* 23568 80022968 24130001 */   addiu     $s3, $zero, 0x1
/* 2356C 8002296C 8E930060 */  lw         $s3, 0x60($s4)
.L80022970:
/* 23570 80022970 10F60007 */  beq        $a3, $s6, .L80022990
/* 23574 80022974 02371021 */   addu      $v0, $s1, $s7
/* 23578 80022978 90420101 */  lbu        $v0, 0x101($v0)
/* 2357C 8002297C 30E30007 */  andi       $v1, $a3, 0x7
/* 23580 80022980 00621007 */  srav       $v0, $v0, $v1
/* 23584 80022984 30420001 */  andi       $v0, $v0, 0x1
/* 23588 80022988 10400023 */  beqz       $v0, .L80022A18
/* 2358C 8002298C 00000000 */   nop
.L80022990:
/* 23590 80022990 92220100 */  lbu        $v0, 0x100($s1)
/* 23594 80022994 10E2000C */  beq        $a3, $v0, .L800229C8
/* 23598 80022998 02802021 */   addu      $a0, $s4, $zero
/* 2359C 8002299C 02202821 */  addu       $a1, $s1, $zero
/* 235A0 800229A0 0C008D23 */  jal        func_8002348C
/* 235A4 800229A4 00003021 */   addu      $a2, $zero, $zero
/* 235A8 800229A8 00402021 */  addu       $a0, $v0, $zero
/* 235AC 800229AC 0004182B */  sltu       $v1, $zero, $a0
/* 235B0 800229B0 38820003 */  xori       $v0, $a0, 0x3
/* 235B4 800229B4 0002102B */  sltu       $v0, $zero, $v0
/* 235B8 800229B8 00621824 */  and        $v1, $v1, $v0
/* 235BC 800229BC 1460001D */  bnez       $v1, .L80022A34
/* 235C0 800229C0 00801021 */   addu      $v0, $a0, $zero
/* 235C4 800229C4 A2320100 */  sb         $s2, 0x100($s1)
.L800229C8:
/* 235C8 800229C8 02602821 */  addu       $a1, $s3, $zero
/* 235CC 800229CC 2A020002 */  slti       $v0, $s0, 0x2
/* 235D0 800229D0 28A30080 */  slti       $v1, $a1, 0x80
/* 235D4 800229D4 00431024 */  and        $v0, $v0, $v1
/* 235D8 800229D8 1040000C */  beqz       $v0, .L80022A0C
/* 235DC 800229DC 00051040 */   sll       $v0, $a1, 1
/* 235E0 800229E0 00512021 */  addu       $a0, $v0, $s1
.L800229E4:
/* 235E4 800229E4 94820000 */  lhu        $v0, 0x0($a0)
/* 235E8 800229E8 24A50001 */  addiu      $a1, $a1, 0x1
/* 235EC 800229EC 28A30080 */  slti       $v1, $a1, 0x80
/* 235F0 800229F0 00551026 */  xor        $v0, $v0, $s5
/* 235F4 800229F4 2C420001 */  sltiu      $v0, $v0, 0x1
/* 235F8 800229F8 02028021 */  addu       $s0, $s0, $v0
/* 235FC 800229FC 2A020002 */  slti       $v0, $s0, 0x2
/* 23600 80022A00 00431024 */  and        $v0, $v0, $v1
/* 23604 80022A04 1440FFF7 */  bnez       $v0, .L800229E4
/* 23608 80022A08 24840002 */   addiu     $a0, $a0, 0x2
.L80022A0C:
/* 2360C 80022A0C 2A020002 */  slti       $v0, $s0, 0x2
/* 23610 80022A10 10400008 */  beqz       $v0, .L80022A34
/* 23614 80022A14 24020002 */   addiu     $v0, $zero, 0x2
.L80022A18:
/* 23618 80022A18 92830064 */  lbu        $v1, 0x64($s4)
/* 2361C 80022A1C 26520001 */  addiu      $s2, $s2, 0x1
/* 23620 80022A20 324200FF */  andi       $v0, $s2, 0xFF
/* 23624 80022A24 0043102B */  sltu       $v0, $v0, $v1
/* 23628 80022A28 1440FFCE */  bnez       $v0, .L80022964
/* 2362C 80022A2C 324700FF */   andi      $a3, $s2, 0xFF
.L80022A30:
/* 23630 80022A30 02001021 */  addu       $v0, $s0, $zero
.L80022A34:
/* 23634 80022A34 8FBF0038 */  lw         $ra, 0x38($sp)
/* 23638 80022A38 8FB70034 */  lw         $s7, 0x34($sp)
/* 2363C 80022A3C 8FB60030 */  lw         $s6, 0x30($sp)
/* 23640 80022A40 8FB5002C */  lw         $s5, 0x2C($sp)
/* 23644 80022A44 8FB40028 */  lw         $s4, 0x28($sp)
/* 23648 80022A48 8FB30024 */  lw         $s3, 0x24($sp)
/* 2364C 80022A4C 8FB20020 */  lw         $s2, 0x20($sp)
/* 23650 80022A50 8FB1001C */  lw         $s1, 0x1C($sp)
/* 23654 80022A54 8FB00018 */  lw         $s0, 0x18($sp)
/* 23658 80022A58 03E00008 */  jr         $ra
/* 2365C 80022A5C 27BD0040 */   addiu     $sp, $sp, 0x40

glabel osPfsRepairId
/* 23660 80022A60 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 23664 80022A64 AFB00010 */  sw         $s0, 0x10($sp)
/* 23668 80022A68 00808021 */  addu       $s0, $a0, $zero
/* 2366C 80022A6C AFBF0014 */  sw         $ra, 0x14($sp)
/* 23670 80022A70 8E020000 */  lw         $v0, 0x0($s0)
/* 23674 80022A74 30420005 */  andi       $v0, $v0, 0x5
/* 23678 80022A78 5040000A */  beql       $v0, $zero, .L80022AA4
/* 2367C 80022A7C 24040005 */   addiu     $a0, $zero, 0x5
/* 23680 80022A80 0C008C82 */  jal        func_80023208
/* 23684 80022A84 00000000 */   nop
/* 23688 80022A88 00402021 */  addu       $a0, $v0, $zero
/* 2368C 80022A8C 14800006 */  bnez       $a0, .L80022AA8
/* 23690 80022A90 00801021 */   addu      $v0, $a0, $zero
/* 23694 80022A94 8E020000 */  lw         $v0, 0x0($s0)
/* 23698 80022A98 2403FFFB */  addiu      $v1, $zero, -0x5
/* 2369C 80022A9C 00431024 */  and        $v0, $v0, $v1
/* 236A0 80022AA0 AE020000 */  sw         $v0, 0x0($s0)
.L80022AA4:
/* 236A4 80022AA4 00801021 */  addu       $v0, $a0, $zero
.L80022AA8:
/* 236A8 80022AA8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 236AC 80022AAC 8FB00010 */  lw         $s0, 0x10($sp)
/* 236B0 80022AB0 03E00008 */  jr         $ra
/* 236B4 80022AB4 27BD0018 */   addiu     $sp, $sp, 0x18
/* 236B8 80022AB8 00000000 */  nop
/* 236BC 80022ABC 00000000 */  nop
