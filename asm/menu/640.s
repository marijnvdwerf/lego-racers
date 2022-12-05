.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_8010DB50
/* 12BC40 8010DB50 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 12BC44 8010DB54 AFB50024 */  sw         $s5, 0x24($sp)
/* 12BC48 8010DB58 0080A821 */  addu       $s5, $a0, $zero
/* 12BC4C 8010DB5C AFBF0028 */  sw         $ra, 0x28($sp)
/* 12BC50 8010DB60 AFB40020 */  sw         $s4, 0x20($sp)
/* 12BC54 8010DB64 AFB3001C */  sw         $s3, 0x1C($sp)
/* 12BC58 8010DB68 AFB20018 */  sw         $s2, 0x18($sp)
/* 12BC5C 8010DB6C AFB10014 */  sw         $s1, 0x14($sp)
/* 12BC60 8010DB70 0C042084 */  jal        func_menu_80108210
/* 12BC64 8010DB74 AFB00010 */   sw        $s0, 0x10($sp)
/* 12BC68 8010DB78 3C02800D */  lui        $v0, %hi(D_menu_800CF1E0)
/* 12BC6C 8010DB7C 2442F1E0 */  addiu      $v0, $v0, %lo(D_menu_800CF1E0)
/* 12BC70 8010DB80 26B0172C */  addiu      $s0, $s5, 0x172C
/* 12BC74 8010DB84 24110001 */  addiu      $s1, $zero, 0x1
/* 12BC78 8010DB88 AEA20000 */  sw         $v0, 0x0($s5)
/* 12BC7C 8010DB8C 3C02800D */  lui        $v0, %hi(D_menu_800D0740)
/* 12BC80 8010DB90 24530740 */  addiu      $s3, $v0, %lo(D_menu_800D0740)
/* 12BC84 8010DB94 2412FFFF */  addiu      $s2, $zero, -0x1
.Lmenu_8010DB98:
/* 12BC88 8010DB98 0C04729C */  jal        func_menu_8011CA70
/* 12BC8C 8010DB9C 02002021 */   addu      $a0, $s0, $zero
/* 12BC90 8010DBA0 AE130054 */  sw         $s3, 0x54($s0)
/* 12BC94 8010DBA4 2631FFFF */  addiu      $s1, $s1, -0x1
/* 12BC98 8010DBA8 1632FFFB */  bne        $s1, $s2, .Lmenu_8010DB98
/* 12BC9C 8010DBAC 26100094 */   addiu     $s0, $s0, 0x94
/* 12BCA0 8010DBB0 26B31854 */  addiu      $s3, $s5, 0x1854
/* 12BCA4 8010DBB4 24120001 */  addiu      $s2, $zero, 0x1
/* 12BCA8 8010DBB8 2414FFFF */  addiu      $s4, $zero, -0x1
.Lmenu_8010DBBC:
/* 12BCAC 8010DBBC 02608821 */  addu       $s1, $s3, $zero
/* 12BCB0 8010DBC0 24100002 */  addiu      $s0, $zero, 0x2
.Lmenu_8010DBC4:
/* 12BCB4 8010DBC4 0C047CA8 */  jal        func_menu_8011F2A0
/* 12BCB8 8010DBC8 02202021 */   addu      $a0, $s1, $zero
/* 12BCBC 8010DBCC 2610FFFF */  addiu      $s0, $s0, -0x1
/* 12BCC0 8010DBD0 1614FFFC */  bne        $s0, $s4, .Lmenu_8010DBC4
/* 12BCC4 8010DBD4 26310078 */   addiu     $s1, $s1, 0x78
/* 12BCC8 8010DBD8 2652FFFF */  addiu      $s2, $s2, -0x1
/* 12BCCC 8010DBDC 1654FFF7 */  bne        $s2, $s4, .Lmenu_8010DBBC
/* 12BCD0 8010DBE0 26730168 */   addiu     $s3, $s3, 0x168
/* 12BCD4 8010DBE4 26B31B24 */  addiu      $s3, $s5, 0x1B24
/* 12BCD8 8010DBE8 24120001 */  addiu      $s2, $zero, 0x1
/* 12BCDC 8010DBEC 2414FFFF */  addiu      $s4, $zero, -0x1
.Lmenu_8010DBF0:
/* 12BCE0 8010DBF0 02608821 */  addu       $s1, $s3, $zero
/* 12BCE4 8010DBF4 24100002 */  addiu      $s0, $zero, 0x2
.Lmenu_8010DBF8:
/* 12BCE8 8010DBF8 0C0016DC */  jal        func_80005B70
/* 12BCEC 8010DBFC 02202021 */   addu      $a0, $s1, $zero
/* 12BCF0 8010DC00 2610FFFF */  addiu      $s0, $s0, -0x1
/* 12BCF4 8010DC04 1614FFFC */  bne        $s0, $s4, .Lmenu_8010DBF8
/* 12BCF8 8010DC08 2631000C */   addiu     $s1, $s1, 0xC
/* 12BCFC 8010DC0C 2652FFFF */  addiu      $s2, $s2, -0x1
/* 12BD00 8010DC10 1654FFF7 */  bne        $s2, $s4, .Lmenu_8010DBF0
/* 12BD04 8010DC14 26730024 */   addiu     $s3, $s3, 0x24
/* 12BD08 8010DC18 26B11C2C */  addiu      $s1, $s5, 0x1C2C
/* 12BD0C 8010DC1C 24100001 */  addiu      $s0, $zero, 0x1
/* 12BD10 8010DC20 2412FFFF */  addiu      $s2, $zero, -0x1
.Lmenu_8010DC24:
/* 12BD14 8010DC24 0C044D38 */  jal        func_menu_801134E0
/* 12BD18 8010DC28 02202021 */   addu      $a0, $s1, $zero
/* 12BD1C 8010DC2C 2610FFFF */  addiu      $s0, $s0, -0x1
/* 12BD20 8010DC30 1612FFFC */  bne        $s0, $s2, .Lmenu_8010DC24
/* 12BD24 8010DC34 263109F4 */   addiu     $s1, $s1, 0x9F4
/* 12BD28 8010DC38 0C04376A */  jal        func_menu_8010DDA8
/* 12BD2C 8010DC3C 02A02021 */   addu      $a0, $s5, $zero
/* 12BD30 8010DC40 02A01021 */  addu       $v0, $s5, $zero
/* 12BD34 8010DC44 8FBF0028 */  lw         $ra, 0x28($sp)
/* 12BD38 8010DC48 8FB50024 */  lw         $s5, 0x24($sp)
/* 12BD3C 8010DC4C 8FB40020 */  lw         $s4, 0x20($sp)
/* 12BD40 8010DC50 8FB3001C */  lw         $s3, 0x1C($sp)
/* 12BD44 8010DC54 8FB20018 */  lw         $s2, 0x18($sp)
/* 12BD48 8010DC58 8FB10014 */  lw         $s1, 0x14($sp)
/* 12BD4C 8010DC5C 8FB00010 */  lw         $s0, 0x10($sp)
/* 12BD50 8010DC60 03E00008 */  jr         $ra
/* 12BD54 8010DC64 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_8010DC68
/* 12BD58 8010DC68 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 12BD5C 8010DC6C AFB20018 */  sw         $s2, 0x18($sp)
/* 12BD60 8010DC70 00809021 */  addu       $s2, $a0, $zero
/* 12BD64 8010DC74 AFB3001C */  sw         $s3, 0x1C($sp)
/* 12BD68 8010DC78 00A09821 */  addu       $s3, $a1, $zero
/* 12BD6C 8010DC7C 3C02800D */  lui        $v0, %hi(D_menu_800CF1E0)
/* 12BD70 8010DC80 2442F1E0 */  addiu      $v0, $v0, %lo(D_menu_800CF1E0)
/* 12BD74 8010DC84 AFBF0020 */  sw         $ra, 0x20($sp)
/* 12BD78 8010DC88 AFB10014 */  sw         $s1, 0x14($sp)
/* 12BD7C 8010DC8C AFB00010 */  sw         $s0, 0x10($sp)
/* 12BD80 8010DC90 0C04234B */  jal        func_menu_80108D2C
/* 12BD84 8010DC94 AE420000 */   sw        $v0, 0x0($s2)
/* 12BD88 8010DC98 26421C2C */  addiu      $v0, $s2, 0x1C2C
/* 12BD8C 8010DC9C 5040000F */  beql       $v0, $zero, .Lmenu_8010DCDC
/* 12BD90 8010DCA0 26421B24 */   addiu     $v0, $s2, 0x1B24
/* 12BD94 8010DCA4 26503014 */  addiu      $s0, $s2, 0x3014
/* 12BD98 8010DCA8 5050000C */  beql       $v0, $s0, .Lmenu_8010DCDC
/* 12BD9C 8010DCAC 26421B24 */   addiu     $v0, $s2, 0x1B24
/* 12BDA0 8010DCB0 00408821 */  addu       $s1, $v0, $zero
/* 12BDA4 8010DCB4 2610F60C */  addiu      $s0, $s0, -0x9F4
.Lmenu_8010DCB8:
/* 12BDA8 8010DCB8 8E020054 */  lw         $v0, 0x54($s0)
/* 12BDAC 8010DCBC 24050002 */  addiu      $a1, $zero, 0x2
/* 12BDB0 8010DCC0 84440010 */  lh         $a0, 0x10($v0)
/* 12BDB4 8010DCC4 8C420014 */  lw         $v0, 0x14($v0)
/* 12BDB8 8010DCC8 0040F809 */  jalr       $v0
/* 12BDBC 8010DCCC 02042021 */   addu      $a0, $s0, $a0
/* 12BDC0 8010DCD0 5630FFF9 */  bnel       $s1, $s0, .Lmenu_8010DCB8
/* 12BDC4 8010DCD4 2610F60C */   addiu     $s0, $s0, -0x9F4
/* 12BDC8 8010DCD8 26421B24 */  addiu      $v0, $s2, 0x1B24
.Lmenu_8010DCDC:
/* 12BDCC 8010DCDC 5040000C */  beql       $v0, $zero, .Lmenu_8010DD10
/* 12BDD0 8010DCE0 26421854 */   addiu     $v0, $s2, 0x1854
/* 12BDD4 8010DCE4 26501B6C */  addiu      $s0, $s2, 0x1B6C
/* 12BDD8 8010DCE8 50500009 */  beql       $v0, $s0, .Lmenu_8010DD10
/* 12BDDC 8010DCEC 26421854 */   addiu     $v0, $s2, 0x1854
/* 12BDE0 8010DCF0 00408821 */  addu       $s1, $v0, $zero
/* 12BDE4 8010DCF4 2610FFF4 */  addiu      $s0, $s0, -0xC
.Lmenu_8010DCF8:
/* 12BDE8 8010DCF8 02002021 */  addu       $a0, $s0, $zero
/* 12BDEC 8010DCFC 0C0016E2 */  jal        func_80005B88
/* 12BDF0 8010DD00 24050002 */   addiu     $a1, $zero, 0x2
/* 12BDF4 8010DD04 5630FFFC */  bnel       $s1, $s0, .Lmenu_8010DCF8
/* 12BDF8 8010DD08 2610FFF4 */   addiu     $s0, $s0, -0xC
/* 12BDFC 8010DD0C 26421854 */  addiu      $v0, $s2, 0x1854
.Lmenu_8010DD10:
/* 12BE00 8010DD10 1040000D */  beqz       $v0, .Lmenu_8010DD48
/* 12BE04 8010DD14 26501B24 */   addiu     $s0, $s2, 0x1B24
/* 12BE08 8010DD18 5050000C */  beql       $v0, $s0, .Lmenu_8010DD4C
/* 12BE0C 8010DD1C 2642172C */   addiu     $v0, $s2, 0x172C
/* 12BE10 8010DD20 00408821 */  addu       $s1, $v0, $zero
/* 12BE14 8010DD24 2610FF88 */  addiu      $s0, $s0, -0x78
.Lmenu_8010DD28:
/* 12BE18 8010DD28 8E020054 */  lw         $v0, 0x54($s0)
/* 12BE1C 8010DD2C 24050002 */  addiu      $a1, $zero, 0x2
/* 12BE20 8010DD30 84440010 */  lh         $a0, 0x10($v0)
/* 12BE24 8010DD34 8C420014 */  lw         $v0, 0x14($v0)
/* 12BE28 8010DD38 0040F809 */  jalr       $v0
/* 12BE2C 8010DD3C 02042021 */   addu      $a0, $s0, $a0
/* 12BE30 8010DD40 1630FFF9 */  bne        $s1, $s0, .Lmenu_8010DD28
/* 12BE34 8010DD44 2610FF88 */   addiu     $s0, $s0, -0x78
.Lmenu_8010DD48:
/* 12BE38 8010DD48 2642172C */  addiu      $v0, $s2, 0x172C
.Lmenu_8010DD4C:
/* 12BE3C 8010DD4C 1040000C */  beqz       $v0, .Lmenu_8010DD80
/* 12BE40 8010DD50 26501854 */   addiu     $s0, $s2, 0x1854
/* 12BE44 8010DD54 1050000A */  beq        $v0, $s0, .Lmenu_8010DD80
/* 12BE48 8010DD58 00408821 */   addu      $s1, $v0, $zero
/* 12BE4C 8010DD5C 2610FF6C */  addiu      $s0, $s0, -0x94
.Lmenu_8010DD60:
/* 12BE50 8010DD60 8E020054 */  lw         $v0, 0x54($s0)
/* 12BE54 8010DD64 24050002 */  addiu      $a1, $zero, 0x2
/* 12BE58 8010DD68 84440010 */  lh         $a0, 0x10($v0)
/* 12BE5C 8010DD6C 8C420014 */  lw         $v0, 0x14($v0)
/* 12BE60 8010DD70 0040F809 */  jalr       $v0
/* 12BE64 8010DD74 02042021 */   addu      $a0, $s0, $a0
/* 12BE68 8010DD78 1630FFF9 */  bne        $s1, $s0, .Lmenu_8010DD60
/* 12BE6C 8010DD7C 2610FF6C */   addiu     $s0, $s0, -0x94
.Lmenu_8010DD80:
/* 12BE70 8010DD80 02402021 */  addu       $a0, $s2, $zero
/* 12BE74 8010DD84 0C0420DB */  jal        func_menu_8010836C
/* 12BE78 8010DD88 02602821 */   addu      $a1, $s3, $zero
/* 12BE7C 8010DD8C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 12BE80 8010DD90 8FB3001C */  lw         $s3, 0x1C($sp)
/* 12BE84 8010DD94 8FB20018 */  lw         $s2, 0x18($sp)
/* 12BE88 8010DD98 8FB10014 */  lw         $s1, 0x14($sp)
/* 12BE8C 8010DD9C 8FB00010 */  lw         $s0, 0x10($sp)
/* 12BE90 8010DDA0 03E00008 */  jr         $ra
/* 12BE94 8010DDA4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_8010DDA8
/* 12BE98 8010DDA8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 12BE9C 8010DDAC AFB00010 */  sw         $s0, 0x10($sp)
/* 12BEA0 8010DDB0 00808021 */  addu       $s0, $a0, $zero
/* 12BEA4 8010DDB4 26041B6C */  addiu      $a0, $s0, 0x1B6C
/* 12BEA8 8010DDB8 00002821 */  addu       $a1, $zero, $zero
/* 12BEAC 8010DDBC AFBF0014 */  sw         $ra, 0x14($sp)
/* 12BEB0 8010DDC0 0C000697 */  jal        func_80001A5C
/* 12BEB4 8010DDC4 240600C0 */   addiu     $a2, $zero, 0xC0
/* 12BEB8 8010DDC8 0C042141 */  jal        func_menu_80108504
/* 12BEBC 8010DDCC 02002021 */   addu      $a0, $s0, $zero
/* 12BEC0 8010DDD0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 12BEC4 8010DDD4 8FB00010 */  lw         $s0, 0x10($sp)
/* 12BEC8 8010DDD8 03E00008 */  jr         $ra
/* 12BECC 8010DDDC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8010DDE0
/* 12BED0 8010DDE0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 12BED4 8010DDE4 AFB40028 */  sw         $s4, 0x28($sp)
/* 12BED8 8010DDE8 0080A021 */  addu       $s4, $a0, $zero
/* 12BEDC 8010DDEC AFBF0030 */  sw         $ra, 0x30($sp)
/* 12BEE0 8010DDF0 AFB5002C */  sw         $s5, 0x2C($sp)
/* 12BEE4 8010DDF4 AFB30024 */  sw         $s3, 0x24($sp)
/* 12BEE8 8010DDF8 AFB20020 */  sw         $s2, 0x20($sp)
/* 12BEEC 8010DDFC AFB1001C */  sw         $s1, 0x1C($sp)
/* 12BEF0 8010DE00 0C0422BE */  jal        func_menu_80108AF8
/* 12BEF4 8010DE04 AFB00018 */   sw        $s0, 0x18($sp)
/* 12BEF8 8010DE08 8E82171C */  lw         $v0, 0x171C($s4)
/* 12BEFC 8010DE0C 18400018 */  blez       $v0, .Lmenu_8010DE70
/* 12BF00 8010DE10 00009021 */   addu      $s2, $zero, $zero
/* 12BF04 8010DE14 24150055 */  addiu      $s5, $zero, 0x55
/* 12BF08 8010DE18 24131C2C */  addiu      $s3, $zero, 0x1C2C
/* 12BF0C 8010DE1C 2411172C */  addiu      $s1, $zero, 0x172C
.Lmenu_8010DE20:
/* 12BF10 8010DE20 02802021 */  addu       $a0, $s4, $zero
/* 12BF14 8010DE24 02918021 */  addu       $s0, $s4, $s1
/* 12BF18 8010DE28 02002821 */  addu       $a1, $s0, $zero
/* 12BF1C 8010DE2C 24060046 */  addiu      $a2, $zero, 0x46
/* 12BF20 8010DE30 0C046966 */  jal        func_menu_8011A598
/* 12BF24 8010DE34 24070044 */   addiu     $a3, $zero, 0x44
/* 12BF28 8010DE38 02802021 */  addu       $a0, $s4, $zero
/* 12BF2C 8010DE3C 02932821 */  addu       $a1, $s4, $s3
/* 12BF30 8010DE40 02003021 */  addu       $a2, $s0, $zero
/* 12BF34 8010DE44 26470078 */  addiu      $a3, $s2, 0x78
/* 12BF38 8010DE48 30E7FFFF */  andi       $a3, $a3, 0xFFFF
/* 12BF3C 8010DE4C 0C04699A */  jal        func_menu_8011A668
/* 12BF40 8010DE50 AFB50010 */   sw        $s5, 0x10($sp)
/* 12BF44 8010DE54 267309F4 */  addiu      $s3, $s3, 0x9F4
/* 12BF48 8010DE58 8E82171C */  lw         $v0, 0x171C($s4)
/* 12BF4C 8010DE5C 26520001 */  addiu      $s2, $s2, 0x1
/* 12BF50 8010DE60 0242102A */  slt        $v0, $s2, $v0
/* 12BF54 8010DE64 1440FFEE */  bnez       $v0, .Lmenu_8010DE20
/* 12BF58 8010DE68 26310094 */   addiu     $s1, $s1, 0x94
/* 12BF5C 8010DE6C 8E82171C */  lw         $v0, 0x171C($s4)
.Lmenu_8010DE70:
/* 12BF60 8010DE70 18400015 */  blez       $v0, .Lmenu_8010DEC8
/* 12BF64 8010DE74 00009021 */   addu      $s2, $zero, $zero
/* 12BF68 8010DE78 24151854 */  addiu      $s5, $zero, 0x1854
.Lmenu_8010DE7C:
/* 12BF6C 8010DE7C 00008821 */  addu       $s1, $zero, $zero
/* 12BF70 8010DE80 26420002 */  addiu      $v0, $s2, 0x2
/* 12BF74 8010DE84 3053FFFF */  andi       $s3, $v0, 0xFFFF
/* 12BF78 8010DE88 02958021 */  addu       $s0, $s4, $s5
.Lmenu_8010DE8C:
/* 12BF7C 8010DE8C AFB30010 */  sw         $s3, 0x10($sp)
/* 12BF80 8010DE90 02802021 */  addu       $a0, $s4, $zero
/* 12BF84 8010DE94 02002821 */  addu       $a1, $s0, $zero
/* 12BF88 8010DE98 2406009E */  addiu      $a2, $zero, 0x9E
/* 12BF8C 8010DE9C 0C04679E */  jal        func_menu_80119E78
/* 12BF90 8010DEA0 24070040 */   addiu     $a3, $zero, 0x40
/* 12BF94 8010DEA4 26310001 */  addiu      $s1, $s1, 0x1
/* 12BF98 8010DEA8 2A220003 */  slti       $v0, $s1, 0x3
/* 12BF9C 8010DEAC 1440FFF7 */  bnez       $v0, .Lmenu_8010DE8C
/* 12BFA0 8010DEB0 26100078 */   addiu     $s0, $s0, 0x78
/* 12BFA4 8010DEB4 8E82171C */  lw         $v0, 0x171C($s4)
/* 12BFA8 8010DEB8 26520001 */  addiu      $s2, $s2, 0x1
/* 12BFAC 8010DEBC 0242102A */  slt        $v0, $s2, $v0
/* 12BFB0 8010DEC0 1440FFEE */  bnez       $v0, .Lmenu_8010DE7C
/* 12BFB4 8010DEC4 26B50168 */   addiu     $s5, $s5, 0x168
.Lmenu_8010DEC8:
/* 12BFB8 8010DEC8 8FBF0030 */  lw         $ra, 0x30($sp)
/* 12BFBC 8010DECC 8FB5002C */  lw         $s5, 0x2C($sp)
/* 12BFC0 8010DED0 8FB40028 */  lw         $s4, 0x28($sp)
/* 12BFC4 8010DED4 8FB30024 */  lw         $s3, 0x24($sp)
/* 12BFC8 8010DED8 8FB20020 */  lw         $s2, 0x20($sp)
/* 12BFCC 8010DEDC 8FB1001C */  lw         $s1, 0x1C($sp)
/* 12BFD0 8010DEE0 8FB00018 */  lw         $s0, 0x18($sp)
/* 12BFD4 8010DEE4 03E00008 */  jr         $ra
/* 12BFD8 8010DEE8 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_8010DEEC
/* 12BFDC 8010DEEC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 12BFE0 8010DEF0 AFB3001C */  sw         $s3, 0x1C($sp)
/* 12BFE4 8010DEF4 00809821 */  addu       $s3, $a0, $zero
/* 12BFE8 8010DEF8 AFBF0034 */  sw         $ra, 0x34($sp)
/* 12BFEC 8010DEFC AFBE0030 */  sw         $fp, 0x30($sp)
/* 12BFF0 8010DF00 AFB7002C */  sw         $s7, 0x2C($sp)
/* 12BFF4 8010DF04 AFB60028 */  sw         $s6, 0x28($sp)
/* 12BFF8 8010DF08 AFB50024 */  sw         $s5, 0x24($sp)
/* 12BFFC 8010DF0C AFB40020 */  sw         $s4, 0x20($sp)
/* 12C000 8010DF10 AFB20018 */  sw         $s2, 0x18($sp)
/* 12C004 8010DF14 AFB10014 */  sw         $s1, 0x14($sp)
/* 12C008 8010DF18 0C042319 */  jal        func_menu_80108C64
/* 12C00C 8010DF1C AFB00010 */   sw        $s0, 0x10($sp)
/* 12C010 8010DF20 10400029 */  beqz       $v0, .Lmenu_8010DFC8
/* 12C014 8010DF24 00001021 */   addu      $v0, $zero, $zero
/* 12C018 8010DF28 8E62171C */  lw         $v0, 0x171C($s3)
/* 12C01C 8010DF2C 18400025 */  blez       $v0, .Lmenu_8010DFC4
/* 12C020 8010DF30 0000A021 */   addu      $s4, $zero, $zero
/* 12C024 8010DF34 241E1C2C */  addiu      $fp, $zero, 0x1C2C
/* 12C028 8010DF38 0260B821 */  addu       $s7, $s3, $zero
/* 12C02C 8010DF3C 24161B6C */  addiu      $s6, $zero, 0x1B6C
/* 12C030 8010DF40 24151B24 */  addiu      $s5, $zero, 0x1B24
.Lmenu_8010DF44:
/* 12C034 8010DF44 00009021 */  addu       $s2, $zero, $zero
/* 12C038 8010DF48 02768821 */  addu       $s1, $s3, $s6
/* 12C03C 8010DF4C 02758021 */  addu       $s0, $s3, $s5
.Lmenu_8010DF50:
/* 12C040 8010DF50 02002021 */  addu       $a0, $s0, $zero
/* 12C044 8010DF54 02202821 */  addu       $a1, $s1, $zero
/* 12C048 8010DF58 0C0016F6 */  jal        func_80005BD8
/* 12C04C 8010DF5C 24060010 */   addiu     $a2, $zero, 0x10
/* 12C050 8010DF60 26310020 */  addiu      $s1, $s1, 0x20
/* 12C054 8010DF64 26520001 */  addiu      $s2, $s2, 0x1
/* 12C058 8010DF68 2A420003 */  slti       $v0, $s2, 0x3
/* 12C05C 8010DF6C 1440FFF8 */  bnez       $v0, .Lmenu_8010DF50
/* 12C060 8010DF70 2610000C */   addiu     $s0, $s0, 0xC
/* 12C064 8010DF74 8EE21724 */  lw         $v0, 0x1724($s7)
/* 12C068 8010DF78 5040000B */  beql       $v0, $zero, .Lmenu_8010DFA8
/* 12C06C 8010DF7C 27DE09F4 */   addiu     $fp, $fp, 0x9F4
/* 12C070 8010DF80 02602021 */  addu       $a0, $s3, $zero
/* 12C074 8010DF84 0C043844 */  jal        func_menu_8010E110
/* 12C078 8010DF88 02802821 */   addu      $a1, $s4, $zero
/* 12C07C 8010DF8C 8E620000 */  lw         $v0, 0x0($s3)
/* 12C080 8010DF90 027E2821 */  addu       $a1, $s3, $fp
/* 12C084 8010DF94 84440090 */  lh         $a0, 0x90($v0)
/* 12C088 8010DF98 8C420094 */  lw         $v0, 0x94($v0)
/* 12C08C 8010DF9C 0040F809 */  jalr       $v0
/* 12C090 8010DFA0 02642021 */   addu      $a0, $s3, $a0
/* 12C094 8010DFA4 27DE09F4 */  addiu      $fp, $fp, 0x9F4
.Lmenu_8010DFA8:
/* 12C098 8010DFA8 26F70004 */  addiu      $s7, $s7, 0x4
/* 12C09C 8010DFAC 26D60060 */  addiu      $s6, $s6, 0x60
/* 12C0A0 8010DFB0 8E62171C */  lw         $v0, 0x171C($s3)
/* 12C0A4 8010DFB4 26940001 */  addiu      $s4, $s4, 0x1
/* 12C0A8 8010DFB8 0282102A */  slt        $v0, $s4, $v0
/* 12C0AC 8010DFBC 1440FFE1 */  bnez       $v0, .Lmenu_8010DF44
/* 12C0B0 8010DFC0 26B50024 */   addiu     $s5, $s5, 0x24
.Lmenu_8010DFC4:
/* 12C0B4 8010DFC4 8E620004 */  lw         $v0, 0x4($s3)
.Lmenu_8010DFC8:
/* 12C0B8 8010DFC8 8FBF0034 */  lw         $ra, 0x34($sp)
/* 12C0BC 8010DFCC 8FBE0030 */  lw         $fp, 0x30($sp)
/* 12C0C0 8010DFD0 8FB7002C */  lw         $s7, 0x2C($sp)
/* 12C0C4 8010DFD4 8FB60028 */  lw         $s6, 0x28($sp)
/* 12C0C8 8010DFD8 8FB50024 */  lw         $s5, 0x24($sp)
/* 12C0CC 8010DFDC 8FB40020 */  lw         $s4, 0x20($sp)
/* 12C0D0 8010DFE0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 12C0D4 8010DFE4 8FB20018 */  lw         $s2, 0x18($sp)
/* 12C0D8 8010DFE8 8FB10014 */  lw         $s1, 0x14($sp)
/* 12C0DC 8010DFEC 8FB00010 */  lw         $s0, 0x10($sp)
/* 12C0E0 8010DFF0 03E00008 */  jr         $ra
/* 12C0E4 8010DFF4 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_8010DFF8
/* 12C0E8 8010DFF8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 12C0EC 8010DFFC AFB50024 */  sw         $s5, 0x24($sp)
/* 12C0F0 8010E000 0080A821 */  addu       $s5, $a0, $zero
/* 12C0F4 8010E004 AFB60028 */  sw         $s6, 0x28($sp)
/* 12C0F8 8010E008 00A0B021 */  addu       $s6, $a1, $zero
/* 12C0FC 8010E00C AFB20018 */  sw         $s2, 0x18($sp)
/* 12C100 8010E010 00169040 */  sll        $s2, $s6, 1
/* 12C104 8010E014 02569021 */  addu       $s2, $s2, $s6
/* 12C108 8010E018 AFB00010 */  sw         $s0, 0x10($sp)
/* 12C10C 8010E01C 00128100 */  sll        $s0, $s2, 4
/* 12C110 8010E020 AFB3001C */  sw         $s3, 0x1C($sp)
/* 12C114 8010E024 261314D4 */  addiu      $s3, $s0, 0x14D4
/* 12C118 8010E028 AFB10014 */  sw         $s1, 0x14($sp)
/* 12C11C 8010E02C 02B38821 */  addu       $s1, $s5, $s3
/* 12C120 8010E030 02202021 */  addu       $a0, $s1, $zero
/* 12C124 8010E034 AFBF0030 */  sw         $ra, 0x30($sp)
/* 12C128 8010E038 AFB7002C */  sw         $s7, 0x2C($sp)
/* 12C12C 8010E03C 0C03D160 */  jal        func_menu_800F4580
/* 12C130 8010E040 AFB40020 */   sw        $s4, 0x20($sp)
/* 12C134 8010E044 0C03D160 */  jal        func_menu_800F4580
/* 12C138 8010E048 02202021 */   addu      $a0, $s1, $zero
/* 12C13C 8010E04C 0000A021 */  addu       $s4, $zero, $zero
/* 12C140 8010E050 0260B821 */  addu       $s7, $s3, $zero
/* 12C144 8010E054 02128023 */  subu       $s0, $s0, $s2
/* 12C148 8010E058 001098C0 */  sll        $s3, $s0, 3
/* 12C14C 8010E05C 26621854 */  addiu      $v0, $s3, 0x1854
/* 12C150 8010E060 02A28021 */  addu       $s0, $s5, $v0
/* 12C154 8010E064 02809021 */  addu       $s2, $s4, $zero
/* 12C158 8010E068 001610C0 */  sll        $v0, $s6, 3
/* 12C15C 8010E06C 00561021 */  addu       $v0, $v0, $s6
/* 12C160 8010E070 00021080 */  sll        $v0, $v0, 2
/* 12C164 8010E074 24421B24 */  addiu      $v0, $v0, 0x1B24
/* 12C168 8010E078 02A28821 */  addu       $s1, $s5, $v0
.Lmenu_8010E07C:
/* 12C16C 8010E07C 0C03D131 */  jal        func_menu_800F44C4
/* 12C170 8010E080 02B72021 */   addu      $a0, $s5, $s7
/* 12C174 8010E084 00402021 */  addu       $a0, $v0, $zero
/* 12C178 8010E088 0C03BC12 */  jal        func_menu_800EF048
/* 12C17C 8010E08C 02202821 */   addu      $a1, $s1, $zero
/* 12C180 8010E090 02202821 */  addu       $a1, $s1, $zero
/* 12C184 8010E094 02751021 */  addu       $v0, $s3, $s5
/* 12C188 8010E098 02421021 */  addu       $v0, $s2, $v0
/* 12C18C 8010E09C 26520078 */  addiu      $s2, $s2, 0x78
/* 12C190 8010E0A0 2631000C */  addiu      $s1, $s1, 0xC
/* 12C194 8010E0A4 26940001 */  addiu      $s4, $s4, 0x1
/* 12C198 8010E0A8 8C4218A8 */  lw         $v0, 0x18A8($v0)
/* 12C19C 8010E0AC 00003021 */  addu       $a2, $zero, $zero
/* 12C1A0 8010E0B0 84440090 */  lh         $a0, 0x90($v0)
/* 12C1A4 8010E0B4 8C420094 */  lw         $v0, 0x94($v0)
/* 12C1A8 8010E0B8 0040F809 */  jalr       $v0
/* 12C1AC 8010E0BC 02042021 */   addu      $a0, $s0, $a0
/* 12C1B0 8010E0C0 2A820003 */  slti       $v0, $s4, 0x3
/* 12C1B4 8010E0C4 1440FFED */  bnez       $v0, .Lmenu_8010E07C
/* 12C1B8 8010E0C8 26100078 */   addiu     $s0, $s0, 0x78
/* 12C1BC 8010E0CC 00162040 */  sll        $a0, $s6, 1
/* 12C1C0 8010E0D0 00962021 */  addu       $a0, $a0, $s6
/* 12C1C4 8010E0D4 00042100 */  sll        $a0, $a0, 4
/* 12C1C8 8010E0D8 248414D4 */  addiu      $a0, $a0, 0x14D4
/* 12C1CC 8010E0DC 0C03D160 */  jal        func_menu_800F4580
/* 12C1D0 8010E0E0 02A42021 */   addu      $a0, $s5, $a0
/* 12C1D4 8010E0E4 8FBF0030 */  lw         $ra, 0x30($sp)
/* 12C1D8 8010E0E8 8FB7002C */  lw         $s7, 0x2C($sp)
/* 12C1DC 8010E0EC 8FB60028 */  lw         $s6, 0x28($sp)
/* 12C1E0 8010E0F0 8FB50024 */  lw         $s5, 0x24($sp)
/* 12C1E4 8010E0F4 8FB40020 */  lw         $s4, 0x20($sp)
/* 12C1E8 8010E0F8 8FB3001C */  lw         $s3, 0x1C($sp)
/* 12C1EC 8010E0FC 8FB20018 */  lw         $s2, 0x18($sp)
/* 12C1F0 8010E100 8FB10014 */  lw         $s1, 0x14($sp)
/* 12C1F4 8010E104 8FB00010 */  lw         $s0, 0x10($sp)
/* 12C1F8 8010E108 03E00008 */  jr         $ra
/* 12C1FC 8010E10C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_8010E110
/* 12C200 8010E110 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 12C204 8010E114 AFB3001C */  sw         $s3, 0x1C($sp)
/* 12C208 8010E118 00809821 */  addu       $s3, $a0, $zero
/* 12C20C 8010E11C AFB20018 */  sw         $s2, 0x18($sp)
/* 12C210 8010E120 00A09021 */  addu       $s2, $a1, $zero
/* 12C214 8010E124 001210C0 */  sll        $v0, $s2, 3
/* 12C218 8010E128 00521021 */  addu       $v0, $v0, $s2
/* 12C21C 8010E12C 00021080 */  sll        $v0, $v0, 2
/* 12C220 8010E130 00521021 */  addu       $v0, $v0, $s2
/* 12C224 8010E134 00021080 */  sll        $v0, $v0, 2
/* 12C228 8010E138 AFB00010 */  sw         $s0, 0x10($sp)
/* 12C22C 8010E13C 2450172C */  addiu      $s0, $v0, 0x172C
/* 12C230 8010E140 02702021 */  addu       $a0, $s3, $s0
/* 12C234 8010E144 AFBF0024 */  sw         $ra, 0x24($sp)
/* 12C238 8010E148 AFB40020 */  sw         $s4, 0x20($sp)
/* 12C23C 8010E14C 0C0473D9 */  jal        func_menu_8011CF64
/* 12C240 8010E150 AFB10014 */   sw        $s1, 0x14($sp)
/* 12C244 8010E154 00121080 */  sll        $v0, $s2, 2
/* 12C248 8010E158 02621021 */  addu       $v0, $s3, $v0
/* 12C24C 8010E15C 8C421724 */  lw         $v0, 0x1724($v0)
/* 12C250 8010E160 10400025 */  beqz       $v0, .Lmenu_8010E1F8
/* 12C254 8010E164 00000000 */   nop
/* 12C258 8010E168 8E620004 */  lw         $v0, 0x4($s3)
/* 12C25C 8010E16C 10400022 */  beqz       $v0, .Lmenu_8010E1F8
/* 12C260 8010E170 00000000 */   nop
/* 12C264 8010E174 02602021 */  addu       $a0, $s3, $zero
/* 12C268 8010E178 0C0437FE */  jal        func_menu_8010DFF8
/* 12C26C 8010E17C 02402821 */   addu      $a1, $s2, $zero
/* 12C270 8010E180 00008821 */  addu       $s1, $zero, $zero
/* 12C274 8010E184 0200A021 */  addu       $s4, $s0, $zero
/* 12C278 8010E188 00121840 */  sll        $v1, $s2, 1
/* 12C27C 8010E18C 00721821 */  addu       $v1, $v1, $s2
/* 12C280 8010E190 00031100 */  sll        $v0, $v1, 4
/* 12C284 8010E194 00431023 */  subu       $v0, $v0, $v1
/* 12C288 8010E198 000210C0 */  sll        $v0, $v0, 3
/* 12C28C 8010E19C 24421854 */  addiu      $v0, $v0, 0x1854
/* 12C290 8010E1A0 02628021 */  addu       $s0, $s3, $v0
.Lmenu_8010E1A4:
/* 12C294 8010E1A4 02742021 */  addu       $a0, $s3, $s4
/* 12C298 8010E1A8 0C047346 */  jal        func_menu_8011CD18
/* 12C29C 8010E1AC 02002821 */   addu      $a1, $s0, $zero
/* 12C2A0 8010E1B0 26310001 */  addiu      $s1, $s1, 0x1
/* 12C2A4 8010E1B4 2A220003 */  slti       $v0, $s1, 0x3
/* 12C2A8 8010E1B8 1440FFFA */  bnez       $v0, .Lmenu_8010E1A4
/* 12C2AC 8010E1BC 26100078 */   addiu     $s0, $s0, 0x78
/* 12C2B0 8010E1C0 24050001 */  addiu      $a1, $zero, 0x1
/* 12C2B4 8010E1C4 001220C0 */  sll        $a0, $s2, 3
/* 12C2B8 8010E1C8 00922021 */  addu       $a0, $a0, $s2
/* 12C2BC 8010E1CC 00042080 */  sll        $a0, $a0, 2
/* 12C2C0 8010E1D0 00922021 */  addu       $a0, $a0, $s2
/* 12C2C4 8010E1D4 00042080 */  sll        $a0, $a0, 2
/* 12C2C8 8010E1D8 00931021 */  addu       $v0, $a0, $s3
/* 12C2CC 8010E1DC 2484172C */  addiu      $a0, $a0, 0x172C
/* 12C2D0 8010E1E0 8C421780 */  lw         $v0, 0x1780($v0)
/* 12C2D4 8010E1E4 02642021 */  addu       $a0, $s3, $a0
/* 12C2D8 8010E1E8 844300A8 */  lh         $v1, 0xA8($v0)
/* 12C2DC 8010E1EC 8C4200AC */  lw         $v0, 0xAC($v0)
/* 12C2E0 8010E1F0 0040F809 */  jalr       $v0
/* 12C2E4 8010E1F4 00832021 */   addu      $a0, $a0, $v1
.Lmenu_8010E1F8:
/* 12C2E8 8010E1F8 8FBF0024 */  lw         $ra, 0x24($sp)
/* 12C2EC 8010E1FC 8FB40020 */  lw         $s4, 0x20($sp)
/* 12C2F0 8010E200 8FB3001C */  lw         $s3, 0x1C($sp)
/* 12C2F4 8010E204 8FB20018 */  lw         $s2, 0x18($sp)
/* 12C2F8 8010E208 8FB10014 */  lw         $s1, 0x14($sp)
/* 12C2FC 8010E20C 8FB00010 */  lw         $s0, 0x10($sp)
/* 12C300 8010E210 03E00008 */  jr         $ra
/* 12C304 8010E214 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_8010E218
/* 12C308 8010E218 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 12C30C 8010E21C AFB10014 */  sw         $s1, 0x14($sp)
/* 12C310 8010E220 00808821 */  addu       $s1, $a0, $zero
/* 12C314 8010E224 AFB00010 */  sw         $s0, 0x10($sp)
/* 12C318 8010E228 00A08021 */  addu       $s0, $a1, $zero
/* 12C31C 8010E22C 00102040 */  sll        $a0, $s0, 1
/* 12C320 8010E230 00902021 */  addu       $a0, $a0, $s0
/* 12C324 8010E234 00042100 */  sll        $a0, $a0, 4
/* 12C328 8010E238 248414D4 */  addiu      $a0, $a0, 0x14D4
/* 12C32C 8010E23C 02242021 */  addu       $a0, $s1, $a0
/* 12C330 8010E240 AFBF0018 */  sw         $ra, 0x18($sp)
/* 12C334 8010E244 0C03D19B */  jal        func_menu_800F466C
/* 12C338 8010E248 00C02821 */   addu      $a1, $a2, $zero
/* 12C33C 8010E24C 02202021 */  addu       $a0, $s1, $zero
/* 12C340 8010E250 0C042452 */  jal        func_menu_80109148
/* 12C344 8010E254 02002821 */   addu      $a1, $s0, $zero
/* 12C348 8010E258 02202021 */  addu       $a0, $s1, $zero
/* 12C34C 8010E25C 0C043844 */  jal        func_menu_8010E110
/* 12C350 8010E260 02002821 */   addu      $a1, $s0, $zero
/* 12C354 8010E264 8FBF0018 */  lw         $ra, 0x18($sp)
/* 12C358 8010E268 8FB10014 */  lw         $s1, 0x14($sp)
/* 12C35C 8010E26C 8FB00010 */  lw         $s0, 0x10($sp)
/* 12C360 8010E270 03E00008 */  jr         $ra
/* 12C364 8010E274 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8010E278
/* 12C368 8010E278 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 12C36C 8010E27C AFB10014 */  sw         $s1, 0x14($sp)
/* 12C370 8010E280 00808821 */  addu       $s1, $a0, $zero
/* 12C374 8010E284 AFB60028 */  sw         $s6, 0x28($sp)
/* 12C378 8010E288 00A0B021 */  addu       $s6, $a1, $zero
/* 12C37C 8010E28C AFB00010 */  sw         $s0, 0x10($sp)
/* 12C380 8010E290 00008021 */  addu       $s0, $zero, $zero
/* 12C384 8010E294 AFB50024 */  sw         $s5, 0x24($sp)
/* 12C388 8010E298 2415FFFF */  addiu      $s5, $zero, -0x1
/* 12C38C 8010E29C AFB40020 */  sw         $s4, 0x20($sp)
/* 12C390 8010E2A0 24140001 */  addiu      $s4, $zero, 0x1
/* 12C394 8010E2A4 AFB3001C */  sw         $s3, 0x1C($sp)
/* 12C398 8010E2A8 24131C2C */  addiu      $s3, $zero, 0x1C2C
/* 12C39C 8010E2AC AFB20018 */  sw         $s2, 0x18($sp)
/* 12C3A0 8010E2B0 02009021 */  addu       $s2, $s0, $zero
/* 12C3A4 8010E2B4 AFBF002C */  sw         $ra, 0x2C($sp)
.Lmenu_8010E2B8:
/* 12C3A8 8010E2B8 8E22171C */  lw         $v0, 0x171C($s1)
/* 12C3AC 8010E2BC 0202102A */  slt        $v0, $s0, $v0
/* 12C3B0 8010E2C0 10400019 */  beqz       $v0, .Lmenu_8010E328
/* 12C3B4 8010E2C4 02331021 */   addu      $v0, $s1, $s3
/* 12C3B8 8010E2C8 54560014 */  bnel       $v0, $s6, .Lmenu_8010E31C
/* 12C3BC 8010E2CC 267309F4 */   addiu     $s3, $s3, 0x9F4
/* 12C3C0 8010E2D0 02511021 */  addu       $v0, $s2, $s1
/* 12C3C4 8010E2D4 8C422210 */  lw         $v0, 0x2210($v0)
/* 12C3C8 8010E2D8 10550005 */  beq        $v0, $s5, .Lmenu_8010E2F0
/* 12C3CC 8010E2DC 02202021 */   addu      $a0, $s1, $zero
/* 12C3D0 8010E2E0 10540007 */  beq        $v0, $s4, .Lmenu_8010E300
/* 12C3D4 8010E2E4 00000000 */   nop
/* 12C3D8 8010E2E8 080438C4 */  j          .Lmenu_8010E310
/* 12C3DC 8010E2EC 00000000 */   nop
.Lmenu_8010E2F0:
/* 12C3E0 8010E2F0 0C0424CE */  jal        func_menu_80109338
/* 12C3E4 8010E2F4 02002821 */   addu      $a1, $s0, $zero
/* 12C3E8 8010E2F8 080438C7 */  j          .Lmenu_8010E31C
/* 12C3EC 8010E2FC 267309F4 */   addiu     $s3, $s3, 0x9F4
.Lmenu_8010E300:
/* 12C3F0 8010E300 0C0424A2 */  jal        func_menu_80109288
/* 12C3F4 8010E304 02002821 */   addu      $a1, $s0, $zero
/* 12C3F8 8010E308 080438C7 */  j          .Lmenu_8010E31C
/* 12C3FC 8010E30C 267309F4 */   addiu     $s3, $s3, 0x9F4
.Lmenu_8010E310:
/* 12C400 8010E310 0C042452 */  jal        func_menu_80109148
/* 12C404 8010E314 02002821 */   addu      $a1, $s0, $zero
/* 12C408 8010E318 267309F4 */  addiu      $s3, $s3, 0x9F4
.Lmenu_8010E31C:
/* 12C40C 8010E31C 265209F4 */  addiu      $s2, $s2, 0x9F4
/* 12C410 8010E320 080438AE */  j          .Lmenu_8010E2B8
/* 12C414 8010E324 26100001 */   addiu     $s0, $s0, 0x1
.Lmenu_8010E328:
/* 12C418 8010E328 8FBF002C */  lw         $ra, 0x2C($sp)
/* 12C41C 8010E32C 8FB60028 */  lw         $s6, 0x28($sp)
/* 12C420 8010E330 8FB50024 */  lw         $s5, 0x24($sp)
/* 12C424 8010E334 8FB40020 */  lw         $s4, 0x20($sp)
/* 12C428 8010E338 8FB3001C */  lw         $s3, 0x1C($sp)
/* 12C42C 8010E33C 8FB20018 */  lw         $s2, 0x18($sp)
/* 12C430 8010E340 8FB10014 */  lw         $s1, 0x14($sp)
/* 12C434 8010E344 8FB00010 */  lw         $s0, 0x10($sp)
/* 12C438 8010E348 03E00008 */  jr         $ra
/* 12C43C 8010E34C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_8010E350
/* 12C440 8010E350 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 12C444 8010E354 AFB20018 */  sw         $s2, 0x18($sp)
/* 12C448 8010E358 00809021 */  addu       $s2, $a0, $zero
/* 12C44C 8010E35C AFB3001C */  sw         $s3, 0x1C($sp)
/* 12C450 8010E360 00A09821 */  addu       $s3, $a1, $zero
/* 12C454 8010E364 AFBF0020 */  sw         $ra, 0x20($sp)
/* 12C458 8010E368 AFB10014 */  sw         $s1, 0x14($sp)
/* 12C45C 8010E36C AFB00010 */  sw         $s0, 0x10($sp)
/* 12C460 8010E370 8E42171C */  lw         $v0, 0x171C($s2)
/* 12C464 8010E374 1840000C */  blez       $v0, .Lmenu_8010E3A8
/* 12C468 8010E378 00008021 */   addu      $s0, $zero, $zero
/* 12C46C 8010E37C 2411172C */  addiu      $s1, $zero, 0x172C
.Lmenu_8010E380:
/* 12C470 8010E380 02511021 */  addu       $v0, $s2, $s1
/* 12C474 8010E384 14530003 */  bne        $v0, $s3, .Lmenu_8010E394
/* 12C478 8010E388 02402021 */   addu      $a0, $s2, $zero
/* 12C47C 8010E38C 0C043844 */  jal        func_menu_8010E110
/* 12C480 8010E390 00002821 */   addu      $a1, $zero, $zero
.Lmenu_8010E394:
/* 12C484 8010E394 8E42171C */  lw         $v0, 0x171C($s2)
/* 12C488 8010E398 26100001 */  addiu      $s0, $s0, 0x1
/* 12C48C 8010E39C 0202102A */  slt        $v0, $s0, $v0
/* 12C490 8010E3A0 1440FFF7 */  bnez       $v0, .Lmenu_8010E380
/* 12C494 8010E3A4 26310094 */   addiu     $s1, $s1, 0x94
.Lmenu_8010E3A8:
/* 12C498 8010E3A8 8FBF0020 */  lw         $ra, 0x20($sp)
/* 12C49C 8010E3AC 8FB3001C */  lw         $s3, 0x1C($sp)
/* 12C4A0 8010E3B0 8FB20018 */  lw         $s2, 0x18($sp)
/* 12C4A4 8010E3B4 8FB10014 */  lw         $s1, 0x14($sp)
/* 12C4A8 8010E3B8 8FB00010 */  lw         $s0, 0x10($sp)
/* 12C4AC 8010E3BC 03E00008 */  jr         $ra
/* 12C4B0 8010E3C0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_8010E3C4
/* 12C4B4 8010E3C4 18A00010 */  blez       $a1, .Lmenu_8010E408
/* 12C4B8 8010E3C8 00003021 */   addu      $a2, $zero, $zero
/* 12C4BC 8010E3CC 00051080 */  sll        $v0, $a1, 2
/* 12C4C0 8010E3D0 00451021 */  addu       $v0, $v0, $a1
/* 12C4C4 8010E3D4 00021140 */  sll        $v0, $v0, 5
/* 12C4C8 8010E3D8 00451023 */  subu       $v0, $v0, $a1
/* 12C4CC 8010E3DC 00021080 */  sll        $v0, $v0, 2
/* 12C4D0 8010E3E0 00451021 */  addu       $v0, $v0, $a1
/* 12C4D4 8010E3E4 00021080 */  sll        $v0, $v0, 2
/* 12C4D8 8010E3E8 00441021 */  addu       $v0, $v0, $a0
/* 12C4DC 8010E3EC 24421C2C */  addiu      $v0, $v0, 0x1C2C
/* 12C4E0 8010E3F0 3C04BFFF */  lui        $a0, (0xBFFFFFFF >> 16)
/* 12C4E4 8010E3F4 8C430018 */  lw         $v1, 0x18($v0)
/* 12C4E8 8010E3F8 3484FFFF */  ori        $a0, $a0, (0xBFFFFFFF & 0xFFFF)
/* 12C4EC 8010E3FC 00641824 */  and        $v1, $v1, $a0
/* 12C4F0 8010E400 03E00008 */  jr         $ra
/* 12C4F4 8010E404 AC430018 */   sw        $v1, 0x18($v0)
.Lmenu_8010E408:
/* 12C4F8 8010E408 3C07BFFF */  lui        $a3, (0xBFFFFFFF >> 16)
/* 12C4FC 8010E40C 34E7FFFF */  ori        $a3, $a3, (0xBFFFFFFF & 0xFFFF)
/* 12C500 8010E410 00C02821 */  addu       $a1, $a2, $zero
.Lmenu_8010E414:
/* 12C504 8010E414 8C82171C */  lw         $v0, 0x171C($a0)
/* 12C508 8010E418 00C2102A */  slt        $v0, $a2, $v0
/* 12C50C 8010E41C 10400008 */  beqz       $v0, .Lmenu_8010E440
/* 12C510 8010E420 00A41821 */   addu      $v1, $a1, $a0
/* 12C514 8010E424 24631C2C */  addiu      $v1, $v1, 0x1C2C
/* 12C518 8010E428 24A509F4 */  addiu      $a1, $a1, 0x9F4
/* 12C51C 8010E42C 8C620018 */  lw         $v0, 0x18($v1)
/* 12C520 8010E430 24C60001 */  addiu      $a2, $a2, 0x1
/* 12C524 8010E434 00471024 */  and        $v0, $v0, $a3
/* 12C528 8010E438 08043905 */  j          .Lmenu_8010E414
/* 12C52C 8010E43C AC620018 */   sw        $v0, 0x18($v1)
.Lmenu_8010E440:
/* 12C530 8010E440 03E00008 */  jr         $ra
/* 12C534 8010E444 00000000 */   nop

glabel func_menu_8010E448
/* 12C538 8010E448 18A0000F */  blez       $a1, .Lmenu_8010E488
/* 12C53C 8010E44C 00003021 */   addu      $a2, $zero, $zero
/* 12C540 8010E450 00051080 */  sll        $v0, $a1, 2
/* 12C544 8010E454 00451021 */  addu       $v0, $v0, $a1
/* 12C548 8010E458 00021140 */  sll        $v0, $v0, 5
/* 12C54C 8010E45C 00451023 */  subu       $v0, $v0, $a1
/* 12C550 8010E460 00021080 */  sll        $v0, $v0, 2
/* 12C554 8010E464 00451021 */  addu       $v0, $v0, $a1
/* 12C558 8010E468 00021080 */  sll        $v0, $v0, 2
/* 12C55C 8010E46C 00441021 */  addu       $v0, $v0, $a0
/* 12C560 8010E470 24421C2C */  addiu      $v0, $v0, 0x1C2C
/* 12C564 8010E474 8C430018 */  lw         $v1, 0x18($v0)
/* 12C568 8010E478 3C044000 */  lui        $a0, %hi(D_40001C2C)
/* 12C56C 8010E47C 00641825 */  or         $v1, $v1, $a0
/* 12C570 8010E480 03E00008 */  jr         $ra
/* 12C574 8010E484 AC430018 */   sw        $v1, 0x18($v0)
.Lmenu_8010E488:
/* 12C578 8010E488 3C074000 */  lui        $a3, (0x40000000 >> 16)
/* 12C57C 8010E48C 00C02821 */  addu       $a1, $a2, $zero
.Lmenu_8010E490:
/* 12C580 8010E490 8C82171C */  lw         $v0, (0x4000171C & 0xFFFF)($a0)
/* 12C584 8010E494 00C2102A */  slt        $v0, $a2, $v0
/* 12C588 8010E498 10400008 */  beqz       $v0, .Lmenu_8010E4BC
/* 12C58C 8010E49C 00A41821 */   addu      $v1, $a1, $a0
/* 12C590 8010E4A0 24631C2C */  addiu      $v1, $v1, %lo(D_40001C2C)
/* 12C594 8010E4A4 24A509F4 */  addiu      $a1, $a1, 0x9F4
/* 12C598 8010E4A8 8C620018 */  lw         $v0, 0x18($v1)
/* 12C59C 8010E4AC 24C60001 */  addiu      $a2, $a2, 0x1
/* 12C5A0 8010E4B0 00471025 */  or         $v0, $v0, $a3
/* 12C5A4 8010E4B4 08043924 */  j          .Lmenu_8010E490
/* 12C5A8 8010E4B8 AC620018 */   sw        $v0, 0x18($v1)
.Lmenu_8010E4BC:
/* 12C5AC 8010E4BC 03E00008 */  jr         $ra
/* 12C5B0 8010E4C0 00000000 */   nop

glabel func_menu_8010E4C4
/* 12C5B4 8010E4C4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 12C5B8 8010E4C8 AFB50024 */  sw         $s5, 0x24($sp)
/* 12C5BC 8010E4CC 0080A821 */  addu       $s5, $a0, $zero
/* 12C5C0 8010E4D0 00A01021 */  addu       $v0, $a1, $zero
/* 12C5C4 8010E4D4 AFBF002C */  sw         $ra, 0x2C($sp)
/* 12C5C8 8010E4D8 AFB60028 */  sw         $s6, 0x28($sp)
/* 12C5CC 8010E4DC AFB40020 */  sw         $s4, 0x20($sp)
/* 12C5D0 8010E4E0 AFB3001C */  sw         $s3, 0x1C($sp)
/* 12C5D4 8010E4E4 AFB20018 */  sw         $s2, 0x18($sp)
/* 12C5D8 8010E4E8 AFB10014 */  sw         $s1, 0x14($sp)
/* 12C5DC 8010E4EC 1840001E */  blez       $v0, .Lmenu_8010E568
/* 12C5E0 8010E4F0 AFB00010 */   sw        $s0, 0x10($sp)
/* 12C5E4 8010E4F4 24050005 */  addiu      $a1, $zero, 0x5
/* 12C5E8 8010E4F8 00028080 */  sll        $s0, $v0, 2
/* 12C5EC 8010E4FC 02029021 */  addu       $s2, $s0, $v0
/* 12C5F0 8010E500 00B28804 */  sllv       $s1, $s2, $a1
/* 12C5F4 8010E504 02222023 */  subu       $a0, $s1, $v0
/* 12C5F8 8010E508 00042080 */  sll        $a0, $a0, 2
/* 12C5FC 8010E50C 00822021 */  addu       $a0, $a0, $v0
/* 12C600 8010E510 00042080 */  sll        $a0, $a0, 2
/* 12C604 8010E514 00951021 */  addu       $v0, $a0, $s5
/* 12C608 8010E518 24841C2C */  addiu      $a0, $a0, 0x1C2C
/* 12C60C 8010E51C 8C421C80 */  lw         $v0, 0x1C80($v0)
/* 12C610 8010E520 02A42021 */  addu       $a0, $s5, $a0
/* 12C614 8010E524 84430090 */  lh         $v1, 0x90($v0)
/* 12C618 8010E528 8C420094 */  lw         $v0, 0x94($v0)
/* 12C61C 8010E52C 0040F809 */  jalr       $v0
/* 12C620 8010E530 00832021 */   addu      $a0, $a0, $v1
/* 12C624 8010E534 02B08021 */  addu       $s0, $s5, $s0
/* 12C628 8010E538 8E021724 */  lw         $v0, 0x1724($s0)
/* 12C62C 8010E53C 10400006 */  beqz       $v0, .Lmenu_8010E558
/* 12C630 8010E540 02321023 */   subu      $v0, $s1, $s2
/* 12C634 8010E544 000210C0 */  sll        $v0, $v0, 3
/* 12C638 8010E548 00551021 */  addu       $v0, $v0, $s5
/* 12C63C 8010E54C 24030001 */  addiu      $v1, $zero, 0x1
/* 12C640 8010E550 08043976 */  j          .Lmenu_8010E5D8
/* 12C644 8010E554 AC430820 */   sw        $v1, 0x820($v0)
.Lmenu_8010E558:
/* 12C648 8010E558 000210C0 */  sll        $v0, $v0, 3
/* 12C64C 8010E55C 00551021 */  addu       $v0, $v0, $s5
/* 12C650 8010E560 08043976 */  j          .Lmenu_8010E5D8
/* 12C654 8010E564 AC400820 */   sw        $zero, 0x820($v0)
.Lmenu_8010E568:
/* 12C658 8010E568 0000A021 */  addu       $s4, $zero, $zero
/* 12C65C 8010E56C 24160001 */  addiu      $s6, $zero, 0x1
/* 12C660 8010E570 02808021 */  addu       $s0, $s4, $zero
/* 12C664 8010E574 02A08821 */  addu       $s1, $s5, $zero
/* 12C668 8010E578 24131C2C */  addiu      $s3, $zero, 0x1C2C
/* 12C66C 8010E57C 02209021 */  addu       $s2, $s1, $zero
.Lmenu_8010E580:
/* 12C670 8010E580 8EA2171C */  lw         $v0, 0x171C($s5)
/* 12C674 8010E584 0282102A */  slt        $v0, $s4, $v0
/* 12C678 8010E588 10400013 */  beqz       $v0, .Lmenu_8010E5D8
/* 12C67C 8010E58C 24050005 */   addiu     $a1, $zero, 0x5
/* 12C680 8010E590 8E421C80 */  lw         $v0, 0x1C80($s2)
/* 12C684 8010E594 02B31821 */  addu       $v1, $s5, $s3
/* 12C688 8010E598 84440090 */  lh         $a0, 0x90($v0)
/* 12C68C 8010E59C 8C420094 */  lw         $v0, 0x94($v0)
/* 12C690 8010E5A0 0040F809 */  jalr       $v0
/* 12C694 8010E5A4 00642021 */   addu      $a0, $v1, $a0
/* 12C698 8010E5A8 8E221724 */  lw         $v0, 0x1724($s1)
/* 12C69C 8010E5AC 10400003 */  beqz       $v0, .Lmenu_8010E5BC
/* 12C6A0 8010E5B0 02151021 */   addu      $v0, $s0, $s5
/* 12C6A4 8010E5B4 08043970 */  j          .Lmenu_8010E5C0
/* 12C6A8 8010E5B8 AC560820 */   sw        $s6, 0x820($v0)
.Lmenu_8010E5BC:
/* 12C6AC 8010E5BC AC400820 */  sw         $zero, 0x820($v0)
.Lmenu_8010E5C0:
/* 12C6B0 8010E5C0 261004D8 */  addiu      $s0, $s0, 0x4D8
/* 12C6B4 8010E5C4 26310004 */  addiu      $s1, $s1, 0x4
/* 12C6B8 8010E5C8 267309F4 */  addiu      $s3, $s3, 0x9F4
/* 12C6BC 8010E5CC 265209F4 */  addiu      $s2, $s2, 0x9F4
/* 12C6C0 8010E5D0 08043960 */  j          .Lmenu_8010E580
/* 12C6C4 8010E5D4 26940001 */   addiu     $s4, $s4, 0x1
.Lmenu_8010E5D8:
/* 12C6C8 8010E5D8 8FBF002C */  lw         $ra, 0x2C($sp)
/* 12C6CC 8010E5DC 8FB60028 */  lw         $s6, 0x28($sp)
/* 12C6D0 8010E5E0 8FB50024 */  lw         $s5, 0x24($sp)
/* 12C6D4 8010E5E4 8FB40020 */  lw         $s4, 0x20($sp)
/* 12C6D8 8010E5E8 8FB3001C */  lw         $s3, 0x1C($sp)
/* 12C6DC 8010E5EC 8FB20018 */  lw         $s2, 0x18($sp)
/* 12C6E0 8010E5F0 8FB10014 */  lw         $s1, 0x14($sp)
/* 12C6E4 8010E5F4 8FB00010 */  lw         $s0, 0x10($sp)
/* 12C6E8 8010E5F8 03E00008 */  jr         $ra
/* 12C6EC 8010E5FC 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_8010E600
/* 12C6F0 8010E600 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 12C6F4 8010E604 AFB50024 */  sw         $s5, 0x24($sp)
/* 12C6F8 8010E608 0080A821 */  addu       $s5, $a0, $zero
/* 12C6FC 8010E60C 00A01021 */  addu       $v0, $a1, $zero
/* 12C700 8010E610 AFBF002C */  sw         $ra, 0x2C($sp)
/* 12C704 8010E614 AFB60028 */  sw         $s6, 0x28($sp)
/* 12C708 8010E618 AFB40020 */  sw         $s4, 0x20($sp)
/* 12C70C 8010E61C AFB3001C */  sw         $s3, 0x1C($sp)
/* 12C710 8010E620 AFB20018 */  sw         $s2, 0x18($sp)
/* 12C714 8010E624 AFB10014 */  sw         $s1, 0x14($sp)
/* 12C718 8010E628 1840001E */  blez       $v0, .Lmenu_8010E6A4
/* 12C71C 8010E62C AFB00010 */   sw        $s0, 0x10($sp)
/* 12C720 8010E630 24050005 */  addiu      $a1, $zero, 0x5
/* 12C724 8010E634 00028080 */  sll        $s0, $v0, 2
/* 12C728 8010E638 02029021 */  addu       $s2, $s0, $v0
/* 12C72C 8010E63C 00B28804 */  sllv       $s1, $s2, $a1
/* 12C730 8010E640 02222023 */  subu       $a0, $s1, $v0
/* 12C734 8010E644 00042080 */  sll        $a0, $a0, 2
/* 12C738 8010E648 00822021 */  addu       $a0, $a0, $v0
/* 12C73C 8010E64C 00042080 */  sll        $a0, $a0, 2
/* 12C740 8010E650 00951021 */  addu       $v0, $a0, $s5
/* 12C744 8010E654 24841C2C */  addiu      $a0, $a0, 0x1C2C
/* 12C748 8010E658 8C421C80 */  lw         $v0, 0x1C80($v0)
/* 12C74C 8010E65C 02A42021 */  addu       $a0, $s5, $a0
/* 12C750 8010E660 84430098 */  lh         $v1, 0x98($v0)
/* 12C754 8010E664 8C42009C */  lw         $v0, 0x9C($v0)
/* 12C758 8010E668 0040F809 */  jalr       $v0
/* 12C75C 8010E66C 00832021 */   addu      $a0, $a0, $v1
/* 12C760 8010E670 02B08021 */  addu       $s0, $s5, $s0
/* 12C764 8010E674 8E021724 */  lw         $v0, 0x1724($s0)
/* 12C768 8010E678 10400006 */  beqz       $v0, .Lmenu_8010E694
/* 12C76C 8010E67C 02321023 */   subu      $v0, $s1, $s2
/* 12C770 8010E680 000210C0 */  sll        $v0, $v0, 3
/* 12C774 8010E684 00551021 */  addu       $v0, $v0, $s5
/* 12C778 8010E688 24030001 */  addiu      $v1, $zero, 0x1
/* 12C77C 8010E68C 080439C5 */  j          .Lmenu_8010E714
/* 12C780 8010E690 AC430820 */   sw        $v1, 0x820($v0)
.Lmenu_8010E694:
/* 12C784 8010E694 000210C0 */  sll        $v0, $v0, 3
/* 12C788 8010E698 00551021 */  addu       $v0, $v0, $s5
/* 12C78C 8010E69C 080439C5 */  j          .Lmenu_8010E714
/* 12C790 8010E6A0 AC400820 */   sw        $zero, 0x820($v0)
.Lmenu_8010E6A4:
/* 12C794 8010E6A4 0000A021 */  addu       $s4, $zero, $zero
/* 12C798 8010E6A8 24160001 */  addiu      $s6, $zero, 0x1
/* 12C79C 8010E6AC 02808021 */  addu       $s0, $s4, $zero
/* 12C7A0 8010E6B0 02A08821 */  addu       $s1, $s5, $zero
/* 12C7A4 8010E6B4 24131C2C */  addiu      $s3, $zero, 0x1C2C
/* 12C7A8 8010E6B8 02209021 */  addu       $s2, $s1, $zero
.Lmenu_8010E6BC:
/* 12C7AC 8010E6BC 8EA2171C */  lw         $v0, 0x171C($s5)
/* 12C7B0 8010E6C0 0282102A */  slt        $v0, $s4, $v0
/* 12C7B4 8010E6C4 10400013 */  beqz       $v0, .Lmenu_8010E714
/* 12C7B8 8010E6C8 24050005 */   addiu     $a1, $zero, 0x5
/* 12C7BC 8010E6CC 8E421C80 */  lw         $v0, 0x1C80($s2)
/* 12C7C0 8010E6D0 02B31821 */  addu       $v1, $s5, $s3
/* 12C7C4 8010E6D4 84440098 */  lh         $a0, 0x98($v0)
/* 12C7C8 8010E6D8 8C42009C */  lw         $v0, 0x9C($v0)
/* 12C7CC 8010E6DC 0040F809 */  jalr       $v0
/* 12C7D0 8010E6E0 00642021 */   addu      $a0, $v1, $a0
/* 12C7D4 8010E6E4 8E221724 */  lw         $v0, 0x1724($s1)
/* 12C7D8 8010E6E8 10400003 */  beqz       $v0, .Lmenu_8010E6F8
/* 12C7DC 8010E6EC 02151021 */   addu      $v0, $s0, $s5
/* 12C7E0 8010E6F0 080439BF */  j          .Lmenu_8010E6FC
/* 12C7E4 8010E6F4 AC560820 */   sw        $s6, 0x820($v0)
.Lmenu_8010E6F8:
/* 12C7E8 8010E6F8 AC400820 */  sw         $zero, 0x820($v0)
.Lmenu_8010E6FC:
/* 12C7EC 8010E6FC 261004D8 */  addiu      $s0, $s0, 0x4D8
/* 12C7F0 8010E700 26310004 */  addiu      $s1, $s1, 0x4
/* 12C7F4 8010E704 267309F4 */  addiu      $s3, $s3, 0x9F4
/* 12C7F8 8010E708 265209F4 */  addiu      $s2, $s2, 0x9F4
/* 12C7FC 8010E70C 080439AF */  j          .Lmenu_8010E6BC
/* 12C800 8010E710 26940001 */   addiu     $s4, $s4, 0x1
.Lmenu_8010E714:
/* 12C804 8010E714 8FBF002C */  lw         $ra, 0x2C($sp)
/* 12C808 8010E718 8FB60028 */  lw         $s6, 0x28($sp)
/* 12C80C 8010E71C 8FB50024 */  lw         $s5, 0x24($sp)
/* 12C810 8010E720 8FB40020 */  lw         $s4, 0x20($sp)
/* 12C814 8010E724 8FB3001C */  lw         $s3, 0x1C($sp)
/* 12C818 8010E728 8FB20018 */  lw         $s2, 0x18($sp)
/* 12C81C 8010E72C 8FB10014 */  lw         $s1, 0x14($sp)
/* 12C820 8010E730 8FB00010 */  lw         $s0, 0x10($sp)
/* 12C824 8010E734 03E00008 */  jr         $ra
/* 12C828 8010E738 27BD0030 */   addiu     $sp, $sp, 0x30
