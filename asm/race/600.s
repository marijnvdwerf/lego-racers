.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_80103C90
/* BA050 80103C90 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* BA054 80103C94 AFB20018 */  sw         $s2, 0x18($sp)
/* BA058 80103C98 00809021 */  addu       $s2, $a0, $zero
/* BA05C 80103C9C 3C02800D */  lui        $v0, %hi(D_race_800CD9D8)
/* BA060 80103CA0 2442D9D8 */  addiu      $v0, $v0, %lo(D_race_800CD9D8)
/* BA064 80103CA4 26440220 */  addiu      $a0, $s2, 0x220
/* BA068 80103CA8 AFBF0020 */  sw         $ra, 0x20($sp)
/* BA06C 80103CAC AFB3001C */  sw         $s3, 0x1C($sp)
/* BA070 80103CB0 AFB10014 */  sw         $s1, 0x14($sp)
/* BA074 80103CB4 AFB00010 */  sw         $s0, 0x10($sp)
/* BA078 80103CB8 0C002A20 */  jal        func_8000A880
/* BA07C 80103CBC AE420000 */   sw        $v0, 0x0($s2)
/* BA080 80103CC0 2651023C */  addiu      $s1, $s2, 0x23C
/* BA084 80103CC4 24100001 */  addiu      $s0, $zero, 0x1
/* BA088 80103CC8 2413FFFF */  addiu      $s3, $zero, -0x1
.Lrace_80103CCC:
/* BA08C 80103CCC 0C04070C */  jal        func_race_80101C30
/* BA090 80103CD0 02202021 */   addu      $a0, $s1, $zero
/* BA094 80103CD4 2610FFFF */  addiu      $s0, $s0, -0x1
/* BA098 80103CD8 1613FFFC */  bne        $s0, $s3, .Lrace_80103CCC
/* BA09C 80103CDC 26310070 */   addiu     $s1, $s1, 0x70
/* BA0A0 80103CE0 2651031C */  addiu      $s1, $s2, 0x31C
/* BA0A4 80103CE4 24100001 */  addiu      $s0, $zero, 0x1
/* BA0A8 80103CE8 2413FFFF */  addiu      $s3, $zero, -0x1
.Lrace_80103CEC:
/* BA0AC 80103CEC 0C03D2B8 */  jal        func_race_800F4AE0
/* BA0B0 80103CF0 02202021 */   addu      $a0, $s1, $zero
/* BA0B4 80103CF4 2610FFFF */  addiu      $s0, $s0, -0x1
/* BA0B8 80103CF8 1613FFFC */  bne        $s0, $s3, .Lrace_80103CEC
/* BA0BC 80103CFC 26310024 */   addiu     $s1, $s1, 0x24
/* BA0C0 80103D00 0C043D3C */  jal        func_race_8010F4F0
/* BA0C4 80103D04 26440390 */   addiu     $a0, $s2, 0x390
/* BA0C8 80103D08 0C04A110 */  jal        func_race_80128440
/* BA0CC 80103D0C 264406B0 */   addiu     $a0, $s2, 0x6B0
/* BA0D0 80103D10 0C037688 */  jal        func_race_800DDA20
/* BA0D4 80103D14 26442054 */   addiu     $a0, $s2, 0x2054
/* BA0D8 80103D18 0C035BCC */  jal        func_race_800D6F30
/* BA0DC 80103D1C 2644206C */   addiu     $a0, $s2, 0x206C
/* BA0E0 80103D20 0C037D78 */  jal        func_race_800DF5E0
/* BA0E4 80103D24 264420FC */   addiu     $a0, $s2, 0x20FC
/* BA0E8 80103D28 0C037B90 */  jal        func_race_800DEE40
/* BA0EC 80103D2C 26442110 */   addiu     $a0, $s2, 0x2110
/* BA0F0 80103D30 0C03A20C */  jal        func_race_800E8830
/* BA0F4 80103D34 2644211C */   addiu     $a0, $s2, 0x211C
/* BA0F8 80103D38 0C010684 */  jal        func_80041A10
/* BA0FC 80103D3C 26442124 */   addiu     $a0, $s2, 0x2124
/* BA100 80103D40 0C010684 */  jal        func_80041A10
/* BA104 80103D44 26442460 */   addiu     $a0, $s2, 0x2460
/* BA108 80103D48 0C034EA8 */  jal        func_race_800D3AA0
/* BA10C 80103D4C 2644279C */   addiu     $a0, $s2, 0x279C
/* BA110 80103D50 0C03485C */  jal        func_race_800D2170
/* BA114 80103D54 264427A8 */   addiu     $a0, $s2, 0x27A8
/* BA118 80103D58 0C046978 */  jal        func_race_8011A5E0
/* BA11C 80103D5C 264427B4 */   addiu     $a0, $s2, 0x27B4
/* BA120 80103D60 0C03C808 */  jal        func_race_800F2020
/* BA124 80103D64 264427C8 */   addiu     $a0, $s2, 0x27C8
/* BA128 80103D68 0C0103B8 */  jal        func_80040EE0
/* BA12C 80103D6C 264427D0 */   addiu     $a0, $s2, 0x27D0
/* BA130 80103D70 0C04B624 */  jal        func_race_8012D890
/* BA134 80103D74 264427D8 */   addiu     $a0, $s2, 0x27D8
/* BA138 80103D78 0C040350 */  jal        func_race_80100D40
/* BA13C 80103D7C 264427E0 */   addiu     $a0, $s2, 0x27E0
/* BA140 80103D80 26512810 */  addiu      $s1, $s2, 0x2810
/* BA144 80103D84 24100001 */  addiu      $s0, $zero, 0x1
/* BA148 80103D88 2413FFFF */  addiu      $s3, $zero, -0x1
.Lrace_80103D8C:
/* BA14C 80103D8C 0C03EC96 */  jal        func_race_800FB258
/* BA150 80103D90 02202021 */   addu      $a0, $s1, $zero
/* BA154 80103D94 2610FFFF */  addiu      $s0, $s0, -0x1
/* BA158 80103D98 1613FFFC */  bne        $s0, $s3, .Lrace_80103D8C
/* BA15C 80103D9C 26310140 */   addiu     $s1, $s1, 0x140
/* BA160 80103DA0 26512AA8 */  addiu      $s1, $s2, 0x2AA8
/* BA164 80103DA4 24100001 */  addiu      $s0, $zero, 0x1
/* BA168 80103DA8 2413FFFF */  addiu      $s3, $zero, -0x1
.Lrace_80103DAC:
/* BA16C 80103DAC 0C03F207 */  jal        func_race_800FC81C
/* BA170 80103DB0 02202021 */   addu      $a0, $s1, $zero
/* BA174 80103DB4 2610FFFF */  addiu      $s0, $s0, -0x1
/* BA178 80103DB8 1613FFFC */  bne        $s0, $s3, .Lrace_80103DAC
/* BA17C 80103DBC 26310150 */   addiu     $s1, $s1, 0x150
/* BA180 80103DC0 0C0016DC */  jal        func_80005B70
/* BA184 80103DC4 26442D54 */   addiu     $a0, $s2, 0x2D54
/* BA188 80103DC8 0C03C1D4 */  jal        func_race_800F0750
/* BA18C 80103DCC 26442F64 */   addiu     $a0, $s2, 0x2F64
/* BA190 80103DD0 0C03ECA4 */  jal        func_race_800FB290
/* BA194 80103DD4 2644302C */   addiu     $a0, $s2, 0x302C
/* BA198 80103DD8 0C0459A8 */  jal        func_race_801166A0
/* BA19C 80103DDC 2644309C */   addiu     $a0, $s2, 0x309C
/* BA1A0 80103DE0 0C002F50 */  jal        func_8000BD40
/* BA1A4 80103DE4 264430C8 */   addiu     $a0, $s2, 0x30C8
/* BA1A8 80103DE8 265130DC */  addiu      $s1, $s2, 0x30DC
/* BA1AC 80103DEC 24100005 */  addiu      $s0, $zero, 0x5
/* BA1B0 80103DF0 2413FFFF */  addiu      $s3, $zero, -0x1
.Lrace_80103DF4:
/* BA1B4 80103DF4 0C04C25C */  jal        func_race_80130970
/* BA1B8 80103DF8 02202021 */   addu      $a0, $s1, $zero
/* BA1BC 80103DFC 2610FFFF */  addiu      $s0, $s0, -0x1
/* BA1C0 80103E00 1613FFFC */  bne        $s0, $s3, .Lrace_80103DF4
/* BA1C4 80103E04 26310048 */   addiu     $s1, $s1, 0x48
/* BA1C8 80103E08 0C03C9DC */  jal        func_race_800F2770
/* BA1CC 80103E0C 2644328C */   addiu     $a0, $s2, 0x328C
/* BA1D0 80103E10 0C0356E8 */  jal        func_race_800D5BA0
/* BA1D4 80103E14 2644329C */   addiu     $a0, $s2, 0x329C
/* BA1D8 80103E18 0C046490 */  jal        func_race_80119240
/* BA1DC 80103E1C 264432D8 */   addiu     $a0, $s2, 0x32D8
/* BA1E0 80103E20 0C0395B4 */  jal        func_race_800E56D0
/* BA1E4 80103E24 26443340 */   addiu     $a0, $s2, 0x3340
/* BA1E8 80103E28 0C041029 */  jal        func_race_801040A4
/* BA1EC 80103E2C 02402021 */   addu      $a0, $s2, $zero
/* BA1F0 80103E30 02401021 */  addu       $v0, $s2, $zero
/* BA1F4 80103E34 8FBF0020 */  lw         $ra, 0x20($sp)
/* BA1F8 80103E38 8FB3001C */  lw         $s3, 0x1C($sp)
/* BA1FC 80103E3C 8FB20018 */  lw         $s2, 0x18($sp)
/* BA200 80103E40 8FB10014 */  lw         $s1, 0x14($sp)
/* BA204 80103E44 8FB00010 */  lw         $s0, 0x10($sp)
/* BA208 80103E48 03E00008 */  jr         $ra
/* BA20C 80103E4C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_80103E50
/* BA210 80103E50 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* BA214 80103E54 AFB10014 */  sw         $s1, 0x14($sp)
/* BA218 80103E58 00808821 */  addu       $s1, $a0, $zero
/* BA21C 80103E5C AFB3001C */  sw         $s3, 0x1C($sp)
/* BA220 80103E60 00A09821 */  addu       $s3, $a1, $zero
/* BA224 80103E64 3C02800D */  lui        $v0, %hi(D_race_800CD9D8)
/* BA228 80103E68 2442D9D8 */  addiu      $v0, $v0, %lo(D_race_800CD9D8)
/* BA22C 80103E6C AFBF0020 */  sw         $ra, 0x20($sp)
/* BA230 80103E70 AFB20018 */  sw         $s2, 0x18($sp)
/* BA234 80103E74 AFB00010 */  sw         $s0, 0x10($sp)
/* BA238 80103E78 0C041376 */  jal        func_race_80104DD8
/* BA23C 80103E7C AE220000 */   sw        $v0, 0x0($s1)
/* BA240 80103E80 26243340 */  addiu      $a0, $s1, 0x3340
/* BA244 80103E84 0C0395BD */  jal        func_race_800E56F4
/* BA248 80103E88 24050002 */   addiu     $a1, $zero, 0x2
/* BA24C 80103E8C 262432D8 */  addiu      $a0, $s1, 0x32D8
/* BA250 80103E90 0C04649A */  jal        func_race_80119268
/* BA254 80103E94 24050002 */   addiu     $a1, $zero, 0x2
/* BA258 80103E98 2624329C */  addiu      $a0, $s1, 0x329C
/* BA25C 80103E9C 0C0356F7 */  jal        func_race_800D5BDC
/* BA260 80103EA0 24050002 */   addiu     $a1, $zero, 0x2
/* BA264 80103EA4 262230DC */  addiu      $v0, $s1, 0x30DC
/* BA268 80103EA8 1040000C */  beqz       $v0, .Lrace_80103EDC
/* BA26C 80103EAC 262430C8 */   addiu     $a0, $s1, 0x30C8
/* BA270 80103EB0 2630328C */  addiu      $s0, $s1, 0x328C
/* BA274 80103EB4 10500009 */  beq        $v0, $s0, .Lrace_80103EDC
/* BA278 80103EB8 00000000 */   nop
/* BA27C 80103EBC 00409021 */  addu       $s2, $v0, $zero
/* BA280 80103EC0 2610FFB8 */  addiu      $s0, $s0, -0x48
.Lrace_80103EC4:
/* BA284 80103EC4 02002021 */  addu       $a0, $s0, $zero
/* BA288 80103EC8 0C04C266 */  jal        func_race_80130998
/* BA28C 80103ECC 24050002 */   addiu     $a1, $zero, 0x2
/* BA290 80103ED0 5650FFFC */  bnel       $s2, $s0, .Lrace_80103EC4
/* BA294 80103ED4 2610FFB8 */   addiu     $s0, $s0, -0x48
/* BA298 80103ED8 262430C8 */  addiu      $a0, $s1, 0x30C8
.Lrace_80103EDC:
/* BA29C 80103EDC 0C002F59 */  jal        func_8000BD64
/* BA2A0 80103EE0 24050002 */   addiu     $a1, $zero, 0x2
/* BA2A4 80103EE4 2624309C */  addiu      $a0, $s1, 0x309C
/* BA2A8 80103EE8 0C0459B2 */  jal        func_race_801166C8
/* BA2AC 80103EEC 24050002 */   addiu     $a1, $zero, 0x2
/* BA2B0 80103EF0 2624302C */  addiu      $a0, $s1, 0x302C
/* BA2B4 80103EF4 0C03ECC1 */  jal        func_race_800FB304
/* BA2B8 80103EF8 24050002 */   addiu     $a1, $zero, 0x2
/* BA2BC 80103EFC 26242F64 */  addiu      $a0, $s1, 0x2F64
/* BA2C0 80103F00 0C03C1E5 */  jal        func_race_800F0794
/* BA2C4 80103F04 24050002 */   addiu     $a1, $zero, 0x2
/* BA2C8 80103F08 26242D54 */  addiu      $a0, $s1, 0x2D54
/* BA2CC 80103F0C 0C0016E2 */  jal        func_80005B88
/* BA2D0 80103F10 24050002 */   addiu     $a1, $zero, 0x2
/* BA2D4 80103F14 26222810 */  addiu      $v0, $s1, 0x2810
/* BA2D8 80103F18 1040000C */  beqz       $v0, .Lrace_80103F4C
/* BA2DC 80103F1C 262427E0 */   addiu     $a0, $s1, 0x27E0
/* BA2E0 80103F20 26302A90 */  addiu      $s0, $s1, 0x2A90
/* BA2E4 80103F24 10500009 */  beq        $v0, $s0, .Lrace_80103F4C
/* BA2E8 80103F28 00000000 */   nop
/* BA2EC 80103F2C 00409021 */  addu       $s2, $v0, $zero
/* BA2F0 80103F30 2610FEC0 */  addiu      $s0, $s0, -0x140
.Lrace_80103F34:
/* BA2F4 80103F34 26040014 */  addiu      $a0, $s0, 0x14
/* BA2F8 80103F38 0C0016E2 */  jal        func_80005B88
/* BA2FC 80103F3C 24050002 */   addiu     $a1, $zero, 0x2
/* BA300 80103F40 5650FFFC */  bnel       $s2, $s0, .Lrace_80103F34
/* BA304 80103F44 2610FEC0 */   addiu     $s0, $s0, -0x140
/* BA308 80103F48 262427E0 */  addiu      $a0, $s1, 0x27E0
.Lrace_80103F4C:
/* BA30C 80103F4C 0C040364 */  jal        func_race_80100D90
/* BA310 80103F50 24050002 */   addiu     $a1, $zero, 0x2
/* BA314 80103F54 262427D8 */  addiu      $a0, $s1, 0x27D8
/* BA318 80103F58 0C04B628 */  jal        func_race_8012D8A0
/* BA31C 80103F5C 24050002 */   addiu     $a1, $zero, 0x2
/* BA320 80103F60 262427D0 */  addiu      $a0, $s1, 0x27D0
/* BA324 80103F64 0C0103BC */  jal        func_80040EF0
/* BA328 80103F68 24050002 */   addiu     $a1, $zero, 0x2
/* BA32C 80103F6C 262427C8 */  addiu      $a0, $s1, 0x27C8
/* BA330 80103F70 0C03C80C */  jal        func_race_800F2030
/* BA334 80103F74 24050002 */   addiu     $a1, $zero, 0x2
/* BA338 80103F78 262427B4 */  addiu      $a0, $s1, 0x27B4
/* BA33C 80103F7C 0C046987 */  jal        func_race_8011A61C
/* BA340 80103F80 24050002 */   addiu     $a1, $zero, 0x2
/* BA344 80103F84 262427A8 */  addiu      $a0, $s1, 0x27A8
/* BA348 80103F88 0C034863 */  jal        func_race_800D218C
/* BA34C 80103F8C 24050002 */   addiu     $a1, $zero, 0x2
/* BA350 80103F90 2624279C */  addiu      $a0, $s1, 0x279C
/* BA354 80103F94 0C034EAF */  jal        func_race_800D3ABC
/* BA358 80103F98 24050002 */   addiu     $a1, $zero, 0x2
/* BA35C 80103F9C 26242460 */  addiu      $a0, $s1, 0x2460
/* BA360 80103FA0 0C0106A3 */  jal        func_80041A8C
/* BA364 80103FA4 24050002 */   addiu     $a1, $zero, 0x2
/* BA368 80103FA8 26242124 */  addiu      $a0, $s1, 0x2124
/* BA36C 80103FAC 0C0106A3 */  jal        func_80041A8C
/* BA370 80103FB0 24050002 */   addiu     $a1, $zero, 0x2
/* BA374 80103FB4 2624211C */  addiu      $a0, $s1, 0x211C
/* BA378 80103FB8 0C03A210 */  jal        func_race_800E8840
/* BA37C 80103FBC 24050002 */   addiu     $a1, $zero, 0x2
/* BA380 80103FC0 26242110 */  addiu      $a0, $s1, 0x2110
/* BA384 80103FC4 0C037B95 */  jal        func_race_800DEE54
/* BA388 80103FC8 24050002 */   addiu     $a1, $zero, 0x2
/* BA38C 80103FCC 262420FC */  addiu      $a0, $s1, 0x20FC
/* BA390 80103FD0 0C037D81 */  jal        func_race_800DF604
/* BA394 80103FD4 24050002 */   addiu     $a1, $zero, 0x2
/* BA398 80103FD8 2624206C */  addiu      $a0, $s1, 0x206C
/* BA39C 80103FDC 0C035BE3 */  jal        func_race_800D6F8C
/* BA3A0 80103FE0 24050002 */   addiu     $a1, $zero, 0x2
/* BA3A4 80103FE4 26242054 */  addiu      $a0, $s1, 0x2054
/* BA3A8 80103FE8 0C037696 */  jal        func_race_800DDA58
/* BA3AC 80103FEC 24050002 */   addiu     $a1, $zero, 0x2
/* BA3B0 80103FF0 262406B0 */  addiu      $a0, $s1, 0x6B0
/* BA3B4 80103FF4 0C04A12F */  jal        func_race_801284BC
/* BA3B8 80103FF8 24050002 */   addiu     $a1, $zero, 0x2
/* BA3BC 80103FFC 26240390 */  addiu      $a0, $s1, 0x390
/* BA3C0 80104000 0C043D52 */  jal        func_race_8010F548
/* BA3C4 80104004 24050002 */   addiu     $a1, $zero, 0x2
/* BA3C8 80104008 2622031C */  addiu      $v0, $s1, 0x31C
/* BA3CC 8010400C 5040000C */  beql       $v0, $zero, .Lrace_80104040
/* BA3D0 80104010 2622023C */   addiu     $v0, $s1, 0x23C
/* BA3D4 80104014 26300364 */  addiu      $s0, $s1, 0x364
/* BA3D8 80104018 50500009 */  beql       $v0, $s0, .Lrace_80104040
/* BA3DC 8010401C 2622023C */   addiu     $v0, $s1, 0x23C
/* BA3E0 80104020 00409021 */  addu       $s2, $v0, $zero
/* BA3E4 80104024 2610FFDC */  addiu      $s0, $s0, -0x24
.Lrace_80104028:
/* BA3E8 80104028 02002021 */  addu       $a0, $s0, $zero
/* BA3EC 8010402C 0C03D2C3 */  jal        func_race_800F4B0C
/* BA3F0 80104030 24050002 */   addiu     $a1, $zero, 0x2
/* BA3F4 80104034 5650FFFC */  bnel       $s2, $s0, .Lrace_80104028
/* BA3F8 80104038 2610FFDC */   addiu     $s0, $s0, -0x24
/* BA3FC 8010403C 2622023C */  addiu      $v0, $s1, 0x23C
.Lrace_80104040:
/* BA400 80104040 10400009 */  beqz       $v0, .Lrace_80104068
/* BA404 80104044 2630031C */   addiu     $s0, $s1, 0x31C
/* BA408 80104048 10500007 */  beq        $v0, $s0, .Lrace_80104068
/* BA40C 8010404C 00409021 */   addu      $s2, $v0, $zero
/* BA410 80104050 2610FF90 */  addiu      $s0, $s0, -0x70
.Lrace_80104054:
/* BA414 80104054 02002021 */  addu       $a0, $s0, $zero
/* BA418 80104058 0C04071D */  jal        func_race_80101C74
/* BA41C 8010405C 24050002 */   addiu     $a1, $zero, 0x2
/* BA420 80104060 1650FFFC */  bne        $s2, $s0, .Lrace_80104054
/* BA424 80104064 2610FF90 */   addiu     $s0, $s0, -0x70
.Lrace_80104068:
/* BA428 80104068 26240220 */  addiu      $a0, $s1, 0x220
/* BA42C 8010406C 0C002A2D */  jal        func_8000A8B4
/* BA430 80104070 24050002 */   addiu     $a1, $zero, 0x2
/* BA434 80104074 32620001 */  andi       $v0, $s3, 0x1
/* BA438 80104078 10400003 */  beqz       $v0, .Lrace_80104088
/* BA43C 8010407C 00000000 */   nop
/* BA440 80104080 0C01FB5C */  jal        func_8007ED70
/* BA444 80104084 02202021 */   addu      $a0, $s1, $zero
.Lrace_80104088:
/* BA448 80104088 8FBF0020 */  lw         $ra, 0x20($sp)
/* BA44C 8010408C 8FB3001C */  lw         $s3, 0x1C($sp)
/* BA450 80104090 8FB20018 */  lw         $s2, 0x18($sp)
/* BA454 80104094 8FB10014 */  lw         $s1, 0x14($sp)
/* BA458 80104098 8FB00010 */  lw         $s0, 0x10($sp)
/* BA45C 8010409C 03E00008 */  jr         $ra
/* BA460 801040A0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_801040A4
/* BA464 801040A4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BA468 801040A8 AFB00010 */  sw         $s0, 0x10($sp)
/* BA46C 801040AC 00808021 */  addu       $s0, $a0, $zero
/* BA470 801040B0 00002021 */  addu       $a0, $zero, $zero
/* BA474 801040B4 3C01800D */  lui        $at, %hi(D_race_800CD710)
/* BA478 801040B8 C424D710 */  lwc1       $f4, %lo(D_race_800CD710)($at)
/* BA47C 801040BC 3C01800D */  lui        $at, %hi(D_race_800CD714)
/* BA480 801040C0 C426D714 */  lwc1       $f6, %lo(D_race_800CD714)($at)
/* BA484 801040C4 3C01800D */  lui        $at, %hi(D_race_800CD718)
/* BA488 801040C8 C420D718 */  lwc1       $f0, %lo(D_race_800CD718)($at)
/* BA48C 801040CC 3C01800D */  lui        $at, %hi(D_race_800CD71C)
/* BA490 801040D0 C422D71C */  lwc1       $f2, %lo(D_race_800CD71C)($at)
/* BA494 801040D4 3C01800D */  lui        $at, %hi(D_race_800CD720)
/* BA498 801040D8 C428D720 */  lwc1       $f8, %lo(D_race_800CD720)($at)
/* BA49C 801040DC 02001821 */  addu       $v1, $s0, $zero
/* BA4A0 801040E0 AFBF0014 */  sw         $ra, 0x14($sp)
/* BA4A4 801040E4 AE000004 */  sw         $zero, 0x4($s0)
/* BA4A8 801040E8 AE000008 */  sw         $zero, 0x8($s0)
/* BA4AC 801040EC AE00000C */  sw         $zero, 0xC($s0)
/* BA4B0 801040F0 AE000010 */  sw         $zero, 0x10($s0)
/* BA4B4 801040F4 AE000014 */  sw         $zero, 0x14($s0)
/* BA4B8 801040F8 AE00021C */  sw         $zero, 0x21C($s0)
/* BA4BC 801040FC AE000018 */  sw         $zero, 0x18($s0)
/* BA4C0 80104100 A200001C */  sb         $zero, 0x1C($s0)
/* BA4C4 80104104 A200005C */  sb         $zero, 0x5C($s0)
/* BA4C8 80104108 A2000069 */  sb         $zero, 0x69($s0)
/* BA4CC 8010410C A2000076 */  sb         $zero, 0x76($s0)
/* BA4D0 80104110 A2000083 */  sb         $zero, 0x83($s0)
/* BA4D4 80104114 A2000090 */  sb         $zero, 0x90($s0)
/* BA4D8 80104118 A200009D */  sb         $zero, 0x9D($s0)
/* BA4DC 8010411C A20000AA */  sb         $zero, 0xAA($s0)
/* BA4E0 80104120 A20000B7 */  sb         $zero, 0xB7($s0)
/* BA4E4 80104124 A20000C4 */  sb         $zero, 0xC4($s0)
/* BA4E8 80104128 A20000DE */  sb         $zero, 0xDE($s0)
/* BA4EC 8010412C A20000D1 */  sb         $zero, 0xD1($s0)
/* BA4F0 80104130 A20000EB */  sb         $zero, 0xEB($s0)
/* BA4F4 80104134 A20000F8 */  sb         $zero, 0xF8($s0)
/* BA4F8 80104138 A2000105 */  sb         $zero, 0x105($s0)
/* BA4FC 8010413C A2000112 */  sb         $zero, 0x112($s0)
/* BA500 80104140 A200011F */  sb         $zero, 0x11F($s0)
/* BA504 80104144 A200012C */  sb         $zero, 0x12C($s0)
/* BA508 80104148 A2000146 */  sb         $zero, 0x146($s0)
/* BA50C 8010414C A2000153 */  sb         $zero, 0x153($s0)
/* BA510 80104150 A2000160 */  sb         $zero, 0x160($s0)
/* BA514 80104154 A200016D */  sb         $zero, 0x16D($s0)
/* BA518 80104158 A200017A */  sb         $zero, 0x17A($s0)
/* BA51C 8010415C A2000187 */  sb         $zero, 0x187($s0)
/* BA520 80104160 A2000194 */  sb         $zero, 0x194($s0)
/* BA524 80104164 A20001A1 */  sb         $zero, 0x1A1($s0)
/* BA528 80104168 A20001AE */  sb         $zero, 0x1AE($s0)
/* BA52C 8010416C A20001BB */  sb         $zero, 0x1BB($s0)
/* BA530 80104170 A20001C8 */  sb         $zero, 0x1C8($s0)
/* BA534 80104174 A20001D5 */  sb         $zero, 0x1D5($s0)
/* BA538 80104178 A20001EF */  sb         $zero, 0x1EF($s0)
/* BA53C 8010417C A20001E2 */  sb         $zero, 0x1E2($s0)
/* BA540 80104180 AE000380 */  sw         $zero, 0x380($s0)
/* BA544 80104184 AE0001F8 */  sw         $zero, 0x1F8($s0)
/* BA548 80104188 AE0001FC */  sw         $zero, 0x1FC($s0)
/* BA54C 8010418C AE000200 */  sw         $zero, 0x200($s0)
/* BA550 80104190 AE000208 */  sw         $zero, 0x208($s0)
/* BA554 80104194 AE00020C */  sw         $zero, 0x20C($s0)
/* BA558 80104198 AE000210 */  sw         $zero, 0x210($s0)
/* BA55C 8010419C AE000214 */  sw         $zero, 0x214($s0)
/* BA560 801041A0 AE000364 */  sw         $zero, 0x364($s0)
/* BA564 801041A4 AE000368 */  sw         $zero, 0x368($s0)
/* BA568 801041A8 AE000370 */  sw         $zero, 0x370($s0)
/* BA56C 801041AC AE00036C */  sw         $zero, 0x36C($s0)
/* BA570 801041B0 AE000374 */  sw         $zero, 0x374($s0)
/* BA574 801041B4 AE000384 */  sw         $zero, 0x384($s0)
/* BA578 801041B8 AE000388 */  sw         $zero, 0x388($s0)
/* BA57C 801041BC AE00038C */  sw         $zero, 0x38C($s0)
/* BA580 801041C0 AE002D48 */  sw         $zero, 0x2D48($s0)
/* BA584 801041C4 AE002D4C */  sw         $zero, 0x2D4C($s0)
/* BA588 801041C8 AE002D50 */  sw         $zero, 0x2D50($s0)
/* BA58C 801041CC AE002F60 */  sw         $zero, 0x2F60($s0)
/* BA590 801041D0 AE0032EC */  sw         $zero, 0x32EC($s0)
/* BA594 801041D4 AE0032F8 */  sw         $zero, 0x32F8($s0)
/* BA598 801041D8 E6040204 */  swc1       $f4, 0x204($s0)
/* BA59C 801041DC E6060218 */  swc1       $f6, 0x218($s0)
/* BA5A0 801041E0 E6002A90 */  swc1       $f0, 0x2A90($s0)
/* BA5A4 801041E4 E6022A94 */  swc1       $f2, 0x2A94($s0)
/* BA5A8 801041E8 E6002A98 */  swc1       $f0, 0x2A98($s0)
/* BA5AC 801041EC E6022A9C */  swc1       $f2, 0x2A9C($s0)
/* BA5B0 801041F0 E60832FC */  swc1       $f8, 0x32FC($s0)
/* BA5B4 801041F4 AE000378 */  sw         $zero, 0x378($s0)
/* BA5B8 801041F8 AE00037C */  sw         $zero, 0x37C($s0)
/* BA5BC 801041FC AE003308 */  sw         $zero, 0x3308($s0)
/* BA5C0 80104200 AE003330 */  sw         $zero, 0x3330($s0)
.Lrace_80104204:
/* BA5C4 80104204 AC6032F0 */  sw         $zero, 0x32F0($v1)
/* BA5C8 80104208 AC602AA0 */  sw         $zero, 0x2AA0($v1)
/* BA5CC 8010420C AC6006A8 */  sw         $zero, 0x6A8($v1)
/* BA5D0 80104210 24840001 */  addiu      $a0, $a0, 0x1
/* BA5D4 80104214 2C820002 */  sltiu      $v0, $a0, 0x2
/* BA5D8 80104218 1440FFFA */  bnez       $v0, .Lrace_80104204
/* BA5DC 8010421C 24630004 */   addiu     $v1, $v1, 0x4
/* BA5E0 80104220 26042D60 */  addiu      $a0, $s0, 0x2D60
/* BA5E4 80104224 00002821 */  addu       $a1, $zero, $zero
/* BA5E8 80104228 24060200 */  addiu      $a2, $zero, 0x200
/* BA5EC 8010422C AE003304 */  sw         $zero, 0x3304($s0)
/* BA5F0 80104230 0C000697 */  jal        func_80001A5C
/* BA5F4 80104234 AE003300 */   sw        $zero, 0x3300($s0)
/* BA5F8 80104238 AE003324 */  sw         $zero, 0x3324($s0)
/* BA5FC 8010423C AE00330C */  sw         $zero, 0x330C($s0)
/* BA600 80104240 A2003310 */  sb         $zero, 0x3310($s0)
/* BA604 80104244 AE003328 */  sw         $zero, 0x3328($s0)
/* BA608 80104248 AE00332C */  sw         $zero, 0x332C($s0)
/* BA60C 8010424C AE003098 */  sw         $zero, 0x3098($s0)
/* BA610 80104250 AE003334 */  sw         $zero, 0x3334($s0)
/* BA614 80104254 AE003338 */  sw         $zero, 0x3338($s0)
/* BA618 80104258 A2003320 */  sb         $zero, 0x3320($s0)
/* BA61C 8010425C AE00333C */  sw         $zero, 0x333C($s0)
/* BA620 80104260 8FBF0014 */  lw         $ra, 0x14($sp)
/* BA624 80104264 8FB00010 */  lw         $s0, 0x10($sp)
/* BA628 80104268 03E00008 */  jr         $ra
/* BA62C 8010426C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80104270
/* BA630 80104270 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* BA634 80104274 AFB1001C */  sw         $s1, 0x1C($sp)
/* BA638 80104278 00808821 */  addu       $s1, $a0, $zero
/* BA63C 8010427C AFB30024 */  sw         $s3, 0x24($sp)
/* BA640 80104280 00A09821 */  addu       $s3, $a1, $zero
/* BA644 80104284 AFB20020 */  sw         $s2, 0x20($sp)
/* BA648 80104288 00C09021 */  addu       $s2, $a2, $zero
/* BA64C 8010428C AFB5002C */  sw         $s5, 0x2C($sp)
/* BA650 80104290 AFBF0030 */  sw         $ra, 0x30($sp)
/* BA654 80104294 AFB40028 */  sw         $s4, 0x28($sp)
/* BA658 80104298 AFB00018 */  sw         $s0, 0x18($sp)
/* BA65C 8010429C 8E62001C */  lw         $v0, 0x1C($s3)
/* BA660 801042A0 8FB40048 */  lw         $s4, 0x48($sp)
/* BA664 801042A4 10400014 */  beqz       $v0, .Lrace_801042F8
/* BA668 801042A8 00E0A821 */   addu      $s5, $a3, $zero
/* BA66C 801042AC 0C01FB4C */  jal        func_8007ED30
/* BA670 801042B0 24040654 */   addiu     $a0, $zero, 0x654
/* BA674 801042B4 0C00278C */  jal        func_80009E30
/* BA678 801042B8 00402021 */   addu      $a0, $v0, $zero
/* BA67C 801042BC 00408021 */  addu       $s0, $v0, $zero
/* BA680 801042C0 56000008 */  bnel       $s0, $zero, .Lrace_801042E4
/* BA684 801042C4 02002021 */   addu      $a0, $s0, $zero
/* BA688 801042C8 3C04800D */  lui        $a0, %hi(D_race_800CD724)
/* BA68C 801042CC 2484D724 */  addiu      $a0, $a0, %lo(D_race_800CD724)
/* BA690 801042D0 00002821 */  addu       $a1, $zero, $zero
/* BA694 801042D4 00A03021 */  addu       $a2, $a1, $zero
/* BA698 801042D8 0C011ACF */  jal        func_80046B3C
/* BA69C 801042DC 00A03821 */   addu      $a3, $a1, $zero
/* BA6A0 801042E0 02002021 */  addu       $a0, $s0, $zero
.Lrace_801042E4:
/* BA6A4 801042E4 3C05800D */  lui        $a1, %hi(D_race_800CD728)
/* BA6A8 801042E8 0C0025BA */  jal        func_800096E8
/* BA6AC 801042EC 24A5D728 */   addiu     $a1, $a1, %lo(D_race_800CD728)
/* BA6B0 801042F0 080410CD */  j          .Lrace_80104334
/* BA6B4 801042F4 00000000 */   nop
.Lrace_801042F8:
/* BA6B8 801042F8 0C01FB4C */  jal        func_8007ED30
/* BA6BC 801042FC 24040658 */   addiu     $a0, $zero, 0x658
/* BA6C0 80104300 00408021 */  addu       $s0, $v0, $zero
/* BA6C4 80104304 0C002504 */  jal        func_80009410
/* BA6C8 80104308 02002021 */   addu      $a0, $s0, $zero
/* BA6CC 8010430C 3C02800D */  lui        $v0, %hi(D_race_800CD928)
/* BA6D0 80104310 2442D928 */  addiu      $v0, $v0, %lo(D_race_800CD928)
/* BA6D4 80104314 16000007 */  bnez       $s0, .Lrace_80104334
/* BA6D8 80104318 AE020028 */   sw        $v0, 0x28($s0)
/* BA6DC 8010431C 3C04800D */  lui        $a0, %hi(D_race_800CD724)
/* BA6E0 80104320 2484D724 */  addiu      $a0, $a0, %lo(D_race_800CD724)
/* BA6E4 80104324 00002821 */  addu       $a1, $zero, $zero
/* BA6E8 80104328 00A03021 */  addu       $a2, $a1, $zero
/* BA6EC 8010432C 0C011ACF */  jal        func_80046B3C
/* BA6F0 80104330 00A03821 */   addu      $a3, $a1, $zero
.Lrace_80104334:
/* BA6F4 80104334 8E020028 */  lw         $v0, 0x28($s0)
/* BA6F8 80104338 02402821 */  addu       $a1, $s2, $zero
/* BA6FC 8010433C 84440088 */  lh         $a0, 0x88($v0)
/* BA700 80104340 8C42008C */  lw         $v0, 0x8C($v0)
/* BA704 80104344 0040F809 */  jalr       $v0
/* BA708 80104348 02042021 */   addu      $a0, $s0, $a0
/* BA70C 8010434C 02002021 */  addu       $a0, $s0, $zero
/* BA710 80104350 0C0026F4 */  jal        func_80009BD0
/* BA714 80104354 24050035 */   addiu     $a1, $zero, 0x35
/* BA718 80104358 26020044 */  addiu      $v0, $s0, 0x44
/* BA71C 8010435C 8E030028 */  lw         $v1, 0x28($s0)
/* BA720 80104360 00409021 */  addu       $s2, $v0, $zero
/* BA724 80104364 846400A0 */  lh         $a0, 0xA0($v1)
/* BA728 80104368 8C6200A4 */  lw         $v0, 0xA4($v1)
/* BA72C 8010436C 0040F809 */  jalr       $v0
/* BA730 80104370 02042021 */   addu      $a0, $s0, $a0
/* BA734 80104374 2624001C */  addiu      $a0, $s1, 0x1C
/* BA738 80104378 0C0006FA */  jal        func_80001BE8
/* BA73C 8010437C 02402821 */   addu      $a1, $s2, $zero
/* BA740 80104380 02002021 */  addu       $a0, $s0, $zero
/* BA744 80104384 0C0026F4 */  jal        func_80009BD0
/* BA748 80104388 24050005 */   addiu     $a1, $zero, 0x5
.Lrace_8010438C:
/* BA74C 8010438C 8E020028 */  lw         $v0, 0x28($s0)
/* BA750 80104390 844400A0 */  lh         $a0, 0xA0($v0)
/* BA754 80104394 8C4200A4 */  lw         $v0, 0xA4($v0)
/* BA758 80104398 0040F809 */  jalr       $v0
/* BA75C 8010439C 02042021 */   addu      $a0, $s0, $a0
/* BA760 801043A0 00401821 */  addu       $v1, $v0, $zero
/* BA764 801043A4 24020006 */  addiu      $v0, $zero, 0x6
/* BA768 801043A8 10620133 */  beq        $v1, $v0, .Lrace_80104878
/* BA76C 801043AC 2463FFD9 */   addiu     $v1, $v1, -0x27
/* BA770 801043B0 2C620024 */  sltiu      $v0, $v1, 0x24
/* BA774 801043B4 10400128 */  beqz       $v0, Lrace_80104858
/* BA778 801043B8 3C02800D */   lui       $v0, %hi(jtbl_race_800CD730)
/* BA77C 801043BC 2442D730 */  addiu      $v0, $v0, %lo(jtbl_race_800CD730)
/* BA780 801043C0 00031880 */  sll        $v1, $v1, 2
/* BA784 801043C4 00621821 */  addu       $v1, $v1, $v0
/* BA788 801043C8 8C620000 */  lw         $v0, 0x0($v1)
/* BA78C 801043CC 00400008 */  jr         $v0
/* BA790 801043D0 00000000 */   nop
glabel Lrace_801043D4
/* BA794 801043D4 8E020028 */  lw         $v0, 0x28($s0)
/* BA798 801043D8 844400A0 */  lh         $a0, 0xA0($v0)
/* BA79C 801043DC 8C4200A4 */  lw         $v0, 0xA4($v0)
/* BA7A0 801043E0 0040F809 */  jalr       $v0
/* BA7A4 801043E4 02042021 */   addu      $a0, $s0, $a0
/* BA7A8 801043E8 08041212 */  j          .Lrace_80104848
/* BA7AC 801043EC 26240069 */   addiu     $a0, $s1, 0x69
glabel Lrace_801043F0
/* BA7B0 801043F0 8E020028 */  lw         $v0, 0x28($s0)
/* BA7B4 801043F4 844400A0 */  lh         $a0, 0xA0($v0)
/* BA7B8 801043F8 8C4200A4 */  lw         $v0, 0xA4($v0)
/* BA7BC 801043FC 0040F809 */  jalr       $v0
/* BA7C0 80104400 02042021 */   addu      $a0, $s0, $a0
/* BA7C4 80104404 08041212 */  j          .Lrace_80104848
/* BA7C8 80104408 262401A1 */   addiu     $a0, $s1, 0x1A1
glabel Lrace_8010440C
/* BA7CC 8010440C 8E020028 */  lw         $v0, 0x28($s0)
/* BA7D0 80104410 844400A0 */  lh         $a0, 0xA0($v0)
/* BA7D4 80104414 8C4200A4 */  lw         $v0, 0xA4($v0)
/* BA7D8 80104418 0040F809 */  jalr       $v0
/* BA7DC 8010441C 02042021 */   addu      $a0, $s0, $a0
/* BA7E0 80104420 08041212 */  j          .Lrace_80104848
/* BA7E4 80104424 26240076 */   addiu     $a0, $s1, 0x76
glabel Lrace_80104428
/* BA7E8 80104428 0C0025F8 */  jal        func_800097E0
/* BA7EC 8010442C 02002021 */   addu      $a0, $s0, $zero
/* BA7F0 80104430 02002021 */  addu       $a0, $s0, $zero
/* BA7F4 80104434 0C0025F8 */  jal        func_800097E0
/* BA7F8 80104438 E6200204 */   swc1      $f0, 0x204($s1)
/* BA7FC 8010443C 02002021 */  addu       $a0, $s0, $zero
/* BA800 80104440 0C0025F8 */  jal        func_800097E0
/* BA804 80104444 E6200208 */   swc1      $f0, 0x208($s1)
/* BA808 80104448 02002021 */  addu       $a0, $s0, $zero
/* BA80C 8010444C 0C0025F8 */  jal        func_800097E0
/* BA810 80104450 E620020C */   swc1      $f0, 0x20C($s1)
/* BA814 80104454 02002021 */  addu       $a0, $s0, $zero
/* BA818 80104458 0C0025F8 */  jal        func_800097E0
/* BA81C 8010445C E6200210 */   swc1      $f0, 0x210($s1)
/* BA820 80104460 02002021 */  addu       $a0, $s0, $zero
/* BA824 80104464 0C0025F8 */  jal        func_800097E0
/* BA828 80104468 E6200214 */   swc1      $f0, 0x214($s1)
/* BA82C 8010446C 080410E3 */  j          .Lrace_8010438C
/* BA830 80104470 E6200218 */   swc1      $f0, 0x218($s1)
glabel Lrace_80104474
/* BA834 80104474 0C0025F8 */  jal        func_800097E0
/* BA838 80104478 02002021 */   addu      $a0, $s0, $zero
/* BA83C 8010447C 02002021 */  addu       $a0, $s0, $zero
/* BA840 80104480 0C0025F8 */  jal        func_800097E0
/* BA844 80104484 E62001F8 */   swc1      $f0, 0x1F8($s1)
/* BA848 80104488 02002021 */  addu       $a0, $s0, $zero
/* BA84C 8010448C 0C0025F8 */  jal        func_800097E0
/* BA850 80104490 E62001FC */   swc1      $f0, 0x1FC($s1)
/* BA854 80104494 080410E3 */  j          .Lrace_8010438C
/* BA858 80104498 E6200200 */   swc1      $f0, 0x200($s1)
glabel Lrace_8010449C
/* BA85C 8010449C 8E020028 */  lw         $v0, 0x28($s0)
/* BA860 801044A0 844400A0 */  lh         $a0, 0xA0($v0)
/* BA864 801044A4 8C4200A4 */  lw         $v0, 0xA4($v0)
/* BA868 801044A8 0040F809 */  jalr       $v0
/* BA86C 801044AC 02042021 */   addu      $a0, $s0, $a0
/* BA870 801044B0 262401EF */  addiu      $a0, $s1, 0x1EF
/* BA874 801044B4 26050044 */  addiu      $a1, $s0, 0x44
/* BA878 801044B8 0C000708 */  jal        func_80001C20
/* BA87C 801044BC 24060008 */   addiu     $a2, $zero, 0x8
/* BA880 801044C0 080410E3 */  j          .Lrace_8010438C
/* BA884 801044C4 00000000 */   nop
glabel Lrace_801044C8
/* BA888 801044C8 8E020028 */  lw         $v0, 0x28($s0)
/* BA88C 801044CC 844400A0 */  lh         $a0, 0xA0($v0)
/* BA890 801044D0 8C4200A4 */  lw         $v0, 0xA4($v0)
/* BA894 801044D4 0040F809 */  jalr       $v0
/* BA898 801044D8 02042021 */   addu      $a0, $s0, $a0
/* BA89C 801044DC 08041212 */  j          .Lrace_80104848
/* BA8A0 801044E0 26240083 */   addiu     $a0, $s1, 0x83
glabel Lrace_801044E4
/* BA8A4 801044E4 8E020028 */  lw         $v0, 0x28($s0)
/* BA8A8 801044E8 844400A0 */  lh         $a0, 0xA0($v0)
/* BA8AC 801044EC 8C4200A4 */  lw         $v0, 0xA4($v0)
/* BA8B0 801044F0 0040F809 */  jalr       $v0
/* BA8B4 801044F4 02042021 */   addu      $a0, $s0, $a0
/* BA8B8 801044F8 2624009D */  addiu      $a0, $s1, 0x9D
/* BA8BC 801044FC 0C0006FA */  jal        func_80001BE8
/* BA8C0 80104500 02402821 */   addu      $a1, $s2, $zero
/* BA8C4 80104504 8E020028 */  lw         $v0, 0x28($s0)
/* BA8C8 80104508 844400A0 */  lh         $a0, 0xA0($v0)
/* BA8CC 8010450C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* BA8D0 80104510 0040F809 */  jalr       $v0
/* BA8D4 80104514 02042021 */   addu      $a0, $s0, $a0
/* BA8D8 80104518 262400AA */  addiu      $a0, $s1, 0xAA
/* BA8DC 8010451C 0C0006FA */  jal        func_80001BE8
/* BA8E0 80104520 02402821 */   addu      $a1, $s2, $zero
/* BA8E4 80104524 8E020028 */  lw         $v0, 0x28($s0)
/* BA8E8 80104528 844400A0 */  lh         $a0, 0xA0($v0)
/* BA8EC 8010452C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* BA8F0 80104530 0040F809 */  jalr       $v0
/* BA8F4 80104534 02042021 */   addu      $a0, $s0, $a0
/* BA8F8 80104538 080411FB */  j          .Lrace_801047EC
/* BA8FC 8010453C 262400B7 */   addiu     $a0, $s1, 0xB7
glabel Lrace_80104540
/* BA900 80104540 8E020028 */  lw         $v0, 0x28($s0)
/* BA904 80104544 844400A0 */  lh         $a0, 0xA0($v0)
/* BA908 80104548 8C4200A4 */  lw         $v0, 0xA4($v0)
/* BA90C 8010454C 0040F809 */  jalr       $v0
/* BA910 80104550 02042021 */   addu      $a0, $s0, $a0
/* BA914 80104554 08041212 */  j          .Lrace_80104848
/* BA918 80104558 26240105 */   addiu     $a0, $s1, 0x105
glabel Lrace_8010455C
/* BA91C 8010455C 8E020028 */  lw         $v0, 0x28($s0)
/* BA920 80104560 844400A0 */  lh         $a0, 0xA0($v0)
/* BA924 80104564 8C4200A4 */  lw         $v0, 0xA4($v0)
/* BA928 80104568 0040F809 */  jalr       $v0
/* BA92C 8010456C 02042021 */   addu      $a0, $s0, $a0
/* BA930 80104570 08041212 */  j          .Lrace_80104848
/* BA934 80104574 2624017A */   addiu     $a0, $s1, 0x17A
glabel Lrace_80104578
/* BA938 80104578 8E020028 */  lw         $v0, 0x28($s0)
/* BA93C 8010457C 844400A0 */  lh         $a0, 0xA0($v0)
/* BA940 80104580 8C4200A4 */  lw         $v0, 0xA4($v0)
/* BA944 80104584 0040F809 */  jalr       $v0
/* BA948 80104588 02042021 */   addu      $a0, $s0, $a0
/* BA94C 8010458C 08041212 */  j          .Lrace_80104848
/* BA950 80104590 2624005C */   addiu     $a0, $s1, 0x5C
glabel Lrace_80104594
/* BA954 80104594 8E020028 */  lw         $v0, 0x28($s0)
/* BA958 80104598 844400A0 */  lh         $a0, 0xA0($v0)
/* BA95C 8010459C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* BA960 801045A0 0040F809 */  jalr       $v0
/* BA964 801045A4 02042021 */   addu      $a0, $s0, $a0
/* BA968 801045A8 08041212 */  j          .Lrace_80104848
/* BA96C 801045AC 26240187 */   addiu     $a0, $s1, 0x187
glabel Lrace_801045B0
/* BA970 801045B0 8E020028 */  lw         $v0, 0x28($s0)
/* BA974 801045B4 844400A0 */  lh         $a0, 0xA0($v0)
/* BA978 801045B8 8C4200A4 */  lw         $v0, 0xA4($v0)
/* BA97C 801045BC 0040F809 */  jalr       $v0
/* BA980 801045C0 02042021 */   addu      $a0, $s0, $a0
/* BA984 801045C4 08041212 */  j          .Lrace_80104848
/* BA988 801045C8 2624016D */   addiu     $a0, $s1, 0x16D
glabel Lrace_801045CC
/* BA98C 801045CC 8E020028 */  lw         $v0, 0x28($s0)
/* BA990 801045D0 844400A0 */  lh         $a0, 0xA0($v0)
/* BA994 801045D4 8C4200A4 */  lw         $v0, 0xA4($v0)
/* BA998 801045D8 0040F809 */  jalr       $v0
/* BA99C 801045DC 02042021 */   addu      $a0, $s0, $a0
/* BA9A0 801045E0 080410E3 */  j          .Lrace_8010438C
/* BA9A4 801045E4 00000000 */   nop
glabel Lrace_801045E8
/* BA9A8 801045E8 8E020028 */  lw         $v0, 0x28($s0)
/* BA9AC 801045EC 844400A0 */  lh         $a0, 0xA0($v0)
/* BA9B0 801045F0 8C4200A4 */  lw         $v0, 0xA4($v0)
/* BA9B4 801045F4 0040F809 */  jalr       $v0
/* BA9B8 801045F8 02042021 */   addu      $a0, $s0, $a0
/* BA9BC 801045FC 262400C4 */  addiu      $a0, $s1, 0xC4
/* BA9C0 80104600 0C0006FA */  jal        func_80001BE8
/* BA9C4 80104604 02402821 */   addu      $a1, $s2, $zero
/* BA9C8 80104608 8E020028 */  lw         $v0, 0x28($s0)
/* BA9CC 8010460C 844400A0 */  lh         $a0, 0xA0($v0)
/* BA9D0 80104610 8C4200A4 */  lw         $v0, 0xA4($v0)
/* BA9D4 80104614 0040F809 */  jalr       $v0
/* BA9D8 80104618 02042021 */   addu      $a0, $s0, $a0
/* BA9DC 8010461C 262400DE */  addiu      $a0, $s1, 0xDE
/* BA9E0 80104620 0C0006FA */  jal        func_80001BE8
/* BA9E4 80104624 02402821 */   addu      $a1, $s2, $zero
/* BA9E8 80104628 8E020028 */  lw         $v0, 0x28($s0)
/* BA9EC 8010462C 844400A0 */  lh         $a0, 0xA0($v0)
/* BA9F0 80104630 8C4200A4 */  lw         $v0, 0xA4($v0)
/* BA9F4 80104634 0040F809 */  jalr       $v0
/* BA9F8 80104638 02042021 */   addu      $a0, $s0, $a0
/* BA9FC 8010463C 080411FB */  j          .Lrace_801047EC
/* BAA00 80104640 262400D1 */   addiu     $a0, $s1, 0xD1
glabel Lrace_80104644
/* BAA04 80104644 8E020028 */  lw         $v0, 0x28($s0)
/* BAA08 80104648 844400A0 */  lh         $a0, 0xA0($v0)
/* BAA0C 8010464C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* BAA10 80104650 0040F809 */  jalr       $v0
/* BAA14 80104654 02042021 */   addu      $a0, $s0, $a0
/* BAA18 80104658 08041212 */  j          .Lrace_80104848
/* BAA1C 8010465C 262400EB */   addiu     $a0, $s1, 0xEB
glabel Lrace_80104660
/* BAA20 80104660 8E020028 */  lw         $v0, 0x28($s0)
/* BAA24 80104664 844400A0 */  lh         $a0, 0xA0($v0)
/* BAA28 80104668 8C4200A4 */  lw         $v0, 0xA4($v0)
/* BAA2C 8010466C 0040F809 */  jalr       $v0
/* BAA30 80104670 02042021 */   addu      $a0, $s0, $a0
/* BAA34 80104674 08041212 */  j          .Lrace_80104848
/* BAA38 80104678 26240194 */   addiu     $a0, $s1, 0x194
glabel Lrace_8010467C
/* BAA3C 8010467C 8E020028 */  lw         $v0, 0x28($s0)
/* BAA40 80104680 844400A0 */  lh         $a0, 0xA0($v0)
/* BAA44 80104684 8C4200A4 */  lw         $v0, 0xA4($v0)
/* BAA48 80104688 0040F809 */  jalr       $v0
/* BAA4C 8010468C 02042021 */   addu      $a0, $s0, $a0
/* BAA50 80104690 08041212 */  j          .Lrace_80104848
/* BAA54 80104694 26240146 */   addiu     $a0, $s1, 0x146
glabel Lrace_80104698
/* BAA58 80104698 8E020028 */  lw         $v0, 0x28($s0)
/* BAA5C 8010469C 844400A0 */  lh         $a0, 0xA0($v0)
/* BAA60 801046A0 8C4200A4 */  lw         $v0, 0xA4($v0)
/* BAA64 801046A4 0040F809 */  jalr       $v0
/* BAA68 801046A8 02042021 */   addu      $a0, $s0, $a0
/* BAA6C 801046AC 08041212 */  j          .Lrace_80104848
/* BAA70 801046B0 26240153 */   addiu     $a0, $s1, 0x153
glabel Lrace_801046B4
/* BAA74 801046B4 8E020028 */  lw         $v0, 0x28($s0)
/* BAA78 801046B8 844400A0 */  lh         $a0, 0xA0($v0)
/* BAA7C 801046BC 8C4200A4 */  lw         $v0, 0xA4($v0)
/* BAA80 801046C0 0040F809 */  jalr       $v0
/* BAA84 801046C4 02042021 */   addu      $a0, $s0, $a0
/* BAA88 801046C8 08041212 */  j          .Lrace_80104848
/* BAA8C 801046CC 26240160 */   addiu     $a0, $s1, 0x160
glabel Lrace_801046D0
/* BAA90 801046D0 8E020028 */  lw         $v0, 0x28($s0)
/* BAA94 801046D4 844400A0 */  lh         $a0, 0xA0($v0)
/* BAA98 801046D8 8C4200A4 */  lw         $v0, 0xA4($v0)
/* BAA9C 801046DC 0040F809 */  jalr       $v0
/* BAAA0 801046E0 02042021 */   addu      $a0, $s0, $a0
/* BAAA4 801046E4 08041212 */  j          .Lrace_80104848
/* BAAA8 801046E8 26240112 */   addiu     $a0, $s1, 0x112
glabel Lrace_801046EC
/* BAAAC 801046EC 8E020028 */  lw         $v0, 0x28($s0)
/* BAAB0 801046F0 844400A0 */  lh         $a0, 0xA0($v0)
/* BAAB4 801046F4 8C4200A4 */  lw         $v0, 0xA4($v0)
/* BAAB8 801046F8 0040F809 */  jalr       $v0
/* BAABC 801046FC 02042021 */   addu      $a0, $s0, $a0
/* BAAC0 80104700 08041212 */  j          .Lrace_80104848
/* BAAC4 80104704 2624011F */   addiu     $a0, $s1, 0x11F
glabel Lrace_80104708
/* BAAC8 80104708 8E020028 */  lw         $v0, 0x28($s0)
/* BAACC 8010470C 844400A0 */  lh         $a0, 0xA0($v0)
/* BAAD0 80104710 8C4200A4 */  lw         $v0, 0xA4($v0)
/* BAAD4 80104714 0040F809 */  jalr       $v0
/* BAAD8 80104718 02042021 */   addu      $a0, $s0, $a0
/* BAADC 8010471C 08041212 */  j          .Lrace_80104848
/* BAAE0 80104720 26240090 */   addiu     $a0, $s1, 0x90
glabel Lrace_80104724
/* BAAE4 80104724 8E020028 */  lw         $v0, 0x28($s0)
/* BAAE8 80104728 844400A0 */  lh         $a0, 0xA0($v0)
/* BAAEC 8010472C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* BAAF0 80104730 0040F809 */  jalr       $v0
/* BAAF4 80104734 02042021 */   addu      $a0, $s0, $a0
/* BAAF8 80104738 2624012C */  addiu      $a0, $s1, 0x12C
/* BAAFC 8010473C 0C0006FA */  jal        func_80001BE8
/* BAB00 80104740 02402821 */   addu      $a1, $s2, $zero
/* BAB04 80104744 8E020028 */  lw         $v0, 0x28($s0)
/* BAB08 80104748 844400A0 */  lh         $a0, 0xA0($v0)
/* BAB0C 8010474C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* BAB10 80104750 0040F809 */  jalr       $v0
/* BAB14 80104754 02042021 */   addu      $a0, $s0, $a0
/* BAB18 80104758 080411FB */  j          .Lrace_801047EC
/* BAB1C 8010475C 26240139 */   addiu     $a0, $s1, 0x139
glabel Lrace_80104760
/* BAB20 80104760 8E020028 */  lw         $v0, 0x28($s0)
/* BAB24 80104764 844400A0 */  lh         $a0, 0xA0($v0)
/* BAB28 80104768 8C4200A4 */  lw         $v0, 0xA4($v0)
/* BAB2C 8010476C 0040F809 */  jalr       $v0
/* BAB30 80104770 02042021 */   addu      $a0, $s0, $a0
/* BAB34 80104774 08041212 */  j          .Lrace_80104848
/* BAB38 80104778 262400F8 */   addiu     $a0, $s1, 0xF8
glabel Lrace_8010477C
/* BAB3C 8010477C 8E020028 */  lw         $v0, 0x28($s0)
/* BAB40 80104780 844400A0 */  lh         $a0, 0xA0($v0)
/* BAB44 80104784 8C4200A4 */  lw         $v0, 0xA4($v0)
/* BAB48 80104788 0040F809 */  jalr       $v0
/* BAB4C 8010478C 02042021 */   addu      $a0, $s0, $a0
/* BAB50 80104790 08041212 */  j          .Lrace_80104848
/* BAB54 80104794 262401AE */   addiu     $a0, $s1, 0x1AE
glabel Lrace_80104798
/* BAB58 80104798 8E020028 */  lw         $v0, 0x28($s0)
/* BAB5C 8010479C 844400A0 */  lh         $a0, 0xA0($v0)
/* BAB60 801047A0 8C4200A4 */  lw         $v0, 0xA4($v0)
/* BAB64 801047A4 0040F809 */  jalr       $v0
/* BAB68 801047A8 02042021 */   addu      $a0, $s0, $a0
/* BAB6C 801047AC 08041212 */  j          .Lrace_80104848
/* BAB70 801047B0 262401BB */   addiu     $a0, $s1, 0x1BB
glabel Lrace_801047B4
/* BAB74 801047B4 8E020028 */  lw         $v0, 0x28($s0)
/* BAB78 801047B8 844400A0 */  lh         $a0, 0xA0($v0)
/* BAB7C 801047BC 8C4200A4 */  lw         $v0, 0xA4($v0)
/* BAB80 801047C0 0040F809 */  jalr       $v0
/* BAB84 801047C4 02042021 */   addu      $a0, $s0, $a0
/* BAB88 801047C8 262401C8 */  addiu      $a0, $s1, 0x1C8
/* BAB8C 801047CC 0C0006FA */  jal        func_80001BE8
/* BAB90 801047D0 02402821 */   addu      $a1, $s2, $zero
/* BAB94 801047D4 8E020028 */  lw         $v0, 0x28($s0)
/* BAB98 801047D8 844400A0 */  lh         $a0, 0xA0($v0)
/* BAB9C 801047DC 8C4200A4 */  lw         $v0, 0xA4($v0)
/* BABA0 801047E0 0040F809 */  jalr       $v0
/* BABA4 801047E4 02042021 */   addu      $a0, $s0, $a0
/* BABA8 801047E8 262401D5 */  addiu      $a0, $s1, 0x1D5
.Lrace_801047EC:
/* BABAC 801047EC 0C0006FA */  jal        func_80001BE8
/* BABB0 801047F0 02402821 */   addu      $a1, $s2, $zero
/* BABB4 801047F4 080410E3 */  j          .Lrace_8010438C
/* BABB8 801047F8 00000000 */   nop
glabel Lrace_801047FC
/* BABBC 801047FC 0C0025F8 */  jal        func_800097E0
/* BABC0 80104800 02002021 */   addu      $a0, $s0, $zero
/* BABC4 80104804 02002021 */  addu       $a0, $s0, $zero
/* BABC8 80104808 0C0025F8 */  jal        func_800097E0
/* BABCC 8010480C E6202A90 */   swc1      $f0, 0x2A90($s1)
/* BABD0 80104810 02002021 */  addu       $a0, $s0, $zero
/* BABD4 80104814 0C0025F8 */  jal        func_800097E0
/* BABD8 80104818 E6202A98 */   swc1      $f0, 0x2A98($s1)
/* BABDC 8010481C 02002021 */  addu       $a0, $s0, $zero
/* BABE0 80104820 0C0025F8 */  jal        func_800097E0
/* BABE4 80104824 E6202A94 */   swc1      $f0, 0x2A94($s1)
/* BABE8 80104828 080410E3 */  j          .Lrace_8010438C
/* BABEC 8010482C E6202A9C */   swc1      $f0, 0x2A9C($s1)
glabel Lrace_80104830
/* BABF0 80104830 8E020028 */  lw         $v0, 0x28($s0)
/* BABF4 80104834 844400A0 */  lh         $a0, 0xA0($v0)
/* BABF8 80104838 8C4200A4 */  lw         $v0, 0xA4($v0)
/* BABFC 8010483C 0040F809 */  jalr       $v0
/* BAC00 80104840 02042021 */   addu      $a0, $s0, $a0
/* BAC04 80104844 262401E2 */  addiu      $a0, $s1, 0x1E2
.Lrace_80104848:
/* BAC08 80104848 0C0006FA */  jal        func_80001BE8
/* BAC0C 8010484C 26050044 */   addiu     $a1, $s0, 0x44
/* BAC10 80104850 080410E3 */  j          .Lrace_8010438C
/* BAC14 80104854 00000000 */   nop
glabel Lrace_80104858
/* BAC18 80104858 8E020028 */  lw         $v0, 0x28($s0)
/* BAC1C 8010485C 00002821 */  addu       $a1, $zero, $zero
/* BAC20 80104860 84440098 */  lh         $a0, 0x98($v0)
/* BAC24 80104864 8C42009C */  lw         $v0, 0x9C($v0)
/* BAC28 80104868 0040F809 */  jalr       $v0
/* BAC2C 8010486C 02042021 */   addu      $a0, $s0, $a0
/* BAC30 80104870 080410E3 */  j          .Lrace_8010438C
/* BAC34 80104874 00000000 */   nop
.Lrace_80104878:
/* BAC38 80104878 8E020028 */  lw         $v0, 0x28($s0)
/* BAC3C 8010487C 84440048 */  lh         $a0, 0x48($v0)
/* BAC40 80104880 8C42004C */  lw         $v0, 0x4C($v0)
/* BAC44 80104884 0040F809 */  jalr       $v0
/* BAC48 80104888 02042021 */   addu      $a0, $s0, $a0
/* BAC4C 8010488C 12000006 */  beqz       $s0, .Lrace_801048A8
/* BAC50 80104890 24050003 */   addiu     $a1, $zero, 0x3
/* BAC54 80104894 8E020028 */  lw         $v0, 0x28($s0)
/* BAC58 80104898 84440038 */  lh         $a0, 0x38($v0)
/* BAC5C 8010489C 8C42003C */  lw         $v0, 0x3C($v0)
/* BAC60 801048A0 0040F809 */  jalr       $v0
/* BAC64 801048A4 02042021 */   addu      $a0, $s0, $a0
.Lrace_801048A8:
/* BAC68 801048A8 02202021 */  addu       $a0, $s1, $zero
/* BAC6C 801048AC 0C041393 */  jal        func_race_80104E4C
/* BAC70 801048B0 02602821 */   addu      $a1, $s3, $zero
/* BAC74 801048B4 12A0000A */  beqz       $s5, .Lrace_801048E0
/* BAC78 801048B8 00000000 */   nop
/* BAC7C 801048BC C6200208 */  lwc1       $f0, 0x208($s1)
/* BAC80 801048C0 C62201FC */  lwc1       $f2, 0x1FC($s1)
/* BAC84 801048C4 46000007 */  neg.s      $f0, $f0
/* BAC88 801048C8 E6200208 */  swc1       $f0, 0x208($s1)
/* BAC8C 801048CC C6200214 */  lwc1       $f0, 0x214($s1)
/* BAC90 801048D0 46001087 */  neg.s      $f2, $f2
/* BAC94 801048D4 E62201FC */  swc1       $f2, 0x1FC($s1)
/* BAC98 801048D8 46000007 */  neg.s      $f0, $f0
/* BAC9C 801048DC E6200214 */  swc1       $f0, 0x214($s1)
.Lrace_801048E0:
/* BACA0 801048E0 0C041B3A */  jal        func_race_80106CE8
/* BACA4 801048E4 02202021 */   addu      $a0, $s1, $zero
/* BACA8 801048E8 0C0427BB */  jal        func_race_80109EEC
/* BACAC 801048EC 02202021 */   addu      $a0, $s1, $zero
/* BACB0 801048F0 8E230014 */  lw         $v1, 0x14($s1)
/* BACB4 801048F4 8C62012C */  lw         $v0, 0x12C($v1)
/* BACB8 801048F8 84440028 */  lh         $a0, 0x28($v0)
/* BACBC 801048FC 8C42002C */  lw         $v0, 0x2C($v0)
/* BACC0 80104900 0040F809 */  jalr       $v0
/* BACC4 80104904 00642021 */   addu      $a0, $v1, $a0
/* BACC8 80104908 8C430014 */  lw         $v1, 0x14($v0)
/* BACCC 8010490C 84640020 */  lh         $a0, 0x20($v1)
/* BACD0 80104910 8C630024 */  lw         $v1, 0x24($v1)
/* BACD4 80104914 0060F809 */  jalr       $v1
/* BACD8 80104918 00442021 */   addu      $a0, $v0, $a0
/* BACDC 8010491C 0C0414D2 */  jal        func_race_80105348
/* BACE0 80104920 02202021 */   addu      $a0, $s1, $zero
/* BACE4 80104924 8E220004 */  lw         $v0, 0x4($s1)
/* BACE8 80104928 244500E0 */  addiu      $a1, $v0, 0xE0
/* BACEC 8010492C 10A00007 */  beqz       $a1, .Lrace_8010494C
/* BACF0 80104930 3C108003 */   lui       $s0, %hi(D_8002FB34)
/* BACF4 80104934 2610FB34 */  addiu      $s0, $s0, %lo(D_8002FB34)
/* BACF8 80104938 02002021 */  addu       $a0, $s0, $zero
/* BACFC 8010493C 0C000708 */  jal        func_80001C20
/* BAD00 80104940 24060100 */   addiu     $a2, $zero, 0x100
/* BAD04 80104944 08041255 */  j          .Lrace_80104954
/* BAD08 80104948 A20000FF */   sb        $zero, 0xFF($s0)
.Lrace_8010494C:
/* BAD0C 8010494C 3C028003 */  lui        $v0, %hi(D_8002FB34)
/* BAD10 80104950 A040FB34 */  sb         $zero, %lo(D_8002FB34)($v0)
.Lrace_80104954:
/* BAD14 80104954 8E222D50 */  lw         $v0, 0x2D50($s1)
/* BAD18 80104958 AFA20010 */  sw         $v0, 0x10($sp)
/* BAD1C 8010495C 8E62001C */  lw         $v0, 0x1C($s3)
/* BAD20 80104960 262427E0 */  addiu      $a0, $s1, 0x27E0
/* BAD24 80104964 AFA20014 */  sw         $v0, 0x14($sp)
/* BAD28 80104968 8E250010 */  lw         $a1, 0x10($s1)
/* BAD2C 8010496C 8E260014 */  lw         $a2, 0x14($s1)
/* BAD30 80104970 0C04039A */  jal        func_race_80100E68
/* BAD34 80104974 262730C8 */   addiu     $a3, $s1, 0x30C8
/* BAD38 80104978 02202021 */  addu       $a0, $s1, $zero
/* BAD3C 8010497C 8E260008 */  lw         $a2, 0x8($s1)
/* BAD40 80104980 00002821 */  addu       $a1, $zero, $zero
/* BAD44 80104984 8CC20000 */  lw         $v0, 0x0($a2)
/* BAD48 80104988 2403BFFF */  addiu      $v1, $zero, -0x4001
/* BAD4C 8010498C 00431024 */  and        $v0, $v0, $v1
/* BAD50 80104990 0C04245B */  jal        func_race_8010916C
/* BAD54 80104994 ACC20000 */   sw        $v0, 0x0($a2)
/* BAD58 80104998 12800004 */  beqz       $s4, .Lrace_801049AC
/* BAD5C 8010499C AE34333C */   sw        $s4, 0x333C($s1)
/* BAD60 801049A0 02802021 */  addu       $a0, $s4, $zero
/* BAD64 801049A4 0C03D76E */  jal        func_race_800F5DB8
/* BAD68 801049A8 24050001 */   addiu     $a1, $zero, 0x1
.Lrace_801049AC:
/* BAD6C 801049AC 02202021 */  addu       $a0, $s1, $zero
/* BAD70 801049B0 24020001 */  addiu      $v0, $zero, 0x1
/* BAD74 801049B4 AE203304 */  sw         $zero, 0x3304($s1)
/* BAD78 801049B8 0C0413E7 */  jal        func_race_80104F9C
/* BAD7C 801049BC AE223300 */   sw        $v0, 0x3300($s1)
/* BAD80 801049C0 3C053D4C */  lui        $a1, (0x3D4CCCCD >> 16)
/* BAD84 801049C4 34A5CCCD */  ori        $a1, $a1, (0x3D4CCCCD & 0xFFFF)
/* BAD88 801049C8 0C04245B */  jal        func_race_8010916C
/* BAD8C 801049CC 02202021 */   addu      $a0, $s1, $zero
/* BAD90 801049D0 0C04156D */  jal        func_race_801055B4
/* BAD94 801049D4 02202021 */   addu      $a0, $s1, $zero
/* BAD98 801049D8 02202021 */  addu       $a0, $s1, $zero
/* BAD9C 801049DC 0C041599 */  jal        func_race_80105664
/* BADA0 801049E0 02A02821 */   addu      $a1, $s5, $zero
/* BADA4 801049E4 02202021 */  addu       $a0, $s1, $zero
/* BADA8 801049E8 0C0417B3 */  jal        func_race_80105ECC
/* BADAC 801049EC 02A02821 */   addu      $a1, $s5, $zero
/* BADB0 801049F0 3C053F80 */  lui        $a1, (0x3F800000 >> 16)
/* BADB4 801049F4 0C04245B */  jal        func_race_8010916C
/* BADB8 801049F8 02202021 */   addu      $a0, $s1, $zero
/* BADBC 801049FC 0C041C1E */  jal        func_race_80107078
/* BADC0 80104A00 02202021 */   addu      $a0, $s1, $zero
/* BADC4 80104A04 0C041BEA */  jal        func_race_80106FA8
/* BADC8 80104A08 02202021 */   addu      $a0, $s1, $zero
/* BADCC 80104A0C 8E230014 */  lw         $v1, 0x14($s1)
/* BADD0 80104A10 8C62012C */  lw         $v0, 0x12C($v1)
/* BADD4 80104A14 84440088 */  lh         $a0, 0x88($v0)
/* BADD8 80104A18 8C42008C */  lw         $v0, 0x8C($v0)
/* BADDC 80104A1C 0040F809 */  jalr       $v0
/* BADE0 80104A20 00642021 */   addu      $a0, $v1, $a0
/* BADE4 80104A24 8FBF0030 */  lw         $ra, 0x30($sp)
/* BADE8 80104A28 8FB5002C */  lw         $s5, 0x2C($sp)
/* BADEC 80104A2C 8FB40028 */  lw         $s4, 0x28($sp)
/* BADF0 80104A30 8FB30024 */  lw         $s3, 0x24($sp)
/* BADF4 80104A34 8FB20020 */  lw         $s2, 0x20($sp)
/* BADF8 80104A38 8FB1001C */  lw         $s1, 0x1C($sp)
/* BADFC 80104A3C 8FB00018 */  lw         $s0, 0x18($sp)
/* BAE00 80104A40 03E00008 */  jr         $ra
/* BAE04 80104A44 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_80104A48
/* BAE08 80104A48 8C820004 */  lw         $v0, 0x4($a0)
/* BAE0C 80104A4C AC80330C */  sw         $zero, 0x330C($a0)
/* BAE10 80104A50 03E00008 */  jr         $ra
/* BAE14 80104A54 AC400000 */   sw        $zero, 0x0($v0)

glabel func_race_80104A58
/* BAE18 80104A58 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* BAE1C 80104A5C AFB00010 */  sw         $s0, 0x10($sp)
/* BAE20 80104A60 00808021 */  addu       $s0, $a0, $zero
/* BAE24 80104A64 24020001 */  addiu      $v0, $zero, 0x1
/* BAE28 80104A68 AFBF0024 */  sw         $ra, 0x24($sp)
/* BAE2C 80104A6C AFB40020 */  sw         $s4, 0x20($sp)
/* BAE30 80104A70 AFB3001C */  sw         $s3, 0x1C($sp)
/* BAE34 80104A74 AFB20018 */  sw         $s2, 0x18($sp)
/* BAE38 80104A78 AFB10014 */  sw         $s1, 0x14($sp)
/* BAE3C 80104A7C AE02330C */  sw         $v0, 0x330C($s0)
/* BAE40 80104A80 AE003314 */  sw         $zero, 0x3314($s0)
/* BAE44 80104A84 AE003318 */  sw         $zero, 0x3318($s0)
/* BAE48 80104A88 AE00331C */  sw         $zero, 0x331C($s0)
/* BAE4C 80104A8C AE003304 */  sw         $zero, 0x3304($s0)
/* BAE50 80104A90 0C042784 */  jal        func_race_80109E10
/* BAE54 80104A94 AE023300 */   sw        $v0, 0x3300($s0)
/* BAE58 80104A98 8E030014 */  lw         $v1, 0x14($s0)
/* BAE5C 80104A9C 8C62012C */  lw         $v0, 0x12C($v1)
/* BAE60 80104AA0 84440028 */  lh         $a0, 0x28($v0)
/* BAE64 80104AA4 8C42002C */  lw         $v0, 0x2C($v0)
/* BAE68 80104AA8 0040F809 */  jalr       $v0
/* BAE6C 80104AAC 00642021 */   addu      $a0, $v1, $a0
/* BAE70 80104AB0 8C430014 */  lw         $v1, 0x14($v0)
/* BAE74 80104AB4 84640018 */  lh         $a0, 0x18($v1)
/* BAE78 80104AB8 8C63001C */  lw         $v1, 0x1C($v1)
/* BAE7C 80104ABC 0060F809 */  jalr       $v1
/* BAE80 80104AC0 00442021 */   addu      $a0, $v0, $a0
/* BAE84 80104AC4 8E030014 */  lw         $v1, 0x14($s0)
/* BAE88 80104AC8 00009821 */  addu       $s3, $zero, $zero
/* BAE8C 80104ACC 8C62012C */  lw         $v0, 0x12C($v1)
/* BAE90 80104AD0 02609021 */  addu       $s2, $s3, $zero
/* BAE94 80104AD4 84440090 */  lh         $a0, 0x90($v0)
/* BAE98 80104AD8 8C420094 */  lw         $v0, 0x94($v0)
/* BAE9C 80104ADC 0040F809 */  jalr       $v0
/* BAEA0 80104AE0 00642021 */   addu      $a0, $v1, $a0
/* BAEA4 80104AE4 3C02800D */  lui        $v0, %hi(jtbl_race_800CD7C0)
/* BAEA8 80104AE8 2454D7C0 */  addiu      $s4, $v0, %lo(jtbl_race_800CD7C0)
.Lrace_80104AEC:
/* BAEAC 80104AEC 8E02330C */  lw         $v0, 0x330C($s0)
/* BAEB0 80104AF0 10400083 */  beqz       $v0, .Lrace_80104D00
/* BAEB4 80104AF4 02002821 */   addu      $a1, $s0, $zero
/* BAEB8 80104AF8 8E030008 */  lw         $v1, 0x8($s0)
/* BAEBC 80104AFC 8C62009C */  lw         $v0, 0x9C($v1)
/* BAEC0 80104B00 84440068 */  lh         $a0, 0x68($v0)
/* BAEC4 80104B04 8C42006C */  lw         $v0, 0x6C($v0)
/* BAEC8 80104B08 0040F809 */  jalr       $v0
/* BAECC 80104B0C 00642021 */   addu      $a0, $v1, $a0
/* BAED0 80104B10 1040007B */  beqz       $v0, .Lrace_80104D00
/* BAED4 80104B14 00000000 */   nop
/* BAED8 80104B18 8E020008 */  lw         $v0, 0x8($s0)
/* BAEDC 80104B1C 8C420000 */  lw         $v0, 0x0($v0)
/* BAEE0 80104B20 30424000 */  andi       $v0, $v0, 0x4000
/* BAEE4 80104B24 1040000A */  beqz       $v0, .Lrace_80104B50
/* BAEE8 80104B28 02002021 */   addu      $a0, $s0, $zero
/* BAEEC 80104B2C 00002821 */  addu       $a1, $zero, $zero
/* BAEF0 80104B30 24020001 */  addiu      $v0, $zero, 0x1
/* BAEF4 80104B34 0C0425EF */  jal        func_race_801097BC
/* BAEF8 80104B38 AE023098 */   sw        $v0, 0x3098($s0)
/* BAEFC 80104B3C 8E040008 */  lw         $a0, 0x8($s0)
/* BAF00 80104B40 8C820000 */  lw         $v0, 0x0($a0)
/* BAF04 80104B44 2403BFFF */  addiu      $v1, $zero, -0x4001
/* BAF08 80104B48 00431024 */  and        $v0, $v0, $v1
/* BAF0C 80104B4C AC820000 */  sw         $v0, 0x0($a0)
.Lrace_80104B50:
/* BAF10 80104B50 26110220 */  addiu      $s1, $s0, 0x220
.Lrace_80104B54:
/* BAF14 80104B54 8E220018 */  lw         $v0, 0x18($s1)
/* BAF18 80104B58 10400017 */  beqz       $v0, .Lrace_80104BB8
/* BAF1C 80104B5C 00000000 */   nop
/* BAF20 80104B60 0C002A8D */  jal        func_8000AA34
/* BAF24 80104B64 02202021 */   addu      $a0, $s1, $zero
/* BAF28 80104B68 00403021 */  addu       $a2, $v0, $zero
/* BAF2C 80104B6C 90C2000C */  lbu        $v0, 0xC($a2)
/* BAF30 80104B70 10400008 */  beqz       $v0, .Lrace_80104B94
/* BAF34 80104B74 00000000 */   nop
/* BAF38 80104B78 8CC50004 */  lw         $a1, 0x4($a2)
/* BAF3C 80104B7C 8E020000 */  lw         $v0, 0x0($s0)
/* BAF40 80104B80 8CC60000 */  lw         $a2, 0x0($a2)
/* BAF44 80104B84 84440090 */  lh         $a0, 0x90($v0)
/* BAF48 80104B88 8C420094 */  lw         $v0, 0x94($v0)
/* BAF4C 80104B8C 080412EA */  j          .Lrace_80104BA8
/* BAF50 80104B90 00000000 */   nop
.Lrace_80104B94:
/* BAF54 80104B94 8CC50004 */  lw         $a1, 0x4($a2)
/* BAF58 80104B98 8E020000 */  lw         $v0, 0x0($s0)
/* BAF5C 80104B9C 8CC60000 */  lw         $a2, 0x0($a2)
/* BAF60 80104BA0 84440098 */  lh         $a0, 0x98($v0)
/* BAF64 80104BA4 8C42009C */  lw         $v0, 0x9C($v0)
.Lrace_80104BA8:
/* BAF68 80104BA8 0040F809 */  jalr       $v0
/* BAF6C 80104BAC 02042021 */   addu      $a0, $s0, $a0
/* BAF70 80104BB0 080412D5 */  j          .Lrace_80104B54
/* BAF74 80104BB4 00000000 */   nop
.Lrace_80104BB8:
/* BAF78 80104BB8 8E030008 */  lw         $v1, 0x8($s0)
/* BAF7C 80104BBC 8C620098 */  lw         $v0, 0x98($v1)
/* BAF80 80104BC0 1440FFCA */  bnez       $v0, .Lrace_80104AEC
/* BAF84 80104BC4 00000000 */   nop
/* BAF88 80104BC8 8E023098 */  lw         $v0, 0x3098($s0)
/* BAF8C 80104BCC 14400005 */  bnez       $v0, .Lrace_80104BE4
/* BAF90 80104BD0 00000000 */   nop
/* BAF94 80104BD4 8C630090 */  lw         $v1, 0x90($v1)
/* BAF98 80104BD8 8E023304 */  lw         $v0, 0x3304($s0)
/* BAF9C 80104BDC 00431021 */  addu       $v0, $v0, $v1
/* BAFA0 80104BE0 AE023304 */  sw         $v0, 0x3304($s0)
.Lrace_80104BE4:
/* BAFA4 80104BE4 8E023300 */  lw         $v0, 0x3300($s0)
/* BAFA8 80104BE8 2443FFFF */  addiu      $v1, $v0, -0x1
/* BAFAC 80104BEC 2C620005 */  sltiu      $v0, $v1, 0x5
/* BAFB0 80104BF0 10400017 */  beqz       $v0, .Lrace_80104C50
/* BAFB4 80104BF4 00031080 */   sll       $v0, $v1, 2
/* BAFB8 80104BF8 00541021 */  addu       $v0, $v0, $s4
/* BAFBC 80104BFC 8C420000 */  lw         $v0, 0x0($v0)
/* BAFC0 80104C00 00400008 */  jr         $v0
/* BAFC4 80104C04 00000000 */   nop
glabel Lrace_80104C08
/* BAFC8 80104C08 0C041D5A */  jal        func_race_80107568
/* BAFCC 80104C0C 02002021 */   addu      $a0, $s0, $zero
/* BAFD0 80104C10 08041314 */  j          .Lrace_80104C50
/* BAFD4 80104C14 00000000 */   nop
glabel Lrace_80104C18
/* BAFD8 80104C18 0C041DCC */  jal        func_race_80107730
/* BAFDC 80104C1C 02002021 */   addu      $a0, $s0, $zero
/* BAFE0 80104C20 08041314 */  j          .Lrace_80104C50
/* BAFE4 80104C24 00000000 */   nop
glabel Lrace_80104C28
/* BAFE8 80104C28 0C041E4C */  jal        func_race_80107930
/* BAFEC 80104C2C 02002021 */   addu      $a0, $s0, $zero
/* BAFF0 80104C30 08041314 */  j          .Lrace_80104C50
/* BAFF4 80104C34 00000000 */   nop
glabel Lrace_80104C38
/* BAFF8 80104C38 0C041F03 */  jal        func_race_80107C0C
/* BAFFC 80104C3C 02002021 */   addu      $a0, $s0, $zero
/* BB000 80104C40 08041314 */  j          .Lrace_80104C50
/* BB004 80104C44 00000000 */   nop
glabel Lrace_80104C48
/* BB008 80104C48 0C041FD8 */  jal        func_race_80107F60
/* BB00C 80104C4C 02002021 */   addu      $a0, $s0, $zero
.Lrace_80104C50:
/* BB010 80104C50 8E020000 */  lw         $v0, 0x0($s0)
/* BB014 80104C54 84440068 */  lh         $a0, 0x68($v0)
/* BB018 80104C58 8C42006C */  lw         $v0, 0x6C($v0)
/* BB01C 80104C5C 0040F809 */  jalr       $v0
/* BB020 80104C60 02042021 */   addu      $a0, $s0, $a0
/* BB024 80104C64 0C042129 */  jal        func_race_801084A4
/* BB028 80104C68 02002021 */   addu      $a0, $s0, $zero
/* BB02C 80104C6C 8E030008 */  lw         $v1, 0x8($s0)
/* BB030 80104C70 8C62009C */  lw         $v0, 0x9C($v1)
/* BB034 80104C74 84440010 */  lh         $a0, 0x10($v0)
/* BB038 80104C78 8C420014 */  lw         $v0, 0x14($v0)
/* BB03C 80104C7C 0040F809 */  jalr       $v0
/* BB040 80104C80 00642021 */   addu      $a0, $v1, $a0
/* BB044 80104C84 8E023314 */  lw         $v0, 0x3314($s0)
/* BB048 80104C88 1040001B */  beqz       $v0, .Lrace_80104CF8
/* BB04C 80104C8C 24420001 */   addiu     $v0, $v0, 0x1
/* BB050 80104C90 8E020008 */  lw         $v0, 0x8($s0)
/* BB054 80104C94 8C430090 */  lw         $v1, 0x90($v0)
/* BB058 80104C98 8E023318 */  lw         $v0, 0x3318($s0)
/* BB05C 80104C9C 8E040008 */  lw         $a0, 0x8($s0)
/* BB060 80104CA0 00431021 */  addu       $v0, $v0, $v1
/* BB064 80104CA4 AE023318 */  sw         $v0, 0x3318($s0)
/* BB068 80104CA8 8C820090 */  lw         $v0, 0x90($a0)
/* BB06C 80104CAC 26730001 */  addiu      $s3, $s3, 0x1
/* BB070 80104CB0 02429021 */  addu       $s2, $s2, $v0
/* BB074 80104CB4 2E620040 */  sltiu      $v0, $s3, 0x40
/* BB078 80104CB8 1440000D */  bnez       $v0, .Lrace_80104CF0
/* BB07C 80104CBC 00000000 */   nop
/* BB080 80104CC0 00129182 */  srl        $s2, $s2, 6
/* BB084 80104CC4 3C01800D */  lui        $at, %hi(D_race_800CD7D4)
/* BB088 80104CC8 C420D7D4 */  lwc1       $f0, %lo(D_race_800CD7D4)($at)
/* BB08C 80104CCC 44921000 */  mtc1       $s2, $f2
/* BB090 80104CD0 468010A0 */  cvt.s.w    $f2, $f2
/* BB094 80104CD4 46001082 */  mul.s      $f2, $f2, $f0
/* BB098 80104CD8 00009021 */  addu       $s2, $zero, $zero
/* BB09C 80104CDC 3C01800D */  lui        $at, %hi(D_race_800CD7D8)
/* BB0A0 80104CE0 C420D7D8 */  lwc1       $f0, %lo(D_race_800CD7D8)($at)
/* BB0A4 80104CE4 02409821 */  addu       $s3, $s2, $zero
/* BB0A8 80104CE8 46020003 */  div.s      $f0, $f0, $f2
/* BB0AC 80104CEC E600331C */  swc1       $f0, 0x331C($s0)
.Lrace_80104CF0:
/* BB0B0 80104CF0 8E023314 */  lw         $v0, 0x3314($s0)
/* BB0B4 80104CF4 24420001 */  addiu      $v0, $v0, 0x1
.Lrace_80104CF8:
/* BB0B8 80104CF8 080412BB */  j          .Lrace_80104AEC
/* BB0BC 80104CFC AE023314 */   sw        $v0, 0x3314($s0)
.Lrace_80104D00:
/* BB0C0 80104D00 8E030014 */  lw         $v1, 0x14($s0)
/* BB0C4 80104D04 8C62012C */  lw         $v0, 0x12C($v1)
/* BB0C8 80104D08 844401E8 */  lh         $a0, 0x1E8($v0)
/* BB0CC 80104D0C 8C4201EC */  lw         $v0, 0x1EC($v0)
/* BB0D0 80104D10 0040F809 */  jalr       $v0
/* BB0D4 80104D14 00642021 */   addu      $a0, $v1, $a0
/* BB0D8 80104D18 8E030014 */  lw         $v1, 0x14($s0)
/* BB0DC 80104D1C 8C62012C */  lw         $v0, 0x12C($v1)
/* BB0E0 80104D20 84440078 */  lh         $a0, 0x78($v0)
/* BB0E4 80104D24 8C42007C */  lw         $v0, 0x7C($v0)
/* BB0E8 80104D28 0040F809 */  jalr       $v0
/* BB0EC 80104D2C 00642021 */   addu      $a0, $v1, $a0
/* BB0F0 80104D30 8E030014 */  lw         $v1, 0x14($s0)
/* BB0F4 80104D34 8C62012C */  lw         $v0, 0x12C($v1)
/* BB0F8 80104D38 84440098 */  lh         $a0, 0x98($v0)
/* BB0FC 80104D3C 8C42009C */  lw         $v0, 0x9C($v0)
/* BB100 80104D40 0040F809 */  jalr       $v0
/* BB104 80104D44 00642021 */   addu      $a0, $v1, $a0
/* BB108 80104D48 8E050004 */  lw         $a1, 0x4($s0)
/* BB10C 80104D4C 0C04416F */  jal        func_race_801105BC
/* BB110 80104D50 26040390 */   addiu     $a0, $s0, 0x390
/* BB114 80104D54 8E0206A8 */  lw         $v0, 0x6A8($s0)
/* BB118 80104D58 10400004 */  beqz       $v0, .Lrace_80104D6C
/* BB11C 80104D5C 00000000 */   nop
/* BB120 80104D60 8C430DB0 */  lw         $v1, 0xDB0($v0)
/* BB124 80104D64 8E020004 */  lw         $v0, 0x4($s0)
/* BB128 80104D68 AC43039C */  sw         $v1, 0x39C($v0)
.Lrace_80104D6C:
/* BB12C 80104D6C 8E030004 */  lw         $v1, 0x4($s0)
/* BB130 80104D70 8C620000 */  lw         $v0, 0x0($v1)
/* BB134 80104D74 10400010 */  beqz       $v0, .Lrace_80104DB8
/* BB138 80104D78 00000000 */   nop
/* BB13C 80104D7C 8E02333C */  lw         $v0, 0x333C($s0)
/* BB140 80104D80 1040000D */  beqz       $v0, .Lrace_80104DB8
/* BB144 80104D84 00000000 */   nop
/* BB148 80104D88 94620022 */  lhu        $v0, 0x22($v1)
/* BB14C 80104D8C 34420010 */  ori        $v0, $v0, 0x10
/* BB150 80104D90 A4620022 */  sh         $v0, 0x22($v1)
/* BB154 80104D94 8E04333C */  lw         $a0, 0x333C($s0)
/* BB158 80104D98 0C03D971 */  jal        func_race_800F65C4
/* BB15C 80104D9C 00000000 */   nop
/* BB160 80104DA0 10400005 */  beqz       $v0, .Lrace_80104DB8
/* BB164 80104DA4 00000000 */   nop
/* BB168 80104DA8 8E030004 */  lw         $v1, 0x4($s0)
/* BB16C 80104DAC 94620022 */  lhu        $v0, 0x22($v1)
/* BB170 80104DB0 34420001 */  ori        $v0, $v0, 0x1
/* BB174 80104DB4 A4620022 */  sh         $v0, 0x22($v1)
.Lrace_80104DB8:
/* BB178 80104DB8 8FBF0024 */  lw         $ra, 0x24($sp)
/* BB17C 80104DBC 8FB40020 */  lw         $s4, 0x20($sp)
/* BB180 80104DC0 8FB3001C */  lw         $s3, 0x1C($sp)
/* BB184 80104DC4 8FB20018 */  lw         $s2, 0x18($sp)
/* BB188 80104DC8 8FB10014 */  lw         $s1, 0x14($sp)
/* BB18C 80104DCC 8FB00010 */  lw         $s0, 0x10($sp)
/* BB190 80104DD0 03E00008 */  jr         $ra
/* BB194 80104DD4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_80104DD8
/* BB198 80104DD8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BB19C 80104DDC AFB00010 */  sw         $s0, 0x10($sp)
/* BB1A0 80104DE0 AFBF0014 */  sw         $ra, 0x14($sp)
/* BB1A4 80104DE4 0C04179F */  jal        func_race_80105E7C
/* BB1A8 80104DE8 00808021 */   addu      $s0, $a0, $zero
/* BB1AC 80104DEC 0C041D0D */  jal        func_race_80107434
/* BB1B0 80104DF0 02002021 */   addu      $a0, $s0, $zero
/* BB1B4 80104DF4 0C041ADD */  jal        func_race_80106B74
/* BB1B8 80104DF8 02002021 */   addu      $a0, $s0, $zero
/* BB1BC 80104DFC 0C041689 */  jal        func_race_80105A24
/* BB1C0 80104E00 02002021 */   addu      $a0, $s0, $zero
/* BB1C4 80104E04 0C041585 */  jal        func_race_80105614
/* BB1C8 80104E08 02002021 */   addu      $a0, $s0, $zero
/* BB1CC 80104E0C 0C041552 */  jal        func_race_80105548
/* BB1D0 80104E10 02002021 */   addu      $a0, $s0, $zero
/* BB1D4 80104E14 0C040378 */  jal        func_race_80100DE0
/* BB1D8 80104E18 260427E0 */   addiu     $a0, $s0, 0x27E0
/* BB1DC 80104E1C 0C041BCB */  jal        func_race_80106F2C
/* BB1E0 80104E20 02002021 */   addu      $a0, $s0, $zero
/* BB1E4 80104E24 0C041498 */  jal        func_race_80105260
/* BB1E8 80104E28 02002021 */   addu      $a0, $s0, $zero
/* BB1EC 80104E2C 0C0413E0 */  jal        func_race_80104F80
/* BB1F0 80104E30 02002021 */   addu      $a0, $s0, $zero
/* BB1F4 80104E34 0C041029 */  jal        func_race_801040A4
/* BB1F8 80104E38 02002021 */   addu      $a0, $s0, $zero
/* BB1FC 80104E3C 8FBF0014 */  lw         $ra, 0x14($sp)
/* BB200 80104E40 8FB00010 */  lw         $s0, 0x10($sp)
/* BB204 80104E44 03E00008 */  jr         $ra
/* BB208 80104E48 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80104E4C
/* BB20C 80104E4C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BB210 80104E50 AFB00010 */  sw         $s0, 0x10($sp)
/* BB214 80104E54 00808021 */  addu       $s0, $a0, $zero
/* BB218 80104E58 AFBF0014 */  sw         $ra, 0x14($sp)
/* BB21C 80104E5C AE050004 */  sw         $a1, 0x4($s0)
/* BB220 80104E60 94A20022 */  lhu        $v0, 0x22($a1)
/* BB224 80104E64 3042FFFE */  andi       $v0, $v0, 0xFFFE
/* BB228 80104E68 A4A20022 */  sh         $v0, 0x22($a1)
/* BB22C 80104E6C 8E020004 */  lw         $v0, 0x4($s0)
/* BB230 80104E70 8E030004 */  lw         $v1, 0x4($s0)
/* BB234 80104E74 8C420004 */  lw         $v0, 0x4($v0)
/* BB238 80104E78 AE020008 */  sw         $v0, 0x8($s0)
/* BB23C 80104E7C 8C620008 */  lw         $v0, 0x8($v1)
/* BB240 80104E80 8E030008 */  lw         $v1, 0x8($s0)
/* BB244 80104E84 AE02000C */  sw         $v0, 0xC($s0)
/* BB248 80104E88 8C62006C */  lw         $v0, 0x6C($v1)
/* BB24C 80104E8C AE020010 */  sw         $v0, 0x10($s0)
/* BB250 80104E90 8C620078 */  lw         $v0, 0x78($v1)
/* BB254 80104E94 AE020014 */  sw         $v0, 0x14($s0)
/* BB258 80104E98 8C62009C */  lw         $v0, 0x9C($v1)
/* BB25C 80104E9C 84440070 */  lh         $a0, 0x70($v0)
/* BB260 80104EA0 8C420074 */  lw         $v0, 0x74($v0)
/* BB264 80104EA4 0040F809 */  jalr       $v0
/* BB268 80104EA8 00642021 */   addu      $a0, $v1, $a0
/* BB26C 80104EAC 8E030004 */  lw         $v1, 0x4($s0)
/* BB270 80104EB0 AE02021C */  sw         $v0, 0x21C($s0)
/* BB274 80104EB4 8C620330 */  lw         $v0, 0x330($v1)
/* BB278 80104EB8 2C420002 */  sltiu      $v0, $v0, 0x2
/* BB27C 80104EBC 54400003 */  bnel       $v0, $zero, .Lrace_80104ECC
/* BB280 80104EC0 AE00332C */   sw        $zero, 0x332C($s0)
/* BB284 80104EC4 24020001 */  addiu      $v0, $zero, 0x1
/* BB288 80104EC8 AE02332C */  sw         $v0, 0x332C($s0)
.Lrace_80104ECC:
/* BB28C 80104ECC 8E02332C */  lw         $v0, 0x332C($s0)
/* BB290 80104ED0 1040000D */  beqz       $v0, .Lrace_80104F08
/* BB294 80104ED4 24050003 */   addiu     $a1, $zero, 0x3
/* BB298 80104ED8 8E030014 */  lw         $v1, 0x14($s0)
/* BB29C 80104EDC 3C068013 */  lui        $a2, %hi(D_race_80132214)
/* BB2A0 80104EE0 8C62012C */  lw         $v0, 0x12C($v1)
/* BB2A4 80104EE4 24C62214 */  addiu      $a2, $a2, %lo(D_race_80132214)
/* BB2A8 80104EE8 84440070 */  lh         $a0, 0x70($v0)
/* BB2AC 80104EEC 8C420074 */  lw         $v0, 0x74($v0)
/* BB2B0 80104EF0 0040F809 */  jalr       $v0
/* BB2B4 80104EF4 00642021 */   addu      $a0, $v1, $a0
/* BB2B8 80104EF8 8E020004 */  lw         $v0, 0x4($s0)
/* BB2BC 80104EFC 90420030 */  lbu        $v0, 0x30($v0)
/* BB2C0 80104F00 080413CD */  j          .Lrace_80104F34
/* BB2C4 80104F04 A2023320 */   sb        $v0, 0x3320($s0)
.Lrace_80104F08:
/* BB2C8 80104F08 24050001 */  addiu      $a1, $zero, 0x1
/* BB2CC 80104F0C 8E030014 */  lw         $v1, 0x14($s0)
/* BB2D0 80104F10 3C068013 */  lui        $a2, %hi(D_race_80132210)
/* BB2D4 80104F14 8C62012C */  lw         $v0, 0x12C($v1)
/* BB2D8 80104F18 24C62210 */  addiu      $a2, $a2, %lo(D_race_80132210)
/* BB2DC 80104F1C 84440070 */  lh         $a0, 0x70($v0)
/* BB2E0 80104F20 8C420074 */  lw         $v0, 0x74($v0)
/* BB2E4 80104F24 0040F809 */  jalr       $v0
/* BB2E8 80104F28 00642021 */   addu      $a0, $v1, $a0
/* BB2EC 80104F2C 24020003 */  addiu      $v0, $zero, 0x3
/* BB2F0 80104F30 A2023320 */  sb         $v0, 0x3320($s0)
.Lrace_80104F34:
/* BB2F4 80104F34 8E040004 */  lw         $a0, 0x4($s0)
/* BB2F8 80104F38 8C820330 */  lw         $v0, 0x330($a0)
/* BB2FC 80104F3C 54400006 */  bnel       $v0, $zero, .Lrace_80104F58
/* BB300 80104F40 AE003328 */   sw        $zero, 0x3328($s0)
/* BB304 80104F44 24030001 */  addiu      $v1, $zero, 0x1
/* BB308 80104F48 AC830330 */  sw         $v1, 0x330($a0)
/* BB30C 80104F4C 8E020004 */  lw         $v0, 0x4($s0)
/* BB310 80104F50 AC400118 */  sw         $zero, 0x118($v0)
/* BB314 80104F54 AE033328 */  sw         $v1, 0x3328($s0)
.Lrace_80104F58:
/* BB318 80104F58 8E020004 */  lw         $v0, 0x4($s0)
/* BB31C 80104F5C 94420022 */  lhu        $v0, 0x22($v0)
/* BB320 80104F60 30420002 */  andi       $v0, $v0, 0x2
/* BB324 80104F64 10400002 */  beqz       $v0, .Lrace_80104F70
/* BB328 80104F68 24020001 */   addiu     $v0, $zero, 0x1
/* BB32C 80104F6C AE023334 */  sw         $v0, 0x3334($s0)
.Lrace_80104F70:
/* BB330 80104F70 8FBF0014 */  lw         $ra, 0x14($sp)
/* BB334 80104F74 8FB00010 */  lw         $s0, 0x10($sp)
/* BB338 80104F78 03E00008 */  jr         $ra
/* BB33C 80104F7C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80104F80
/* BB340 80104F80 AC800004 */  sw         $zero, 0x4($a0)
/* BB344 80104F84 AC800008 */  sw         $zero, 0x8($a0)
/* BB348 80104F88 AC80000C */  sw         $zero, 0xC($a0)
/* BB34C 80104F8C AC800010 */  sw         $zero, 0x10($a0)
/* BB350 80104F90 AC800014 */  sw         $zero, 0x14($a0)
/* BB354 80104F94 03E00008 */  jr         $ra
/* BB358 80104F98 AC80021C */   sw        $zero, 0x21C($a0)

glabel func_race_80104F9C
/* BB35C 80104F9C 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* BB360 80104FA0 AFB3003C */  sw         $s3, 0x3C($sp)
/* BB364 80104FA4 00809821 */  addu       $s3, $a0, $zero
/* BB368 80104FA8 AFBF0040 */  sw         $ra, 0x40($sp)
/* BB36C 80104FAC AFB20038 */  sw         $s2, 0x38($sp)
/* BB370 80104FB0 AFB10034 */  sw         $s1, 0x34($sp)
/* BB374 80104FB4 AFB00030 */  sw         $s0, 0x30($sp)
/* BB378 80104FB8 A3A00010 */  sb         $zero, 0x10($sp)
/* BB37C 80104FBC A3A00020 */  sb         $zero, 0x20($sp)
/* BB380 80104FC0 8E63000C */  lw         $v1, 0xC($s3)
/* BB384 80104FC4 8C620014 */  lw         $v0, 0x14($v1)
/* BB388 80104FC8 84440030 */  lh         $a0, 0x30($v0)
/* BB38C 80104FCC 8C420034 */  lw         $v0, 0x34($v0)
/* BB390 80104FD0 0040F809 */  jalr       $v0
/* BB394 80104FD4 00642021 */   addu      $a0, $v1, $a0
/* BB398 80104FD8 AE6232EC */  sw         $v0, 0x32EC($s3)
/* BB39C 80104FDC 8C430004 */  lw         $v1, 0x4($v0)
/* BB3A0 80104FE0 2665016D */  addiu      $a1, $s3, 0x16D
/* BB3A4 80104FE4 84640010 */  lh         $a0, 0x10($v1)
/* BB3A8 80104FE8 8C630014 */  lw         $v1, 0x14($v1)
/* BB3AC 80104FEC 0060F809 */  jalr       $v1
/* BB3B0 80104FF0 00442021 */   addu      $a0, $v0, $a0
/* BB3B4 80104FF4 267032D8 */  addiu      $s0, $s3, 0x32D8
/* BB3B8 80104FF8 8E65000C */  lw         $a1, 0xC($s3)
/* BB3BC 80104FFC 0C0464CE */  jal        func_race_80119338
/* BB3C0 80105000 02002021 */   addu      $a0, $s0, $zero
/* BB3C4 80105004 02002021 */  addu       $a0, $s0, $zero
/* BB3C8 80105008 0C046513 */  jal        func_race_8011944C
/* BB3CC 8010500C 26650160 */   addiu     $a1, $s3, 0x160
/* BB3D0 80105010 02602021 */  addu       $a0, $s3, $zero
/* BB3D4 80105014 00002821 */  addu       $a1, $zero, $zero
/* BB3D8 80105018 0C041463 */  jal        func_race_8010518C
/* BB3DC 8010501C 27A60010 */   addiu     $a2, $sp, 0x10
/* BB3E0 80105020 8E63333C */  lw         $v1, 0x333C($s3)
/* BB3E4 80105024 10600009 */  beqz       $v1, .Lrace_8010504C
/* BB3E8 80105028 00408821 */   addu      $s1, $v0, $zero
/* BB3EC 8010502C 3C02800D */  lui        $v0, %hi(D_race_800CDABA)
/* BB3F0 80105030 244ADABA */  addiu      $t2, $v0, %lo(D_race_800CDABA)
/* BB3F4 80105034 81470000 */  lb         $a3, 0x0($t2)
/* BB3F8 80105038 81480001 */  lb         $t0, 0x1($t2)
/* BB3FC 8010503C A3A70020 */  sb         $a3, 0x20($sp)
/* BB400 80105040 A3A80021 */  sb         $t0, 0x21($sp)
/* BB404 80105044 08041420 */  j          .Lrace_80105080
/* BB408 80105048 A3A00022 */   sb        $zero, 0x22($sp)
.Lrace_8010504C:
/* BB40C 8010504C 8E620004 */  lw         $v0, 0x4($s3)
/* BB410 80105050 8C420330 */  lw         $v0, 0x330($v0)
/* BB414 80105054 2C420002 */  sltiu      $v0, $v0, 0x2
/* BB418 80105058 14400007 */  bnez       $v0, .Lrace_80105078
/* BB41C 8010505C 27A40020 */   addiu     $a0, $sp, 0x20
/* BB420 80105060 02602021 */  addu       $a0, $s3, $zero
/* BB424 80105064 26250001 */  addiu      $a1, $s1, 0x1
/* BB428 80105068 0C041463 */  jal        func_race_8010518C
/* BB42C 8010506C 27A60020 */   addiu     $a2, $sp, 0x20
/* BB430 80105070 08041421 */  j          .Lrace_80105084
/* BB434 80105074 3C02800D */   lui       $v0, %hi(D_race_800CD7DC)
.Lrace_80105078:
/* BB438 80105078 0C0006FA */  jal        func_80001BE8
/* BB43C 8010507C 26650153 */   addiu     $a1, $s3, 0x153
.Lrace_80105080:
/* BB440 80105080 3C02800D */  lui        $v0, %hi(D_race_800CD7DC)
.Lrace_80105084:
/* BB444 80105084 2445D7DC */  addiu      $a1, $v0, %lo(D_race_800CD7DC)
/* BB448 80105088 10A00007 */  beqz       $a1, .Lrace_801050A8
/* BB44C 8010508C 3C108003 */   lui       $s0, %hi(D_8002FB34)
/* BB450 80105090 2610FB34 */  addiu      $s0, $s0, %lo(D_8002FB34)
/* BB454 80105094 02002021 */  addu       $a0, $s0, $zero
/* BB458 80105098 0C000708 */  jal        func_80001C20
/* BB45C 8010509C 24060100 */   addiu     $a2, $zero, 0x100
/* BB460 801050A0 0804142C */  j          .Lrace_801050B0
/* BB464 801050A4 A20000FF */   sb        $zero, 0xFF($s0)
.Lrace_801050A8:
/* BB468 801050A8 3C028003 */  lui        $v0, %hi(D_8002FB34)
/* BB46C 801050AC A040FB34 */  sb         $zero, %lo(D_8002FB34)($v0)
.Lrace_801050B0:
/* BB470 801050B0 266432D8 */  addiu      $a0, $s3, 0x32D8
/* BB474 801050B4 27A50010 */  addiu      $a1, $sp, 0x10
/* BB478 801050B8 0C0464F9 */  jal        func_race_801193E4
/* BB47C 801050BC 27A60020 */   addiu     $a2, $sp, 0x20
/* BB480 801050C0 8E620004 */  lw         $v0, 0x4($s3)
/* BB484 801050C4 244500F2 */  addiu      $a1, $v0, 0xF2
/* BB488 801050C8 10A00007 */  beqz       $a1, .Lrace_801050E8
/* BB48C 801050CC 3C108003 */   lui       $s0, %hi(D_8002FB34)
/* BB490 801050D0 2610FB34 */  addiu      $s0, $s0, %lo(D_8002FB34)
/* BB494 801050D4 02002021 */  addu       $a0, $s0, $zero
/* BB498 801050D8 0C000708 */  jal        func_80001C20
/* BB49C 801050DC 24060100 */   addiu     $a2, $zero, 0x100
/* BB4A0 801050E0 0804143C */  j          .Lrace_801050F0
/* BB4A4 801050E4 A20000FF */   sb        $zero, 0xFF($s0)
.Lrace_801050E8:
/* BB4A8 801050E8 3C028003 */  lui        $v0, %hi(D_8002FB34)
/* BB4AC 801050EC A040FB34 */  sb         $zero, %lo(D_8002FB34)($v0)
.Lrace_801050F0:
/* BB4B0 801050F0 266432D8 */  addiu      $a0, $s3, 0x32D8
/* BB4B4 801050F4 0C0464ED */  jal        func_race_801193B4
/* BB4B8 801050F8 26650146 */   addiu     $a1, $s3, 0x146
/* BB4BC 801050FC 00008821 */  addu       $s1, $zero, $zero
/* BB4C0 80105100 02209021 */  addu       $s2, $s1, $zero
/* BB4C4 80105104 02608021 */  addu       $s0, $s3, $zero
.Lrace_80105108:
/* BB4C8 80105108 8E620004 */  lw         $v0, 0x4($s3)
/* BB4CC 8010510C 8C420330 */  lw         $v0, 0x330($v0)
/* BB4D0 80105110 0222102B */  sltu       $v0, $s1, $v0
/* BB4D4 80105114 10400016 */  beqz       $v0, .Lrace_80105170
/* BB4D8 80105118 00000000 */   nop
/* BB4DC 8010511C 8E63000C */  lw         $v1, 0xC($s3)
/* BB4E0 80105120 8C620014 */  lw         $v0, 0x14($v1)
/* BB4E4 80105124 84440050 */  lh         $a0, 0x50($v0)
/* BB4E8 80105128 8C420054 */  lw         $v0, 0x54($v0)
/* BB4EC 8010512C 0040F809 */  jalr       $v0
/* BB4F0 80105130 00642021 */   addu      $a0, $v1, $a0
/* BB4F4 80105134 AE0232F0 */  sw         $v0, 0x32F0($s0)
/* BB4F8 80105138 8E66000C */  lw         $a2, 0xC($s3)
/* BB4FC 8010513C 26310001 */  addiu      $s1, $s1, 0x1
/* BB500 80105140 8CC30014 */  lw         $v1, 0x14($a2)
/* BB504 80105144 00402821 */  addu       $a1, $v0, $zero
/* BB508 80105148 84640060 */  lh         $a0, 0x60($v1)
/* BB50C 8010514C 8C620064 */  lw         $v0, 0x64($v1)
/* BB510 80105150 0040F809 */  jalr       $v0
/* BB514 80105154 00C42021 */   addu      $a0, $a2, $a0
/* BB518 80105158 02531021 */  addu       $v0, $s2, $s3
/* BB51C 8010515C 26520150 */  addiu      $s2, $s2, 0x150
/* BB520 80105160 8E0332F0 */  lw         $v1, 0x32F0($s0)
/* BB524 80105164 26100004 */  addiu      $s0, $s0, 0x4
/* BB528 80105168 08041442 */  j          .Lrace_80105108
/* BB52C 8010516C AC432BF4 */   sw        $v1, 0x2BF4($v0)
.Lrace_80105170:
/* BB530 80105170 8FBF0040 */  lw         $ra, 0x40($sp)
/* BB534 80105174 8FB3003C */  lw         $s3, 0x3C($sp)
/* BB538 80105178 8FB20038 */  lw         $s2, 0x38($sp)
/* BB53C 8010517C 8FB10034 */  lw         $s1, 0x34($sp)
/* BB540 80105180 8FB00030 */  lw         $s0, 0x30($sp)
/* BB544 80105184 03E00008 */  jr         $ra
/* BB548 80105188 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_race_8010518C
/* BB54C 8010518C 00051040 */  sll        $v0, $a1, 1
/* BB550 80105190 00451021 */  addu       $v0, $v0, $a1
/* BB554 80105194 000210C0 */  sll        $v0, $v0, 3
/* BB558 80105198 00451023 */  subu       $v0, $v0, $a1
/* BB55C 8010519C 8C880004 */  lw         $t0, 0x4($a0)
/* BB560 801051A0 00021880 */  sll        $v1, $v0, 2
/* BB564 801051A4 01031021 */  addu       $v0, $t0, $v1
/* BB568 801051A8 8C420118 */  lw         $v0, 0x118($v0)
/* BB56C 801051AC 1040000B */  beqz       $v0, .Lrace_801051DC
/* BB570 801051B0 00000000 */   nop
/* BB574 801051B4 00603821 */  addu       $a3, $v1, $zero
.Lrace_801051B8:
/* BB578 801051B8 8D020104 */  lw         $v0, 0x104($t0)
/* BB57C 801051BC 00A2102B */  sltu       $v0, $a1, $v0
/* BB580 801051C0 10400006 */  beqz       $v0, .Lrace_801051DC
/* BB584 801051C4 01001821 */   addu      $v1, $t0, $zero
/* BB588 801051C8 24E7005C */  addiu      $a3, $a3, 0x5C
/* BB58C 801051CC 00671021 */  addu       $v0, $v1, $a3
/* BB590 801051D0 8C420118 */  lw         $v0, 0x118($v0)
/* BB594 801051D4 1440FFF8 */  bnez       $v0, .Lrace_801051B8
/* BB598 801051D8 24A50001 */   addiu     $a1, $a1, 0x1
.Lrace_801051DC:
/* BB59C 801051DC 8C823328 */  lw         $v0, 0x3328($a0)
/* BB5A0 801051E0 54400001 */  bnel       $v0, $zero, .Lrace_801051E8
/* BB5A4 801051E4 00002821 */   addu      $a1, $zero, $zero
.Lrace_801051E8:
/* BB5A8 801051E8 00051040 */  sll        $v0, $a1, 1
/* BB5AC 801051EC 00451021 */  addu       $v0, $v0, $a1
/* BB5B0 801051F0 000210C0 */  sll        $v0, $v0, 3
/* BB5B4 801051F4 00451023 */  subu       $v0, $v0, $a1
/* BB5B8 801051F8 8C830004 */  lw         $v1, 0x4($a0)
/* BB5BC 801051FC 00021080 */  sll        $v0, $v0, 2
/* BB5C0 80105200 00622021 */  addu       $a0, $v1, $v0
/* BB5C4 80105204 90820161 */  lbu        $v0, 0x161($a0)
/* BB5C8 80105208 2C42001E */  sltiu      $v0, $v0, 0x1E
/* BB5CC 8010520C 14400009 */  bnez       $v0, .Lrace_80105234
/* BB5D0 80105210 3C03800D */   lui       $v1, %hi(D_race_800CDA80)
/* BB5D4 80105214 3C02800D */  lui        $v0, %hi(D_race_800CDA80)
/* BB5D8 80105218 244CDA80 */  addiu      $t4, $v0, %lo(D_race_800CDA80)
/* BB5DC 8010521C 81890000 */  lb         $t1, 0x0($t4)
/* BB5E0 80105220 818A0001 */  lb         $t2, 0x1($t4)
/* BB5E4 80105224 A0C90000 */  sb         $t1, 0x0($a2)
/* BB5E8 80105228 A0CA0001 */  sb         $t2, 0x1($a2)
/* BB5EC 8010522C 08041496 */  j          .Lrace_80105258
/* BB5F0 80105230 A0C00002 */   sb        $zero, 0x2($a2)
.Lrace_80105234:
/* BB5F4 80105234 90820161 */  lbu        $v0, 0x161($a0)
/* BB5F8 80105238 2463DA80 */  addiu      $v1, $v1, %lo(D_race_800CDA80)
/* BB5FC 8010523C 00021040 */  sll        $v0, $v0, 1
/* BB600 80105240 00431021 */  addu       $v0, $v0, $v1
/* BB604 80105244 80490000 */  lb         $t1, 0x0($v0)
/* BB608 80105248 804A0001 */  lb         $t2, 0x1($v0)
/* BB60C 8010524C A0C90000 */  sb         $t1, 0x0($a2)
/* BB610 80105250 A0CA0001 */  sb         $t2, 0x1($a2)
/* BB614 80105254 A0C00002 */  sb         $zero, 0x2($a2)
.Lrace_80105258:
/* BB618 80105258 03E00008 */  jr         $ra
/* BB61C 8010525C 00A01021 */   addu      $v0, $a1, $zero

glabel func_race_80105260
/* BB620 80105260 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* BB624 80105264 AFB20018 */  sw         $s2, 0x18($sp)
/* BB628 80105268 00809021 */  addu       $s2, $a0, $zero
/* BB62C 8010526C AFBF001C */  sw         $ra, 0x1C($sp)
/* BB630 80105270 AFB10014 */  sw         $s1, 0x14($sp)
/* BB634 80105274 AFB00010 */  sw         $s0, 0x10($sp)
/* BB638 80105278 8E42000C */  lw         $v0, 0xC($s2)
/* BB63C 8010527C 1040002C */  beqz       $v0, .Lrace_80105330
/* BB640 80105280 00008821 */   addu      $s1, $zero, $zero
/* BB644 80105284 02408021 */  addu       $s0, $s2, $zero
.Lrace_80105288:
/* BB648 80105288 8E0532F0 */  lw         $a1, 0x32F0($s0)
/* BB64C 8010528C 50A00009 */  beql       $a1, $zero, .Lrace_801052B4
/* BB650 80105290 26310001 */   addiu     $s1, $s1, 0x1
/* BB654 80105294 8E43000C */  lw         $v1, 0xC($s2)
/* BB658 80105298 8C620014 */  lw         $v0, 0x14($v1)
/* BB65C 8010529C 84440058 */  lh         $a0, 0x58($v0)
/* BB660 801052A0 8C42005C */  lw         $v0, 0x5C($v0)
/* BB664 801052A4 0040F809 */  jalr       $v0
/* BB668 801052A8 00642021 */   addu      $a0, $v1, $a0
/* BB66C 801052AC AE0032F0 */  sw         $zero, 0x32F0($s0)
/* BB670 801052B0 26310001 */  addiu      $s1, $s1, 0x1
.Lrace_801052B4:
/* BB674 801052B4 2E220002 */  sltiu      $v0, $s1, 0x2
/* BB678 801052B8 1440FFF3 */  bnez       $v0, .Lrace_80105288
/* BB67C 801052BC 26100004 */   addiu     $s0, $s0, 0x4
/* BB680 801052C0 0C0464AB */  jal        func_race_801192AC
/* BB684 801052C4 264432D8 */   addiu     $a0, $s2, 0x32D8
/* BB688 801052C8 8E4332F8 */  lw         $v1, 0x32F8($s2)
/* BB68C 801052CC 1060000E */  beqz       $v1, .Lrace_80105308
/* BB690 801052D0 00000000 */   nop
/* BB694 801052D4 8C620000 */  lw         $v0, 0x0($v1)
/* BB698 801052D8 84440018 */  lh         $a0, 0x18($v0)
/* BB69C 801052DC 8C42001C */  lw         $v0, 0x1C($v0)
/* BB6A0 801052E0 0040F809 */  jalr       $v0
/* BB6A4 801052E4 00642021 */   addu      $a0, $v1, $a0
/* BB6A8 801052E8 8E4332EC */  lw         $v1, 0x32EC($s2)
/* BB6AC 801052EC 8C620004 */  lw         $v0, 0x4($v1)
/* BB6B0 801052F0 8E4532F8 */  lw         $a1, 0x32F8($s2)
/* BB6B4 801052F4 84440030 */  lh         $a0, 0x30($v0)
/* BB6B8 801052F8 8C420034 */  lw         $v0, 0x34($v0)
/* BB6BC 801052FC 0040F809 */  jalr       $v0
/* BB6C0 80105300 00642021 */   addu      $a0, $v1, $a0
/* BB6C4 80105304 AE4032F8 */  sw         $zero, 0x32F8($s2)
.Lrace_80105308:
/* BB6C8 80105308 8E4532EC */  lw         $a1, 0x32EC($s2)
/* BB6CC 8010530C 10A00008 */  beqz       $a1, .Lrace_80105330
/* BB6D0 80105310 00000000 */   nop
/* BB6D4 80105314 8E43000C */  lw         $v1, 0xC($s2)
/* BB6D8 80105318 8C620014 */  lw         $v0, 0x14($v1)
/* BB6DC 8010531C 84440038 */  lh         $a0, 0x38($v0)
/* BB6E0 80105320 8C42003C */  lw         $v0, 0x3C($v0)
/* BB6E4 80105324 0040F809 */  jalr       $v0
/* BB6E8 80105328 00642021 */   addu      $a0, $v1, $a0
/* BB6EC 8010532C AE4032EC */  sw         $zero, 0x32EC($s2)
.Lrace_80105330:
/* BB6F0 80105330 8FBF001C */  lw         $ra, 0x1C($sp)
/* BB6F4 80105334 8FB20018 */  lw         $s2, 0x18($sp)
/* BB6F8 80105338 8FB10014 */  lw         $s1, 0x14($sp)
/* BB6FC 8010533C 8FB00010 */  lw         $s0, 0x10($sp)
/* BB700 80105340 03E00008 */  jr         $ra
/* BB704 80105344 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80105348
/* BB708 80105348 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* BB70C 8010534C AFB20038 */  sw         $s2, 0x38($sp)
/* BB710 80105350 00809021 */  addu       $s2, $a0, $zero
/* BB714 80105354 3C02800D */  lui        $v0, %hi(D_race_800CD7EC)
/* BB718 80105358 AFBF003C */  sw         $ra, 0x3C($sp)
/* BB71C 8010535C AFB10034 */  sw         $s1, 0x34($sp)
/* BB720 80105360 AFB00030 */  sw         $s0, 0x30($sp)
/* BB724 80105364 244CD7EC */  addiu      $t4, $v0, %lo(D_race_800CD7EC)
/* BB728 80105368 8D890000 */  lw         $t1, 0x0($t4)
/* BB72C 8010536C 8D8A0004 */  lw         $t2, 0x4($t4)
/* BB730 80105370 8D8B0008 */  lw         $t3, 0x8($t4)
/* BB734 80105374 AFA90010 */  sw         $t1, 0x10($sp)
/* BB738 80105378 AFAA0014 */  sw         $t2, 0x14($sp)
/* BB73C 8010537C AFAB0018 */  sw         $t3, 0x18($sp)
/* BB740 80105380 8D89000C */  lw         $t1, 0xC($t4)
/* BB744 80105384 818A0010 */  lb         $t2, 0x10($t4)
/* BB748 80105388 AFA9001C */  sw         $t1, 0x1C($sp)
/* BB74C 8010538C A3AA0020 */  sb         $t2, 0x20($sp)
/* BB750 80105390 8E420004 */  lw         $v0, 0x4($s2)
/* BB754 80105394 8C43002C */  lw         $v1, 0x2C($v0)
/* BB758 80105398 2C62000A */  sltiu      $v0, $v1, 0xA
/* BB75C 8010539C 10400030 */  beqz       $v0, .Lrace_80105460
/* BB760 801053A0 3C02800D */   lui       $v0, %hi(jtbl_race_800CD860)
/* BB764 801053A4 2442D860 */  addiu      $v0, $v0, %lo(jtbl_race_800CD860)
/* BB768 801053A8 00031880 */  sll        $v1, $v1, 2
/* BB76C 801053AC 00621821 */  addu       $v1, $v1, $v0
/* BB770 801053B0 8C620000 */  lw         $v0, 0x0($v1)
/* BB774 801053B4 00400008 */  jr         $v0
/* BB778 801053B8 00000000 */   nop
glabel Lrace_801053BC
/* BB77C 801053BC 27A40010 */  addiu      $a0, $sp, 0x10
/* BB780 801053C0 3C05800D */  lui        $a1, %hi(D_race_800CD800)
/* BB784 801053C4 08041516 */  j          .Lrace_80105458
/* BB788 801053C8 24A5D800 */   addiu     $a1, $a1, %lo(D_race_800CD800)
glabel Lrace_801053CC
/* BB78C 801053CC 27A40010 */  addiu      $a0, $sp, 0x10
/* BB790 801053D0 3C05800D */  lui        $a1, %hi(D_race_800CD808)
/* BB794 801053D4 08041516 */  j          .Lrace_80105458
/* BB798 801053D8 24A5D808 */   addiu     $a1, $a1, %lo(D_race_800CD808)
glabel Lrace_801053DC
/* BB79C 801053DC 27A40010 */  addiu      $a0, $sp, 0x10
/* BB7A0 801053E0 3C05800D */  lui        $a1, %hi(D_race_800CD810)
/* BB7A4 801053E4 08041516 */  j          .Lrace_80105458
/* BB7A8 801053E8 24A5D810 */   addiu     $a1, $a1, %lo(D_race_800CD810)
glabel Lrace_801053EC
/* BB7AC 801053EC 27A40010 */  addiu      $a0, $sp, 0x10
/* BB7B0 801053F0 3C05800D */  lui        $a1, %hi(D_race_800CD818)
/* BB7B4 801053F4 08041516 */  j          .Lrace_80105458
/* BB7B8 801053F8 24A5D818 */   addiu     $a1, $a1, %lo(D_race_800CD818)
glabel Lrace_801053FC
/* BB7BC 801053FC 27A40010 */  addiu      $a0, $sp, 0x10
/* BB7C0 80105400 3C05800D */  lui        $a1, %hi(D_race_800CD820)
/* BB7C4 80105404 08041516 */  j          .Lrace_80105458
/* BB7C8 80105408 24A5D820 */   addiu     $a1, $a1, %lo(D_race_800CD820)
glabel Lrace_8010540C
/* BB7CC 8010540C 27A40010 */  addiu      $a0, $sp, 0x10
/* BB7D0 80105410 3C05800D */  lui        $a1, %hi(D_race_800CD828)
/* BB7D4 80105414 08041516 */  j          .Lrace_80105458
/* BB7D8 80105418 24A5D828 */   addiu     $a1, $a1, %lo(D_race_800CD828)
glabel Lrace_8010541C
/* BB7DC 8010541C 27A40010 */  addiu      $a0, $sp, 0x10
/* BB7E0 80105420 3C05800D */  lui        $a1, %hi(D_race_800CD830)
/* BB7E4 80105424 08041516 */  j          .Lrace_80105458
/* BB7E8 80105428 24A5D830 */   addiu     $a1, $a1, %lo(D_race_800CD830)
glabel Lrace_8010542C
/* BB7EC 8010542C 27A40010 */  addiu      $a0, $sp, 0x10
/* BB7F0 80105430 3C05800D */  lui        $a1, %hi(D_race_800CD838)
/* BB7F4 80105434 08041516 */  j          .Lrace_80105458
/* BB7F8 80105438 24A5D838 */   addiu     $a1, $a1, %lo(D_race_800CD838)
glabel Lrace_8010543C
/* BB7FC 8010543C 27A40010 */  addiu      $a0, $sp, 0x10
/* BB800 80105440 3C05800D */  lui        $a1, %hi(D_race_800CD840)
/* BB804 80105444 08041516 */  j          .Lrace_80105458
/* BB808 80105448 24A5D840 */   addiu     $a1, $a1, %lo(D_race_800CD840)
glabel Lrace_8010544C
/* BB80C 8010544C 27A40010 */  addiu      $a0, $sp, 0x10
/* BB810 80105450 3C05800D */  lui        $a1, %hi(D_race_800CD848)
/* BB814 80105454 24A5D848 */  addiu      $a1, $a1, %lo(D_race_800CD848)
.Lrace_80105458:
/* BB818 80105458 0C0006C8 */  jal        func_80001B20
/* BB81C 8010545C 00000000 */   nop
.Lrace_80105460:
/* BB820 80105460 3C108003 */  lui        $s0, %hi(D_8002FB34)
/* BB824 80105464 2610FB34 */  addiu      $s0, $s0, %lo(D_8002FB34)
/* BB828 80105468 02002021 */  addu       $a0, $s0, $zero
/* BB82C 8010546C 27A50010 */  addiu      $a1, $sp, 0x10
/* BB830 80105470 0C000708 */  jal        func_80001C20
/* BB834 80105474 24060100 */   addiu     $a2, $zero, 0x100
/* BB838 80105478 265130C8 */  addiu      $s1, $s2, 0x30C8
/* BB83C 8010547C 02202021 */  addu       $a0, $s1, $zero
/* BB840 80105480 0C002F70 */  jal        func_8000BDC0
/* BB844 80105484 A20000FF */   sb        $zero, 0xFF($s0)
/* BB848 80105488 02202021 */  addu       $a0, $s1, $zero
/* BB84C 8010548C 3C05800D */  lui        $a1, %hi(D_race_800CD850)
/* BB850 80105490 0C002FA1 */  jal        func_8000BE84
/* BB854 80105494 24A5D850 */   addiu     $a1, $a1, %lo(D_race_800CD850)
/* BB858 80105498 0C011509 */  jal        func_80045424
/* BB85C 8010549C 26440390 */   addiu     $a0, $s2, 0x390
/* BB860 801054A0 26442D54 */  addiu      $a0, $s2, 0x2D54
/* BB864 801054A4 26452D60 */  addiu      $a1, $s2, 0x2D60
/* BB868 801054A8 0C0016F6 */  jal        func_80005BD8
/* BB86C 801054AC 24060100 */   addiu     $a2, $zero, 0x100
/* BB870 801054B0 8E430010 */  lw         $v1, 0x10($s2)
/* BB874 801054B4 8C620000 */  lw         $v0, 0x0($v1)
/* BB878 801054B8 84440078 */  lh         $a0, 0x78($v0)
/* BB87C 801054BC 8C42007C */  lw         $v0, 0x7C($v0)
/* BB880 801054C0 0040F809 */  jalr       $v0
/* BB884 801054C4 00642021 */   addu      $a0, $v1, $a0
/* BB888 801054C8 2646017A */  addiu      $a2, $s2, 0x17A
/* BB88C 801054CC AE422D48 */  sw         $v0, 0x2D48($s2)
/* BB890 801054D0 8C470008 */  lw         $a3, 0x8($v0)
/* BB894 801054D4 8E450014 */  lw         $a1, 0x14($s2)
/* BB898 801054D8 8E430004 */  lw         $v1, 0x4($s2)
/* BB89C 801054DC 84E40048 */  lh         $a0, 0x48($a3)
/* BB8A0 801054E0 8CE8004C */  lw         $t0, 0x4C($a3)
/* BB8A4 801054E4 8C67001C */  lw         $a3, 0x1C($v1)
/* BB8A8 801054E8 0100F809 */  jalr       $t0
/* BB8AC 801054EC 00442021 */   addu      $a0, $v0, $a0
/* BB8B0 801054F0 8E432D48 */  lw         $v1, 0x2D48($s2)
/* BB8B4 801054F4 8C620008 */  lw         $v0, 0x8($v1)
/* BB8B8 801054F8 00002821 */  addu       $a1, $zero, $zero
/* BB8BC 801054FC 84440050 */  lh         $a0, 0x50($v0)
/* BB8C0 80105500 8C420054 */  lw         $v0, 0x54($v0)
/* BB8C4 80105504 0040F809 */  jalr       $v0
/* BB8C8 80105508 00642021 */   addu      $a0, $v1, $a0
/* BB8CC 8010550C 8E432D48 */  lw         $v1, 0x2D48($s2)
/* BB8D0 80105510 AE422D4C */  sw         $v0, 0x2D4C($s2)
/* BB8D4 80105514 8C620008 */  lw         $v0, 0x8($v1)
/* BB8D8 80105518 00002821 */  addu       $a1, $zero, $zero
/* BB8DC 8010551C 84440050 */  lh         $a0, 0x50($v0)
/* BB8E0 80105520 8C420054 */  lw         $v0, 0x54($v0)
/* BB8E4 80105524 0040F809 */  jalr       $v0
/* BB8E8 80105528 00642021 */   addu      $a0, $v1, $a0
/* BB8EC 8010552C AE422D50 */  sw         $v0, 0x2D50($s2)
/* BB8F0 80105530 8FBF003C */  lw         $ra, 0x3C($sp)
/* BB8F4 80105534 8FB20038 */  lw         $s2, 0x38($sp)
/* BB8F8 80105538 8FB10034 */  lw         $s1, 0x34($sp)
/* BB8FC 8010553C 8FB00030 */  lw         $s0, 0x30($sp)
/* BB900 80105540 03E00008 */  jr         $ra
/* BB904 80105544 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_80105548
/* BB908 80105548 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BB90C 8010554C AFB00010 */  sw         $s0, 0x10($sp)
/* BB910 80105550 00808021 */  addu       $s0, $a0, $zero
/* BB914 80105554 AFBF0014 */  sw         $ra, 0x14($sp)
/* BB918 80105558 8E030010 */  lw         $v1, 0x10($s0)
/* BB91C 8010555C 5060000B */  beql       $v1, $zero, .Lrace_8010558C
/* BB920 80105560 260430C8 */   addiu     $a0, $s0, 0x30C8
/* BB924 80105564 8E052D48 */  lw         $a1, 0x2D48($s0)
/* BB928 80105568 50A00008 */  beql       $a1, $zero, .Lrace_8010558C
/* BB92C 8010556C 260430C8 */   addiu     $a0, $s0, 0x30C8
/* BB930 80105570 8C620000 */  lw         $v0, 0x0($v1)
/* BB934 80105574 844400E0 */  lh         $a0, 0xE0($v0)
/* BB938 80105578 8C4200E4 */  lw         $v0, 0xE4($v0)
/* BB93C 8010557C 0040F809 */  jalr       $v0
/* BB940 80105580 00642021 */   addu      $a0, $v1, $a0
/* BB944 80105584 AE002D48 */  sw         $zero, 0x2D48($s0)
/* BB948 80105588 260430C8 */  addiu      $a0, $s0, 0x30C8
.Lrace_8010558C:
/* BB94C 8010558C 26022D54 */  addiu      $v0, $s0, 0x2D54
/* BB950 80105590 AE002D54 */  sw         $zero, 0x2D54($s0)
/* BB954 80105594 A4400008 */  sh         $zero, 0x8($v0)
/* BB958 80105598 A4400006 */  sh         $zero, 0x6($v0)
/* BB95C 8010559C 0C002F89 */  jal        func_8000BE24
/* BB960 801055A0 A4400004 */   sh        $zero, 0x4($v0)
/* BB964 801055A4 8FBF0014 */  lw         $ra, 0x14($sp)
/* BB968 801055A8 8FB00010 */  lw         $s0, 0x10($sp)
/* BB96C 801055AC 03E00008 */  jr         $ra
/* BB970 801055B0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_801055B4
/* BB974 801055B4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BB978 801055B8 AFB00010 */  sw         $s0, 0x10($sp)
/* BB97C 801055BC 00808021 */  addu       $s0, $a0, $zero
/* BB980 801055C0 AFBF0014 */  sw         $ra, 0x14($sp)
/* BB984 801055C4 8E030010 */  lw         $v1, 0x10($s0)
/* BB988 801055C8 8C620000 */  lw         $v0, 0x0($v1)
/* BB98C 801055CC 84440070 */  lh         $a0, 0x70($v0)
/* BB990 801055D0 8C420074 */  lw         $v0, 0x74($v0)
/* BB994 801055D4 0040F809 */  jalr       $v0
/* BB998 801055D8 00642021 */   addu      $a0, $v1, $a0
/* BB99C 801055DC AE022F60 */  sw         $v0, 0x2F60($s0)
/* BB9A0 801055E0 8C430008 */  lw         $v1, 0x8($v0)
/* BB9A4 801055E4 84640040 */  lh         $a0, 0x40($v1)
/* BB9A8 801055E8 8E050014 */  lw         $a1, 0x14($s0)
/* BB9AC 801055EC 00442021 */  addu       $a0, $v0, $a0
/* BB9B0 801055F0 8E020004 */  lw         $v0, 0x4($s0)
/* BB9B4 801055F4 8C630044 */  lw         $v1, 0x44($v1)
/* BB9B8 801055F8 8C47001C */  lw         $a3, 0x1C($v0)
/* BB9BC 801055FC 0060F809 */  jalr       $v1
/* BB9C0 80105600 26060187 */   addiu     $a2, $s0, 0x187
/* BB9C4 80105604 8FBF0014 */  lw         $ra, 0x14($sp)
/* BB9C8 80105608 8FB00010 */  lw         $s0, 0x10($sp)
/* BB9CC 8010560C 03E00008 */  jr         $ra
/* BB9D0 80105610 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80105614
/* BB9D4 80105614 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BB9D8 80105618 AFB00010 */  sw         $s0, 0x10($sp)
/* BB9DC 8010561C 00808021 */  addu       $s0, $a0, $zero
/* BB9E0 80105620 AFBF0014 */  sw         $ra, 0x14($sp)
/* BB9E4 80105624 8E030010 */  lw         $v1, 0x10($s0)
/* BB9E8 80105628 1060000A */  beqz       $v1, .Lrace_80105654
/* BB9EC 8010562C 00000000 */   nop
/* BB9F0 80105630 8E052F60 */  lw         $a1, 0x2F60($s0)
/* BB9F4 80105634 10A00007 */  beqz       $a1, .Lrace_80105654
/* BB9F8 80105638 00000000 */   nop
/* BB9FC 8010563C 8C620000 */  lw         $v0, 0x0($v1)
/* BBA00 80105640 844400D8 */  lh         $a0, 0xD8($v0)
/* BBA04 80105644 8C4200DC */  lw         $v0, 0xDC($v0)
/* BBA08 80105648 0040F809 */  jalr       $v0
/* BBA0C 8010564C 00642021 */   addu      $a0, $v1, $a0
/* BBA10 80105650 AE002F60 */  sw         $zero, 0x2F60($s0)
.Lrace_80105654:
/* BBA14 80105654 8FBF0014 */  lw         $ra, 0x14($sp)
/* BBA18 80105658 8FB00010 */  lw         $s0, 0x10($sp)
/* BBA1C 8010565C 03E00008 */  jr         $ra
/* BBA20 80105660 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80105664
/* BBA24 80105664 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* BBA28 80105668 AFB10024 */  sw         $s1, 0x24($sp)
/* BBA2C 8010566C 00808821 */  addu       $s1, $a0, $zero
/* BBA30 80105670 AFBF002C */  sw         $ra, 0x2C($sp)
/* BBA34 80105674 AFB20028 */  sw         $s2, 0x28($sp)
/* BBA38 80105678 AFB00020 */  sw         $s0, 0x20($sp)
/* BBA3C 8010567C F7B40030 */  sdc1       $f20, 0x30($sp)
/* BBA40 80105680 8E230010 */  lw         $v1, 0x10($s1)
/* BBA44 80105684 8C620000 */  lw         $v0, 0x0($v1)
/* BBA48 80105688 00A09021 */  addu       $s2, $a1, $zero
/* BBA4C 8010568C 84440018 */  lh         $a0, 0x18($v0)
/* BBA50 80105690 8C42001C */  lw         $v0, 0x1C($v0)
/* BBA54 80105694 0040F809 */  jalr       $v0
/* BBA58 80105698 00642021 */   addu      $a0, $v1, $a0
/* BBA5C 8010569C AE220370 */  sw         $v0, 0x370($s1)
/* BBA60 801056A0 8C4800EC */  lw         $t0, 0xEC($v0)
/* BBA64 801056A4 8E230004 */  lw         $v1, 0x4($s1)
/* BBA68 801056A8 3C01800D */  lui        $at, %hi(D_race_800CD888)
/* BBA6C 801056AC C420D888 */  lwc1       $f0, %lo(D_race_800CD888)($at)
/* BBA70 801056B0 85040030 */  lh         $a0, 0x30($t0)
/* BBA74 801056B4 26260083 */  addiu      $a2, $s1, 0x83
/* BBA78 801056B8 E7A00010 */  swc1       $f0, 0x10($sp)
/* BBA7C 801056BC 8E250014 */  lw         $a1, 0x14($s1)
/* BBA80 801056C0 8C67001C */  lw         $a3, 0x1C($v1)
/* BBA84 801056C4 8D030034 */  lw         $v1, 0x34($t0)
/* BBA88 801056C8 0060F809 */  jalr       $v1
/* BBA8C 801056CC 00442021 */   addu      $a0, $v0, $a0
/* BBA90 801056D0 12400004 */  beqz       $s2, .Lrace_801056E4
/* BBA94 801056D4 00000000 */   nop
/* BBA98 801056D8 8E240370 */  lw         $a0, 0x370($s1)
/* BBA9C 801056DC 0C019112 */  jal        func_80064448
/* BBAA0 801056E0 00000000 */   nop
.Lrace_801056E4:
/* BBAA4 801056E4 3C053DCC */  lui        $a1, (0x3DCCCCCD >> 16)
/* BBAA8 801056E8 34A5CCCD */  ori        $a1, $a1, (0x3DCCCCCD & 0xFFFF)
/* BBAAC 801056EC 0C04245B */  jal        func_race_8010916C
/* BBAB0 801056F0 02202021 */   addu      $a0, $s1, $zero
/* BBAB4 801056F4 8E220004 */  lw         $v0, 0x4($s1)
/* BBAB8 801056F8 244500E0 */  addiu      $a1, $v0, 0xE0
/* BBABC 801056FC 10A00007 */  beqz       $a1, .Lrace_8010571C
/* BBAC0 80105700 3C108003 */   lui       $s0, %hi(D_8002FB34)
/* BBAC4 80105704 2610FB34 */  addiu      $s0, $s0, %lo(D_8002FB34)
/* BBAC8 80105708 02002021 */  addu       $a0, $s0, $zero
/* BBACC 8010570C 0C000708 */  jal        func_80001C20
/* BBAD0 80105710 24060100 */   addiu     $a2, $zero, 0x100
/* BBAD4 80105714 080415C9 */  j          .Lrace_80105724
/* BBAD8 80105718 A20000FF */   sb        $zero, 0xFF($s0)
.Lrace_8010571C:
/* BBADC 8010571C 3C028003 */  lui        $v0, %hi(D_8002FB34)
/* BBAE0 80105720 A040FB34 */  sb         $zero, %lo(D_8002FB34)($v0)
.Lrace_80105724:
/* BBAE4 80105724 8E230010 */  lw         $v1, 0x10($s1)
/* BBAE8 80105728 8C620000 */  lw         $v0, 0x0($v1)
/* BBAEC 8010572C 84440018 */  lh         $a0, 0x18($v0)
/* BBAF0 80105730 8C42001C */  lw         $v0, 0x1C($v0)
/* BBAF4 80105734 0040F809 */  jalr       $v0
/* BBAF8 80105738 00642021 */   addu      $a0, $v1, $a0
/* BBAFC 8010573C AE220364 */  sw         $v0, 0x364($s1)
/* BBB00 80105740 8C4800EC */  lw         $t0, 0xEC($v0)
/* BBB04 80105744 8E230004 */  lw         $v1, 0x4($s1)
/* BBB08 80105748 3C01800D */  lui        $at, %hi(D_race_800CD88C)
/* BBB0C 8010574C C420D88C */  lwc1       $f0, %lo(D_race_800CD88C)($at)
/* BBB10 80105750 85040030 */  lh         $a0, 0x30($t0)
/* BBB14 80105754 2626005C */  addiu      $a2, $s1, 0x5C
/* BBB18 80105758 E7A00010 */  swc1       $f0, 0x10($sp)
/* BBB1C 8010575C 8E250014 */  lw         $a1, 0x14($s1)
/* BBB20 80105760 8C67001C */  lw         $a3, 0x1C($v1)
/* BBB24 80105764 8D030034 */  lw         $v1, 0x34($t0)
/* BBB28 80105768 0060F809 */  jalr       $v1
/* BBB2C 8010576C 00442021 */   addu      $a0, $v0, $a0
/* BBB30 80105770 12400004 */  beqz       $s2, .Lrace_80105784
/* BBB34 80105774 00000000 */   nop
/* BBB38 80105778 8E240364 */  lw         $a0, 0x364($s1)
/* BBB3C 8010577C 0C019112 */  jal        func_80064448
/* BBB40 80105780 00000000 */   nop
.Lrace_80105784:
/* BBB44 80105784 3C053E75 */  lui        $a1, (0x3E75C28F >> 16)
/* BBB48 80105788 34A5C28F */  ori        $a1, $a1, (0x3E75C28F & 0xFFFF)
/* BBB4C 8010578C 0C04245B */  jal        func_race_8010916C
/* BBB50 80105790 02202021 */   addu      $a0, $s1, $zero
/* BBB54 80105794 8E220364 */  lw         $v0, 0x364($s1)
/* BBB58 80105798 922301EF */  lbu        $v1, 0x1EF($s1)
/* BBB5C 8010579C 8C4200A0 */  lw         $v0, 0xA0($v0)
/* BBB60 801057A0 1060000B */  beqz       $v1, .Lrace_801057D0
/* BBB64 801057A4 AE220368 */   sw        $v0, 0x368($s1)
/* BBB68 801057A8 8E220364 */  lw         $v0, 0x364($s1)
/* BBB6C 801057AC 262501EF */  addiu      $a1, $s1, 0x1EF
/* BBB70 801057B0 8C4300E0 */  lw         $v1, 0xE0($v0)
/* BBB74 801057B4 14600003 */  bnez       $v1, .Lrace_801057C4
/* BBB78 801057B8 244400E0 */   addiu     $a0, $v0, 0xE0
/* BBB7C 801057BC 080415F3 */  j          .Lrace_801057CC
/* BBB80 801057C0 00001021 */   addu      $v0, $zero, $zero
.Lrace_801057C4:
/* BBB84 801057C4 0C016427 */  jal        func_8005909C
/* BBB88 801057C8 00000000 */   nop
.Lrace_801057CC:
/* BBB8C 801057CC AE220380 */  sw         $v0, 0x380($s1)
.Lrace_801057D0:
/* BBB90 801057D0 3C053E85 */  lui        $a1, (0x3E851EB8 >> 16)
/* BBB94 801057D4 34A51EB8 */  ori        $a1, $a1, (0x3E851EB8 & 0xFFFF)
/* BBB98 801057D8 0C04245B */  jal        func_race_8010916C
/* BBB9C 801057DC 02202021 */   addu      $a0, $s1, $zero
/* BBBA0 801057E0 8E230010 */  lw         $v1, 0x10($s1)
/* BBBA4 801057E4 8C620000 */  lw         $v0, 0x0($v1)
/* BBBA8 801057E8 84440018 */  lh         $a0, 0x18($v0)
/* BBBAC 801057EC 8C42001C */  lw         $v0, 0x1C($v0)
/* BBBB0 801057F0 0040F809 */  jalr       $v0
/* BBBB4 801057F4 00642021 */   addu      $a0, $v1, $a0
/* BBBB8 801057F8 AE220374 */  sw         $v0, 0x374($s1)
/* BBBBC 801057FC 8C4800EC */  lw         $t0, 0xEC($v0)
/* BBBC0 80105800 8E230004 */  lw         $v1, 0x4($s1)
/* BBBC4 80105804 3C01800D */  lui        $at, %hi(D_race_800CD890)
/* BBBC8 80105808 C420D890 */  lwc1       $f0, %lo(D_race_800CD890)($at)
/* BBBCC 8010580C 85040030 */  lh         $a0, 0x30($t0)
/* BBBD0 80105810 2626009D */  addiu      $a2, $s1, 0x9D
/* BBBD4 80105814 E7A00010 */  swc1       $f0, 0x10($sp)
/* BBBD8 80105818 8E250014 */  lw         $a1, 0x14($s1)
/* BBBDC 8010581C 8C67001C */  lw         $a3, 0x1C($v1)
/* BBBE0 80105820 8D030034 */  lw         $v1, 0x34($t0)
/* BBBE4 80105824 0060F809 */  jalr       $v1
/* BBBE8 80105828 00442021 */   addu      $a0, $v0, $a0
/* BBBEC 8010582C 52400005 */  beql       $s2, $zero, .Lrace_80105844
/* BBBF0 80105830 02202021 */   addu      $a0, $s1, $zero
/* BBBF4 80105834 8E240374 */  lw         $a0, 0x374($s1)
/* BBBF8 80105838 0C019112 */  jal        func_80064448
/* BBBFC 8010583C 00000000 */   nop
/* BBC00 80105840 02202021 */  addu       $a0, $s1, $zero
.Lrace_80105844:
/* BBC04 80105844 0C0424FF */  jal        func_race_801093FC
/* BBC08 80105848 02402821 */   addu      $a1, $s2, $zero
/* BBC0C 8010584C 3C053EAE */  lui        $a1, (0x3EAE147B >> 16)
/* BBC10 80105850 34A5147B */  ori        $a1, $a1, (0x3EAE147B & 0xFFFF)
/* BBC14 80105854 0C04245B */  jal        func_race_8010916C
/* BBC18 80105858 02202021 */   addu      $a0, $s1, $zero
/* BBC1C 8010585C 27A40018 */  addiu      $a0, $sp, 0x18
/* BBC20 80105860 262500AA */  addiu      $a1, $s1, 0xAA
/* BBC24 80105864 0C000708 */  jal        func_80001C20
/* BBC28 80105868 24060008 */   addiu     $a2, $zero, 0x8
/* BBC2C 8010586C 8E220374 */  lw         $v0, 0x374($s1)
/* BBC30 80105870 27A50018 */  addiu      $a1, $sp, 0x18
/* BBC34 80105874 8C4300D4 */  lw         $v1, 0xD4($v0)
/* BBC38 80105878 14600003 */  bnez       $v1, .Lrace_80105888
/* BBC3C 8010587C 244400D4 */   addiu     $a0, $v0, 0xD4
/* BBC40 80105880 08041624 */  j          .Lrace_80105890
/* BBC44 80105884 00001021 */   addu      $v0, $zero, $zero
.Lrace_80105888:
/* BBC48 80105888 0C016427 */  jal        func_8005909C
/* BBC4C 8010588C 00000000 */   nop
.Lrace_80105890:
/* BBC50 80105890 3C053EB8 */  lui        $a1, (0x3EB851EC >> 16)
/* BBC54 80105894 34A551EC */  ori        $a1, $a1, (0x3EB851EC & 0xFFFF)
/* BBC58 80105898 02202021 */  addu       $a0, $s1, $zero
/* BBC5C 8010589C 0C04245B */  jal        func_race_8010916C
/* BBC60 801058A0 AE220384 */   sw        $v0, 0x384($s1)
/* BBC64 801058A4 27A40018 */  addiu      $a0, $sp, 0x18
/* BBC68 801058A8 262500B7 */  addiu      $a1, $s1, 0xB7
/* BBC6C 801058AC 0C000708 */  jal        func_80001C20
/* BBC70 801058B0 24060008 */   addiu     $a2, $zero, 0x8
/* BBC74 801058B4 8E220374 */  lw         $v0, 0x374($s1)
/* BBC78 801058B8 27A50018 */  addiu      $a1, $sp, 0x18
/* BBC7C 801058BC 8C4300D4 */  lw         $v1, 0xD4($v0)
/* BBC80 801058C0 14600003 */  bnez       $v1, .Lrace_801058D0
/* BBC84 801058C4 244400D4 */   addiu     $a0, $v0, 0xD4
/* BBC88 801058C8 08041637 */  j          .Lrace_801058DC
/* BBC8C 801058CC 00001821 */   addu      $v1, $zero, $zero
.Lrace_801058D0:
/* BBC90 801058D0 0C016427 */  jal        func_8005909C
/* BBC94 801058D4 00000000 */   nop
/* BBC98 801058D8 00401821 */  addu       $v1, $v0, $zero
.Lrace_801058DC:
/* BBC9C 801058DC 922201D5 */  lbu        $v0, 0x1D5($s1)
/* BBCA0 801058E0 1040000F */  beqz       $v0, .Lrace_80105920
/* BBCA4 801058E4 AE230388 */   sw        $v1, 0x388($s1)
/* BBCA8 801058E8 27A40018 */  addiu      $a0, $sp, 0x18
/* BBCAC 801058EC 262501D5 */  addiu      $a1, $s1, 0x1D5
/* BBCB0 801058F0 0C000708 */  jal        func_80001C20
/* BBCB4 801058F4 24060008 */   addiu     $a2, $zero, 0x8
/* BBCB8 801058F8 8E220374 */  lw         $v0, 0x374($s1)
/* BBCBC 801058FC 27A50018 */  addiu      $a1, $sp, 0x18
/* BBCC0 80105900 8C4300D4 */  lw         $v1, 0xD4($v0)
/* BBCC4 80105904 14600003 */  bnez       $v1, .Lrace_80105914
/* BBCC8 80105908 244400D4 */   addiu     $a0, $v0, 0xD4
/* BBCCC 8010590C 08041647 */  j          .Lrace_8010591C
/* BBCD0 80105910 00001021 */   addu      $v0, $zero, $zero
.Lrace_80105914:
/* BBCD4 80105914 0C016427 */  jal        func_8005909C
/* BBCD8 80105918 00000000 */   nop
.Lrace_8010591C:
/* BBCDC 8010591C AE22038C */  sw         $v0, 0x38C($s1)
.Lrace_80105920:
/* BBCE0 80105920 3C053EC2 */  lui        $a1, (0x3EC28F5C >> 16)
/* BBCE4 80105924 34A58F5C */  ori        $a1, $a1, (0x3EC28F5C & 0xFFFF)
/* BBCE8 80105928 0C04245B */  jal        func_race_8010916C
/* BBCEC 8010592C 02202021 */   addu      $a0, $s1, $zero
/* BBCF0 80105930 8E230010 */  lw         $v1, 0x10($s1)
/* BBCF4 80105934 8C620000 */  lw         $v0, 0x0($v1)
/* BBCF8 80105938 84440018 */  lh         $a0, 0x18($v0)
/* BBCFC 8010593C 8C42001C */  lw         $v0, 0x1C($v0)
/* BBD00 80105940 0040F809 */  jalr       $v0
/* BBD04 80105944 00642021 */   addu      $a0, $v1, $a0
/* BBD08 80105948 AE22036C */  sw         $v0, 0x36C($s1)
/* BBD0C 8010594C 8C4800EC */  lw         $t0, 0xEC($v0)
/* BBD10 80105950 8E230004 */  lw         $v1, 0x4($s1)
/* BBD14 80105954 3C01800D */  lui        $at, %hi(D_race_800CD894)
/* BBD18 80105958 C434D894 */  lwc1       $f20, %lo(D_race_800CD894)($at)
/* BBD1C 8010595C 85040030 */  lh         $a0, 0x30($t0)
/* BBD20 80105960 26260076 */  addiu      $a2, $s1, 0x76
/* BBD24 80105964 E7B40010 */  swc1       $f20, 0x10($sp)
/* BBD28 80105968 8E250014 */  lw         $a1, 0x14($s1)
/* BBD2C 8010596C 8C67001C */  lw         $a3, 0x1C($v1)
/* BBD30 80105970 8D030034 */  lw         $v1, 0x34($t0)
/* BBD34 80105974 0060F809 */  jalr       $v1
/* BBD38 80105978 00442021 */   addu      $a0, $v0, $a0
/* BBD3C 8010597C 12400004 */  beqz       $s2, .Lrace_80105990
/* BBD40 80105980 00000000 */   nop
/* BBD44 80105984 8E24036C */  lw         $a0, 0x36C($s1)
/* BBD48 80105988 0C019112 */  jal        func_80064448
/* BBD4C 8010598C 00000000 */   nop
.Lrace_80105990:
/* BBD50 80105990 3C053ECC */  lui        $a1, (0x3ECCCCCD >> 16)
/* BBD54 80105994 34A5CCCD */  ori        $a1, $a1, (0x3ECCCCCD & 0xFFFF)
/* BBD58 80105998 0C04245B */  jal        func_race_8010916C
/* BBD5C 8010599C 02202021 */   addu      $a0, $s1, $zero
/* BBD60 801059A0 8E230010 */  lw         $v1, 0x10($s1)
/* BBD64 801059A4 8C620000 */  lw         $v0, 0x0($v1)
/* BBD68 801059A8 84440018 */  lh         $a0, 0x18($v0)
/* BBD6C 801059AC 8C42001C */  lw         $v0, 0x1C($v0)
/* BBD70 801059B0 0040F809 */  jalr       $v0
/* BBD74 801059B4 00642021 */   addu      $a0, $v1, $a0
/* BBD78 801059B8 AE220378 */  sw         $v0, 0x378($s1)
/* BBD7C 801059BC 8C4800EC */  lw         $t0, 0xEC($v0)
/* BBD80 801059C0 8E230004 */  lw         $v1, 0x4($s1)
/* BBD84 801059C4 85040030 */  lh         $a0, 0x30($t0)
/* BBD88 801059C8 26260090 */  addiu      $a2, $s1, 0x90
/* BBD8C 801059CC E7B40010 */  swc1       $f20, 0x10($sp)
/* BBD90 801059D0 8E250014 */  lw         $a1, 0x14($s1)
/* BBD94 801059D4 8C67001C */  lw         $a3, 0x1C($v1)
/* BBD98 801059D8 8D030034 */  lw         $v1, 0x34($t0)
/* BBD9C 801059DC 0060F809 */  jalr       $v1
/* BBDA0 801059E0 00442021 */   addu      $a0, $v0, $a0
/* BBDA4 801059E4 12400004 */  beqz       $s2, .Lrace_801059F8
/* BBDA8 801059E8 00000000 */   nop
/* BBDAC 801059EC 8E240378 */  lw         $a0, 0x378($s1)
/* BBDB0 801059F0 0C019112 */  jal        func_80064448
/* BBDB4 801059F4 00000000 */   nop
.Lrace_801059F8:
/* BBDB8 801059F8 3C053ED7 */  lui        $a1, (0x3ED70A3D >> 16)
/* BBDBC 801059FC 34A50A3D */  ori        $a1, $a1, (0x3ED70A3D & 0xFFFF)
/* BBDC0 80105A00 0C04245B */  jal        func_race_8010916C
/* BBDC4 80105A04 02202021 */   addu      $a0, $s1, $zero
/* BBDC8 80105A08 8FBF002C */  lw         $ra, 0x2C($sp)
/* BBDCC 80105A0C 8FB20028 */  lw         $s2, 0x28($sp)
/* BBDD0 80105A10 8FB10024 */  lw         $s1, 0x24($sp)
/* BBDD4 80105A14 8FB00020 */  lw         $s0, 0x20($sp)
/* BBDD8 80105A18 D7B40030 */  ldc1       $f20, 0x30($sp)
/* BBDDC 80105A1C 03E00008 */  jr         $ra
/* BBDE0 80105A20 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_80105A24
/* BBDE4 80105A24 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BBDE8 80105A28 AFB00010 */  sw         $s0, 0x10($sp)
/* BBDEC 80105A2C 00808021 */  addu       $s0, $a0, $zero
/* BBDF0 80105A30 26043340 */  addiu      $a0, $s0, 0x3340
/* BBDF4 80105A34 AFBF0014 */  sw         $ra, 0x14($sp)
/* BBDF8 80105A38 8C820014 */  lw         $v0, 0x14($a0)
/* BBDFC 80105A3C 10400003 */  beqz       $v0, .Lrace_80105A4C
/* BBE00 80105A40 00000000 */   nop
/* BBE04 80105A44 0C03970C */  jal        func_race_800E5C30
/* BBE08 80105A48 00000000 */   nop
.Lrace_80105A4C:
/* BBE0C 80105A4C 8E030010 */  lw         $v1, 0x10($s0)
/* BBE10 80105A50 1060002D */  beqz       $v1, .Lrace_80105B08
/* BBE14 80105A54 00000000 */   nop
/* BBE18 80105A58 8E050374 */  lw         $a1, 0x374($s0)
/* BBE1C 80105A5C 10A00006 */  beqz       $a1, .Lrace_80105A78
/* BBE20 80105A60 00000000 */   nop
/* BBE24 80105A64 8C620000 */  lw         $v0, 0x0($v1)
/* BBE28 80105A68 84440080 */  lh         $a0, 0x80($v0)
/* BBE2C 80105A6C 8C420084 */  lw         $v0, 0x84($v0)
/* BBE30 80105A70 0040F809 */  jalr       $v0
/* BBE34 80105A74 00642021 */   addu      $a0, $v1, $a0
.Lrace_80105A78:
/* BBE38 80105A78 8E050378 */  lw         $a1, 0x378($s0)
/* BBE3C 80105A7C 10A00007 */  beqz       $a1, .Lrace_80105A9C
/* BBE40 80105A80 00000000 */   nop
/* BBE44 80105A84 8E030010 */  lw         $v1, 0x10($s0)
/* BBE48 80105A88 8C620000 */  lw         $v0, 0x0($v1)
/* BBE4C 80105A8C 84440080 */  lh         $a0, 0x80($v0)
/* BBE50 80105A90 8C420084 */  lw         $v0, 0x84($v0)
/* BBE54 80105A94 0040F809 */  jalr       $v0
/* BBE58 80105A98 00642021 */   addu      $a0, $v1, $a0
.Lrace_80105A9C:
/* BBE5C 80105A9C 8E05036C */  lw         $a1, 0x36C($s0)
/* BBE60 80105AA0 10A00007 */  beqz       $a1, .Lrace_80105AC0
/* BBE64 80105AA4 00000000 */   nop
/* BBE68 80105AA8 8E030010 */  lw         $v1, 0x10($s0)
/* BBE6C 80105AAC 8C620000 */  lw         $v0, 0x0($v1)
/* BBE70 80105AB0 84440080 */  lh         $a0, 0x80($v0)
/* BBE74 80105AB4 8C420084 */  lw         $v0, 0x84($v0)
/* BBE78 80105AB8 0040F809 */  jalr       $v0
/* BBE7C 80105ABC 00642021 */   addu      $a0, $v1, $a0
.Lrace_80105AC0:
/* BBE80 80105AC0 8E050364 */  lw         $a1, 0x364($s0)
/* BBE84 80105AC4 10A00007 */  beqz       $a1, .Lrace_80105AE4
/* BBE88 80105AC8 00000000 */   nop
/* BBE8C 80105ACC 8E030010 */  lw         $v1, 0x10($s0)
/* BBE90 80105AD0 8C620000 */  lw         $v0, 0x0($v1)
/* BBE94 80105AD4 84440080 */  lh         $a0, 0x80($v0)
/* BBE98 80105AD8 8C420084 */  lw         $v0, 0x84($v0)
/* BBE9C 80105ADC 0040F809 */  jalr       $v0
/* BBEA0 80105AE0 00642021 */   addu      $a0, $v1, $a0
.Lrace_80105AE4:
/* BBEA4 80105AE4 8E050370 */  lw         $a1, 0x370($s0)
/* BBEA8 80105AE8 10A00007 */  beqz       $a1, .Lrace_80105B08
/* BBEAC 80105AEC 00000000 */   nop
/* BBEB0 80105AF0 8E030010 */  lw         $v1, 0x10($s0)
/* BBEB4 80105AF4 8C620000 */  lw         $v0, 0x0($v1)
/* BBEB8 80105AF8 84440080 */  lh         $a0, 0x80($v0)
/* BBEBC 80105AFC 8C420084 */  lw         $v0, 0x84($v0)
/* BBEC0 80105B00 0040F809 */  jalr       $v0
/* BBEC4 80105B04 00642021 */   addu      $a0, $v1, $a0
.Lrace_80105B08:
/* BBEC8 80105B08 0C046A36 */  jal        func_race_8011A8D8
/* BBECC 80105B0C 260427B4 */   addiu     $a0, $s0, 0x27B4
/* BBED0 80105B10 AE000370 */  sw         $zero, 0x370($s0)
/* BBED4 80105B14 AE00036C */  sw         $zero, 0x36C($s0)
/* BBED8 80105B18 AE000374 */  sw         $zero, 0x374($s0)
/* BBEDC 80105B1C AE000364 */  sw         $zero, 0x364($s0)
/* BBEE0 80105B20 AE000384 */  sw         $zero, 0x384($s0)
/* BBEE4 80105B24 AE000388 */  sw         $zero, 0x388($s0)
/* BBEE8 80105B28 AE00038C */  sw         $zero, 0x38C($s0)
/* BBEEC 80105B2C AE000380 */  sw         $zero, 0x380($s0)
/* BBEF0 80105B30 8FBF0014 */  lw         $ra, 0x14($sp)
/* BBEF4 80105B34 8FB00010 */  lw         $s0, 0x10($sp)
/* BBEF8 80105B38 03E00008 */  jr         $ra
/* BBEFC 80105B3C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80105B40
/* BBF00 80105B40 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* BBF04 80105B44 AFB3003C */  sw         $s3, 0x3C($sp)
/* BBF08 80105B48 00809821 */  addu       $s3, $a0, $zero
/* BBF0C 80105B4C AFB7004C */  sw         $s7, 0x4C($sp)
/* BBF10 80105B50 0000B821 */  addu       $s7, $zero, $zero
/* BBF14 80105B54 AFB20038 */  sw         $s2, 0x38($sp)
/* BBF18 80105B58 02E09021 */  addu       $s2, $s7, $zero
/* BBF1C 80105B5C AFBE0050 */  sw         $fp, 0x50($sp)
/* BBF20 80105B60 241E0072 */  addiu      $fp, $zero, 0x72
/* BBF24 80105B64 AFB60048 */  sw         $s6, 0x48($sp)
/* BBF28 80105B68 24160066 */  addiu      $s6, $zero, 0x66
/* BBF2C 80105B6C AFB50044 */  sw         $s5, 0x44($sp)
/* BBF30 80105B70 241530DC */  addiu      $s5, $zero, 0x30DC
/* BBF34 80105B74 AFB40040 */  sw         $s4, 0x40($sp)
/* BBF38 80105B78 02E0A021 */  addu       $s4, $s7, $zero
/* BBF3C 80105B7C AFBF0054 */  sw         $ra, 0x54($sp)
/* BBF40 80105B80 AFB10034 */  sw         $s1, 0x34($sp)
/* BBF44 80105B84 AFB00030 */  sw         $s0, 0x30($sp)
/* BBF48 80105B88 AFA5005C */  sw         $a1, 0x5C($sp)
.Lrace_80105B8C:
/* BBF4C 80105B8C 8E630004 */  lw         $v1, 0x4($s3)
/* BBF50 80105B90 8C620104 */  lw         $v0, 0x104($v1)
/* BBF54 80105B94 0242102B */  sltu       $v0, $s2, $v0
/* BBF58 80105B98 10400079 */  beqz       $v0, .Lrace_80105D80
/* BBF5C 80105B9C 00741021 */   addu      $v0, $v1, $s4
/* BBF60 80105BA0 8C420118 */  lw         $v0, 0x118($v0)
/* BBF64 80105BA4 240A0002 */  addiu      $t2, $zero, 0x2
/* BBF68 80105BA8 104A0004 */  beq        $v0, $t2, .Lrace_80105BBC
/* BBF6C 80105BAC 26420030 */   addiu     $v0, $s2, 0x30
/* BBF70 80105BB0 8E623328 */  lw         $v0, 0x3328($s3)
/* BBF74 80105BB4 1040006E */  beqz       $v0, .Lrace_80105D70
/* BBF78 80105BB8 26420030 */   addiu     $v0, $s2, 0x30
.Lrace_80105BBC:
/* BBF7C 80105BBC 240B005F */  addiu      $t3, $zero, 0x5F
/* BBF80 80105BC0 01606021 */  addu       $t4, $t3, $zero
/* BBF84 80105BC4 A3A20011 */  sb         $v0, 0x11($sp)
/* BBF88 80105BC8 2402002E */  addiu      $v0, $zero, 0x2E
/* BBF8C 80105BCC A3BE0010 */  sb         $fp, 0x10($sp)
/* BBF90 80105BD0 A3AB0012 */  sb         $t3, 0x12($sp)
/* BBF94 80105BD4 A3AC0014 */  sb         $t4, 0x14($sp)
/* BBF98 80105BD8 A3A20016 */  sb         $v0, 0x16($sp)
/* BBF9C 80105BDC A3BE0017 */  sb         $fp, 0x17($sp)
/* BBFA0 80105BE0 A3BE0018 */  sb         $fp, 0x18($sp)
/* BBFA4 80105BE4 8E620004 */  lw         $v0, 0x4($s3)
/* BBFA8 80105BE8 8C42001C */  lw         $v0, 0x1C($v0)
/* BBFAC 80105BEC 00008821 */  addu       $s1, $zero, $zero
/* BBFB0 80105BF0 AFA00028 */  sw         $zero, 0x28($sp)
/* BBFB4 80105BF4 AFA00024 */  sw         $zero, 0x24($sp)
/* BBFB8 80105BF8 10400004 */  beqz       $v0, .Lrace_80105C0C
/* BBFBC 80105BFC AFA00020 */   sw        $zero, 0x20($sp)
/* BBFC0 80105C00 24020062 */  addiu      $v0, $zero, 0x62
/* BBFC4 80105C04 08041704 */  j          .Lrace_80105C10
/* BBFC8 80105C08 A3A20019 */   sb        $v0, 0x19($sp)
.Lrace_80105C0C:
/* BBFCC 80105C0C A3B60019 */  sb         $s6, 0x19($sp)
.Lrace_80105C10:
/* BBFD0 80105C10 A3A0001A */  sb         $zero, 0x1A($sp)
/* BBFD4 80105C14 00008021 */  addu       $s0, $zero, $zero
/* BBFD8 80105C18 240D0001 */  addiu      $t5, $zero, 0x1
.Lrace_80105C1C:
/* BBFDC 80105C1C 120D000A */  beq        $s0, $t5, .Lrace_80105C48
/* BBFE0 80105C20 240B006D */   addiu     $t3, $zero, 0x6D
/* BBFE4 80105C24 12000005 */  beqz       $s0, .Lrace_80105C3C
/* BBFE8 80105C28 240A0002 */   addiu     $t2, $zero, 0x2
/* BBFEC 80105C2C 120A0009 */  beq        $s0, $t2, .Lrace_80105C54
/* BBFF0 80105C30 240D0030 */   addiu     $t5, $zero, 0x30
/* BBFF4 80105C34 0804171A */  j          .Lrace_80105C68
/* BBFF8 80105C38 A3AD0015 */   sb        $t5, 0x15($sp)
.Lrace_80105C3C:
/* BBFFC 80105C3C A3B60013 */  sb         $s6, 0x13($sp)
/* BC000 80105C40 08041718 */  j          .Lrace_80105C60
/* BC004 80105C44 27B10020 */   addiu     $s1, $sp, 0x20
.Lrace_80105C48:
/* BC008 80105C48 A3AB0013 */  sb         $t3, 0x13($sp)
/* BC00C 80105C4C 08041718 */  j          .Lrace_80105C60
/* BC010 80105C50 27B10024 */   addiu     $s1, $sp, 0x24
.Lrace_80105C54:
/* BC014 80105C54 240C0073 */  addiu      $t4, $zero, 0x73
/* BC018 80105C58 A3AC0013 */  sb         $t4, 0x13($sp)
/* BC01C 80105C5C 27B10028 */  addiu      $s1, $sp, 0x28
.Lrace_80105C60:
/* BC020 80105C60 240D0030 */  addiu      $t5, $zero, 0x30
/* BC024 80105C64 A3AD0015 */  sb         $t5, 0x15($sp)
.Lrace_80105C68:
/* BC028 80105C68 0C0018F2 */  jal        func_800063C8
/* BC02C 80105C6C 27A40010 */   addiu     $a0, $sp, 0x10
/* BC030 80105C70 5440000B */  bnel       $v0, $zero, .Lrace_80105CA0
/* BC034 80105C74 26100001 */   addiu     $s0, $s0, 0x1
/* BC038 80105C78 8E230000 */  lw         $v1, 0x0($s1)
/* BC03C 80105C7C 2C62000A */  sltiu      $v0, $v1, 0xA
/* BC040 80105C80 10400006 */  beqz       $v0, .Lrace_80105C9C
/* BC044 80105C84 24620001 */   addiu     $v0, $v1, 0x1
/* BC048 80105C88 AE220000 */  sw         $v0, 0x0($s1)
/* BC04C 80105C8C 92220003 */  lbu        $v0, 0x3($s1)
/* BC050 80105C90 24420030 */  addiu      $v0, $v0, 0x30
/* BC054 80105C94 0804171A */  j          .Lrace_80105C68
/* BC058 80105C98 A3A20015 */   sb        $v0, 0x15($sp)
.Lrace_80105C9C:
/* BC05C 80105C9C 26100001 */  addiu      $s0, $s0, 0x1
.Lrace_80105CA0:
/* BC060 80105CA0 2E020003 */  sltiu      $v0, $s0, 0x3
/* BC064 80105CA4 1440FFDD */  bnez       $v0, .Lrace_80105C1C
/* BC068 80105CA8 240D0001 */   addiu     $t5, $zero, 0x1
/* BC06C 80105CAC 8FA20020 */  lw         $v0, 0x20($sp)
/* BC070 80105CB0 14400007 */  bnez       $v0, .Lrace_80105CD0
/* BC074 80105CB4 3C078003 */   lui       $a3, %hi(D_8002FAB0)
/* BC078 80105CB8 8FA20024 */  lw         $v0, 0x24($sp)
/* BC07C 80105CBC 14400005 */  bnez       $v0, .Lrace_80105CD4
/* BC080 80105CC0 3C028003 */   lui       $v0, %hi(D_8002F2B0)
/* BC084 80105CC4 8FA20028 */  lw         $v0, 0x28($sp)
/* BC088 80105CC8 5040002A */  beql       $v0, $zero, .Lrace_80105D74
/* BC08C 80105CCC 26B50048 */   addiu     $s5, $s5, 0x48
.Lrace_80105CD0:
/* BC090 80105CD0 3C028003 */  lui        $v0, %hi(D_8002F2B0)
.Lrace_80105CD4:
/* BC094 80105CD4 2442F2B0 */  addiu      $v0, $v0, %lo(D_8002F2B0)
/* BC098 80105CD8 8CE6FAB0 */  lw         $a2, %lo(D_8002FAB0)($a3)
/* BC09C 80105CDC 8FA80020 */  lw         $t0, 0x20($sp)
/* BC0A0 80105CE0 8FA90024 */  lw         $t1, 0x24($sp)
/* BC0A4 80105CE4 8FA50028 */  lw         $a1, 0x28($sp)
/* BC0A8 80105CE8 24C60001 */  addiu      $a2, $a2, 0x1
/* BC0AC 80105CEC 30C603FF */  andi       $a2, $a2, 0x3FF
/* BC0B0 80105CF0 00062040 */  sll        $a0, $a2, 1
/* BC0B4 80105CF4 00822021 */  addu       $a0, $a0, $v0
/* BC0B8 80105CF8 01091821 */  addu       $v1, $t0, $t1
/* BC0BC 80105CFC 94820000 */  lhu        $v0, 0x0($a0)
/* BC0C0 80105D00 00651821 */  addu       $v1, $v1, $a1
/* BC0C4 80105D04 0043001B */  divu       $zero, $v0, $v1
/* BC0C8 80105D08 14600002 */  bnez       $v1, .Lrace_80105D14
/* BC0CC 80105D0C 00000000 */   nop
/* BC0D0 80105D10 0007000D */  break      7
.Lrace_80105D14:
/* BC0D4 80105D14 00008010 */  mfhi       $s0
/* BC0D8 80105D18 0208102B */  sltu       $v0, $s0, $t0
/* BC0DC 80105D1C 10400003 */  beqz       $v0, .Lrace_80105D2C
/* BC0E0 80105D20 ACE6FAB0 */   sw        $a2, %lo(D_8002FAB0)($a3)
/* BC0E4 80105D24 08041754 */  j          .Lrace_80105D50
/* BC0E8 80105D28 A3B60013 */   sb        $s6, 0x13($sp)
.Lrace_80105D2C:
/* BC0EC 80105D2C 02088023 */  subu       $s0, $s0, $t0
/* BC0F0 80105D30 0209102B */  sltu       $v0, $s0, $t1
/* BC0F4 80105D34 10400003 */  beqz       $v0, .Lrace_80105D44
/* BC0F8 80105D38 240A006D */   addiu     $t2, $zero, 0x6D
/* BC0FC 80105D3C 08041754 */  j          .Lrace_80105D50
/* BC100 80105D40 A3AA0013 */   sb        $t2, 0x13($sp)
.Lrace_80105D44:
/* BC104 80105D44 02098023 */  subu       $s0, $s0, $t1
/* BC108 80105D48 240B0073 */  addiu      $t3, $zero, 0x73
/* BC10C 80105D4C A3AB0013 */  sb         $t3, 0x13($sp)
.Lrace_80105D50:
/* BC110 80105D50 02752021 */  addu       $a0, $s3, $s5
/* BC114 80105D54 26020030 */  addiu      $v0, $s0, 0x30
/* BC118 80105D58 A3A20015 */  sb         $v0, 0x15($sp)
/* BC11C 80105D5C 8E620004 */  lw         $v0, 0x4($s3)
/* BC120 80105D60 8FA7005C */  lw         $a3, 0x5C($sp)
/* BC124 80105D64 8C46001C */  lw         $a2, 0x1C($v0)
/* BC128 80105D68 0C04C277 */  jal        func_race_801309DC
/* BC12C 80105D6C 27A50010 */   addiu     $a1, $sp, 0x10
.Lrace_80105D70:
/* BC130 80105D70 26B50048 */  addiu      $s5, $s5, 0x48
.Lrace_80105D74:
/* BC134 80105D74 2694005C */  addiu      $s4, $s4, 0x5C
/* BC138 80105D78 080416E3 */  j          .Lrace_80105B8C
/* BC13C 80105D7C 26520001 */   addiu     $s2, $s2, 0x1
.Lrace_80105D80:
/* BC140 80105D80 00009021 */  addu       $s2, $zero, $zero
/* BC144 80105D84 02401821 */  addu       $v1, $s2, $zero
.Lrace_80105D88:
/* BC148 80105D88 2E420006 */  sltiu      $v0, $s2, 0x6
/* BC14C 80105D8C 10400007 */  beqz       $v0, .Lrace_80105DAC
/* BC150 80105D90 00731021 */   addu      $v0, $v1, $s3
/* BC154 80105D94 8C4230E0 */  lw         $v0, 0x30E0($v0)
/* BC158 80105D98 54400001 */  bnel       $v0, $zero, .Lrace_80105DA0
/* BC15C 80105D9C 24170001 */   addiu     $s7, $zero, 0x1
.Lrace_80105DA0:
/* BC160 80105DA0 24630048 */  addiu      $v1, $v1, 0x48
/* BC164 80105DA4 08041762 */  j          .Lrace_80105D88
/* BC168 80105DA8 26520001 */   addiu     $s2, $s2, 0x1
.Lrace_80105DAC:
/* BC16C 80105DAC 16E00027 */  bnez       $s7, .Lrace_80105E4C
/* BC170 80105DB0 3C02800D */   lui       $v0, %hi(D_race_800CD898)
/* BC174 80105DB4 244BD898 */  addiu      $t3, $v0, %lo(D_race_800CD898)
/* BC178 80105DB8 8D6C0000 */  lw         $t4, 0x0($t3)
/* BC17C 80105DBC 856D0004 */  lh         $t5, 0x4($t3)
/* BC180 80105DC0 816A0006 */  lb         $t2, 0x6($t3)
/* BC184 80105DC4 AFAC0010 */  sw         $t4, 0x10($sp)
/* BC188 80105DC8 A7AD0014 */  sh         $t5, 0x14($sp)
/* BC18C 80105DCC A3AA0016 */  sb         $t2, 0x16($sp)
/* BC190 80105DD0 8E620004 */  lw         $v0, 0x4($s3)
/* BC194 80105DD4 8C42001C */  lw         $v0, 0x1C($v0)
/* BC198 80105DD8 10400004 */  beqz       $v0, .Lrace_80105DEC
/* BC19C 80105DDC 27A40010 */   addiu     $a0, $sp, 0x10
/* BC1A0 80105DE0 3C05800D */  lui        $a1, %hi(D_race_800CD8A0)
/* BC1A4 80105DE4 0804177D */  j          .Lrace_80105DF4
/* BC1A8 80105DE8 24A5D8A0 */   addiu     $a1, $a1, %lo(D_race_800CD8A0)
.Lrace_80105DEC:
/* BC1AC 80105DEC 3C05800D */  lui        $a1, %hi(D_race_800CD8A8)
/* BC1B0 80105DF0 24A5D8A8 */  addiu      $a1, $a1, %lo(D_race_800CD8A8)
.Lrace_80105DF4:
/* BC1B4 80105DF4 0C0006C8 */  jal        func_80001B20
/* BC1B8 80105DF8 00000000 */   nop
/* BC1BC 80105DFC 0C0018F2 */  jal        func_800063C8
/* BC1C0 80105E00 27A40010 */   addiu     $a0, $sp, 0x10
/* BC1C4 80105E04 1040000B */  beqz       $v0, .Lrace_80105E34
/* BC1C8 80105E08 2402006D */   addiu     $v0, $zero, 0x6D
/* BC1CC 80105E0C A3A20013 */  sb         $v0, 0x13($sp)
/* BC1D0 80105E10 0C0018F2 */  jal        func_800063C8
/* BC1D4 80105E14 27A40010 */   addiu     $a0, $sp, 0x10
/* BC1D8 80105E18 10400006 */  beqz       $v0, .Lrace_80105E34
/* BC1DC 80105E1C 24020073 */   addiu     $v0, $zero, 0x73
/* BC1E0 80105E20 A3A20013 */  sb         $v0, 0x13($sp)
/* BC1E4 80105E24 0C0018F2 */  jal        func_800063C8
/* BC1E8 80105E28 27A40010 */   addiu     $a0, $sp, 0x10
/* BC1EC 80105E2C 14400007 */  bnez       $v0, .Lrace_80105E4C
/* BC1F0 80105E30 00000000 */   nop
.Lrace_80105E34:
/* BC1F4 80105E34 266430DC */  addiu      $a0, $s3, 0x30DC
/* BC1F8 80105E38 8E620004 */  lw         $v0, 0x4($s3)
/* BC1FC 80105E3C 8FA7005C */  lw         $a3, 0x5C($sp)
/* BC200 80105E40 8C46001C */  lw         $a2, 0x1C($v0)
/* BC204 80105E44 0C04C277 */  jal        func_race_801309DC
/* BC208 80105E48 27A50010 */   addiu     $a1, $sp, 0x10
.Lrace_80105E4C:
/* BC20C 80105E4C 8FBF0054 */  lw         $ra, 0x54($sp)
/* BC210 80105E50 8FBE0050 */  lw         $fp, 0x50($sp)
/* BC214 80105E54 8FB7004C */  lw         $s7, 0x4C($sp)
/* BC218 80105E58 8FB60048 */  lw         $s6, 0x48($sp)
/* BC21C 80105E5C 8FB50044 */  lw         $s5, 0x44($sp)
/* BC220 80105E60 8FB40040 */  lw         $s4, 0x40($sp)
/* BC224 80105E64 8FB3003C */  lw         $s3, 0x3C($sp)
/* BC228 80105E68 8FB20038 */  lw         $s2, 0x38($sp)
/* BC22C 80105E6C 8FB10034 */  lw         $s1, 0x34($sp)
/* BC230 80105E70 8FB00030 */  lw         $s0, 0x30($sp)
/* BC234 80105E74 03E00008 */  jr         $ra
/* BC238 80105E78 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_race_80105E7C
/* BC23C 80105E7C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* BC240 80105E80 AFB20018 */  sw         $s2, 0x18($sp)
/* BC244 80105E84 00809021 */  addu       $s2, $a0, $zero
/* BC248 80105E88 AFB10014 */  sw         $s1, 0x14($sp)
/* BC24C 80105E8C 00008821 */  addu       $s1, $zero, $zero
/* BC250 80105E90 AFB00010 */  sw         $s0, 0x10($sp)
/* BC254 80105E94 241030DC */  addiu      $s0, $zero, 0x30DC
/* BC258 80105E98 AFBF001C */  sw         $ra, 0x1C($sp)
.Lrace_80105E9C:
/* BC25C 80105E9C 0C04C32E */  jal        func_race_80130CB8
/* BC260 80105EA0 02502021 */   addu      $a0, $s2, $s0
/* BC264 80105EA4 26310001 */  addiu      $s1, $s1, 0x1
/* BC268 80105EA8 2E220006 */  sltiu      $v0, $s1, 0x6
/* BC26C 80105EAC 1440FFFB */  bnez       $v0, .Lrace_80105E9C
/* BC270 80105EB0 26100048 */   addiu     $s0, $s0, 0x48
/* BC274 80105EB4 8FBF001C */  lw         $ra, 0x1C($sp)
/* BC278 80105EB8 8FB20018 */  lw         $s2, 0x18($sp)
/* BC27C 80105EBC 8FB10014 */  lw         $s1, 0x14($sp)
/* BC280 80105EC0 8FB00010 */  lw         $s0, 0x10($sp)
/* BC284 80105EC4 03E00008 */  jr         $ra
/* BC288 80105EC8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80105ECC
/* BC28C 80105ECC 27BDFE30 */  addiu      $sp, $sp, -0x1D0
/* BC290 80105ED0 AFB701C4 */  sw         $s7, 0x1C4($sp)
/* BC294 80105ED4 0080B821 */  addu       $s7, $a0, $zero
/* BC298 80105ED8 AFBF01CC */  sw         $ra, 0x1CC($sp)
/* BC29C 80105EDC AFBE01C8 */  sw         $fp, 0x1C8($sp)
/* BC2A0 80105EE0 AFB601C0 */  sw         $s6, 0x1C0($sp)
/* BC2A4 80105EE4 AFB501BC */  sw         $s5, 0x1BC($sp)
/* BC2A8 80105EE8 AFB401B8 */  sw         $s4, 0x1B8($sp)
/* BC2AC 80105EEC AFB301B4 */  sw         $s3, 0x1B4($sp)
/* BC2B0 80105EF0 AFB201B0 */  sw         $s2, 0x1B0($sp)
/* BC2B4 80105EF4 AFB101AC */  sw         $s1, 0x1AC($sp)
/* BC2B8 80105EF8 AFB001A8 */  sw         $s0, 0x1A8($sp)
/* BC2BC 80105EFC 92E201C8 */  lbu        $v0, 0x1C8($s7)
/* BC2C0 80105F00 10400009 */  beqz       $v0, .Lrace_80105F28
/* BC2C4 80105F04 00A0F021 */   addu      $fp, $a1, $zero
/* BC2C8 80105F08 26E427C8 */  addiu      $a0, $s7, 0x27C8
/* BC2CC 80105F0C 8EE20004 */  lw         $v0, 0x4($s7)
/* BC2D0 80105F10 26E501C8 */  addiu      $a1, $s7, 0x1C8
/* BC2D4 80105F14 8C46001C */  lw         $a2, 0x1C($v0)
/* BC2D8 80105F18 0C03C83C */  jal        func_race_800F20F0
/* BC2DC 80105F1C 03C03821 */   addu      $a3, $fp, $zero
/* BC2E0 80105F20 0C04256C */  jal        func_race_801095B0
/* BC2E4 80105F24 02E02021 */   addu      $a0, $s7, $zero
.Lrace_80105F28:
/* BC2E8 80105F28 3C053EE6 */  lui        $a1, (0x3EE66666 >> 16)
/* BC2EC 80105F2C 34A56666 */  ori        $a1, $a1, (0x3EE66666 & 0xFFFF)
/* BC2F0 80105F30 0C04245B */  jal        func_race_8010916C
/* BC2F4 80105F34 02E02021 */   addu      $a0, $s7, $zero
/* BC2F8 80105F38 8EE30378 */  lw         $v1, 0x378($s7)
/* BC2FC 80105F3C 8C6200EC */  lw         $v0, 0xEC($v1)
/* BC300 80105F40 00002821 */  addu       $a1, $zero, $zero
/* BC304 80105F44 844400A0 */  lh         $a0, 0xA0($v0)
/* BC308 80105F48 8C4200A4 */  lw         $v0, 0xA4($v0)
/* BC30C 80105F4C 0040F809 */  jalr       $v0
/* BC310 80105F50 00642021 */   addu      $a0, $v1, $a0
/* BC314 80105F54 AFA20010 */  sw         $v0, 0x10($sp)
/* BC318 80105F58 26E20139 */  addiu      $v0, $s7, 0x139
/* BC31C 80105F5C AFA20014 */  sw         $v0, 0x14($sp)
/* BC320 80105F60 8EE20004 */  lw         $v0, 0x4($s7)
/* BC324 80105F64 8C42001C */  lw         $v0, 0x1C($v0)
/* BC328 80105F68 26E42460 */  addiu      $a0, $s7, 0x2460
/* BC32C 80105F6C AFA20018 */  sw         $v0, 0x18($sp)
/* BC330 80105F70 8EE60010 */  lw         $a2, 0x10($s7)
/* BC334 80105F74 8EE70014 */  lw         $a3, 0x14($s7)
/* BC338 80105F78 0C010701 */  jal        func_80041C04
/* BC33C 80105F7C 24050004 */   addiu     $a1, $zero, 0x4
/* BC340 80105F80 3C053EF5 */  lui        $a1, (0x3EF5C28F >> 16)
/* BC344 80105F84 34A5C28F */  ori        $a1, $a1, (0x3EF5C28F & 0xFFFF)
/* BC348 80105F88 0C04245B */  jal        func_race_8010916C
/* BC34C 80105F8C 02E02021 */   addu      $a0, $s7, $zero
/* BC350 80105F90 26F027D0 */  addiu      $s0, $s7, 0x27D0
/* BC354 80105F94 02002021 */  addu       $a0, $s0, $zero
/* BC358 80105F98 0C0103FD */  jal        func_80040FF4
/* BC35C 80105F9C 24050002 */   addiu     $a1, $zero, 0x2
/* BC360 80105FA0 02002021 */  addu       $a0, $s0, $zero
/* BC364 80105FA4 240501F4 */  addiu      $a1, $zero, 0x1F4
/* BC368 80105FA8 24060001 */  addiu      $a2, $zero, 0x1
/* BC36C 80105FAC 00003821 */  addu       $a3, $zero, $zero
/* BC370 80105FB0 0C010435 */  jal        func_800410D4
/* BC374 80105FB4 AFA00010 */   sw        $zero, 0x10($sp)
/* BC378 80105FB8 26E4279C */  addiu      $a0, $s7, 0x279C
/* BC37C 80105FBC 8EE50014 */  lw         $a1, 0x14($s7)
/* BC380 80105FC0 8EE60010 */  lw         $a2, 0x10($s7)
/* BC384 80105FC4 0C034EFA */  jal        func_race_800D3BE8
/* BC388 80105FC8 24070006 */   addiu     $a3, $zero, 0x6
/* BC38C 80105FCC 3C053F02 */  lui        $a1, (0x3F028F5C >> 16)
/* BC390 80105FD0 34A58F5C */  ori        $a1, $a1, (0x3F028F5C & 0xFFFF)
/* BC394 80105FD4 0C04245B */  jal        func_race_8010916C
/* BC398 80105FD8 02E02021 */   addu      $a0, $s7, $zero
/* BC39C 80105FDC 24020004 */  addiu      $v0, $zero, 0x4
/* BC3A0 80105FE0 AFA20010 */  sw         $v0, 0x10($sp)
/* BC3A4 80105FE4 8EE50014 */  lw         $a1, 0x14($s7)
/* BC3A8 80105FE8 8EE60010 */  lw         $a2, 0x10($s7)
/* BC3AC 80105FEC 8EE70368 */  lw         $a3, 0x368($s7)
/* BC3B0 80105FF0 0C0348B0 */  jal        func_race_800D22C0
/* BC3B4 80105FF4 26E427A8 */   addiu     $a0, $s7, 0x27A8
/* BC3B8 80105FF8 02E02021 */  addu       $a0, $s7, $zero
/* BC3BC 80105FFC 0C0416D0 */  jal        func_race_80105B40
/* BC3C0 80106000 03C02821 */   addu      $a1, $fp, $zero
/* BC3C4 80106004 3C053F0A */  lui        $a1, (0x3F0A3D71 >> 16)
/* BC3C8 80106008 34A53D71 */  ori        $a1, $a1, (0x3F0A3D71 & 0xFFFF)
/* BC3CC 8010600C 0C04245B */  jal        func_race_8010916C
/* BC3D0 80106010 02E02021 */   addu      $a0, $s7, $zero
/* BC3D4 80106014 26E40390 */  addiu      $a0, $s7, 0x390
/* BC3D8 80106018 8EE20004 */  lw         $v0, 0x4($s7)
/* BC3DC 8010601C 26E50194 */  addiu      $a1, $s7, 0x194
/* BC3E0 80106020 8C46001C */  lw         $a2, 0x1C($v0)
/* BC3E4 80106024 0C0440AD */  jal        func_race_801102B4
/* BC3E8 80106028 03C03821 */   addu      $a3, $fp, $zero
/* BC3EC 8010602C 3C053F0F */  lui        $a1, (0x3F0F5C29 >> 16)
/* BC3F0 80106030 34A55C29 */  ori        $a1, $a1, (0x3F0F5C29 & 0xFFFF)
/* BC3F4 80106034 0C04245B */  jal        func_race_8010916C
/* BC3F8 80106038 02E02021 */   addu      $a0, $s7, $zero
/* BC3FC 8010603C 8EE20004 */  lw         $v0, 0x4($s7)
/* BC400 80106040 244500F2 */  addiu      $a1, $v0, 0xF2
/* BC404 80106044 10A00007 */  beqz       $a1, .Lrace_80106064
/* BC408 80106048 3C108003 */   lui       $s0, %hi(D_8002FB34)
/* BC40C 8010604C 2610FB34 */  addiu      $s0, $s0, %lo(D_8002FB34)
/* BC410 80106050 02002021 */  addu       $a0, $s0, $zero
/* BC414 80106054 0C000708 */  jal        func_80001C20
/* BC418 80106058 24060100 */   addiu     $a2, $zero, 0x100
/* BC41C 8010605C 0804181B */  j          .Lrace_8010606C
/* BC420 80106060 A20000FF */   sb        $zero, 0xFF($s0)
.Lrace_80106064:
/* BC424 80106064 3C028003 */  lui        $v0, %hi(D_8002FB34)
/* BC428 80106068 A040FB34 */  sb         $zero, %lo(D_8002FB34)($v0)
.Lrace_8010606C:
/* BC42C 8010606C 8EE20010 */  lw         $v0, 0x10($s7)
/* BC430 80106070 AFA200BC */  sw         $v0, 0xBC($sp)
/* BC434 80106074 8EE20014 */  lw         $v0, 0x14($s7)
/* BC438 80106078 AFA200B8 */  sw         $v0, 0xB8($sp)
/* BC43C 8010607C 8EE20368 */  lw         $v0, 0x368($s7)
/* BC440 80106080 AFA200C0 */  sw         $v0, 0xC0($sp)
/* BC444 80106084 8EE20384 */  lw         $v0, 0x384($s7)
/* BC448 80106088 AFA200C4 */  sw         $v0, 0xC4($sp)
/* BC44C 8010608C 8EE3038C */  lw         $v1, 0x38C($s7)
/* BC450 80106090 26E232D8 */  addiu      $v0, $s7, 0x32D8
/* BC454 80106094 AFA200CC */  sw         $v0, 0xCC($sp)
/* BC458 80106098 26E206B0 */  addiu      $v0, $s7, 0x6B0
/* BC45C 8010609C AFA200D0 */  sw         $v0, 0xD0($sp)
/* BC460 801060A0 26E22124 */  addiu      $v0, $s7, 0x2124
/* BC464 801060A4 AFA200D4 */  sw         $v0, 0xD4($sp)
/* BC468 801060A8 26E22460 */  addiu      $v0, $s7, 0x2460
/* BC46C 801060AC AFA200D8 */  sw         $v0, 0xD8($sp)
/* BC470 801060B0 26E227A8 */  addiu      $v0, $s7, 0x27A8
/* BC474 801060B4 AFA200DC */  sw         $v0, 0xDC($sp)
/* BC478 801060B8 26E2206C */  addiu      $v0, $s7, 0x206C
/* BC47C 801060BC AFA200E0 */  sw         $v0, 0xE0($sp)
/* BC480 801060C0 26E227B4 */  addiu      $v0, $s7, 0x27B4
/* BC484 801060C4 AFA200E4 */  sw         $v0, 0xE4($sp)
/* BC488 801060C8 26E227C8 */  addiu      $v0, $s7, 0x27C8
/* BC48C 801060CC AFA200F0 */  sw         $v0, 0xF0($sp)
/* BC490 801060D0 AFA300C8 */  sw         $v1, 0xC8($sp)
/* BC494 801060D4 8EE20004 */  lw         $v0, 0x4($s7)
/* BC498 801060D8 8C420024 */  lw         $v0, 0x24($v0)
/* BC49C 801060DC 00008021 */  addu       $s0, $zero, $zero
/* BC4A0 801060E0 AFA200F4 */  sw         $v0, 0xF4($sp)
/* BC4A4 801060E4 8EE20004 */  lw         $v0, 0x4($s7)
/* BC4A8 801060E8 24080002 */  addiu      $t0, $zero, 0x2
/* BC4AC 801060EC 8C420330 */  lw         $v0, 0x330($v0)
/* BC4B0 801060F0 27A40070 */  addiu      $a0, $sp, 0x70
/* BC4B4 801060F4 0048102B */  sltu       $v0, $v0, $t0
/* BC4B8 801060F8 AFA200E8 */  sw         $v0, 0xE8($sp)
/* BC4BC 801060FC 8EE3333C */  lw         $v1, 0x333C($s7)
/* BC4C0 80106100 26E230DC */  addiu      $v0, $s7, 0x30DC
/* BC4C4 80106104 AFA2008C */  sw         $v0, 0x8C($sp)
/* BC4C8 80106108 AFA300A8 */  sw         $v1, 0xA8($sp)
/* BC4CC 8010610C 8EE20004 */  lw         $v0, 0x4($s7)
/* BC4D0 80106110 240730DC */  addiu      $a3, $zero, 0x30DC
/* BC4D4 80106114 8C420104 */  lw         $v0, 0x104($v0)
/* BC4D8 80106118 02003021 */  addu       $a2, $s0, $zero
/* BC4DC 8010611C AFA20070 */  sw         $v0, 0x70($sp)
/* BC4E0 80106120 8EE2332C */  lw         $v0, 0x332C($s7)
/* BC4E4 80106124 24050108 */  addiu      $a1, $zero, 0x108
/* BC4E8 80106128 AFA200AC */  sw         $v0, 0xAC($sp)
/* BC4EC 8010612C 92E23320 */  lbu        $v0, 0x3320($s7)
/* BC4F0 80106130 02001821 */  addu       $v1, $s0, $zero
/* BC4F4 80106134 A3A200B0 */  sb         $v0, 0xB0($sp)
.Lrace_80106138:
/* BC4F8 80106138 8FA20070 */  lw         $v0, 0x70($sp)
/* BC4FC 8010613C 0202102B */  sltu       $v0, $s0, $v0
/* BC500 80106140 10400019 */  beqz       $v0, .Lrace_801061A8
/* BC504 80106144 00000000 */   nop
/* BC508 80106148 8EE20004 */  lw         $v0, 0x4($s7)
/* BC50C 8010614C 00451021 */  addu       $v0, $v0, $a1
/* BC510 80106150 AC820004 */  sw         $v0, 0x4($a0)
/* BC514 80106154 8EE20004 */  lw         $v0, 0x4($s7)
/* BC518 80106158 00431021 */  addu       $v0, $v0, $v1
/* BC51C 8010615C 8C420118 */  lw         $v0, 0x118($v0)
/* BC520 80106160 10480004 */  beq        $v0, $t0, .Lrace_80106174
/* BC524 80106164 00D71021 */   addu      $v0, $a2, $s7
/* BC528 80106168 8EE23328 */  lw         $v0, 0x3328($s7)
/* BC52C 8010616C 10400006 */  beqz       $v0, .Lrace_80106188
/* BC530 80106170 00D71021 */   addu      $v0, $a2, $s7
.Lrace_80106174:
/* BC534 80106174 8C4230E0 */  lw         $v0, 0x30E0($v0)
/* BC538 80106178 10400003 */  beqz       $v0, .Lrace_80106188
/* BC53C 8010617C 02E71021 */   addu      $v0, $s7, $a3
/* BC540 80106180 08041863 */  j          .Lrace_8010618C
/* BC544 80106184 AC820020 */   sw        $v0, 0x20($a0)
.Lrace_80106188:
/* BC548 80106188 AC800020 */  sw         $zero, 0x20($a0)
.Lrace_8010618C:
/* BC54C 8010618C 24840004 */  addiu      $a0, $a0, 0x4
/* BC550 80106190 24E70048 */  addiu      $a3, $a3, 0x48
/* BC554 80106194 24C60048 */  addiu      $a2, $a2, 0x48
/* BC558 80106198 24A5005C */  addiu      $a1, $a1, 0x5C
/* BC55C 8010619C 2463005C */  addiu      $v1, $v1, 0x5C
/* BC560 801061A0 0804184E */  j          .Lrace_80106138
/* BC564 801061A4 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_801061A8:
/* BC568 801061A8 8FB00070 */  lw         $s0, 0x70($sp)
/* BC56C 801061AC 2E020006 */  sltiu      $v0, $s0, 0x6
/* BC570 801061B0 10400008 */  beqz       $v0, .Lrace_801061D4
/* BC574 801061B4 27A30070 */   addiu     $v1, $sp, 0x70
/* BC578 801061B8 00101080 */  sll        $v0, $s0, 2
/* BC57C 801061BC 00431821 */  addu       $v1, $v0, $v1
.Lrace_801061C0:
/* BC580 801061C0 AC600004 */  sw         $zero, 0x4($v1)
/* BC584 801061C4 26100001 */  addiu      $s0, $s0, 0x1
/* BC588 801061C8 2E020006 */  sltiu      $v0, $s0, 0x6
/* BC58C 801061CC 1440FFFC */  bnez       $v0, .Lrace_801061C0
/* BC590 801061D0 24630004 */   addiu     $v1, $v1, 0x4
.Lrace_801061D4:
/* BC594 801061D4 26E40390 */  addiu      $a0, $s7, 0x390
/* BC598 801061D8 8EE20004 */  lw         $v0, 0x4($s7)
/* BC59C 801061DC 27A50070 */  addiu      $a1, $sp, 0x70
/* BC5A0 801061E0 8C47001C */  lw         $a3, 0x1C($v0)
/* BC5A4 801061E4 0C043E1B */  jal        func_race_8010F86C
/* BC5A8 801061E8 27A600B8 */   addiu     $a2, $sp, 0xB8
/* BC5AC 801061EC 13C00005 */  beqz       $fp, .Lrace_80106204
/* BC5B0 801061F0 3C05800D */   lui       $a1, %hi(D_race_800CD8B0)
/* BC5B4 801061F4 3C01800D */  lui        $at, %hi(D_race_800CD8B4)
/* BC5B8 801061F8 C420D8B4 */  lwc1       $f0, %lo(D_race_800CD8B4)($at)
/* BC5BC 801061FC 0804188A */  j          .Lrace_80106228
/* BC5C0 80106200 E6E00620 */   swc1      $f0, 0x620($s7)
.Lrace_80106204:
/* BC5C4 80106204 8EE40004 */  lw         $a0, 0x4($s7)
/* BC5C8 80106208 24A5D8B0 */  addiu      $a1, $a1, %lo(D_race_800CD8B0)
/* BC5CC 8010620C 0C0006A2 */  jal        func_80001A88
/* BC5D0 80106210 24840031 */   addiu     $a0, $a0, 0x31
/* BC5D4 80106214 14400004 */  bnez       $v0, .Lrace_80106228
/* BC5D8 80106218 00000000 */   nop
/* BC5DC 8010621C 3C01800D */  lui        $at, %hi(D_race_800CD8B8)
/* BC5E0 80106220 C420D8B8 */  lwc1       $f0, %lo(D_race_800CD8B8)($at)
/* BC5E4 80106224 E6E00620 */  swc1       $f0, 0x620($s7)
.Lrace_80106228:
/* BC5E8 80106228 3C053F19 */  lui        $a1, (0x3F19999A >> 16)
/* BC5EC 8010622C 34A5999A */  ori        $a1, $a1, (0x3F19999A & 0xFFFF)
/* BC5F0 80106230 0C04245B */  jal        func_race_8010916C
/* BC5F4 80106234 02E02021 */   addu      $a0, $s7, $zero
/* BC5F8 80106238 8EE20004 */  lw         $v0, 0x4($s7)
/* BC5FC 8010623C 244500E0 */  addiu      $a1, $v0, 0xE0
/* BC600 80106240 10A00007 */  beqz       $a1, .Lrace_80106260
/* BC604 80106244 3C108003 */   lui       $s0, %hi(D_8002FB34)
/* BC608 80106248 2610FB34 */  addiu      $s0, $s0, %lo(D_8002FB34)
/* BC60C 8010624C 02002021 */  addu       $a0, $s0, $zero
/* BC610 80106250 0C000708 */  jal        func_80001C20
/* BC614 80106254 24060100 */   addiu     $a2, $zero, 0x100
/* BC618 80106258 0804189A */  j          .Lrace_80106268
/* BC61C 8010625C A20000FF */   sb        $zero, 0xFF($s0)
.Lrace_80106260:
/* BC620 80106260 3C028003 */  lui        $v0, %hi(D_8002FB34)
/* BC624 80106264 A040FB34 */  sb         $zero, %lo(D_8002FB34)($v0)
.Lrace_80106268:
/* BC628 80106268 00009021 */  addu       $s2, $zero, $zero
/* BC62C 8010626C 26F60390 */  addiu      $s6, $s7, 0x390
/* BC630 80106270 0240A821 */  addu       $s5, $s2, $zero
/* BC634 80106274 0240A021 */  addu       $s4, $s2, $zero
/* BC638 80106278 24132AA8 */  addiu      $s3, $zero, 0x2AA8
/* BC63C 8010627C 02E08821 */  addu       $s1, $s7, $zero
.Lrace_80106280:
/* BC640 80106280 8EE30004 */  lw         $v1, 0x4($s7)
/* BC644 80106284 8C620104 */  lw         $v0, 0x104($v1)
/* BC648 80106288 0242102B */  sltu       $v0, $s2, $v0
/* BC64C 8010628C 10400029 */  beqz       $v0, .Lrace_80106334
/* BC650 80106290 00741021 */   addu      $v0, $v1, $s4
/* BC654 80106294 8C420118 */  lw         $v0, 0x118($v0)
/* BC658 80106298 54400020 */  bnel       $v0, $zero, .Lrace_8010631C
/* BC65C 8010629C 26B50E2C */   addiu     $s5, $s5, 0xE2C
/* BC660 801062A0 02F38021 */  addu       $s0, $s7, $s3
/* BC664 801062A4 02002021 */  addu       $a0, $s0, $zero
/* BC668 801062A8 8EC50140 */  lw         $a1, 0x140($s6)
/* BC66C 801062AC 26730150 */  addiu      $s3, $s3, 0x150
/* BC670 801062B0 00B52821 */  addu       $a1, $a1, $s5
/* BC674 801062B4 0C03F217 */  jal        func_race_800FC85C
/* BC678 801062B8 AE2506A8 */   sw        $a1, 0x6A8($s1)
/* BC67C 801062BC 02002821 */  addu       $a1, $s0, $zero
/* BC680 801062C0 8E2406A8 */  lw         $a0, 0x6A8($s1)
/* BC684 801062C4 0C042AD8 */  jal        func_race_8010AB60
/* BC688 801062C8 00003021 */   addu      $a2, $zero, $zero
/* BC68C 801062CC 8E2406A8 */  lw         $a0, 0x6A8($s1)
/* BC690 801062D0 8EE20004 */  lw         $v0, 0x4($s7)
/* BC694 801062D4 8EE6332C */  lw         $a2, 0x332C($s7)
/* BC698 801062D8 8C45039C */  lw         $a1, 0x39C($v0)
/* BC69C 801062DC 0C04391A */  jal        func_race_8010E468
/* BC6A0 801062E0 26310004 */   addiu     $s1, $s1, 0x4
/* BC6A4 801062E4 3C053F80 */  lui        $a1, (0x3F800000 >> 16)
/* BC6A8 801062E8 0C03F31E */  jal        func_race_800FCC78
/* BC6AC 801062EC 02002021 */   addu      $a0, $s0, $zero
/* BC6B0 801062F0 02002021 */  addu       $a0, $s0, $zero
/* BC6B4 801062F4 0C03F266 */  jal        func_race_800FC998
/* BC6B8 801062F8 00002821 */   addu      $a1, $zero, $zero
/* BC6BC 801062FC 02002021 */  addu       $a0, $s0, $zero
/* BC6C0 80106300 0C03F258 */  jal        func_race_800FC960
/* BC6C4 80106304 26E501F8 */   addiu     $a1, $s7, 0x1F8
/* BC6C8 80106308 02002021 */  addu       $a0, $s0, $zero
/* BC6CC 8010630C 26E50204 */  addiu      $a1, $s7, 0x204
/* BC6D0 80106310 0C03F23A */  jal        func_race_800FC8E8
/* BC6D4 80106314 26E60210 */   addiu     $a2, $s7, 0x210
/* BC6D8 80106318 26B50E2C */  addiu      $s5, $s5, 0xE2C
.Lrace_8010631C:
/* BC6DC 8010631C 2694005C */  addiu      $s4, $s4, 0x5C
/* BC6E0 80106320 26520001 */  addiu      $s2, $s2, 0x1
/* BC6E4 80106324 92E33320 */  lbu        $v1, 0x3320($s7)
/* BC6E8 80106328 3C028013 */  lui        $v0, %hi(D_race_80132258)
/* BC6EC 8010632C 080418A0 */  j          .Lrace_80106280
/* BC6F0 80106330 AC432258 */   sw        $v1, %lo(D_race_80132258)($v0)
.Lrace_80106334:
/* BC6F4 80106334 8EE23328 */  lw         $v0, 0x3328($s7)
/* BC6F8 80106338 10400009 */  beqz       $v0, .Lrace_80106360
/* BC6FC 8010633C 26F00390 */   addiu     $s0, $s7, 0x390
/* BC700 80106340 8E040140 */  lw         $a0, 0x140($s0)
/* BC704 80106344 0C04383F */  jal        func_race_8010E0FC
/* BC708 80106348 00000000 */   nop
/* BC70C 8010634C 8E040140 */  lw         $a0, 0x140($s0)
/* BC710 80106350 8C820D04 */  lw         $v0, 0xD04($a0)
/* BC714 80106354 3C030080 */  lui        $v1, (0x800000 >> 16)
/* BC718 80106358 00431025 */  or         $v0, $v0, $v1
/* BC71C 8010635C AC820D04 */  sw         $v0, 0xD04($a0)
.Lrace_80106360:
/* BC720 80106360 8EE2332C */  lw         $v0, 0x332C($s7)
/* BC724 80106364 54400003 */  bnel       $v0, $zero, .Lrace_80106374
/* BC728 80106368 AEE00500 */   sw        $zero, 0x500($s7)
/* BC72C 8010636C 8EE206A8 */  lw         $v0, 0x6A8($s7)
/* BC730 80106370 AEE20500 */  sw         $v0, 0x500($s7)
.Lrace_80106374:
/* BC734 80106374 26F10390 */  addiu      $s1, $s7, 0x390
/* BC738 80106378 8EE50014 */  lw         $a1, 0x14($s7)
/* BC73C 8010637C 8EE60010 */  lw         $a2, 0x10($s7)
/* BC740 80106380 0C04414F */  jal        func_race_8011053C
/* BC744 80106384 02202021 */   addu      $a0, $s1, $zero
/* BC748 80106388 3C053F33 */  lui        $a1, (0x3F333333 >> 16)
/* BC74C 8010638C 34A53333 */  ori        $a1, $a1, (0x3F333333 & 0xFFFF)
/* BC750 80106390 0C04245B */  jal        func_race_8010916C
/* BC754 80106394 02E02021 */   addu      $a0, $s7, $zero
/* BC758 80106398 3C028008 */  lui        $v0, %hi(D_80082810)
/* BC75C 8010639C 8C442810 */  lw         $a0, %lo(D_80082810)($v0)
/* BC760 801063A0 3C028008 */  lui        $v0, %hi(D_80087320)
/* BC764 801063A4 8C557320 */  lw         $s5, %lo(D_80087320)($v0)
/* BC768 801063A8 0C01E693 */  jal        func_80079A4C
/* BC76C 801063AC 00000000 */   nop
/* BC770 801063B0 8EE20004 */  lw         $v0, 0x4($s7)
/* BC774 801063B4 8C440104 */  lw         $a0, 0x104($v0)
/* BC778 801063B8 8C420330 */  lw         $v0, 0x330($v0)
/* BC77C 801063BC 8EE3332C */  lw         $v1, 0x332C($s7)
/* BC780 801063C0 14600028 */  bnez       $v1, .Lrace_80106464
/* BC784 801063C4 00823023 */   subu      $a2, $a0, $v0
/* BC788 801063C8 18C00026 */  blez       $a2, .Lrace_80106464
/* BC78C 801063CC 3C078013 */   lui       $a3, %hi(D_race_80132200)
/* BC790 801063D0 26E43340 */  addiu      $a0, $s7, 0x3340
/* BC794 801063D4 24E72200 */  addiu      $a3, $a3, %lo(D_race_80132200)
/* BC798 801063D8 00008021 */  addu       $s0, $zero, $zero
/* BC79C 801063DC 02009021 */  addu       $s2, $s0, $zero
/* BC7A0 801063E0 0220A021 */  addu       $s4, $s1, $zero
/* BC7A4 801063E4 02009821 */  addu       $s3, $s0, $zero
/* BC7A8 801063E8 3C028013 */  lui        $v0, %hi(D_race_80132208)
/* BC7AC 801063EC 3C01800D */  lui        $at, %hi(D_race_800CD8BC)
/* BC7B0 801063F0 C420D8BC */  lwc1       $f0, %lo(D_race_800CD8BC)($at)
/* BC7B4 801063F4 24422208 */  addiu      $v0, $v0, %lo(D_race_80132208)
/* BC7B8 801063F8 AFA20010 */  sw         $v0, 0x10($sp)
/* BC7BC 801063FC 24020002 */  addiu      $v0, $zero, 0x2
/* BC7C0 80106400 AFA20014 */  sw         $v0, 0x14($sp)
/* BC7C4 80106404 24020001 */  addiu      $v0, $zero, 0x1
/* BC7C8 80106408 AFA20018 */  sw         $v0, 0x18($sp)
/* BC7CC 8010640C E7A0001C */  swc1       $f0, 0x1C($sp)
/* BC7D0 80106410 8EE50010 */  lw         $a1, 0x10($s7)
/* BC7D4 80106414 0C03967E */  jal        func_race_800E59F8
/* BC7D8 80106418 02008821 */   addu      $s1, $s0, $zero
.Lrace_8010641C:
/* BC7DC 8010641C 8EE30004 */  lw         $v1, 0x4($s7)
/* BC7E0 80106420 8C620104 */  lw         $v0, 0x104($v1)
/* BC7E4 80106424 0242102B */  sltu       $v0, $s2, $v0
/* BC7E8 80106428 1040000E */  beqz       $v0, .Lrace_80106464
/* BC7EC 8010642C 00711021 */   addu      $v0, $v1, $s1
/* BC7F0 80106430 8C420118 */  lw         $v0, 0x118($v0)
/* BC7F4 80106434 10400007 */  beqz       $v0, .Lrace_80106454
/* BC7F8 80106438 02002821 */   addu      $a1, $s0, $zero
/* BC7FC 8010643C 26100001 */  addiu      $s0, $s0, 0x1
/* BC800 80106440 8E860140 */  lw         $a2, 0x140($s4)
/* BC804 80106444 26E43340 */  addiu      $a0, $s7, 0x3340
/* BC808 80106448 00D33021 */  addu       $a2, $a2, $s3
/* BC80C 8010644C 0C0396A1 */  jal        func_race_800E5A84
/* BC810 80106450 24C6001C */   addiu     $a2, $a2, 0x1C
.Lrace_80106454:
/* BC814 80106454 26730E2C */  addiu      $s3, $s3, 0xE2C
/* BC818 80106458 2631005C */  addiu      $s1, $s1, 0x5C
/* BC81C 8010645C 08041907 */  j          .Lrace_8010641C
/* BC820 80106460 26520001 */   addiu     $s2, $s2, 0x1
.Lrace_80106464:
/* BC824 80106464 3C053F3A */  lui        $a1, (0x3F3AE148 >> 16)
/* BC828 80106468 34A5E148 */  ori        $a1, $a1, (0x3F3AE148 & 0xFFFF)
/* BC82C 8010646C 0C04245B */  jal        func_race_8010916C
/* BC830 80106470 02E02021 */   addu      $a0, $s7, $zero
/* BC834 80106474 0C01E693 */  jal        func_80079A4C
/* BC838 80106478 02A02021 */   addu      $a0, $s5, $zero
/* BC83C 8010647C 26E20069 */  addiu      $v0, $s7, 0x69
/* BC840 80106480 AFA20010 */  sw         $v0, 0x10($sp)
/* BC844 80106484 8EE20004 */  lw         $v0, 0x4($s7)
/* BC848 80106488 26F22F64 */  addiu      $s2, $s7, 0x2F64
/* BC84C 8010648C 8C42001C */  lw         $v0, 0x1C($v0)
/* BC850 80106490 02402021 */  addu       $a0, $s2, $zero
/* BC854 80106494 AFA20014 */  sw         $v0, 0x14($sp)
/* BC858 80106498 8EE50014 */  lw         $a1, 0x14($s7)
/* BC85C 8010649C 8EE60010 */  lw         $a2, 0x10($s7)
/* BC860 801064A0 0C03C203 */  jal        func_race_800F080C
/* BC864 801064A4 26E701A1 */   addiu     $a3, $s7, 0x1A1
/* BC868 801064A8 3C053F40 */  lui        $a1, (0x3F400000 >> 16)
/* BC86C 801064AC 0C04245B */  jal        func_race_8010916C
/* BC870 801064B0 02E02021 */   addu      $a0, $s7, $zero
/* BC874 801064B4 92E201E2 */  lbu        $v0, 0x1E2($s7)
/* BC878 801064B8 10400006 */  beqz       $v0, .Lrace_801064D4
/* BC87C 801064BC 26E501E2 */   addiu     $a1, $s7, 0x1E2
/* BC880 801064C0 26E427D8 */  addiu      $a0, $s7, 0x27D8
/* BC884 801064C4 8EE20004 */  lw         $v0, 0x4($s7)
/* BC888 801064C8 8C46001C */  lw         $a2, 0x1C($v0)
/* BC88C 801064CC 0C04B639 */  jal        func_race_8012D8E4
/* BC890 801064D0 03C03821 */   addu      $a3, $fp, $zero
.Lrace_801064D4:
/* BC894 801064D4 26F032D8 */  addiu      $s0, $s7, 0x32D8
/* BC898 801064D8 8EE20364 */  lw         $v0, 0x364($s7)
/* BC89C 801064DC 26F3211C */  addiu      $s3, $s7, 0x211C
/* BC8A0 801064E0 AFA200F8 */  sw         $v0, 0xF8($sp)
/* BC8A4 801064E4 8EE2036C */  lw         $v0, 0x36C($s7)
/* BC8A8 801064E8 26F12460 */  addiu      $s1, $s7, 0x2460
/* BC8AC 801064EC AFA200FC */  sw         $v0, 0xFC($sp)
/* BC8B0 801064F0 8EE20374 */  lw         $v0, 0x374($s7)
/* BC8B4 801064F4 27A500F8 */  addiu      $a1, $sp, 0xF8
/* BC8B8 801064F8 AFA20100 */  sw         $v0, 0x100($sp)
/* BC8BC 801064FC 8EE30378 */  lw         $v1, 0x378($s7)
/* BC8C0 80106500 26E22124 */  addiu      $v0, $s7, 0x2124
/* BC8C4 80106504 AFA20110 */  sw         $v0, 0x110($sp)
/* BC8C8 80106508 26E227D8 */  addiu      $v0, $s7, 0x27D8
/* BC8CC 8010650C AFA2011C */  sw         $v0, 0x11C($sp)
/* BC8D0 80106510 26E20105 */  addiu      $v0, $s7, 0x105
/* BC8D4 80106514 AFB00108 */  sw         $s0, 0x108($sp)
/* BC8D8 80106518 AFB3010C */  sw         $s3, 0x10C($sp)
/* BC8DC 8010651C AFB10114 */  sw         $s1, 0x114($sp)
/* BC8E0 80106520 AFB20118 */  sw         $s2, 0x118($sp)
/* BC8E4 80106524 AFA20120 */  sw         $v0, 0x120($sp)
/* BC8E8 80106528 AFA30104 */  sw         $v1, 0x104($sp)
/* BC8EC 8010652C 8EE20004 */  lw         $v0, 0x4($s7)
/* BC8F0 80106530 26F2206C */  addiu      $s2, $s7, 0x206C
/* BC8F4 80106534 8C42001C */  lw         $v0, 0x1C($v0)
/* BC8F8 80106538 02402021 */  addu       $a0, $s2, $zero
/* BC8FC 8010653C AFBE0128 */  sw         $fp, 0x128($sp)
/* BC900 80106540 0C035BF4 */  jal        func_race_800D6FD0
/* BC904 80106544 AFA20124 */   sw        $v0, 0x124($sp)
/* BC908 80106548 3C053F45 */  lui        $a1, (0x3F451EB8 >> 16)
/* BC90C 8010654C 34A51EB8 */  ori        $a1, $a1, (0x3F451EB8 & 0xFFFF)
/* BC910 80106550 0C04245B */  jal        func_race_8010916C
/* BC914 80106554 02E02021 */   addu      $a0, $s7, $zero
/* BC918 80106558 26F50480 */  addiu      $s5, $s7, 0x480
/* BC91C 8010655C AFB50130 */  sw         $s5, 0x130($sp)
/* BC920 80106560 8EE20004 */  lw         $v0, 0x4($s7)
/* BC924 80106564 AFB00138 */  sw         $s0, 0x138($sp)
/* BC928 80106568 AFB2013C */  sw         $s2, 0x13C($sp)
/* BC92C 8010656C AFA20134 */  sw         $v0, 0x134($sp)
/* BC930 80106570 8EE20364 */  lw         $v0, 0x364($s7)
/* BC934 80106574 02602021 */  addu       $a0, $s3, $zero
/* BC938 80106578 AFA20140 */  sw         $v0, 0x140($sp)
/* BC93C 8010657C 8EE2036C */  lw         $v0, 0x36C($s7)
/* BC940 80106580 26F427B4 */  addiu      $s4, $s7, 0x27B4
/* BC944 80106584 AFA20144 */  sw         $v0, 0x144($sp)
/* BC948 80106588 8EE20374 */  lw         $v0, 0x374($s7)
/* BC94C 8010658C 26F00390 */  addiu      $s0, $s7, 0x390
/* BC950 80106590 AFB1014C */  sw         $s1, 0x14C($sp)
/* BC954 80106594 AFA20148 */  sw         $v0, 0x148($sp)
/* BC958 80106598 8EE20368 */  lw         $v0, 0x368($s7)
/* BC95C 8010659C 26F3328C */  addiu      $s3, $s7, 0x328C
/* BC960 801065A0 AFA20150 */  sw         $v0, 0x150($sp)
/* BC964 801065A4 8EE20010 */  lw         $v0, 0x10($s7)
/* BC968 801065A8 26F606B0 */  addiu      $s6, $s7, 0x6B0
/* BC96C 801065AC AFA20154 */  sw         $v0, 0x154($sp)
/* BC970 801065B0 8EE30014 */  lw         $v1, 0x14($s7)
/* BC974 801065B4 26E2279C */  addiu      $v0, $s7, 0x279C
/* BC978 801065B8 AFB4015C */  sw         $s4, 0x15C($sp)
/* BC97C 801065BC AFB00160 */  sw         $s0, 0x160($sp)
/* BC980 801065C0 AFB30164 */  sw         $s3, 0x164($sp)
/* BC984 801065C4 AFB60168 */  sw         $s6, 0x168($sp)
/* BC988 801065C8 AFA2016C */  sw         $v0, 0x16C($sp)
/* BC98C 801065CC AFBE0170 */  sw         $fp, 0x170($sp)
/* BC990 801065D0 AFA30158 */  sw         $v1, 0x158($sp)
/* BC994 801065D4 8EE20004 */  lw         $v0, 0x4($s7)
/* BC998 801065D8 27A50130 */  addiu      $a1, $sp, 0x130
/* BC99C 801065DC 8C47001C */  lw         $a3, 0x1C($v0)
/* BC9A0 801065E0 0C03A221 */  jal        func_race_800E8884
/* BC9A4 801065E4 26E601BB */   addiu     $a2, $s7, 0x1BB
/* BC9A8 801065E8 3C053F4C */  lui        $a1, (0x3F4CCCCD >> 16)
/* BC9AC 801065EC 34A5CCCD */  ori        $a1, $a1, (0x3F4CCCCD & 0xFFFF)
/* BC9B0 801065F0 0C04245B */  jal        func_race_8010916C
/* BC9B4 801065F4 02E02021 */   addu      $a0, $s7, $zero
/* BC9B8 801065F8 26F1329C */  addiu      $s1, $s7, 0x329C
/* BC9BC 801065FC 02202021 */  addu       $a0, $s1, $zero
/* BC9C0 80106600 8EE50374 */  lw         $a1, 0x374($s7)
/* BC9C4 80106604 0C035725 */  jal        func_race_800D5C94
/* BC9C8 80106608 02003021 */   addu      $a2, $s0, $zero
/* BC9CC 8010660C 02602021 */  addu       $a0, $s3, $zero
/* BC9D0 80106610 26E600AA */  addiu      $a2, $s7, 0xAA
/* BC9D4 80106614 AFB40010 */  sw         $s4, 0x10($sp)
/* BC9D8 80106618 8EE50374 */  lw         $a1, 0x374($s7)
/* BC9DC 8010661C 0C03C9E2 */  jal        func_race_800F2788
/* BC9E0 80106620 02403821 */   addu      $a3, $s2, $zero
/* BC9E4 80106624 26E42054 */  addiu      $a0, $s7, 0x2054
/* BC9E8 80106628 02002821 */  addu       $a1, $s0, $zero
/* BC9EC 8010662C 8EE30374 */  lw         $v1, 0x374($s7)
/* BC9F0 80106630 26E200F8 */  addiu      $v0, $s7, 0xF8
/* BC9F4 80106634 AFB10014 */  sw         $s1, 0x14($sp)
/* BC9F8 80106638 AFA20018 */  sw         $v0, 0x18($sp)
/* BC9FC 8010663C AFA30010 */  sw         $v1, 0x10($sp)
/* BCA00 80106640 8EE20004 */  lw         $v0, 0x4($s7)
/* BCA04 80106644 02403021 */  addu       $a2, $s2, $zero
/* BCA08 80106648 8C42001C */  lw         $v0, 0x1C($v0)
/* BCA0C 8010664C 02C03821 */  addu       $a3, $s6, $zero
/* BCA10 80106650 AFBE0020 */  sw         $fp, 0x20($sp)
/* BCA14 80106654 0C0376A8 */  jal        func_race_800DDAA0
/* BCA18 80106658 AFA2001C */   sw        $v0, 0x1C($sp)
/* BCA1C 8010665C 3C053F57 */  lui        $a1, (0x3F570A3D >> 16)
/* BCA20 80106660 34A50A3D */  ori        $a1, $a1, (0x3F570A3D & 0xFFFF)
/* BCA24 80106664 0C04245B */  jal        func_race_8010916C
/* BCA28 80106668 02E02021 */   addu      $a0, $s7, $zero
/* BCA2C 8010666C 26E420FC */  addiu      $a0, $s7, 0x20FC
/* BCA30 80106670 02A02821 */  addu       $a1, $s5, $zero
/* BCA34 80106674 8EE20004 */  lw         $v0, 0x4($s7)
/* BCA38 80106678 02403021 */  addu       $a2, $s2, $zero
/* BCA3C 8010667C 8C42001C */  lw         $v0, 0x1C($v0)
/* BCA40 80106680 26E70112 */  addiu      $a3, $s7, 0x112
/* BCA44 80106684 AFBE0014 */  sw         $fp, 0x14($sp)
/* BCA48 80106688 0C037D95 */  jal        func_race_800DF654
/* BCA4C 8010668C AFA20010 */   sw        $v0, 0x10($sp)
/* BCA50 80106690 3C053F5C */  lui        $a1, (0x3F5C28F6 >> 16)
/* BCA54 80106694 34A528F6 */  ori        $a1, $a1, (0x3F5C28F6 & 0xFFFF)
/* BCA58 80106698 0C04245B */  jal        func_race_8010916C
/* BCA5C 8010669C 02E02021 */   addu      $a0, $s7, $zero
/* BCA60 801066A0 26E42110 */  addiu      $a0, $s7, 0x2110
/* BCA64 801066A4 02A02821 */  addu       $a1, $s5, $zero
/* BCA68 801066A8 8EE20004 */  lw         $v0, 0x4($s7)
/* BCA6C 801066AC 02403021 */  addu       $a2, $s2, $zero
/* BCA70 801066B0 8C42001C */  lw         $v0, 0x1C($v0)
/* BCA74 801066B4 26E7011F */  addiu      $a3, $s7, 0x11F
/* BCA78 801066B8 0C037BA6 */  jal        func_race_800DEE98
/* BCA7C 801066BC AFA20010 */   sw        $v0, 0x10($sp)
/* BCA80 801066C0 3C053F61 */  lui        $a1, (0x3F6147AE >> 16)
/* BCA84 801066C4 34A547AE */  ori        $a1, $a1, (0x3F6147AE & 0xFFFF)
/* BCA88 801066C8 0C04245B */  jal        func_race_8010916C
/* BCA8C 801066CC 02E02021 */   addu      $a0, $s7, $zero
/* BCA90 801066D0 8EE30378 */  lw         $v1, 0x378($s7)
/* BCA94 801066D4 10600015 */  beqz       $v1, .Lrace_8010672C
/* BCA98 801066D8 00009821 */   addu      $s3, $zero, $zero
/* BCA9C 801066DC 8C620010 */  lw         $v0, 0x10($v1)
/* BCAA0 801066E0 2C420002 */  sltiu      $v0, $v0, 0x2
/* BCAA4 801066E4 14400012 */  bnez       $v0, .Lrace_80106730
/* BCAA8 801066E8 00009021 */   addu      $s2, $zero, $zero
/* BCAAC 801066EC 8C6200EC */  lw         $v0, 0xEC($v1)
/* BCAB0 801066F0 24050001 */  addiu      $a1, $zero, 0x1
/* BCAB4 801066F4 84440068 */  lh         $a0, 0x68($v0)
/* BCAB8 801066F8 8C42006C */  lw         $v0, 0x6C($v0)
/* BCABC 801066FC 0040F809 */  jalr       $v0
/* BCAC0 80106700 00642021 */   addu      $a0, $v1, $a0
/* BCAC4 80106704 00401821 */  addu       $v1, $v0, $zero
/* BCAC8 80106708 10600009 */  beqz       $v1, .Lrace_80106730
/* BCACC 8010670C 00009021 */   addu      $s2, $zero, $zero
/* BCAD0 80106710 8C620008 */  lw         $v0, 0x8($v1)
/* BCAD4 80106714 02602821 */  addu       $a1, $s3, $zero
/* BCAD8 80106718 84440058 */  lh         $a0, 0x58($v0)
/* BCADC 8010671C 8C42005C */  lw         $v0, 0x5C($v0)
/* BCAE0 80106720 0040F809 */  jalr       $v0
/* BCAE4 80106724 00642021 */   addu      $a0, $v1, $a0
/* BCAE8 80106728 00409821 */  addu       $s3, $v0, $zero
.Lrace_8010672C:
/* BCAEC 8010672C 00009021 */  addu       $s2, $zero, $zero
.Lrace_80106730:
/* BCAF0 80106730 26F60390 */  addiu      $s6, $s7, 0x390
/* BCAF4 80106734 26F530C8 */  addiu      $s5, $s7, 0x30C8
/* BCAF8 80106738 26F432D8 */  addiu      $s4, $s7, 0x32D8
/* BCAFC 8010673C 24112810 */  addiu      $s1, $zero, 0x2810
.Lrace_80106740:
/* BCB00 80106740 8EE22F60 */  lw         $v0, 0x2F60($s7)
/* BCB04 80106744 AFB60014 */  sw         $s6, 0x14($sp)
/* BCB08 80106748 AFA20010 */  sw         $v0, 0x10($sp)
/* BCB0C 8010674C 8EE2333C */  lw         $v0, 0x333C($s7)
/* BCB10 80106750 AFB5001C */  sw         $s5, 0x1C($sp)
/* BCB14 80106754 AFB40020 */  sw         $s4, 0x20($sp)
/* BCB18 80106758 AFA20018 */  sw         $v0, 0x18($sp)
/* BCB1C 8010675C 8EE2333C */  lw         $v0, 0x333C($s7)
/* BCB20 80106760 02F18021 */  addu       $s0, $s7, $s1
/* BCB24 80106764 0002102B */  sltu       $v0, $zero, $v0
/* BCB28 80106768 AFA20024 */  sw         $v0, 0x24($sp)
/* BCB2C 8010676C 8EE23334 */  lw         $v0, 0x3334($s7)
/* BCB30 80106770 02002021 */  addu       $a0, $s0, $zero
/* BCB34 80106774 AFA20028 */  sw         $v0, 0x28($sp)
/* BCB38 80106778 8EE50014 */  lw         $a1, 0x14($s7)
/* BCB3C 8010677C 8EE62D48 */  lw         $a2, 0x2D48($s7)
/* BCB40 80106780 0C03E625 */  jal        func_race_800F9894
/* BCB44 80106784 26E72D54 */   addiu     $a3, $s7, 0x2D54
/* BCB48 80106788 8EE20004 */  lw         $v0, 0x4($s7)
/* BCB4C 8010678C 26310140 */  addiu      $s1, $s1, 0x140
/* BCB50 80106790 8C4512B4 */  lw         $a1, 0x12B4($v0)
/* BCB54 80106794 8C4612B8 */  lw         $a2, 0x12B8($v0)
/* BCB58 80106798 0C03E7B3 */  jal        func_race_800F9ECC
/* BCB5C 8010679C 02002021 */   addu      $a0, $s0, $zero
/* BCB60 801067A0 C6E02A94 */  lwc1       $f0, 0x2A94($s7)
/* BCB64 801067A4 26520001 */  addiu      $s2, $s2, 0x1
/* BCB68 801067A8 E7A00010 */  swc1       $f0, 0x10($sp)
/* BCB6C 801067AC C6E02A9C */  lwc1       $f0, 0x2A9C($s7)
/* BCB70 801067B0 02002021 */  addu       $a0, $s0, $zero
/* BCB74 801067B4 AFBE0018 */  sw         $fp, 0x18($sp)
/* BCB78 801067B8 E7A00014 */  swc1       $f0, 0x14($sp)
/* BCB7C 801067BC 8EE62A90 */  lw         $a2, 0x2A90($s7)
/* BCB80 801067C0 8EE72A98 */  lw         $a3, 0x2A98($s7)
/* BCB84 801067C4 0C03E7D1 */  jal        func_race_800F9F44
/* BCB88 801067C8 02602821 */   addu      $a1, $s3, $zero
/* BCB8C 801067CC 2E420002 */  sltiu      $v0, $s2, 0x2
/* BCB90 801067D0 1440FFDB */  bnez       $v0, .Lrace_80106740
/* BCB94 801067D4 00000000 */   nop
/* BCB98 801067D8 8EE2332C */  lw         $v0, 0x332C($s7)
/* BCB9C 801067DC 10400014 */  beqz       $v0, .Lrace_80106830
/* BCBA0 801067E0 26F02810 */   addiu     $s0, $s7, 0x2810
/* BCBA4 801067E4 8EE506A8 */  lw         $a1, 0x6A8($s7)
/* BCBA8 801067E8 0C03E7DB */  jal        func_race_800F9F6C
/* BCBAC 801067EC 02002021 */   addu      $a0, $s0, $zero
/* BCBB0 801067F0 02002021 */  addu       $a0, $s0, $zero
/* BCBB4 801067F4 0C03E7DE */  jal        func_race_800F9F78
/* BCBB8 801067F8 2405FFFF */   addiu     $a1, $zero, -0x1
/* BCBBC 801067FC 02002021 */  addu       $a0, $s0, $zero
/* BCBC0 80106800 0C03E683 */  jal        func_race_800F9A0C
/* BCBC4 80106804 24050002 */   addiu     $a1, $zero, 0x2
/* BCBC8 80106808 26F02950 */  addiu      $s0, $s7, 0x2950
/* BCBCC 8010680C 8EE506AC */  lw         $a1, 0x6AC($s7)
/* BCBD0 80106810 0C03E7DB */  jal        func_race_800F9F6C
/* BCBD4 80106814 02002021 */   addu      $a0, $s0, $zero
/* BCBD8 80106818 02002021 */  addu       $a0, $s0, $zero
/* BCBDC 8010681C 0C03E7DE */  jal        func_race_800F9F78
/* BCBE0 80106820 2405FFFF */   addiu     $a1, $zero, -0x1
/* BCBE4 80106824 02002021 */  addu       $a0, $s0, $zero
/* BCBE8 80106828 08041A1D */  j          .Lrace_80106874
/* BCBEC 8010682C 24050003 */   addiu     $a1, $zero, 0x3
.Lrace_80106830:
/* BCBF0 80106830 8EE20004 */  lw         $v0, 0x4($s7)
/* BCBF4 80106834 8C430330 */  lw         $v1, 0x330($v0)
/* BCBF8 80106838 24020001 */  addiu      $v0, $zero, 0x1
/* BCBFC 8010683C 14620004 */  bne        $v1, $v0, .Lrace_80106850
/* BCC00 80106840 00000000 */   nop
/* BCC04 80106844 8EE506A8 */  lw         $a1, 0x6A8($s7)
/* BCC08 80106848 08041A15 */  j          .Lrace_80106854
/* BCC0C 8010684C 00000000 */   nop
.Lrace_80106850:
/* BCC10 80106850 8EE504D0 */  lw         $a1, 0x4D0($s7)
.Lrace_80106854:
/* BCC14 80106854 0C03E7DB */  jal        func_race_800F9F6C
/* BCC18 80106858 26E42810 */   addiu     $a0, $s7, 0x2810
/* BCC1C 8010685C 26F02810 */  addiu      $s0, $s7, 0x2810
/* BCC20 80106860 02002021 */  addu       $a0, $s0, $zero
/* BCC24 80106864 0C03E7DE */  jal        func_race_800F9F78
/* BCC28 80106868 2405FFFF */   addiu     $a1, $zero, -0x1
/* BCC2C 8010686C 02002021 */  addu       $a0, $s0, $zero
/* BCC30 80106870 24050001 */  addiu      $a1, $zero, 0x1
.Lrace_80106874:
/* BCC34 80106874 0C03E683 */  jal        func_race_800F9A0C
/* BCC38 80106878 00000000 */   nop
/* BCC3C 8010687C 3C053F66 */  lui        $a1, (0x3F666666 >> 16)
/* BCC40 80106880 34A56666 */  ori        $a1, $a1, (0x3F666666 & 0xFFFF)
/* BCC44 80106884 0C04245B */  jal        func_race_8010916C
/* BCC48 80106888 02E02021 */   addu      $a0, $s7, $zero
/* BCC4C 8010688C 8EE20004 */  lw         $v0, 0x4($s7)
/* BCC50 80106890 244500F2 */  addiu      $a1, $v0, 0xF2
/* BCC54 80106894 10A00007 */  beqz       $a1, .Lrace_801068B4
/* BCC58 80106898 3C108003 */   lui       $s0, %hi(D_8002FB34)
/* BCC5C 8010689C 2610FB34 */  addiu      $s0, $s0, %lo(D_8002FB34)
/* BCC60 801068A0 02002021 */  addu       $a0, $s0, $zero
/* BCC64 801068A4 0C000708 */  jal        func_80001C20
/* BCC68 801068A8 24060100 */   addiu     $a2, $zero, 0x100
/* BCC6C 801068AC 08041A2F */  j          .Lrace_801068BC
/* BCC70 801068B0 A20000FF */   sb        $zero, 0xFF($s0)
.Lrace_801068B4:
/* BCC74 801068B4 3C028003 */  lui        $v0, %hi(D_8002FB34)
/* BCC78 801068B8 A040FB34 */  sb         $zero, %lo(D_8002FB34)($v0)
.Lrace_801068BC:
/* BCC7C 801068BC 8EE23328 */  lw         $v0, 0x3328($s7)
/* BCC80 801068C0 5440000A */  bnel       $v0, $zero, .Lrace_801068EC
/* BCC84 801068C4 26E4309C */   addiu     $a0, $s7, 0x309C
/* BCC88 801068C8 8EE20004 */  lw         $v0, 0x4($s7)
/* BCC8C 801068CC 8C420358 */  lw         $v0, 0x358($v0)
/* BCC90 801068D0 26E4302C */  addiu      $a0, $s7, 0x302C
/* BCC94 801068D4 AFA20010 */  sw         $v0, 0x10($sp)
/* BCC98 801068D8 8EE52D50 */  lw         $a1, 0x2D50($s7)
/* BCC9C 801068DC 8EE60014 */  lw         $a2, 0x14($s7)
/* BCCA0 801068E0 0C03ED12 */  jal        func_race_800FB448
/* BCCA4 801068E4 26E730C8 */   addiu     $a3, $s7, 0x30C8
/* BCCA8 801068E8 26E4309C */  addiu      $a0, $s7, 0x309C
.Lrace_801068EC:
/* BCCAC 801068EC 27A50178 */  addiu      $a1, $sp, 0x178
/* BCCB0 801068F0 26F10390 */  addiu      $s1, $s7, 0x390
/* BCCB4 801068F4 8EE30004 */  lw         $v1, 0x4($s7)
/* BCCB8 801068F8 26E206B0 */  addiu      $v0, $s7, 0x6B0
/* BCCBC 801068FC AFA20180 */  sw         $v0, 0x180($sp)
/* BCCC0 80106900 26E2211C */  addiu      $v0, $s7, 0x211C
/* BCCC4 80106904 26F02124 */  addiu      $s0, $s7, 0x2124
/* BCCC8 80106908 AFA20184 */  sw         $v0, 0x184($sp)
/* BCCCC 8010690C 26E22460 */  addiu      $v0, $s7, 0x2460
/* BCCD0 80106910 26F22054 */  addiu      $s2, $s7, 0x2054
/* BCCD4 80106914 AFB1017C */  sw         $s1, 0x17C($sp)
/* BCCD8 80106918 AFB00188 */  sw         $s0, 0x188($sp)
/* BCCDC 8010691C AFA2018C */  sw         $v0, 0x18C($sp)
/* BCCE0 80106920 AFA30178 */  sw         $v1, 0x178($sp)
/* BCCE4 80106924 8EE3333C */  lw         $v1, 0x333C($s7)
/* BCCE8 80106928 26E220FC */  addiu      $v0, $s7, 0x20FC
/* BCCEC 8010692C AFA20198 */  sw         $v0, 0x198($sp)
/* BCCF0 80106930 26E2329C */  addiu      $v0, $s7, 0x329C
/* BCCF4 80106934 AFA2019C */  sw         $v0, 0x19C($sp)
/* BCCF8 80106938 26E2206C */  addiu      $v0, $s7, 0x206C
/* BCCFC 8010693C AFB20194 */  sw         $s2, 0x194($sp)
/* BCD00 80106940 AFA201A0 */  sw         $v0, 0x1A0($sp)
/* BCD04 80106944 0C0459CF */  jal        func_race_8011673C
/* BCD08 80106948 AFA30190 */   sw        $v1, 0x190($sp)
/* BCD0C 8010694C 8EE30370 */  lw         $v1, 0x370($s7)
/* BCD10 80106950 8C6200EC */  lw         $v0, 0xEC($v1)
/* BCD14 80106954 00002821 */  addu       $a1, $zero, $zero
/* BCD18 80106958 844400A0 */  lh         $a0, 0xA0($v0)
/* BCD1C 8010695C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* BCD20 80106960 0040F809 */  jalr       $v0
/* BCD24 80106964 00642021 */   addu      $a0, $v1, $a0
/* BCD28 80106968 AFA20010 */  sw         $v0, 0x10($sp)
/* BCD2C 8010696C 26E2012C */  addiu      $v0, $s7, 0x12C
/* BCD30 80106970 AFA20014 */  sw         $v0, 0x14($sp)
/* BCD34 80106974 8EE20004 */  lw         $v0, 0x4($s7)
/* BCD38 80106978 8C42001C */  lw         $v0, 0x1C($v0)
/* BCD3C 8010697C 02002021 */  addu       $a0, $s0, $zero
/* BCD40 80106980 AFA20018 */  sw         $v0, 0x18($sp)
/* BCD44 80106984 8EE60010 */  lw         $a2, 0x10($s7)
/* BCD48 80106988 8EE70014 */  lw         $a3, 0x14($s7)
/* BCD4C 8010698C 0C010701 */  jal        func_80041C04
/* BCD50 80106990 2405000A */   addiu     $a1, $zero, 0xA
/* BCD54 80106994 3C053F6E */  lui        $a1, (0x3F6E147B >> 16)
/* BCD58 80106998 34A5147B */  ori        $a1, $a1, (0x3F6E147B & 0xFFFF)
/* BCD5C 8010699C 0C04245B */  jal        func_race_8010916C
/* BCD60 801069A0 02E02021 */   addu      $a0, $s7, $zero
/* BCD64 801069A4 8EE20010 */  lw         $v0, 0x10($s7)
/* BCD68 801069A8 AFA20030 */  sw         $v0, 0x30($sp)
/* BCD6C 801069AC 8EE20014 */  lw         $v0, 0x14($s7)
/* BCD70 801069B0 AFB10038 */  sw         $s1, 0x38($sp)
/* BCD74 801069B4 AFA20034 */  sw         $v0, 0x34($sp)
/* BCD78 801069B8 8EE20368 */  lw         $v0, 0x368($s7)
/* BCD7C 801069BC AFA2003C */  sw         $v0, 0x3C($sp)
/* BCD80 801069C0 8EE30388 */  lw         $v1, 0x388($s7)
/* BCD84 801069C4 26E2328C */  addiu      $v0, $s7, 0x328C
/* BCD88 801069C8 AFA20044 */  sw         $v0, 0x44($sp)
/* BCD8C 801069CC 26E232D8 */  addiu      $v0, $s7, 0x32D8
/* BCD90 801069D0 AFA20048 */  sw         $v0, 0x48($sp)
/* BCD94 801069D4 26E2279C */  addiu      $v0, $s7, 0x279C
/* BCD98 801069D8 AFB0004C */  sw         $s0, 0x4C($sp)
/* BCD9C 801069DC AFA20050 */  sw         $v0, 0x50($sp)
/* BCDA0 801069E0 AFA30040 */  sw         $v1, 0x40($sp)
/* BCDA4 801069E4 8EE3037C */  lw         $v1, 0x37C($s7)
/* BCDA8 801069E8 26E227D0 */  addiu      $v0, $s7, 0x27D0
/* BCDAC 801069EC AFA20058 */  sw         $v0, 0x58($sp)
/* BCDB0 801069F0 26E227D8 */  addiu      $v0, $s7, 0x27D8
/* BCDB4 801069F4 AFB20054 */  sw         $s2, 0x54($sp)
/* BCDB8 801069F8 AFA20060 */  sw         $v0, 0x60($sp)
/* BCDBC 801069FC AFA3005C */  sw         $v1, 0x5C($sp)
/* BCDC0 80106A00 8EE20004 */  lw         $v0, 0x4($s7)
/* BCDC4 80106A04 8C420024 */  lw         $v0, 0x24($v0)
/* BCDC8 80106A08 AFA20068 */  sw         $v0, 0x68($sp)
/* BCDCC 80106A0C 8EE2332C */  lw         $v0, 0x332C($s7)
/* BCDD0 80106A10 10400007 */  beqz       $v0, .Lrace_80106A30
/* BCDD4 80106A14 00000000 */   nop
/* BCDD8 80106A18 8EE20004 */  lw         $v0, 0x4($s7)
/* BCDDC 80106A1C 3C01800D */  lui        $at, %hi(D_race_800CD8C0)
/* BCDE0 80106A20 C422D8C0 */  lwc1       $f2, %lo(D_race_800CD8C0)($at)
/* BCDE4 80106A24 C4400010 */  lwc1       $f0, 0x10($v0)
/* BCDE8 80106A28 08041A8E */  j          .Lrace_80106A38
/* BCDEC 80106A2C 46020001 */   sub.s     $f0, $f0, $f2
.Lrace_80106A30:
/* BCDF0 80106A30 8EE20004 */  lw         $v0, 0x4($s7)
/* BCDF4 80106A34 C4400010 */  lwc1       $f0, 0x10($v0)
.Lrace_80106A38:
/* BCDF8 80106A38 E7A00064 */  swc1       $f0, 0x64($sp)
/* BCDFC 80106A3C 26F006B0 */  addiu      $s0, $s7, 0x6B0
/* BCE00 80106A40 02002021 */  addu       $a0, $s0, $zero
/* BCE04 80106A44 0C04A19A */  jal        func_race_80128668
/* BCE08 80106A48 27A50030 */   addiu     $a1, $sp, 0x30
/* BCE0C 80106A4C 02002021 */  addu       $a0, $s0, $zero
/* BCE10 80106A50 8EE20004 */  lw         $v0, 0x4($s7)
/* BCE14 80106A54 26E500D1 */  addiu      $a1, $s7, 0xD1
/* BCE18 80106A58 8C47001C */  lw         $a3, 0x1C($v0)
/* BCE1C 80106A5C 0C04A1C7 */  jal        func_race_8012871C
/* BCE20 80106A60 26E600DE */   addiu     $a2, $s7, 0xDE
/* BCE24 80106A64 3C053F78 */  lui        $a1, (0x3F7851EC >> 16)
/* BCE28 80106A68 34A551EC */  ori        $a1, $a1, (0x3F7851EC & 0xFFFF)
/* BCE2C 80106A6C 0C04245B */  jal        func_race_8010916C
/* BCE30 80106A70 02E02021 */   addu      $a0, $s7, $zero
/* BCE34 80106A74 8EE20004 */  lw         $v0, 0x4($s7)
/* BCE38 80106A78 244500E0 */  addiu      $a1, $v0, 0xE0
/* BCE3C 80106A7C 10A00007 */  beqz       $a1, .Lrace_80106A9C
/* BCE40 80106A80 3C108003 */   lui       $s0, %hi(D_8002FB34)
/* BCE44 80106A84 2610FB34 */  addiu      $s0, $s0, %lo(D_8002FB34)
/* BCE48 80106A88 02002021 */  addu       $a0, $s0, $zero
/* BCE4C 80106A8C 0C000708 */  jal        func_80001C20
/* BCE50 80106A90 24060100 */   addiu     $a2, $zero, 0x100
/* BCE54 80106A94 08041AA9 */  j          .Lrace_80106AA4
/* BCE58 80106A98 A20000FF */   sb        $zero, 0xFF($s0)
.Lrace_80106A9C:
/* BCE5C 80106A9C 3C028003 */  lui        $v0, %hi(D_8002FB34)
/* BCE60 80106AA0 A040FB34 */  sb         $zero, %lo(D_8002FB34)($v0)
.Lrace_80106AA4:
/* BCE64 80106AA4 8EE2333C */  lw         $v0, 0x333C($s7)
/* BCE68 80106AA8 10400012 */  beqz       $v0, .Lrace_80106AF4
/* BCE6C 80106AAC 26F006B0 */   addiu     $s0, $s7, 0x6B0
/* BCE70 80106AB0 0C006DFE */  jal        strlen
/* BCE74 80106AB4 26E400C4 */   addiu     $a0, $s7, 0xC4
/* BCE78 80106AB8 00572021 */  addu       $a0, $v0, $s7
/* BCE7C 80106ABC 24030032 */  addiu      $v1, $zero, 0x32
/* BCE80 80106AC0 A08300C0 */  sb         $v1, 0xC0($a0)
/* BCE84 80106AC4 2403002E */  addiu      $v1, $zero, 0x2E
/* BCE88 80106AC8 A08300C1 */  sb         $v1, 0xC1($a0)
/* BCE8C 80106ACC 24030050 */  addiu      $v1, $zero, 0x50
/* BCE90 80106AD0 A08300C2 */  sb         $v1, 0xC2($a0)
/* BCE94 80106AD4 24030057 */  addiu      $v1, $zero, 0x57
/* BCE98 80106AD8 A08300C3 */  sb         $v1, 0xC3($a0)
/* BCE9C 80106ADC 02E22021 */  addu       $a0, $s7, $v0
/* BCEA0 80106AE0 24030046 */  addiu      $v1, $zero, 0x46
/* BCEA4 80106AE4 00571021 */  addu       $v0, $v0, $s7
/* BCEA8 80106AE8 A08300C4 */  sb         $v1, 0xC4($a0)
/* BCEAC 80106AEC A04000C5 */  sb         $zero, 0xC5($v0)
/* BCEB0 80106AF0 26F006B0 */  addiu      $s0, $s7, 0x6B0
.Lrace_80106AF4:
/* BCEB4 80106AF4 02002021 */  addu       $a0, $s0, $zero
/* BCEB8 80106AF8 8EE20004 */  lw         $v0, 0x4($s7)
/* BCEBC 80106AFC 26E500C4 */  addiu      $a1, $s7, 0xC4
/* BCEC0 80106B00 8C46001C */  lw         $a2, 0x1C($v0)
/* BCEC4 80106B04 0C04A3C0 */  jal        func_race_80128F00
/* BCEC8 80106B08 03C03821 */   addu      $a3, $fp, $zero
/* BCECC 80106B0C 8EE20004 */  lw         $v0, 0x4($s7)
/* BCED0 80106B10 8C440004 */  lw         $a0, 0x4($v0)
/* BCED4 80106B14 0C01F039 */  jal        func_8007C0E4
/* BCED8 80106B18 00000000 */   nop
/* BCEDC 80106B1C 8EE5332C */  lw         $a1, 0x332C($s7)
/* BCEE0 80106B20 02002021 */  addu       $a0, $s0, $zero
/* BCEE4 80106B24 0C04A202 */  jal        func_race_80128808
/* BCEE8 80106B28 2CA50001 */   sltiu     $a1, $a1, 0x1
/* BCEEC 80106B2C 0C04A420 */  jal        func_race_80129080
/* BCEF0 80106B30 02002021 */   addu      $a0, $s0, $zero
/* BCEF4 80106B34 0C04B4BF */  jal        func_race_8012D2FC
/* BCEF8 80106B38 02002021 */   addu      $a0, $s0, $zero
/* BCEFC 80106B3C 0C041D2B */  jal        func_race_801074AC
/* BCF00 80106B40 02E02021 */   addu      $a0, $s7, $zero
/* BCF04 80106B44 8FBF01CC */  lw         $ra, 0x1CC($sp)
/* BCF08 80106B48 8FBE01C8 */  lw         $fp, 0x1C8($sp)
/* BCF0C 80106B4C 8FB701C4 */  lw         $s7, 0x1C4($sp)
/* BCF10 80106B50 8FB601C0 */  lw         $s6, 0x1C0($sp)
/* BCF14 80106B54 8FB501BC */  lw         $s5, 0x1BC($sp)
/* BCF18 80106B58 8FB401B8 */  lw         $s4, 0x1B8($sp)
/* BCF1C 80106B5C 8FB301B4 */  lw         $s3, 0x1B4($sp)
/* BCF20 80106B60 8FB201B0 */  lw         $s2, 0x1B0($sp)
/* BCF24 80106B64 8FB101AC */  lw         $s1, 0x1AC($sp)
/* BCF28 80106B68 8FB001A8 */  lw         $s0, 0x1A8($sp)
/* BCF2C 80106B6C 03E00008 */  jr         $ra
/* BCF30 80106B70 27BD01D0 */   addiu     $sp, $sp, 0x1D0

glabel func_race_80106B74
/* BCF34 80106B74 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* BCF38 80106B78 AFB3001C */  sw         $s3, 0x1C($sp)
/* BCF3C 80106B7C 00809821 */  addu       $s3, $a0, $zero
/* BCF40 80106B80 AFBF0020 */  sw         $ra, 0x20($sp)
/* BCF44 80106B84 AFB20018 */  sw         $s2, 0x18($sp)
/* BCF48 80106B88 AFB10014 */  sw         $s1, 0x14($sp)
/* BCF4C 80106B8C AFB00010 */  sw         $s0, 0x10($sp)
/* BCF50 80106B90 8E620004 */  lw         $v0, 0x4($s3)
/* BCF54 80106B94 10400012 */  beqz       $v0, .Lrace_80106BE0
/* BCF58 80106B98 00008821 */   addu      $s1, $zero, $zero
/* BCF5C 80106B9C 02608021 */  addu       $s0, $s3, $zero
.Lrace_80106BA0:
/* BCF60 80106BA0 8E620004 */  lw         $v0, 0x4($s3)
/* BCF64 80106BA4 8C420330 */  lw         $v0, 0x330($v0)
/* BCF68 80106BA8 0222102B */  sltu       $v0, $s1, $v0
/* BCF6C 80106BAC 1040000C */  beqz       $v0, .Lrace_80106BE0
/* BCF70 80106BB0 00000000 */   nop
/* BCF74 80106BB4 8E0406A8 */  lw         $a0, 0x6A8($s0)
/* BCF78 80106BB8 50800007 */  beql       $a0, $zero, .Lrace_80106BD8
/* BCF7C 80106BBC 26100004 */   addiu     $s0, $s0, 0x4
/* BCF80 80106BC0 0C0456E9 */  jal        func_race_80115BA4
/* BCF84 80106BC4 24840018 */   addiu     $a0, $a0, 0x18
/* BCF88 80106BC8 8E0406A8 */  lw         $a0, 0x6A8($s0)
/* BCF8C 80106BCC 0C0456D5 */  jal        func_race_80115B54
/* BCF90 80106BD0 24840018 */   addiu     $a0, $a0, 0x18
/* BCF94 80106BD4 26100004 */  addiu      $s0, $s0, 0x4
.Lrace_80106BD8:
/* BCF98 80106BD8 08041AE8 */  j          .Lrace_80106BA0
/* BCF9C 80106BDC 26310001 */   addiu     $s1, $s1, 0x1
.Lrace_80106BE0:
/* BCFA0 80106BE0 0C03ECE8 */  jal        func_race_800FB3A0
/* BCFA4 80106BE4 2664302C */   addiu     $a0, $s3, 0x302C
/* BCFA8 80106BE8 0C04AA1A */  jal        func_race_8012A868
/* BCFAC 80106BEC 266406B0 */   addiu     $a0, $s3, 0x6B0
/* BCFB0 80106BF0 8E630010 */  lw         $v1, 0x10($s3)
/* BCFB4 80106BF4 1060000A */  beqz       $v1, .Lrace_80106C20
/* BCFB8 80106BF8 00000000 */   nop
/* BCFBC 80106BFC 8E65037C */  lw         $a1, 0x37C($s3)
/* BCFC0 80106C00 10A00007 */  beqz       $a1, .Lrace_80106C20
/* BCFC4 80106C04 00000000 */   nop
/* BCFC8 80106C08 8C620000 */  lw         $v0, 0x0($v1)
/* BCFCC 80106C0C 84440080 */  lh         $a0, 0x80($v0)
/* BCFD0 80106C10 8C420084 */  lw         $v0, 0x84($v0)
/* BCFD4 80106C14 0040F809 */  jalr       $v0
/* BCFD8 80106C18 00642021 */   addu      $a0, $v1, $a0
/* BCFDC 80106C1C AE60037C */  sw         $zero, 0x37C($s3)
.Lrace_80106C20:
/* BCFE0 80106C20 0C037CB0 */  jal        func_race_800DF2C0
/* BCFE4 80106C24 26642110 */   addiu     $a0, $s3, 0x2110
/* BCFE8 80106C28 0C037E10 */  jal        func_race_800DF840
/* BCFEC 80106C2C 266420FC */   addiu     $a0, $s3, 0x20FC
/* BCFF0 80106C30 0C037769 */  jal        func_race_800DDDA4
/* BCFF4 80106C34 26642054 */   addiu     $a0, $s3, 0x2054
/* BCFF8 80106C38 0C03570B */  jal        func_race_800D5C2C
/* BCFFC 80106C3C 2664329C */   addiu     $a0, $s3, 0x329C
/* BD000 80106C40 0C03A32E */  jal        func_race_800E8CB8
/* BD004 80106C44 2664211C */   addiu     $a0, $s3, 0x211C
/* BD008 80106C48 0C0368C7 */  jal        func_race_800DA31C
/* BD00C 80106C4C 2664206C */   addiu     $a0, $s3, 0x206C
/* BD010 80106C50 0C04B6F2 */  jal        func_race_8012DBC8
/* BD014 80106C54 266427D8 */   addiu     $a0, $s3, 0x27D8
/* BD018 80106C58 0C03C414 */  jal        func_race_800F1050
/* BD01C 80106C5C 26642F64 */   addiu     $a0, $s3, 0x2F64
/* BD020 80106C60 0C043D9E */  jal        func_race_8010F678
/* BD024 80106C64 26640390 */   addiu     $a0, $s3, 0x390
/* BD028 80106C68 0C03C81D */  jal        func_race_800F2074
/* BD02C 80106C6C 266427C8 */   addiu     $a0, $s3, 0x27C8
/* BD030 80106C70 0C034877 */  jal        func_race_800D21DC
/* BD034 80106C74 266427A8 */   addiu     $a0, $s3, 0x27A8
/* BD038 80106C78 0C034EC3 */  jal        func_race_800D3B0C
/* BD03C 80106C7C 2664279C */   addiu     $a0, $s3, 0x279C
/* BD040 80106C80 0C0103CD */  jal        func_80040F34
/* BD044 80106C84 266427D0 */   addiu     $a0, $s3, 0x27D0
/* BD048 80106C88 0C0106C4 */  jal        func_80041B10
/* BD04C 80106C8C 26642460 */   addiu     $a0, $s3, 0x2460
/* BD050 80106C90 0C0106C4 */  jal        func_80041B10
/* BD054 80106C94 26642124 */   addiu     $a0, $s3, 0x2124
/* BD058 80106C98 00008821 */  addu       $s1, $zero, $zero
/* BD05C 80106C9C 02209021 */  addu       $s2, $s1, $zero
/* BD060 80106CA0 02608021 */  addu       $s0, $s3, $zero
.Lrace_80106CA4:
/* BD064 80106CA4 2E220002 */  sltiu      $v0, $s1, 0x2
/* BD068 80106CA8 10400008 */  beqz       $v0, .Lrace_80106CCC
/* BD06C 80106CAC 02532021 */   addu      $a0, $s2, $s3
/* BD070 80106CB0 AE0006A8 */  sw         $zero, 0x6A8($s0)
/* BD074 80106CB4 0C03F1EC */  jal        func_race_800FC7B0
/* BD078 80106CB8 24842AA8 */   addiu     $a0, $a0, 0x2AA8
/* BD07C 80106CBC 26520150 */  addiu      $s2, $s2, 0x150
/* BD080 80106CC0 26100004 */  addiu      $s0, $s0, 0x4
/* BD084 80106CC4 08041B29 */  j          .Lrace_80106CA4
/* BD088 80106CC8 26310001 */   addiu     $s1, $s1, 0x1
.Lrace_80106CCC:
/* BD08C 80106CCC 8FBF0020 */  lw         $ra, 0x20($sp)
/* BD090 80106CD0 8FB3001C */  lw         $s3, 0x1C($sp)
/* BD094 80106CD4 8FB20018 */  lw         $s2, 0x18($sp)
/* BD098 80106CD8 8FB10014 */  lw         $s1, 0x14($sp)
/* BD09C 80106CDC 8FB00010 */  lw         $s0, 0x10($sp)
/* BD0A0 80106CE0 03E00008 */  jr         $ra
/* BD0A4 80106CE4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_80106CE8
/* BD0A8 80106CE8 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* BD0AC 80106CEC AFB20030 */  sw         $s2, 0x30($sp)
/* BD0B0 80106CF0 00809021 */  addu       $s2, $a0, $zero
/* BD0B4 80106CF4 AFB30034 */  sw         $s3, 0x34($sp)
/* BD0B8 80106CF8 00009821 */  addu       $s3, $zero, $zero
/* BD0BC 80106CFC AFBF004C */  sw         $ra, 0x4C($sp)
/* BD0C0 80106D00 AFBE0048 */  sw         $fp, 0x48($sp)
/* BD0C4 80106D04 AFB70044 */  sw         $s7, 0x44($sp)
/* BD0C8 80106D08 AFB60040 */  sw         $s6, 0x40($sp)
/* BD0CC 80106D0C AFB5003C */  sw         $s5, 0x3C($sp)
/* BD0D0 80106D10 AFB40038 */  sw         $s4, 0x38($sp)
/* BD0D4 80106D14 AFB1002C */  sw         $s1, 0x2C($sp)
/* BD0D8 80106D18 AFB00028 */  sw         $s0, 0x28($sp)
/* BD0DC 80106D1C 8E430014 */  lw         $v1, 0x14($s2)
/* BD0E0 80106D20 24162AA8 */  addiu      $s6, $zero, 0x2AA8
/* BD0E4 80106D24 8C62012C */  lw         $v0, 0x12C($v1)
/* BD0E8 80106D28 0260A821 */  addu       $s5, $s3, $zero
/* BD0EC 80106D2C 84440030 */  lh         $a0, 0x30($v0)
/* BD0F0 80106D30 8C420034 */  lw         $v0, 0x34($v0)
/* BD0F4 80106D34 0040F809 */  jalr       $v0
/* BD0F8 80106D38 00642021 */   addu      $a0, $v1, $a0
/* BD0FC 80106D3C 02408821 */  addu       $s1, $s2, $zero
/* BD100 80106D40 94570028 */  lhu        $s7, 0x28($v0)
/* BD104 80106D44 94540026 */  lhu        $s4, 0x26($v0)
/* BD108 80106D48 0017F042 */  srl        $fp, $s7, 1
.Lrace_80106D4C:
/* BD10C 80106D4C 8E420004 */  lw         $v0, 0x4($s2)
/* BD110 80106D50 8C420330 */  lw         $v0, 0x330($v0)
/* BD114 80106D54 0262102B */  sltu       $v0, $s3, $v0
/* BD118 80106D58 10400061 */  beqz       $v0, .Lrace_80106EE0
/* BD11C 80106D5C 00000000 */   nop
/* BD120 80106D60 8E430010 */  lw         $v1, 0x10($s2)
/* BD124 80106D64 8C620000 */  lw         $v0, 0x0($v1)
/* BD128 80106D68 84440048 */  lh         $a0, 0x48($v0)
/* BD12C 80106D6C 8C42004C */  lw         $v0, 0x4C($v0)
/* BD130 80106D70 0040F809 */  jalr       $v0
/* BD134 80106D74 00642021 */   addu      $a0, $v1, $a0
/* BD138 80106D78 AE222AA0 */  sw         $v0, 0x2AA0($s1)
/* BD13C 80106D7C 8E42332C */  lw         $v0, 0x332C($s2)
/* BD140 80106D80 1040000F */  beqz       $v0, .Lrace_80106DC0
/* BD144 80106D84 00000000 */   nop
/* BD148 80106D88 8E420004 */  lw         $v0, 0x4($s2)
/* BD14C 80106D8C 3C01800D */  lui        $at, %hi(D_race_800CD8C4)
/* BD150 80106D90 C420D8C4 */  lwc1       $f0, %lo(D_race_800CD8C4)($at)
/* BD154 80106D94 C4420010 */  lwc1       $f2, 0x10($v0)
/* BD158 80106D98 E7A00010 */  swc1       $f0, 0x10($sp)
/* BD15C 80106D9C 3C01800D */  lui        $at, %hi(D_race_800CD8C8)
/* BD160 80106DA0 C420D8C8 */  lwc1       $f0, %lo(D_race_800CD8C8)($at)
/* BD164 80106DA4 8E242AA0 */  lw         $a0, 0x2AA0($s1)
/* BD168 80106DA8 46001081 */  sub.s      $f2, $f2, $f0
/* BD16C 80106DAC 8C460014 */  lw         $a2, 0x14($v0)
/* BD170 80106DB0 8C470018 */  lw         $a3, 0x18($v0)
/* BD174 80106DB4 44051000 */  mfc1       $a1, $f2
/* BD178 80106DB8 08041B78 */  j          .Lrace_80106DE0
/* BD17C 80106DBC 00000000 */   nop
.Lrace_80106DC0:
/* BD180 80106DC0 3C01800D */  lui        $at, %hi(D_race_800CD8CC)
/* BD184 80106DC4 C420D8CC */  lwc1       $f0, %lo(D_race_800CD8CC)($at)
/* BD188 80106DC8 8E420004 */  lw         $v0, 0x4($s2)
/* BD18C 80106DCC E7A00010 */  swc1       $f0, 0x10($sp)
/* BD190 80106DD0 8E242AA0 */  lw         $a0, 0x2AA0($s1)
/* BD194 80106DD4 8C450010 */  lw         $a1, 0x10($v0)
/* BD198 80106DD8 8C460014 */  lw         $a2, 0x14($v0)
/* BD19C 80106DDC 8C470018 */  lw         $a3, 0x18($v0)
.Lrace_80106DE0:
/* BD1A0 80106DE0 0C0128EB */  jal        func_8004A3AC
/* BD1A4 80106DE4 00000000 */   nop
/* BD1A8 80106DE8 8E302AA0 */  lw         $s0, 0x2AA0($s1)
/* BD1AC 80106DEC 8E030000 */  lw         $v1, 0x0($s0)
/* BD1B0 80106DF0 8C62000C */  lw         $v0, 0xC($v1)
/* BD1B4 80106DF4 264501F8 */  addiu      $a1, $s2, 0x1F8
/* BD1B8 80106DF8 84440090 */  lh         $a0, 0x90($v0)
/* BD1BC 80106DFC 8C420094 */  lw         $v0, 0x94($v0)
/* BD1C0 80106E00 0040F809 */  jalr       $v0
/* BD1C4 80106E04 00642021 */   addu      $a0, $v1, $a0
/* BD1C8 80106E08 8E02002C */  lw         $v0, 0x2C($s0)
/* BD1CC 80106E0C 34420001 */  ori        $v0, $v0, 0x1
/* BD1D0 80106E10 AE02002C */  sw         $v0, 0x2C($s0)
/* BD1D4 80106E14 8E302AA0 */  lw         $s0, 0x2AA0($s1)
/* BD1D8 80106E18 8E030000 */  lw         $v1, 0x0($s0)
/* BD1DC 80106E1C 26450204 */  addiu      $a1, $s2, 0x204
/* BD1E0 80106E20 8C62000C */  lw         $v0, 0xC($v1)
/* BD1E4 80106E24 26460210 */  addiu      $a2, $s2, 0x210
/* BD1E8 80106E28 84440050 */  lh         $a0, 0x50($v0)
/* BD1EC 80106E2C 8C420054 */  lw         $v0, 0x54($v0)
/* BD1F0 80106E30 0040F809 */  jalr       $v0
/* BD1F4 80106E34 00642021 */   addu      $a0, $v1, $a0
/* BD1F8 80106E38 8E02002C */  lw         $v0, 0x2C($s0)
/* BD1FC 80106E3C 34420001 */  ori        $v0, $v0, 0x1
/* BD200 80106E40 AE02002C */  sw         $v0, 0x2C($s0)
/* BD204 80106E44 8E42332C */  lw         $v0, 0x332C($s2)
/* BD208 80106E48 14400004 */  bnez       $v0, .Lrace_80106E5C
/* BD20C 80106E4C 00000000 */   nop
/* BD210 80106E50 AFA00018 */  sw         $zero, 0x18($sp)
/* BD214 80106E54 08041BA3 */  j          .Lrace_80106E8C
/* BD218 80106E58 AFA0001C */   sw        $zero, 0x1C($sp)
.Lrace_80106E5C:
/* BD21C 80106E5C 12600005 */  beqz       $s3, .Lrace_80106E74
/* BD220 80106E60 24080001 */   addiu     $t0, $zero, 0x1
/* BD224 80106E64 52680008 */  beql       $s3, $t0, .Lrace_80106E88
/* BD228 80106E68 AFA00018 */   sw        $zero, 0x18($sp)
/* BD22C 80106E6C 08041BA5 */  j          .Lrace_80106E94
/* BD230 80106E70 00000000 */   nop
.Lrace_80106E74:
/* BD234 80106E74 AFA00018 */  sw         $zero, 0x18($sp)
/* BD238 80106E78 AFA0001C */  sw         $zero, 0x1C($sp)
/* BD23C 80106E7C AFB40020 */  sw         $s4, 0x20($sp)
/* BD240 80106E80 08041BA5 */  j          .Lrace_80106E94
/* BD244 80106E84 AFBE0024 */   sw        $fp, 0x24($sp)
.Lrace_80106E88:
/* BD248 80106E88 AFBE001C */  sw         $fp, 0x1C($sp)
.Lrace_80106E8C:
/* BD24C 80106E8C AFB40020 */  sw         $s4, 0x20($sp)
/* BD250 80106E90 AFB70024 */  sw         $s7, 0x24($sp)
.Lrace_80106E94:
/* BD254 80106E94 8E232AA0 */  lw         $v1, 0x2AA0($s1)
/* BD258 80106E98 27A50018 */  addiu      $a1, $sp, 0x18
/* BD25C 80106E9C 8C62011C */  lw         $v0, 0x11C($v1)
/* BD260 80106EA0 26730001 */  addiu      $s3, $s3, 0x1
/* BD264 80106EA4 84440020 */  lh         $a0, 0x20($v0)
/* BD268 80106EA8 8C420024 */  lw         $v0, 0x24($v0)
/* BD26C 80106EAC 0040F809 */  jalr       $v0
/* BD270 80106EB0 00642021 */   addu      $a0, $v1, $a0
/* BD274 80106EB4 02562021 */  addu       $a0, $s2, $s6
/* BD278 80106EB8 26D60150 */  addiu      $s6, $s6, 0x150
/* BD27C 80106EBC 8E252AA0 */  lw         $a1, 0x2AA0($s1)
/* BD280 80106EC0 8E460014 */  lw         $a2, 0x14($s2)
/* BD284 80106EC4 0C03F211 */  jal        func_race_800FC844
/* BD288 80106EC8 26310004 */   addiu     $s1, $s1, 0x4
/* BD28C 80106ECC 02B21021 */  addu       $v0, $s5, $s2
/* BD290 80106ED0 26B50150 */  addiu      $s5, $s5, 0x150
/* BD294 80106ED4 24080001 */  addiu      $t0, $zero, 0x1
/* BD298 80106ED8 08041B53 */  j          .Lrace_80106D4C
/* BD29C 80106EDC A0482AA8 */   sb        $t0, 0x2AA8($v0)
.Lrace_80106EE0:
/* BD2A0 80106EE0 8E430014 */  lw         $v1, 0x14($s2)
/* BD2A4 80106EE4 8C62012C */  lw         $v0, 0x12C($v1)
/* BD2A8 80106EE8 8E452AA0 */  lw         $a1, 0x2AA0($s2)
/* BD2AC 80106EEC 84440048 */  lh         $a0, 0x48($v0)
/* BD2B0 80106EF0 8C42004C */  lw         $v0, 0x4C($v0)
/* BD2B4 80106EF4 0040F809 */  jalr       $v0
/* BD2B8 80106EF8 00642021 */   addu      $a0, $v1, $a0
/* BD2BC 80106EFC 8FBF004C */  lw         $ra, 0x4C($sp)
/* BD2C0 80106F00 8FBE0048 */  lw         $fp, 0x48($sp)
/* BD2C4 80106F04 8FB70044 */  lw         $s7, 0x44($sp)
/* BD2C8 80106F08 8FB60040 */  lw         $s6, 0x40($sp)
/* BD2CC 80106F0C 8FB5003C */  lw         $s5, 0x3C($sp)
/* BD2D0 80106F10 8FB40038 */  lw         $s4, 0x38($sp)
/* BD2D4 80106F14 8FB30034 */  lw         $s3, 0x34($sp)
/* BD2D8 80106F18 8FB20030 */  lw         $s2, 0x30($sp)
/* BD2DC 80106F1C 8FB1002C */  lw         $s1, 0x2C($sp)
/* BD2E0 80106F20 8FB00028 */  lw         $s0, 0x28($sp)
/* BD2E4 80106F24 03E00008 */  jr         $ra
/* BD2E8 80106F28 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_race_80106F2C
/* BD2EC 80106F2C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* BD2F0 80106F30 AFB20018 */  sw         $s2, 0x18($sp)
/* BD2F4 80106F34 00809021 */  addu       $s2, $a0, $zero
/* BD2F8 80106F38 AFBF001C */  sw         $ra, 0x1C($sp)
/* BD2FC 80106F3C AFB10014 */  sw         $s1, 0x14($sp)
/* BD300 80106F40 AFB00010 */  sw         $s0, 0x10($sp)
/* BD304 80106F44 8E420010 */  lw         $v0, 0x10($s2)
/* BD308 80106F48 10400011 */  beqz       $v0, .Lrace_80106F90
/* BD30C 80106F4C 00008821 */   addu      $s1, $zero, $zero
/* BD310 80106F50 02408021 */  addu       $s0, $s2, $zero
.Lrace_80106F54:
/* BD314 80106F54 8E052AA0 */  lw         $a1, 0x2AA0($s0)
/* BD318 80106F58 50A00009 */  beql       $a1, $zero, .Lrace_80106F80
/* BD31C 80106F5C AE002AA0 */   sw        $zero, 0x2AA0($s0)
/* BD320 80106F60 8E420010 */  lw         $v0, 0x10($s2)
/* BD324 80106F64 8C430000 */  lw         $v1, 0x0($v0)
/* BD328 80106F68 846400B0 */  lh         $a0, 0xB0($v1)
/* BD32C 80106F6C 00442021 */  addu       $a0, $v0, $a0
/* BD330 80106F70 8C6200B4 */  lw         $v0, 0xB4($v1)
/* BD334 80106F74 0040F809 */  jalr       $v0
/* BD338 80106F78 00000000 */   nop
/* BD33C 80106F7C AE002AA0 */  sw         $zero, 0x2AA0($s0)
.Lrace_80106F80:
/* BD340 80106F80 26310001 */  addiu      $s1, $s1, 0x1
/* BD344 80106F84 2E220002 */  sltiu      $v0, $s1, 0x2
/* BD348 80106F88 1440FFF2 */  bnez       $v0, .Lrace_80106F54
/* BD34C 80106F8C 26100004 */   addiu     $s0, $s0, 0x4
.Lrace_80106F90:
/* BD350 80106F90 8FBF001C */  lw         $ra, 0x1C($sp)
/* BD354 80106F94 8FB20018 */  lw         $s2, 0x18($sp)
/* BD358 80106F98 8FB10014 */  lw         $s1, 0x14($sp)
/* BD35C 80106F9C 8FB00010 */  lw         $s0, 0x10($sp)
/* BD360 80106FA0 03E00008 */  jr         $ra
/* BD364 80106FA4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80106FA8
/* BD368 80106FA8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* BD36C 80106FAC AFB20018 */  sw         $s2, 0x18($sp)
/* BD370 80106FB0 00809021 */  addu       $s2, $a0, $zero
/* BD374 80106FB4 AFBF001C */  sw         $ra, 0x1C($sp)
/* BD378 80106FB8 AFB10014 */  sw         $s1, 0x14($sp)
/* BD37C 80106FBC AFB00010 */  sw         $s0, 0x10($sp)
/* BD380 80106FC0 8E420380 */  lw         $v0, 0x380($s2)
/* BD384 80106FC4 10400026 */  beqz       $v0, .Lrace_80107060
/* BD388 80106FC8 00000000 */   nop
/* BD38C 80106FCC 8C440024 */  lw         $a0, 0x24($v0)
/* BD390 80106FD0 0C01971D */  jal        func_80065C74
/* BD394 80106FD4 00002821 */   addu      $a1, $zero, $zero
/* BD398 80106FD8 8E420380 */  lw         $v0, 0x380($s2)
/* BD39C 80106FDC 8C440024 */  lw         $a0, 0x24($v0)
/* BD3A0 80106FE0 8C82005C */  lw         $v0, 0x5C($a0)
/* BD3A4 80106FE4 3C030001 */  lui        $v1, (0x10000 >> 16)
/* BD3A8 80106FE8 00431025 */  or         $v0, $v0, $v1
/* BD3AC 80106FEC AC82005C */  sw         $v0, 0x5C($a0)
/* BD3B0 80106FF0 8E420380 */  lw         $v0, 0x380($s2)
/* BD3B4 80106FF4 8C500024 */  lw         $s0, 0x24($v0)
/* BD3B8 80106FF8 00008821 */  addu       $s1, $zero, $zero
/* BD3BC 80106FFC 0C0195AD */  jal        func_800656B4
/* BD3C0 80107000 02002021 */   addu      $a0, $s0, $zero
/* BD3C4 80107004 AE0000B4 */  sw         $zero, 0xB4($s0)
/* BD3C8 80107008 8E420380 */  lw         $v0, 0x380($s2)
/* BD3CC 8010700C 3C04FFFB */  lui        $a0, (0xFFFBFFFF >> 16)
/* BD3D0 80107010 8C430024 */  lw         $v1, 0x24($v0)
/* BD3D4 80107014 3484FFFF */  ori        $a0, $a0, (0xFFFBFFFF & 0xFFFF)
/* BD3D8 80107018 8C62005C */  lw         $v0, 0x5C($v1)
/* BD3DC 8010701C 02408021 */  addu       $s0, $s2, $zero
/* BD3E0 80107020 00441024 */  and        $v0, $v0, $a0
/* BD3E4 80107024 AC62005C */  sw         $v0, 0x5C($v1)
.Lrace_80107028:
/* BD3E8 80107028 8E420004 */  lw         $v0, 0x4($s2)
/* BD3EC 8010702C 8C420330 */  lw         $v0, 0x330($v0)
/* BD3F0 80107030 0222102B */  sltu       $v0, $s1, $v0
/* BD3F4 80107034 1040000A */  beqz       $v0, .Lrace_80107060
/* BD3F8 80107038 00000000 */   nop
/* BD3FC 8010703C 8E042AA0 */  lw         $a0, 0x2AA0($s0)
/* BD400 80107040 8E420380 */  lw         $v0, 0x380($s2)
/* BD404 80107044 26100004 */  addiu      $s0, $s0, 0x4
/* BD408 80107048 8C450024 */  lw         $a1, 0x24($v0)
/* BD40C 8010704C 8C460028 */  lw         $a2, 0x28($v0)
/* BD410 80107050 0C0129D4 */  jal        func_8004A750
/* BD414 80107054 26310001 */   addiu     $s1, $s1, 0x1
/* BD418 80107058 08041C0A */  j          .Lrace_80107028
/* BD41C 8010705C 00000000 */   nop
.Lrace_80107060:
/* BD420 80107060 8FBF001C */  lw         $ra, 0x1C($sp)
/* BD424 80107064 8FB20018 */  lw         $s2, 0x18($sp)
/* BD428 80107068 8FB10014 */  lw         $s1, 0x14($sp)
/* BD42C 8010706C 8FB00010 */  lw         $s0, 0x10($sp)
/* BD430 80107070 03E00008 */  jr         $ra
/* BD434 80107074 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80107078
/* BD438 80107078 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* BD43C 8010707C AFB20030 */  sw         $s2, 0x30($sp)
/* BD440 80107080 00809021 */  addu       $s2, $a0, $zero
/* BD444 80107084 26440220 */  addiu      $a0, $s2, 0x220
/* BD448 80107088 24050020 */  addiu      $a1, $zero, 0x20
/* BD44C 8010708C AFBF004C */  sw         $ra, 0x4C($sp)
/* BD450 80107090 AFBE0048 */  sw         $fp, 0x48($sp)
/* BD454 80107094 AFB70044 */  sw         $s7, 0x44($sp)
/* BD458 80107098 AFB60040 */  sw         $s6, 0x40($sp)
/* BD45C 8010709C AFB5003C */  sw         $s5, 0x3C($sp)
/* BD460 801070A0 AFB40038 */  sw         $s4, 0x38($sp)
/* BD464 801070A4 AFB30034 */  sw         $s3, 0x34($sp)
/* BD468 801070A8 AFB1002C */  sw         $s1, 0x2C($sp)
/* BD46C 801070AC 0C002A4D */  jal        func_8000A934
/* BD470 801070B0 AFB00028 */   sw        $s0, 0x28($sp)
/* BD474 801070B4 8E423328 */  lw         $v0, 0x3328($s2)
/* BD478 801070B8 10400004 */  beqz       $v0, .Lrace_801070CC
/* BD47C 801070BC 00009821 */   addu      $s3, $zero, $zero
/* BD480 801070C0 24080002 */  addiu      $t0, $zero, 0x2
/* BD484 801070C4 08041C36 */  j          .Lrace_801070D8
/* BD488 801070C8 AFA80010 */   sw        $t0, 0x10($sp)
.Lrace_801070CC:
/* BD48C 801070CC 8E420004 */  lw         $v0, 0x4($s2)
/* BD490 801070D0 8C420330 */  lw         $v0, 0x330($v0)
/* BD494 801070D4 AFA20010 */  sw         $v0, 0x10($sp)
.Lrace_801070D8:
/* BD498 801070D8 0000A021 */  addu       $s4, $zero, $zero
/* BD49C 801070DC 26480220 */  addiu      $t0, $s2, 0x220
/* BD4A0 801070E0 0240B821 */  addu       $s7, $s2, $zero
/* BD4A4 801070E4 AFA80014 */  sw         $t0, 0x14($sp)
/* BD4A8 801070E8 2408031C */  addiu      $t0, $zero, 0x31C
/* BD4AC 801070EC 02808821 */  addu       $s1, $s4, $zero
/* BD4B0 801070F0 AFA80018 */  sw         $t0, 0x18($sp)
/* BD4B4 801070F4 2408023C */  addiu      $t0, $zero, 0x23C
/* BD4B8 801070F8 0280F021 */  addu       $fp, $s4, $zero
/* BD4BC 801070FC AFA0001C */  sw         $zero, 0x1C($sp)
.Lrace_80107100:
/* BD4C0 80107100 AFA80020 */  sw         $t0, 0x20($sp)
/* BD4C4 80107104 8FA80010 */  lw         $t0, 0x10($sp)
/* BD4C8 80107108 0288102B */  sltu       $v0, $s4, $t0
/* BD4CC 8010710C 10400095 */  beqz       $v0, .Lrace_80107364
/* BD4D0 80107110 00000000 */   nop
/* BD4D4 80107114 8E423328 */  lw         $v0, 0x3328($s2)
/* BD4D8 80107118 14400008 */  bnez       $v0, .Lrace_8010713C
/* BD4DC 8010711C 0000B021 */   addu      $s6, $zero, $zero
/* BD4E0 80107120 26460220 */  addiu      $a2, $s2, 0x220
/* BD4E4 80107124 8FA80020 */  lw         $t0, 0x20($sp)
/* BD4E8 80107128 8EE506A8 */  lw         $a1, 0x6A8($s7)
/* BD4EC 8010712C 0C040741 */  jal        func_race_80101D04
/* BD4F0 80107130 02482021 */   addu      $a0, $s2, $t0
/* BD4F4 80107134 03D21021 */  addu       $v0, $fp, $s2
/* BD4F8 80107138 24530240 */  addiu      $s3, $v0, 0x240
.Lrace_8010713C:
/* BD4FC 8010713C 8E420004 */  lw         $v0, 0x4($s2)
/* BD500 80107140 00512021 */  addu       $a0, $v0, $s1
/* BD504 80107144 9095034C */  lbu        $s5, 0x34C($a0)
/* BD508 80107148 24020004 */  addiu      $v0, $zero, 0x4
/* BD50C 8010714C 16A20065 */  bne        $s5, $v0, .Lrace_801072E4
/* BD510 80107150 00000000 */   nop
/* BD514 80107154 9082034E */  lbu        $v0, 0x34E($a0)
/* BD518 80107158 2C420004 */  sltiu      $v0, $v0, 0x4
/* BD51C 8010715C 10400061 */  beqz       $v0, .Lrace_801072E4
/* BD520 80107160 00000000 */   nop
/* BD524 80107164 8E43021C */  lw         $v1, 0x21C($s2)
/* BD528 80107168 8C620050 */  lw         $v0, 0x50($v1)
/* BD52C 8010716C 9085034E */  lbu        $a1, 0x34E($a0)
/* BD530 80107170 84440018 */  lh         $a0, 0x18($v0)
/* BD534 80107174 8C42001C */  lw         $v0, 0x1C($v0)
/* BD538 80107178 0040F809 */  jalr       $v0
/* BD53C 8010717C 00642021 */   addu      $a0, $v1, $a0
/* BD540 80107180 00408021 */  addu       $s0, $v0, $zero
/* BD544 80107184 12000055 */  beqz       $s0, .Lrace_801072DC
/* BD548 80107188 00000000 */   nop
/* BD54C 8010718C 8E420004 */  lw         $v0, 0x4($s2)
/* BD550 80107190 00511021 */  addu       $v0, $v0, $s1
/* BD554 80107194 9043034D */  lbu        $v1, 0x34D($v0)
/* BD558 80107198 8E020050 */  lw         $v0, 0x50($s0)
/* BD55C 8010719C 1462004F */  bne        $v1, $v0, .Lrace_801072DC
/* BD560 801071A0 00000000 */   nop
/* BD564 801071A4 8FA80014 */  lw         $t0, 0x14($sp)
/* BD568 801071A8 8E020098 */  lw         $v0, 0x98($s0)
/* BD56C 801071AC AE08008C */  sw         $t0, 0x8C($s0)
/* BD570 801071B0 844400A8 */  lh         $a0, 0xA8($v0)
/* BD574 801071B4 8C4200AC */  lw         $v0, 0xAC($v0)
/* BD578 801071B8 0040F809 */  jalr       $v0
/* BD57C 801071BC 02042021 */   addu      $a0, $s0, $a0
/* BD580 801071C0 8E423328 */  lw         $v0, 0x3328($s2)
/* BD584 801071C4 1440005A */  bnez       $v0, .Lrace_80107330
/* BD588 801071C8 24160001 */   addiu     $s6, $zero, 0x1
/* BD58C 801071CC 8E420004 */  lw         $v0, 0x4($s2)
/* BD590 801071D0 00511021 */  addu       $v0, $v0, $s1
/* BD594 801071D4 9042034D */  lbu        $v0, 0x34D($v0)
/* BD598 801071D8 50550001 */  beql       $v0, $s5, .Lrace_801071E0
/* BD59C 801071DC AE160020 */   sw        $s6, 0x20($s0)
.Lrace_801071E0:
/* BD5A0 801071E0 02602021 */  addu       $a0, $s3, $zero
/* BD5A4 801071E4 8E420004 */  lw         $v0, 0x4($s2)
/* BD5A8 801071E8 02002821 */  addu       $a1, $s0, $zero
/* BD5AC 801071EC 00511021 */  addu       $v0, $v0, $s1
/* BD5B0 801071F0 8C460350 */  lw         $a2, 0x350($v0)
/* BD5B4 801071F4 0C0409E9 */  jal        func_race_801027A4
/* BD5B8 801071F8 00003821 */   addu      $a3, $zero, $zero
/* BD5BC 801071FC 02602021 */  addu       $a0, $s3, $zero
/* BD5C0 80107200 8E420004 */  lw         $v0, 0x4($s2)
/* BD5C4 80107204 02002821 */  addu       $a1, $s0, $zero
/* BD5C8 80107208 00511021 */  addu       $v0, $v0, $s1
/* BD5CC 8010720C 8C460354 */  lw         $a2, 0x354($v0)
/* BD5D0 80107210 0C0409E9 */  jal        func_race_801027A4
/* BD5D4 80107214 24070001 */   addiu     $a3, $zero, 0x1
/* BD5D8 80107218 02602021 */  addu       $a0, $s3, $zero
/* BD5DC 8010721C 8E420004 */  lw         $v0, 0x4($s2)
/* BD5E0 80107220 02002821 */  addu       $a1, $s0, $zero
/* BD5E4 80107224 00511021 */  addu       $v0, $v0, $s1
/* BD5E8 80107228 8C460358 */  lw         $a2, 0x358($v0)
/* BD5EC 8010722C 0C0409E9 */  jal        func_race_801027A4
/* BD5F0 80107230 24070002 */   addiu     $a3, $zero, 0x2
/* BD5F4 80107234 02602021 */  addu       $a0, $s3, $zero
/* BD5F8 80107238 8E420004 */  lw         $v0, 0x4($s2)
/* BD5FC 8010723C 02002821 */  addu       $a1, $s0, $zero
/* BD600 80107240 00511021 */  addu       $v0, $v0, $s1
/* BD604 80107244 8C46035C */  lw         $a2, 0x35C($v0)
/* BD608 80107248 0C0409E9 */  jal        func_race_801027A4
/* BD60C 8010724C 24070003 */   addiu     $a3, $zero, 0x3
/* BD610 80107250 02602021 */  addu       $a0, $s3, $zero
/* BD614 80107254 8E420004 */  lw         $v0, 0x4($s2)
/* BD618 80107258 02002821 */  addu       $a1, $s0, $zero
/* BD61C 8010725C 00511021 */  addu       $v0, $v0, $s1
/* BD620 80107260 8C460360 */  lw         $a2, 0x360($v0)
/* BD624 80107264 0C0409E9 */  jal        func_race_801027A4
/* BD628 80107268 24070004 */   addiu     $a3, $zero, 0x4
/* BD62C 8010726C 02602021 */  addu       $a0, $s3, $zero
/* BD630 80107270 8E420004 */  lw         $v0, 0x4($s2)
/* BD634 80107274 02002821 */  addu       $a1, $s0, $zero
/* BD638 80107278 00511021 */  addu       $v0, $v0, $s1
/* BD63C 8010727C 8C460364 */  lw         $a2, 0x364($v0)
/* BD640 80107280 0C0409E9 */  jal        func_race_801027A4
/* BD644 80107284 24070005 */   addiu     $a3, $zero, 0x5
/* BD648 80107288 02602021 */  addu       $a0, $s3, $zero
/* BD64C 8010728C 8E420004 */  lw         $v0, 0x4($s2)
/* BD650 80107290 02002821 */  addu       $a1, $s0, $zero
/* BD654 80107294 00511021 */  addu       $v0, $v0, $s1
/* BD658 80107298 8C460368 */  lw         $a2, 0x368($v0)
/* BD65C 8010729C 0C0409E9 */  jal        func_race_801027A4
/* BD660 801072A0 24070006 */   addiu     $a3, $zero, 0x6
/* BD664 801072A4 02602021 */  addu       $a0, $s3, $zero
/* BD668 801072A8 8E420004 */  lw         $v0, 0x4($s2)
/* BD66C 801072AC 02002821 */  addu       $a1, $s0, $zero
/* BD670 801072B0 00511021 */  addu       $v0, $v0, $s1
/* BD674 801072B4 8C46036C */  lw         $a2, 0x36C($v0)
/* BD678 801072B8 0C0409E9 */  jal        func_race_801027A4
/* BD67C 801072BC 24070007 */   addiu     $a3, $zero, 0x7
/* BD680 801072C0 02602021 */  addu       $a0, $s3, $zero
/* BD684 801072C4 8E420004 */  lw         $v0, 0x4($s2)
/* BD688 801072C8 02002821 */  addu       $a1, $s0, $zero
/* BD68C 801072CC 00511021 */  addu       $v0, $v0, $s1
/* BD690 801072D0 8C460370 */  lw         $a2, 0x370($v0)
/* BD694 801072D4 0C0409E9 */  jal        func_race_801027A4
/* BD698 801072D8 24070008 */   addiu     $a3, $zero, 0x8
.Lrace_801072DC:
/* BD69C 801072DC 0C0409F5 */  jal        func_race_801027D4
/* BD6A0 801072E0 02602021 */   addu      $a0, $s3, $zero
.Lrace_801072E4:
/* BD6A4 801072E4 8E423328 */  lw         $v0, 0x3328($s2)
/* BD6A8 801072E8 54400012 */  bnel       $v0, $zero, .Lrace_80107334
/* BD6AC 801072EC 26F70004 */   addiu     $s7, $s7, 0x4
/* BD6B0 801072F0 16C00006 */  bnez       $s6, .Lrace_8010730C
/* BD6B4 801072F4 3C04800D */   lui       $a0, %hi(D_race_800CD724)
/* BD6B8 801072F8 2484D724 */  addiu      $a0, $a0, %lo(D_race_800CD724)
/* BD6BC 801072FC 00002821 */  addu       $a1, $zero, $zero
/* BD6C0 80107300 00A03021 */  addu       $a2, $a1, $zero
/* BD6C4 80107304 0C011ACF */  jal        func_80046B3C
/* BD6C8 80107308 00A03821 */   addu      $a3, $a1, $zero
.Lrace_8010730C:
/* BD6CC 8010730C 8FA80018 */  lw         $t0, 0x18($sp)
/* BD6D0 80107310 8E65003C */  lw         $a1, 0x3C($s3)
/* BD6D4 80107314 0C03D2E5 */  jal        func_race_800F4B94
/* BD6D8 80107318 02482021 */   addu      $a0, $s2, $t0
/* BD6DC 8010731C 8FA8001C */  lw         $t0, 0x1C($sp)
/* BD6E0 80107320 8EE306A8 */  lw         $v1, 0x6A8($s7)
/* BD6E4 80107324 01121021 */  addu       $v0, $t0, $s2
/* BD6E8 80107328 2442031C */  addiu      $v0, $v0, 0x31C
/* BD6EC 8010732C AC620014 */  sw         $v0, 0x14($v1)
.Lrace_80107330:
/* BD6F0 80107330 26F70004 */  addiu      $s7, $s7, 0x4
.Lrace_80107334:
/* BD6F4 80107334 8FA80018 */  lw         $t0, 0x18($sp)
/* BD6F8 80107338 26310028 */  addiu      $s1, $s1, 0x28
/* BD6FC 8010733C 25080024 */  addiu      $t0, $t0, 0x24
/* BD700 80107340 AFA80018 */  sw         $t0, 0x18($sp)
/* BD704 80107344 8FA8001C */  lw         $t0, 0x1C($sp)
/* BD708 80107348 27DE0070 */  addiu      $fp, $fp, 0x70
/* BD70C 8010734C 25080024 */  addiu      $t0, $t0, 0x24
/* BD710 80107350 AFA8001C */  sw         $t0, 0x1C($sp)
/* BD714 80107354 8FA80020 */  lw         $t0, 0x20($sp)
/* BD718 80107358 26940001 */  addiu      $s4, $s4, 0x1
/* BD71C 8010735C 08041C40 */  j          .Lrace_80107100
/* BD720 80107360 25080070 */   addiu     $t0, $t0, 0x70
.Lrace_80107364:
/* BD724 80107364 8E44021C */  lw         $a0, 0x21C($s2)
/* BD728 80107368 0C01F211 */  jal        func_8007C844
/* BD72C 8010736C 00002821 */   addu      $a1, $zero, $zero
/* BD730 80107370 1440001B */  bnez       $v0, .Lrace_801073E0
/* BD734 80107374 24140001 */   addiu     $s4, $zero, 0x1
/* BD738 80107378 26510220 */  addiu      $s1, $s2, 0x220
/* BD73C 8010737C 02809821 */  addu       $s3, $s4, $zero
.Lrace_80107380:
/* BD740 80107380 2E820004 */  sltiu      $v0, $s4, 0x4
/* BD744 80107384 10400016 */  beqz       $v0, .Lrace_801073E0
/* BD748 80107388 02802821 */   addu      $a1, $s4, $zero
/* BD74C 8010738C 8E43021C */  lw         $v1, 0x21C($s2)
/* BD750 80107390 8C620050 */  lw         $v0, 0x50($v1)
/* BD754 80107394 84440018 */  lh         $a0, 0x18($v0)
/* BD758 80107398 8C42001C */  lw         $v0, 0x1C($v0)
/* BD75C 8010739C 0040F809 */  jalr       $v0
/* BD760 801073A0 00642021 */   addu      $a0, $v1, $a0
/* BD764 801073A4 00408021 */  addu       $s0, $v0, $zero
/* BD768 801073A8 5200FFF5 */  beql       $s0, $zero, .Lrace_80107380
/* BD76C 801073AC 26940001 */   addiu     $s4, $s4, 0x1
/* BD770 801073B0 8E02008C */  lw         $v0, 0x8C($s0)
/* BD774 801073B4 5440FFF2 */  bnel       $v0, $zero, .Lrace_80107380
/* BD778 801073B8 26940001 */   addiu     $s4, $s4, 0x1
/* BD77C 801073BC 8E020098 */  lw         $v0, 0x98($s0)
/* BD780 801073C0 AE11008C */  sw         $s1, 0x8C($s0)
/* BD784 801073C4 844400A8 */  lh         $a0, 0xA8($v0)
/* BD788 801073C8 8C4200AC */  lw         $v0, 0xAC($v0)
/* BD78C 801073CC 0040F809 */  jalr       $v0
/* BD790 801073D0 02042021 */   addu      $a0, $s0, $a0
/* BD794 801073D4 AE130020 */  sw         $s3, 0x20($s0)
/* BD798 801073D8 08041CE0 */  j          .Lrace_80107380
/* BD79C 801073DC 26940001 */   addiu     $s4, $s4, 0x1
.Lrace_801073E0:
/* BD7A0 801073E0 8E43021C */  lw         $v1, 0x21C($s2)
/* BD7A4 801073E4 8C620050 */  lw         $v0, 0x50($v1)
/* BD7A8 801073E8 00002821 */  addu       $a1, $zero, $zero
/* BD7AC 801073EC 84440038 */  lh         $a0, 0x38($v0)
/* BD7B0 801073F0 8C42003C */  lw         $v0, 0x3C($v0)
/* BD7B4 801073F4 0040F809 */  jalr       $v0
/* BD7B8 801073F8 00642021 */   addu      $a0, $v1, $a0
/* BD7BC 801073FC 0C002AFE */  jal        func_8000ABF8
/* BD7C0 80107400 26440220 */   addiu     $a0, $s2, 0x220
/* BD7C4 80107404 8FBF004C */  lw         $ra, 0x4C($sp)
/* BD7C8 80107408 8FBE0048 */  lw         $fp, 0x48($sp)
/* BD7CC 8010740C 8FB70044 */  lw         $s7, 0x44($sp)
/* BD7D0 80107410 8FB60040 */  lw         $s6, 0x40($sp)
/* BD7D4 80107414 8FB5003C */  lw         $s5, 0x3C($sp)
/* BD7D8 80107418 8FB40038 */  lw         $s4, 0x38($sp)
/* BD7DC 8010741C 8FB30034 */  lw         $s3, 0x34($sp)
/* BD7E0 80107420 8FB20030 */  lw         $s2, 0x30($sp)
/* BD7E4 80107424 8FB1002C */  lw         $s1, 0x2C($sp)
/* BD7E8 80107428 8FB00028 */  lw         $s0, 0x28($sp)
/* BD7EC 8010742C 03E00008 */  jr         $ra
/* BD7F0 80107430 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_race_80107434
/* BD7F4 80107434 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* BD7F8 80107438 AFB3001C */  sw         $s3, 0x1C($sp)
/* BD7FC 8010743C 00809821 */  addu       $s3, $a0, $zero
/* BD800 80107440 AFBF0020 */  sw         $ra, 0x20($sp)
/* BD804 80107444 AFB20018 */  sw         $s2, 0x18($sp)
/* BD808 80107448 AFB10014 */  sw         $s1, 0x14($sp)
/* BD80C 8010744C AFB00010 */  sw         $s0, 0x10($sp)
/* BD810 80107450 8E62021C */  lw         $v0, 0x21C($s3)
/* BD814 80107454 1040000C */  beqz       $v0, .Lrace_80107488
/* BD818 80107458 00009021 */   addu      $s2, $zero, $zero
/* BD81C 8010745C 2411023C */  addiu      $s1, $zero, 0x23C
/* BD820 80107460 2410031C */  addiu      $s0, $zero, 0x31C
.Lrace_80107464:
/* BD824 80107464 0C03D2D4 */  jal        func_race_800F4B50
/* BD828 80107468 02702021 */   addu      $a0, $s3, $s0
/* BD82C 8010746C 0C040731 */  jal        func_race_80101CC4
/* BD830 80107470 02712021 */   addu      $a0, $s3, $s1
/* BD834 80107474 26310070 */  addiu      $s1, $s1, 0x70
/* BD838 80107478 26520001 */  addiu      $s2, $s2, 0x1
/* BD83C 8010747C 2E420002 */  sltiu      $v0, $s2, 0x2
/* BD840 80107480 1440FFF8 */  bnez       $v0, .Lrace_80107464
/* BD844 80107484 26100024 */   addiu     $s0, $s0, 0x24
.Lrace_80107488:
/* BD848 80107488 0C002A7A */  jal        func_8000A9E8
/* BD84C 8010748C 26640220 */   addiu     $a0, $s3, 0x220
/* BD850 80107490 8FBF0020 */  lw         $ra, 0x20($sp)
/* BD854 80107494 8FB3001C */  lw         $s3, 0x1C($sp)
/* BD858 80107498 8FB20018 */  lw         $s2, 0x18($sp)
/* BD85C 8010749C 8FB10014 */  lw         $s1, 0x14($sp)
/* BD860 801074A0 8FB00010 */  lw         $s0, 0x10($sp)
/* BD864 801074A4 03E00008 */  jr         $ra
/* BD868 801074A8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_801074AC
/* BD86C 801074AC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BD870 801074B0 AFB00010 */  sw         $s0, 0x10($sp)
/* BD874 801074B4 00808021 */  addu       $s0, $a0, $zero
/* BD878 801074B8 AFBF0014 */  sw         $ra, 0x14($sp)
/* BD87C 801074BC 8E0332F8 */  lw         $v1, 0x32F8($s0)
/* BD880 801074C0 1060000E */  beqz       $v1, .Lrace_801074FC
/* BD884 801074C4 00000000 */   nop
/* BD888 801074C8 8C620000 */  lw         $v0, 0x0($v1)
/* BD88C 801074CC 84440018 */  lh         $a0, 0x18($v0)
/* BD890 801074D0 8C42001C */  lw         $v0, 0x1C($v0)
/* BD894 801074D4 0040F809 */  jalr       $v0
/* BD898 801074D8 00642021 */   addu      $a0, $v1, $a0
/* BD89C 801074DC 8E0332EC */  lw         $v1, 0x32EC($s0)
/* BD8A0 801074E0 8C620004 */  lw         $v0, 0x4($v1)
/* BD8A4 801074E4 8E0532F8 */  lw         $a1, 0x32F8($s0)
/* BD8A8 801074E8 84440030 */  lh         $a0, 0x30($v0)
/* BD8AC 801074EC 8C420034 */  lw         $v0, 0x34($v0)
/* BD8B0 801074F0 0040F809 */  jalr       $v0
/* BD8B4 801074F4 00642021 */   addu      $a0, $v1, $a0
/* BD8B8 801074F8 AE0032F8 */  sw         $zero, 0x32F8($s0)
.Lrace_801074FC:
/* BD8BC 801074FC 8E0332EC */  lw         $v1, 0x32EC($s0)
/* BD8C0 80107500 8C620004 */  lw         $v0, 0x4($v1)
/* BD8C4 80107504 00002821 */  addu       $a1, $zero, $zero
/* BD8C8 80107508 84440028 */  lh         $a0, 0x28($v0)
/* BD8CC 8010750C 8C42002C */  lw         $v0, 0x2C($v0)
/* BD8D0 80107510 0040F809 */  jalr       $v0
/* BD8D4 80107514 00642021 */   addu      $a0, $v1, $a0
/* BD8D8 80107518 00401821 */  addu       $v1, $v0, $zero
/* BD8DC 8010751C 1060000E */  beqz       $v1, .Lrace_80107558
/* BD8E0 80107520 AE0332F8 */   sw        $v1, 0x32F8($s0)
/* BD8E4 80107524 8C620000 */  lw         $v0, 0x0($v1)
/* BD8E8 80107528 8E0532FC */  lw         $a1, 0x32FC($s0)
/* BD8EC 8010752C 84440038 */  lh         $a0, 0x38($v0)
/* BD8F0 80107530 8C42003C */  lw         $v0, 0x3C($v0)
/* BD8F4 80107534 0040F809 */  jalr       $v0
/* BD8F8 80107538 00642021 */   addu      $a0, $v1, $a0
/* BD8FC 8010753C 8E0332F8 */  lw         $v1, 0x32F8($s0)
/* BD900 80107540 8C620000 */  lw         $v0, 0x0($v1)
/* BD904 80107544 00002821 */  addu       $a1, $zero, $zero
/* BD908 80107548 84440010 */  lh         $a0, 0x10($v0)
/* BD90C 8010754C 8C420014 */  lw         $v0, 0x14($v0)
/* BD910 80107550 0040F809 */  jalr       $v0
/* BD914 80107554 00642021 */   addu      $a0, $v1, $a0
.Lrace_80107558:
/* BD918 80107558 8FBF0014 */  lw         $ra, 0x14($sp)
/* BD91C 8010755C 8FB00010 */  lw         $s0, 0x10($sp)
/* BD920 80107560 03E00008 */  jr         $ra
/* BD924 80107564 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80107568
/* BD928 80107568 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* BD92C 8010756C AFB40050 */  sw         $s4, 0x50($sp)
/* BD930 80107570 0080A021 */  addu       $s4, $a0, $zero
/* BD934 80107574 AFBF0054 */  sw         $ra, 0x54($sp)
/* BD938 80107578 AFB3004C */  sw         $s3, 0x4C($sp)
/* BD93C 8010757C AFB20048 */  sw         $s2, 0x48($sp)
/* BD940 80107580 AFB10044 */  sw         $s1, 0x44($sp)
/* BD944 80107584 AFB00040 */  sw         $s0, 0x40($sp)
/* BD948 80107588 8E820380 */  lw         $v0, 0x380($s4)
/* BD94C 8010758C 1040000A */  beqz       $v0, .Lrace_801075B8
/* BD950 80107590 00001821 */   addu      $v1, $zero, $zero
/* BD954 80107594 8E842AA0 */  lw         $a0, 0x2AA0($s4)
/* BD958 80107598 10800007 */  beqz       $a0, .Lrace_801075B8
/* BD95C 8010759C 00000000 */   nop
/* BD960 801075A0 8C840024 */  lw         $a0, 0x24($a0)
/* BD964 801075A4 10800004 */  beqz       $a0, .Lrace_801075B8
/* BD968 801075A8 00000000 */   nop
/* BD96C 801075AC 0C0199BD */  jal        func_800666F4
/* BD970 801075B0 00000000 */   nop
/* BD974 801075B4 0002182B */  sltu       $v1, $zero, $v0
.Lrace_801075B8:
/* BD978 801075B8 10600026 */  beqz       $v1, .Lrace_80107654
/* BD97C 801075BC 27A50030 */   addiu     $a1, $sp, 0x30
/* BD980 801075C0 8E822AA0 */  lw         $v0, 0x2AA0($s4)
/* BD984 801075C4 8C430000 */  lw         $v1, 0x0($v0)
/* BD988 801075C8 8C62000C */  lw         $v0, 0xC($v1)
/* BD98C 801075CC 00009821 */  addu       $s3, $zero, $zero
/* BD990 801075D0 84440088 */  lh         $a0, 0x88($v0)
/* BD994 801075D4 8C42008C */  lw         $v0, 0x8C($v0)
/* BD998 801075D8 0040F809 */  jalr       $v0
/* BD99C 801075DC 00642021 */   addu      $a0, $v1, $a0
/* BD9A0 801075E0 8E822AA0 */  lw         $v0, 0x2AA0($s4)
/* BD9A4 801075E4 24122AA8 */  addiu      $s2, $zero, 0x2AA8
/* BD9A8 801075E8 8C430000 */  lw         $v1, 0x0($v0)
/* BD9AC 801075EC 27A50010 */  addiu      $a1, $sp, 0x10
/* BD9B0 801075F0 8C62000C */  lw         $v0, 0xC($v1)
/* BD9B4 801075F4 27A60020 */  addiu      $a2, $sp, 0x20
/* BD9B8 801075F8 84440040 */  lh         $a0, 0x40($v0)
/* BD9BC 801075FC 8C420044 */  lw         $v0, 0x44($v0)
/* BD9C0 80107600 0040F809 */  jalr       $v0
/* BD9C4 80107604 00642021 */   addu      $a0, $v1, $a0
/* BD9C8 80107608 02808821 */  addu       $s1, $s4, $zero
.Lrace_8010760C:
/* BD9CC 8010760C 8E242AA0 */  lw         $a0, 0x2AA0($s1)
/* BD9D0 80107610 5080000B */  beql       $a0, $zero, .Lrace_80107640
/* BD9D4 80107614 26520150 */   addiu     $s2, $s2, 0x150
/* BD9D8 80107618 0C0129D7 */  jal        func_8004A75C
/* BD9DC 8010761C 02928021 */   addu      $s0, $s4, $s2
/* BD9E0 80107620 02002021 */  addu       $a0, $s0, $zero
/* BD9E4 80107624 0C03F258 */  jal        func_race_800FC960
/* BD9E8 80107628 27A50030 */   addiu     $a1, $sp, 0x30
/* BD9EC 8010762C 02002021 */  addu       $a0, $s0, $zero
/* BD9F0 80107630 27A50010 */  addiu      $a1, $sp, 0x10
/* BD9F4 80107634 0C03F23A */  jal        func_race_800FC8E8
/* BD9F8 80107638 27A60020 */   addiu     $a2, $sp, 0x20
/* BD9FC 8010763C 26520150 */  addiu      $s2, $s2, 0x150
.Lrace_80107640:
/* BDA00 80107640 26730001 */  addiu      $s3, $s3, 0x1
/* BDA04 80107644 2E620002 */  sltiu      $v0, $s3, 0x2
/* BDA08 80107648 1440FFF0 */  bnez       $v0, .Lrace_8010760C
/* BDA0C 8010764C 26310004 */   addiu     $s1, $s1, 0x4
/* BDA10 80107650 AE803304 */  sw         $zero, 0x3304($s4)
.Lrace_80107654:
/* BDA14 80107654 8E823304 */  lw         $v0, 0x3304($s4)
/* BDA18 80107658 2C4207D0 */  sltiu      $v0, $v0, 0x7D0
/* BDA1C 8010765C 1440002C */  bnez       $v0, .Lrace_80107710
/* BDA20 80107660 00000000 */   nop
/* BDA24 80107664 8E822AA0 */  lw         $v0, 0x2AA0($s4)
/* BDA28 80107668 10400004 */  beqz       $v0, .Lrace_8010767C
/* BDA2C 8010766C 00000000 */   nop
/* BDA30 80107670 8C420024 */  lw         $v0, 0x24($v0)
/* BDA34 80107674 14400026 */  bnez       $v0, .Lrace_80107710
/* BDA38 80107678 00000000 */   nop
.Lrace_8010767C:
/* BDA3C 8010767C 8E820004 */  lw         $v0, 0x4($s4)
/* BDA40 80107680 24030002 */  addiu      $v1, $zero, 0x2
/* BDA44 80107684 AE803304 */  sw         $zero, 0x3304($s4)
/* BDA48 80107688 AE833300 */  sw         $v1, 0x3300($s4)
/* BDA4C 8010768C 8C420330 */  lw         $v0, 0x330($v0)
/* BDA50 80107690 10400018 */  beqz       $v0, .Lrace_801076F4
/* BDA54 80107694 00008821 */   addu      $s1, $zero, $zero
/* BDA58 80107698 2413031C */  addiu      $s3, $zero, 0x31C
/* BDA5C 8010769C 24122810 */  addiu      $s2, $zero, 0x2810
/* BDA60 801076A0 02808021 */  addu       $s0, $s4, $zero
.Lrace_801076A4:
/* BDA64 801076A4 8E0406A8 */  lw         $a0, 0x6A8($s0)
/* BDA68 801076A8 0C04393A */  jal        func_race_8010E4E8
/* BDA6C 801076AC 00000000 */   nop
/* BDA70 801076B0 8E823334 */  lw         $v0, 0x3334($s4)
/* BDA74 801076B4 54400004 */  bnel       $v0, $zero, .Lrace_801076C8
/* BDA78 801076B8 26520140 */   addiu     $s2, $s2, 0x140
/* BDA7C 801076BC 0C03E811 */  jal        func_race_800FA044
/* BDA80 801076C0 02922021 */   addu      $a0, $s4, $s2
/* BDA84 801076C4 26520140 */  addiu      $s2, $s2, 0x140
.Lrace_801076C8:
/* BDA88 801076C8 8E0406A8 */  lw         $a0, 0x6A8($s0)
/* BDA8C 801076CC 0C043417 */  jal        func_race_8010D05C
/* BDA90 801076D0 26100004 */   addiu     $s0, $s0, 0x4
/* BDA94 801076D4 0C03D400 */  jal        func_race_800F5000
/* BDA98 801076D8 02932021 */   addu      $a0, $s4, $s3
/* BDA9C 801076DC 8E820004 */  lw         $v0, 0x4($s4)
/* BDAA0 801076E0 26310001 */  addiu      $s1, $s1, 0x1
/* BDAA4 801076E4 8C420330 */  lw         $v0, 0x330($v0)
/* BDAA8 801076E8 0222102B */  sltu       $v0, $s1, $v0
/* BDAAC 801076EC 1440FFED */  bnez       $v0, .Lrace_801076A4
/* BDAB0 801076F0 26730024 */   addiu     $s3, $s3, 0x24
.Lrace_801076F4:
/* BDAB4 801076F4 8E840018 */  lw         $a0, 0x18($s4)
/* BDAB8 801076F8 10800003 */  beqz       $a0, .Lrace_80107708
/* BDABC 801076FC 00000000 */   nop
/* BDAC0 80107700 0C045796 */  jal        func_race_80115E58
/* BDAC4 80107704 00000000 */   nop
.Lrace_80107708:
/* BDAC8 80107708 0C041DCC */  jal        func_race_80107730
/* BDACC 8010770C 02802021 */   addu      $a0, $s4, $zero
.Lrace_80107710:
/* BDAD0 80107710 8FBF0054 */  lw         $ra, 0x54($sp)
/* BDAD4 80107714 8FB40050 */  lw         $s4, 0x50($sp)
/* BDAD8 80107718 8FB3004C */  lw         $s3, 0x4C($sp)
/* BDADC 8010771C 8FB20048 */  lw         $s2, 0x48($sp)
/* BDAE0 80107720 8FB10044 */  lw         $s1, 0x44($sp)
/* BDAE4 80107724 8FB00040 */  lw         $s0, 0x40($sp)
/* BDAE8 80107728 03E00008 */  jr         $ra
/* BDAEC 8010772C 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_race_80107730
/* BDAF0 80107730 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* BDAF4 80107734 AFB3001C */  sw         $s3, 0x1C($sp)
/* BDAF8 80107738 00809821 */  addu       $s3, $a0, $zero
/* BDAFC 8010773C AFBF0020 */  sw         $ra, 0x20($sp)
/* BDB00 80107740 AFB20018 */  sw         $s2, 0x18($sp)
/* BDB04 80107744 AFB10014 */  sw         $s1, 0x14($sp)
/* BDB08 80107748 AFB00010 */  sw         $s0, 0x10($sp)
/* BDB0C 8010774C 8E623304 */  lw         $v0, 0x3304($s3)
/* BDB10 80107750 2C420BB8 */  sltiu      $v0, $v0, 0xBB8
/* BDB14 80107754 10400004 */  beqz       $v0, .Lrace_80107768
/* BDB18 80107758 26640390 */   addiu     $a0, $s3, 0x390
/* BDB1C 8010775C 8E623334 */  lw         $v0, 0x3334($s3)
/* BDB20 80107760 1040006C */  beqz       $v0, .Lrace_80107914
/* BDB24 80107764 00000000 */   nop
.Lrace_80107768:
/* BDB28 80107768 24020003 */  addiu      $v0, $zero, 0x3
/* BDB2C 8010776C AE603304 */  sw         $zero, 0x3304($s3)
/* BDB30 80107770 0C04464A */  jal        func_race_80111928
/* BDB34 80107774 AE623300 */   sw        $v0, 0x3300($s3)
/* BDB38 80107778 00009021 */  addu       $s2, $zero, $zero
/* BDB3C 8010777C 2411023C */  addiu      $s1, $zero, 0x23C
/* BDB40 80107780 02408021 */  addu       $s0, $s2, $zero
.Lrace_80107784:
/* BDB44 80107784 8E620004 */  lw         $v0, 0x4($s3)
/* BDB48 80107788 8C420330 */  lw         $v0, 0x330($v0)
/* BDB4C 8010778C 0242102B */  sltu       $v0, $s2, $v0
/* BDB50 80107790 1040000A */  beqz       $v0, .Lrace_801077BC
/* BDB54 80107794 02131021 */   addu      $v0, $s0, $s3
/* BDB58 80107798 8C42023C */  lw         $v0, 0x23C($v0)
/* BDB5C 8010779C 50400004 */  beql       $v0, $zero, .Lrace_801077B0
/* BDB60 801077A0 26310070 */   addiu     $s1, $s1, 0x70
/* BDB64 801077A4 0C04094C */  jal        func_race_80102530
/* BDB68 801077A8 02712021 */   addu      $a0, $s3, $s1
/* BDB6C 801077AC 26310070 */  addiu      $s1, $s1, 0x70
.Lrace_801077B0:
/* BDB70 801077B0 26100070 */  addiu      $s0, $s0, 0x70
/* BDB74 801077B4 08041DE1 */  j          .Lrace_80107784
/* BDB78 801077B8 26520001 */   addiu     $s2, $s2, 0x1
.Lrace_801077BC:
/* BDB7C 801077BC 0C04B4A3 */  jal        func_race_8012D28C
/* BDB80 801077C0 266406B0 */   addiu     $a0, $s3, 0x6B0
/* BDB84 801077C4 8E64333C */  lw         $a0, 0x333C($s3)
/* BDB88 801077C8 10800004 */  beqz       $a0, .Lrace_801077DC
/* BDB8C 801077CC 00000000 */   nop
/* BDB90 801077D0 8E6506A8 */  lw         $a1, 0x6A8($s3)
/* BDB94 801077D4 0C03D7A9 */  jal        func_race_800F5EA4
/* BDB98 801077D8 00000000 */   nop
.Lrace_801077DC:
/* BDB9C 801077DC 8E6332F8 */  lw         $v1, 0x32F8($s3)
/* BDBA0 801077E0 5060004A */  beql       $v1, $zero, .Lrace_8010790C
/* BDBA4 801077E4 AE603308 */   sw        $zero, 0x3308($s3)
/* BDBA8 801077E8 8C620000 */  lw         $v0, 0x0($v1)
/* BDBAC 801077EC 84440018 */  lh         $a0, 0x18($v0)
/* BDBB0 801077F0 8C42001C */  lw         $v0, 0x1C($v0)
/* BDBB4 801077F4 0040F809 */  jalr       $v0
/* BDBB8 801077F8 00642021 */   addu      $a0, $v1, $a0
/* BDBBC 801077FC 8E6332EC */  lw         $v1, 0x32EC($s3)
/* BDBC0 80107800 8C620004 */  lw         $v0, 0x4($v1)
/* BDBC4 80107804 8E6532F8 */  lw         $a1, 0x32F8($s3)
/* BDBC8 80107808 84440030 */  lh         $a0, 0x30($v0)
/* BDBCC 8010780C 8C420034 */  lw         $v0, 0x34($v0)
/* BDBD0 80107810 0040F809 */  jalr       $v0
/* BDBD4 80107814 00642021 */   addu      $a0, $v1, $a0
/* BDBD8 80107818 8E6232EC */  lw         $v0, 0x32EC($s3)
/* BDBDC 8010781C 8C420000 */  lw         $v0, 0x0($v0)
/* BDBE0 80107820 2C420005 */  sltiu      $v0, $v0, 0x5
/* BDBE4 80107824 14400021 */  bnez       $v0, .Lrace_801078AC
/* BDBE8 80107828 24070001 */   addiu     $a3, $zero, 0x1
/* BDBEC 8010782C 8E620018 */  lw         $v0, 0x18($s3)
/* BDBF0 80107830 1440001E */  bnez       $v0, .Lrace_801078AC
/* BDBF4 80107834 3C068003 */   lui       $a2, %hi(D_8002FAB0)
/* BDBF8 80107838 3C028003 */  lui        $v0, %hi(D_8002F2B0)
/* BDBFC 8010783C 2442F2B0 */  addiu      $v0, $v0, %lo(D_8002F2B0)
/* BDC00 80107840 8CC4FAB0 */  lw         $a0, %lo(D_8002FAB0)($a2)
/* BDC04 80107844 8E6532EC */  lw         $a1, 0x32EC($s3)
/* BDC08 80107848 00872021 */  addu       $a0, $a0, $a3
/* BDC0C 8010784C 308403FF */  andi       $a0, $a0, 0x3FF
/* BDC10 80107850 00E41804 */  sllv       $v1, $a0, $a3
/* BDC14 80107854 00621821 */  addu       $v1, $v1, $v0
/* BDC18 80107858 8CA20000 */  lw         $v0, 0x0($a1)
/* BDC1C 8010785C 94630000 */  lhu        $v1, 0x0($v1)
/* BDC20 80107860 2442FFFD */  addiu      $v0, $v0, -0x3
/* BDC24 80107864 0062001B */  divu       $zero, $v1, $v0
/* BDC28 80107868 14400002 */  bnez       $v0, .Lrace_80107874
/* BDC2C 8010786C 00000000 */   nop
/* BDC30 80107870 0007000D */  break      7
.Lrace_80107874:
/* BDC34 80107874 00002810 */  mfhi       $a1
/* BDC38 80107878 10A70009 */  beq        $a1, $a3, .Lrace_801078A0
/* BDC3C 8010787C ACC4FAB0 */   sw        $a0, %lo(D_8002FAB0)($a2)
/* BDC40 80107880 10A0000A */  beqz       $a1, .Lrace_801078AC
/* BDC44 80107884 24020002 */   addiu     $v0, $zero, 0x2
/* BDC48 80107888 10A20007 */  beq        $a1, $v0, .Lrace_801078A8
/* BDC4C 8010788C 24020003 */   addiu     $v0, $zero, 0x3
/* BDC50 80107890 50A20006 */  beql       $a1, $v0, .Lrace_801078AC
/* BDC54 80107894 24070006 */   addiu     $a3, $zero, 0x6
/* BDC58 80107898 08041E2B */  j          .Lrace_801078AC
/* BDC5C 8010789C 00000000 */   nop
.Lrace_801078A0:
/* BDC60 801078A0 08041E2B */  j          .Lrace_801078AC
/* BDC64 801078A4 24070004 */   addiu     $a3, $zero, 0x4
.Lrace_801078A8:
/* BDC68 801078A8 24070005 */  addiu      $a3, $zero, 0x5
.Lrace_801078AC:
/* BDC6C 801078AC 8E6332EC */  lw         $v1, 0x32EC($s3)
/* BDC70 801078B0 8C620004 */  lw         $v0, 0x4($v1)
/* BDC74 801078B4 00E02821 */  addu       $a1, $a3, $zero
/* BDC78 801078B8 84440028 */  lh         $a0, 0x28($v0)
/* BDC7C 801078BC 8C42002C */  lw         $v0, 0x2C($v0)
/* BDC80 801078C0 0040F809 */  jalr       $v0
/* BDC84 801078C4 00642021 */   addu      $a0, $v1, $a0
/* BDC88 801078C8 00401821 */  addu       $v1, $v0, $zero
/* BDC8C 801078CC 1060000E */  beqz       $v1, .Lrace_80107908
/* BDC90 801078D0 AE6332F8 */   sw        $v1, 0x32F8($s3)
/* BDC94 801078D4 8C620000 */  lw         $v0, 0x0($v1)
/* BDC98 801078D8 8E6532FC */  lw         $a1, 0x32FC($s3)
/* BDC9C 801078DC 84440038 */  lh         $a0, 0x38($v0)
/* BDCA0 801078E0 8C42003C */  lw         $v0, 0x3C($v0)
/* BDCA4 801078E4 0040F809 */  jalr       $v0
/* BDCA8 801078E8 00642021 */   addu      $a0, $v1, $a0
/* BDCAC 801078EC 8E6332F8 */  lw         $v1, 0x32F8($s3)
/* BDCB0 801078F0 8C620000 */  lw         $v0, 0x0($v1)
/* BDCB4 801078F4 24050001 */  addiu      $a1, $zero, 0x1
/* BDCB8 801078F8 84440010 */  lh         $a0, 0x10($v0)
/* BDCBC 801078FC 8C420014 */  lw         $v0, 0x14($v0)
/* BDCC0 80107900 0040F809 */  jalr       $v0
/* BDCC4 80107904 00642021 */   addu      $a0, $v1, $a0
.Lrace_80107908:
/* BDCC8 80107908 AE603308 */  sw         $zero, 0x3308($s3)
.Lrace_8010790C:
/* BDCCC 8010790C 0C041E4C */  jal        func_race_80107930
/* BDCD0 80107910 02602021 */   addu      $a0, $s3, $zero
.Lrace_80107914:
/* BDCD4 80107914 8FBF0020 */  lw         $ra, 0x20($sp)
/* BDCD8 80107918 8FB3001C */  lw         $s3, 0x1C($sp)
/* BDCDC 8010791C 8FB20018 */  lw         $s2, 0x18($sp)
/* BDCE0 80107920 8FB10014 */  lw         $s1, 0x14($sp)
/* BDCE4 80107924 8FB00010 */  lw         $s0, 0x10($sp)
/* BDCE8 80107928 03E00008 */  jr         $ra
/* BDCEC 8010792C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_80107930
/* BDCF0 80107930 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* BDCF4 80107934 AFB10014 */  sw         $s1, 0x14($sp)
/* BDCF8 80107938 00808821 */  addu       $s1, $a0, $zero
/* BDCFC 8010793C AFB00010 */  sw         $s0, 0x10($sp)
/* BDD00 80107940 00008021 */  addu       $s0, $zero, $zero
/* BDD04 80107944 AFB40020 */  sw         $s4, 0x20($sp)
/* BDD08 80107948 26340390 */  addiu      $s4, $s1, 0x390
/* BDD0C 8010794C AFB3001C */  sw         $s3, 0x1C($sp)
/* BDD10 80107950 02009821 */  addu       $s3, $s0, $zero
/* BDD14 80107954 AFBF0024 */  sw         $ra, 0x24($sp)
/* BDD18 80107958 AFB20018 */  sw         $s2, 0x18($sp)
.Lrace_8010795C:
/* BDD1C 8010795C 8E220004 */  lw         $v0, 0x4($s1)
/* BDD20 80107960 8C420104 */  lw         $v0, 0x104($v0)
/* BDD24 80107964 0202102B */  sltu       $v0, $s0, $v0
/* BDD28 80107968 104000A0 */  beqz       $v0, .Lrace_80107BEC
/* BDD2C 8010796C 00000000 */   nop
/* BDD30 80107970 8E820140 */  lw         $v0, 0x140($s4)
/* BDD34 80107974 92233320 */  lbu        $v1, 0x3320($s1)
/* BDD38 80107978 00539021 */  addu       $s2, $v0, $s3
/* BDD3C 8010797C 8E420CE4 */  lw         $v0, 0xCE4($s2)
/* BDD40 80107980 0043102B */  sltu       $v0, $v0, $v1
/* BDD44 80107984 14400004 */  bnez       $v0, .Lrace_80107998
/* BDD48 80107988 00002021 */   addu      $a0, $zero, $zero
/* BDD4C 8010798C 8E420D04 */  lw         $v0, 0xD04($s2)
/* BDD50 80107990 30421000 */  andi       $v0, $v0, 0x1000
/* BDD54 80107994 2C440001 */  sltiu      $a0, $v0, 0x1
.Lrace_80107998:
/* BDD58 80107998 50800092 */  beql       $a0, $zero, .Lrace_80107BE4
/* BDD5C 8010799C 26730E2C */   addiu     $s3, $s3, 0xE2C
/* BDD60 801079A0 8E420D04 */  lw         $v0, 0xD04($s2)
/* BDD64 801079A4 34421000 */  ori        $v0, $v0, 0x1000
/* BDD68 801079A8 AE420D04 */  sw         $v0, 0xD04($s2)
/* BDD6C 801079AC 8E240018 */  lw         $a0, 0x18($s1)
/* BDD70 801079B0 10800005 */  beqz       $a0, .Lrace_801079C8
/* BDD74 801079B4 00000000 */   nop
/* BDD78 801079B8 8E450DFC */  lw         $a1, 0xDFC($s2)
/* BDD7C 801079BC 8E263308 */  lw         $a2, 0x3308($s1)
/* BDD80 801079C0 0C04579E */  jal        func_race_80115E78
/* BDD84 801079C4 00000000 */   nop
.Lrace_801079C8:
/* BDD88 801079C8 8E253308 */  lw         $a1, 0x3308($s1)
/* BDD8C 801079CC 02402021 */  addu       $a0, $s2, $zero
/* BDD90 801079D0 24A50001 */  addiu      $a1, $a1, 0x1
/* BDD94 801079D4 0C04389D */  jal        func_race_8010E274
/* BDD98 801079D8 AE253308 */   sw        $a1, 0x3308($s1)
/* BDD9C 801079DC 8E420D08 */  lw         $v0, 0xD08($s2)
/* BDDA0 801079E0 38420002 */  xori       $v0, $v0, 0x2
/* BDDA4 801079E4 14400006 */  bnez       $v0, .Lrace_80107A00
/* BDDA8 801079E8 00000000 */   nop
/* BDDAC 801079EC 8E223328 */  lw         $v0, 0x3328($s1)
/* BDDB0 801079F0 5040007C */  beql       $v0, $zero, .Lrace_80107BE4
/* BDDB4 801079F4 26730E2C */   addiu     $s3, $s3, 0xE2C
/* BDDB8 801079F8 5600007A */  bnel       $s0, $zero, .Lrace_80107BE4
/* BDDBC 801079FC 26730E2C */   addiu     $s3, $s3, 0xE2C
.Lrace_80107A00:
/* BDDC0 80107A00 8E2206A8 */  lw         $v0, 0x6A8($s1)
/* BDDC4 80107A04 1052000A */  beq        $v0, $s2, .Lrace_80107A30
/* BDDC8 80107A08 00008021 */   addu      $s0, $zero, $zero
/* BDDCC 80107A0C 8E220004 */  lw         $v0, 0x4($s1)
/* BDDD0 80107A10 02201821 */  addu       $v1, $s1, $zero
/* BDDD4 80107A14 8C440330 */  lw         $a0, 0x330($v0)
.Lrace_80107A18:
/* BDDD8 80107A18 0204102B */  sltu       $v0, $s0, $a0
/* BDDDC 80107A1C 10400004 */  beqz       $v0, .Lrace_80107A30
/* BDDE0 80107A20 24630004 */   addiu     $v1, $v1, 0x4
/* BDDE4 80107A24 8C6206A8 */  lw         $v0, 0x6A8($v1)
/* BDDE8 80107A28 1452FFFB */  bne        $v0, $s2, .Lrace_80107A18
/* BDDEC 80107A2C 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_80107A30:
/* BDDF0 80107A30 00101080 */  sll        $v0, $s0, 2
/* BDDF4 80107A34 00509821 */  addu       $s3, $v0, $s0
/* BDDF8 80107A38 00132180 */  sll        $a0, $s3, 6
/* BDDFC 80107A3C 24842810 */  addiu      $a0, $a0, 0x2810
/* BDE00 80107A40 0C03E814 */  jal        func_race_800FA050
/* BDE04 80107A44 02242021 */   addu      $a0, $s1, $a0
/* BDE08 80107A48 8E233334 */  lw         $v1, 0x3334($s1)
/* BDE0C 80107A4C 24020004 */  addiu      $v0, $zero, 0x4
/* BDE10 80107A50 AE203304 */  sw         $zero, 0x3304($s1)
/* BDE14 80107A54 10600003 */  beqz       $v1, .Lrace_80107A64
/* BDE18 80107A58 AE223300 */   sw        $v0, 0x3300($s1)
/* BDE1C 80107A5C 24022328 */  addiu      $v0, $zero, 0x2328
/* BDE20 80107A60 AE223304 */  sw         $v0, 0x3304($s1)
.Lrace_80107A64:
/* BDE24 80107A64 001010C0 */  sll        $v0, $s0, 3
/* BDE28 80107A68 00501023 */  subu       $v0, $v0, $s0
/* BDE2C 80107A6C 00022100 */  sll        $a0, $v0, 4
/* BDE30 80107A70 00911021 */  addu       $v0, $a0, $s1
/* BDE34 80107A74 8C42023C */  lw         $v0, 0x23C($v0)
/* BDE38 80107A78 10400003 */  beqz       $v0, .Lrace_80107A88
/* BDE3C 80107A7C 2484023C */   addiu     $a0, $a0, 0x23C
/* BDE40 80107A80 0C04096B */  jal        func_race_801025AC
/* BDE44 80107A84 02242021 */   addu      $a0, $s1, $a0
.Lrace_80107A88:
/* BDE48 80107A88 262406B0 */  addiu      $a0, $s1, 0x6B0
/* BDE4C 80107A8C 0C04B3F9 */  jal        func_race_8012CFE4
/* BDE50 80107A90 02402821 */   addu      $a1, $s2, $zero
/* BDE54 80107A94 8E440D04 */  lw         $a0, 0xD04($s2)
/* BDE58 80107A98 30820010 */  andi       $v0, $a0, 0x10
/* BDE5C 80107A9C 14400004 */  bnez       $v0, .Lrace_80107AB0
/* BDE60 80107AA0 00001821 */   addu      $v1, $zero, $zero
/* BDE64 80107AA4 3C020020 */  lui        $v0, (0x200000 >> 16)
/* BDE68 80107AA8 00821024 */  and        $v0, $a0, $v0
/* BDE6C 80107AAC 2C430001 */  sltiu      $v1, $v0, 0x1
.Lrace_80107AB0:
/* BDE70 80107AB0 1060000B */  beqz       $v1, .Lrace_80107AE0
/* BDE74 80107AB4 00000000 */   nop
/* BDE78 80107AB8 8E223334 */  lw         $v0, 0x3334($s1)
/* BDE7C 80107ABC 14400008 */  bnez       $v0, .Lrace_80107AE0
/* BDE80 80107AC0 00132080 */   sll       $a0, $s3, 2
/* BDE84 80107AC4 00902021 */  addu       $a0, $a0, $s0
/* BDE88 80107AC8 00042100 */  sll        $a0, $a0, 4
/* BDE8C 80107ACC 24842AA8 */  addiu      $a0, $a0, 0x2AA8
/* BDE90 80107AD0 02242021 */  addu       $a0, $s1, $a0
/* BDE94 80107AD4 8E26332C */  lw         $a2, 0x332C($s1)
/* BDE98 80107AD8 0C03F26E */  jal        func_race_800FC9B8
/* BDE9C 80107ADC 24050004 */   addiu     $a1, $zero, 0x4
.Lrace_80107AE0:
/* BDEA0 80107AE0 8E24333C */  lw         $a0, 0x333C($s1)
/* BDEA4 80107AE4 10800003 */  beqz       $a0, .Lrace_80107AF4
/* BDEA8 80107AE8 00000000 */   nop
/* BDEAC 80107AEC 0C03D856 */  jal        func_race_800F6158
/* BDEB0 80107AF0 00000000 */   nop
.Lrace_80107AF4:
/* BDEB4 80107AF4 8E2332F8 */  lw         $v1, 0x32F8($s1)
/* BDEB8 80107AF8 1060002C */  beqz       $v1, .Lrace_80107BAC
/* BDEBC 80107AFC 00000000 */   nop
/* BDEC0 80107B00 8C620000 */  lw         $v0, 0x0($v1)
/* BDEC4 80107B04 84440018 */  lh         $a0, 0x18($v0)
/* BDEC8 80107B08 8C42001C */  lw         $v0, 0x1C($v0)
/* BDECC 80107B0C 0040F809 */  jalr       $v0
/* BDED0 80107B10 00642021 */   addu      $a0, $v1, $a0
/* BDED4 80107B14 8E2332EC */  lw         $v1, 0x32EC($s1)
/* BDED8 80107B18 8C620004 */  lw         $v0, 0x4($v1)
/* BDEDC 80107B1C 8E2532F8 */  lw         $a1, 0x32F8($s1)
/* BDEE0 80107B20 84440030 */  lh         $a0, 0x30($v0)
/* BDEE4 80107B24 8C420034 */  lw         $v0, 0x34($v0)
/* BDEE8 80107B28 0040F809 */  jalr       $v0
/* BDEEC 80107B2C 00642021 */   addu      $a0, $v1, $a0
/* BDEF0 80107B30 8E430D00 */  lw         $v1, 0xD00($s2)
/* BDEF4 80107B34 24020001 */  addiu      $v0, $zero, 0x1
/* BDEF8 80107B38 14620005 */  bne        $v1, $v0, .Lrace_80107B50
/* BDEFC 80107B3C 24050003 */   addiu     $a1, $zero, 0x3
/* BDF00 80107B40 8E2332EC */  lw         $v1, 0x32EC($s1)
/* BDF04 80107B44 8C620004 */  lw         $v0, 0x4($v1)
/* BDF08 80107B48 08041ED6 */  j          .Lrace_80107B58
/* BDF0C 80107B4C 24050002 */   addiu     $a1, $zero, 0x2
.Lrace_80107B50:
/* BDF10 80107B50 8E2332EC */  lw         $v1, 0x32EC($s1)
/* BDF14 80107B54 8C620004 */  lw         $v0, 0x4($v1)
.Lrace_80107B58:
/* BDF18 80107B58 84440028 */  lh         $a0, 0x28($v0)
/* BDF1C 80107B5C 8C42002C */  lw         $v0, 0x2C($v0)
/* BDF20 80107B60 0040F809 */  jalr       $v0
/* BDF24 80107B64 00642021 */   addu      $a0, $v1, $a0
/* BDF28 80107B68 AE2232F8 */  sw         $v0, 0x32F8($s1)
/* BDF2C 80107B6C 8E2332F8 */  lw         $v1, 0x32F8($s1)
/* BDF30 80107B70 1060000E */  beqz       $v1, .Lrace_80107BAC
/* BDF34 80107B74 00000000 */   nop
/* BDF38 80107B78 8C620000 */  lw         $v0, 0x0($v1)
/* BDF3C 80107B7C 8E2532FC */  lw         $a1, 0x32FC($s1)
/* BDF40 80107B80 84440038 */  lh         $a0, 0x38($v0)
/* BDF44 80107B84 8C42003C */  lw         $v0, 0x3C($v0)
/* BDF48 80107B88 0040F809 */  jalr       $v0
/* BDF4C 80107B8C 00642021 */   addu      $a0, $v1, $a0
/* BDF50 80107B90 8E2332F8 */  lw         $v1, 0x32F8($s1)
/* BDF54 80107B94 8C620000 */  lw         $v0, 0x0($v1)
/* BDF58 80107B98 00002821 */  addu       $a1, $zero, $zero
/* BDF5C 80107B9C 84440010 */  lh         $a0, 0x10($v0)
/* BDF60 80107BA0 8C420014 */  lw         $v0, 0x14($v0)
/* BDF64 80107BA4 0040F809 */  jalr       $v0
/* BDF68 80107BA8 00642021 */   addu      $a0, $v1, $a0
.Lrace_80107BAC:
/* BDF6C 80107BAC 8E230018 */  lw         $v1, 0x18($s1)
/* BDF70 80107BB0 10600008 */  beqz       $v1, .Lrace_80107BD4
/* BDF74 80107BB4 00000000 */   nop
/* BDF78 80107BB8 8E222D50 */  lw         $v0, 0x2D50($s1)
/* BDF7C 80107BBC AC620000 */  sw         $v0, 0x0($v1)
/* BDF80 80107BC0 8E220018 */  lw         $v0, 0x18($s1)
/* BDF84 80107BC4 AC540008 */  sw         $s4, 0x8($v0)
/* BDF88 80107BC8 8E230018 */  lw         $v1, 0x18($s1)
/* BDF8C 80107BCC 262230C8 */  addiu      $v0, $s1, 0x30C8
/* BDF90 80107BD0 AC62000C */  sw         $v0, 0xC($v1)
.Lrace_80107BD4:
/* BDF94 80107BD4 0C041F03 */  jal        func_race_80107C0C
/* BDF98 80107BD8 02202021 */   addu      $a0, $s1, $zero
/* BDF9C 80107BDC 08041EFB */  j          .Lrace_80107BEC
/* BDFA0 80107BE0 00000000 */   nop
.Lrace_80107BE4:
/* BDFA4 80107BE4 08041E57 */  j          .Lrace_8010795C
/* BDFA8 80107BE8 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_80107BEC:
/* BDFAC 80107BEC 8FBF0024 */  lw         $ra, 0x24($sp)
/* BDFB0 80107BF0 8FB40020 */  lw         $s4, 0x20($sp)
/* BDFB4 80107BF4 8FB3001C */  lw         $s3, 0x1C($sp)
/* BDFB8 80107BF8 8FB20018 */  lw         $s2, 0x18($sp)
/* BDFBC 80107BFC 8FB10014 */  lw         $s1, 0x14($sp)
/* BDFC0 80107C00 8FB00010 */  lw         $s0, 0x10($sp)
/* BDFC4 80107C04 03E00008 */  jr         $ra
/* BDFC8 80107C08 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_80107C0C
/* BDFCC 80107C0C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* BDFD0 80107C10 AFB20020 */  sw         $s2, 0x20($sp)
/* BDFD4 80107C14 00809021 */  addu       $s2, $a0, $zero
/* BDFD8 80107C18 AFBF0034 */  sw         $ra, 0x34($sp)
/* BDFDC 80107C1C AFB60030 */  sw         $s6, 0x30($sp)
/* BDFE0 80107C20 AFB5002C */  sw         $s5, 0x2C($sp)
/* BDFE4 80107C24 AFB40028 */  sw         $s4, 0x28($sp)
/* BDFE8 80107C28 AFB30024 */  sw         $s3, 0x24($sp)
/* BDFEC 80107C2C AFB1001C */  sw         $s1, 0x1C($sp)
/* BDFF0 80107C30 AFB00018 */  sw         $s0, 0x18($sp)
/* BDFF4 80107C34 8E423304 */  lw         $v0, 0x3304($s2)
/* BDFF8 80107C38 2C422329 */  sltiu      $v0, $v0, 0x2329
/* BDFFC 80107C3C 1440000D */  bnez       $v0, .Lrace_80107C74
/* BE000 80107C40 265027D0 */   addiu     $s0, $s2, 0x27D0
/* BE004 80107C44 0C010467 */  jal        func_8004119C
/* BE008 80107C48 02002021 */   addu      $a0, $s0, $zero
/* BE00C 80107C4C 14400009 */  bnez       $v0, .Lrace_80107C74
/* BE010 80107C50 00000000 */   nop
/* BE014 80107C54 8E420018 */  lw         $v0, 0x18($s2)
/* BE018 80107C58 14400006 */  bnez       $v0, .Lrace_80107C74
/* BE01C 80107C5C 02002021 */   addu      $a0, $s0, $zero
/* BE020 80107C60 AFA00010 */  sw         $zero, 0x10($sp)
/* BE024 80107C64 240503E8 */  addiu      $a1, $zero, 0x3E8
/* BE028 80107C68 00003021 */  addu       $a2, $zero, $zero
/* BE02C 80107C6C 0C010435 */  jal        func_800410D4
/* BE030 80107C70 00C03821 */   addu      $a3, $a2, $zero
.Lrace_80107C74:
/* BE034 80107C74 8E42333C */  lw         $v0, 0x333C($s2)
/* BE038 80107C78 1040000D */  beqz       $v0, .Lrace_80107CB0
/* BE03C 80107C7C 00000000 */   nop
/* BE040 80107C80 8E423304 */  lw         $v0, 0x3304($s2)
/* BE044 80107C84 2C42251D */  sltiu      $v0, $v0, 0x251D
/* BE048 80107C88 14400009 */  bnez       $v0, .Lrace_80107CB0
/* BE04C 80107C8C 24030002 */   addiu     $v1, $zero, 0x2
/* BE050 80107C90 8E423098 */  lw         $v0, 0x3098($s2)
/* BE054 80107C94 104300A8 */  beq        $v0, $v1, .Lrace_80107F38
/* BE058 80107C98 02402021 */   addu      $a0, $s2, $zero
/* BE05C 80107C9C AE433098 */  sw         $v1, 0x3098($s2)
/* BE060 80107CA0 0C0425EF */  jal        func_race_801097BC
/* BE064 80107CA4 00002821 */   addu      $a1, $zero, $zero
/* BE068 80107CA8 08041FCE */  j          .Lrace_80107F38
/* BE06C 80107CAC 00000000 */   nop
.Lrace_80107CB0:
/* BE070 80107CB0 8E423304 */  lw         $v0, 0x3304($s2)
/* BE074 80107CB4 2C422710 */  sltiu      $v0, $v0, 0x2710
/* BE078 80107CB8 1440002A */  bnez       $v0, .Lrace_80107D64
/* BE07C 80107CBC 0000A021 */   addu      $s4, $zero, $zero
/* BE080 80107CC0 26550390 */  addiu      $s5, $s2, 0x390
/* BE084 80107CC4 02809821 */  addu       $s3, $s4, $zero
/* BE088 80107CC8 02808021 */  addu       $s0, $s4, $zero
/* BE08C 80107CCC 24020005 */  addiu      $v0, $zero, 0x5
/* BE090 80107CD0 AE403304 */  sw         $zero, 0x3304($s2)
/* BE094 80107CD4 AE423300 */  sw         $v0, 0x3300($s2)
.Lrace_80107CD8:
/* BE098 80107CD8 8E420004 */  lw         $v0, 0x4($s2)
/* BE09C 80107CDC 8C420104 */  lw         $v0, 0x104($v0)
/* BE0A0 80107CE0 0282102B */  sltu       $v0, $s4, $v0
/* BE0A4 80107CE4 1040001B */  beqz       $v0, .Lrace_80107D54
/* BE0A8 80107CE8 00000000 */   nop
/* BE0AC 80107CEC 8EA20140 */  lw         $v0, 0x140($s5)
/* BE0B0 80107CF0 00508821 */  addu       $s1, $v0, $s0
/* BE0B4 80107CF4 8E220D04 */  lw         $v0, 0xD04($s1)
/* BE0B8 80107CF8 30421000 */  andi       $v0, $v0, 0x1000
/* BE0BC 80107CFC 5440000E */  bnel       $v0, $zero, .Lrace_80107D38
/* BE0C0 80107D00 26100E2C */   addiu     $s0, $s0, 0xE2C
/* BE0C4 80107D04 8E440018 */  lw         $a0, 0x18($s2)
/* BE0C8 80107D08 10800005 */  beqz       $a0, .Lrace_80107D20
/* BE0CC 80107D0C 00000000 */   nop
/* BE0D0 80107D10 8E250DFC */  lw         $a1, 0xDFC($s1)
/* BE0D4 80107D14 8E463308 */  lw         $a2, 0x3308($s2)
/* BE0D8 80107D18 0C04579E */  jal        func_race_80115E78
/* BE0DC 80107D1C 00000000 */   nop
.Lrace_80107D20:
/* BE0E0 80107D20 8E453308 */  lw         $a1, 0x3308($s2)
/* BE0E4 80107D24 02202021 */  addu       $a0, $s1, $zero
/* BE0E8 80107D28 24A50001 */  addiu      $a1, $a1, 0x1
/* BE0EC 80107D2C 0C04389D */  jal        func_race_8010E274
/* BE0F0 80107D30 AE453308 */   sw        $a1, 0x3308($s2)
/* BE0F4 80107D34 26100E2C */  addiu      $s0, $s0, 0xE2C
.Lrace_80107D38:
/* BE0F8 80107D38 26940001 */  addiu      $s4, $s4, 0x1
/* BE0FC 80107D3C 8E420004 */  lw         $v0, 0x4($s2)
/* BE100 80107D40 8E230D00 */  lw         $v1, 0xD00($s1)
/* BE104 80107D44 00531021 */  addu       $v0, $v0, $s3
/* BE108 80107D48 2673005C */  addiu      $s3, $s3, 0x5C
/* BE10C 80107D4C 08041F36 */  j          .Lrace_80107CD8
/* BE110 80107D50 A0430162 */   sb        $v1, 0x162($v0)
.Lrace_80107D54:
/* BE114 80107D54 0C041FD8 */  jal        func_race_80107F60
/* BE118 80107D58 02402021 */   addu      $a0, $s2, $zero
/* BE11C 80107D5C 08041FCE */  j          .Lrace_80107F38
/* BE120 80107D60 00000000 */   nop
.Lrace_80107D64:
/* BE124 80107D64 26560390 */  addiu      $s6, $s2, 0x390
/* BE128 80107D68 3C150020 */  lui        $s5, (0x200000 >> 16)
/* BE12C 80107D6C 02809821 */  addu       $s3, $s4, $zero
.Lrace_80107D70:
/* BE130 80107D70 8E420004 */  lw         $v0, 0x4($s2)
/* BE134 80107D74 8C420104 */  lw         $v0, 0x104($v0)
/* BE138 80107D78 0282102B */  sltu       $v0, $s4, $v0
/* BE13C 80107D7C 10400063 */  beqz       $v0, .Lrace_80107F0C
/* BE140 80107D80 00000000 */   nop
/* BE144 80107D84 8EC20140 */  lw         $v0, 0x140($s6)
/* BE148 80107D88 92433320 */  lbu        $v1, 0x3320($s2)
/* BE14C 80107D8C 00538821 */  addu       $s1, $v0, $s3
/* BE150 80107D90 8E220CE4 */  lw         $v0, 0xCE4($s1)
/* BE154 80107D94 0043102B */  sltu       $v0, $v0, $v1
/* BE158 80107D98 14400004 */  bnez       $v0, .Lrace_80107DAC
/* BE15C 80107D9C 00002021 */   addu      $a0, $zero, $zero
/* BE160 80107DA0 8E220D04 */  lw         $v0, 0xD04($s1)
/* BE164 80107DA4 30421000 */  andi       $v0, $v0, 0x1000
/* BE168 80107DA8 2C440001 */  sltiu      $a0, $v0, 0x1
.Lrace_80107DAC:
/* BE16C 80107DAC 1080003D */  beqz       $a0, .Lrace_80107EA4
/* BE170 80107DB0 00000000 */   nop
/* BE174 80107DB4 8E220D04 */  lw         $v0, 0xD04($s1)
/* BE178 80107DB8 34421000 */  ori        $v0, $v0, 0x1000
/* BE17C 80107DBC AE220D04 */  sw         $v0, 0xD04($s1)
/* BE180 80107DC0 8E440018 */  lw         $a0, 0x18($s2)
/* BE184 80107DC4 10800005 */  beqz       $a0, .Lrace_80107DDC
/* BE188 80107DC8 00000000 */   nop
/* BE18C 80107DCC 8E250DFC */  lw         $a1, 0xDFC($s1)
/* BE190 80107DD0 8E463308 */  lw         $a2, 0x3308($s2)
/* BE194 80107DD4 0C04579E */  jal        func_race_80115E78
/* BE198 80107DD8 00000000 */   nop
.Lrace_80107DDC:
/* BE19C 80107DDC 8E453308 */  lw         $a1, 0x3308($s2)
/* BE1A0 80107DE0 02202021 */  addu       $a0, $s1, $zero
/* BE1A4 80107DE4 24A50001 */  addiu      $a1, $a1, 0x1
/* BE1A8 80107DE8 0C04389D */  jal        func_race_8010E274
/* BE1AC 80107DEC AE453308 */   sw        $a1, 0x3308($s2)
/* BE1B0 80107DF0 8E220D08 */  lw         $v0, 0xD08($s1)
/* BE1B4 80107DF4 38420002 */  xori       $v0, $v0, 0x2
/* BE1B8 80107DF8 1040002A */  beqz       $v0, .Lrace_80107EA4
/* BE1BC 80107DFC 00000000 */   nop
/* BE1C0 80107E00 8E4206A8 */  lw         $v0, 0x6A8($s2)
/* BE1C4 80107E04 1051000A */  beq        $v0, $s1, .Lrace_80107E30
/* BE1C8 80107E08 00008021 */   addu      $s0, $zero, $zero
/* BE1CC 80107E0C 8E420004 */  lw         $v0, 0x4($s2)
/* BE1D0 80107E10 02401821 */  addu       $v1, $s2, $zero
/* BE1D4 80107E14 8C440330 */  lw         $a0, 0x330($v0)
.Lrace_80107E18:
/* BE1D8 80107E18 0204102B */  sltu       $v0, $s0, $a0
/* BE1DC 80107E1C 10400004 */  beqz       $v0, .Lrace_80107E30
/* BE1E0 80107E20 24630004 */   addiu     $v1, $v1, 0x4
/* BE1E4 80107E24 8C6206A8 */  lw         $v0, 0x6A8($v1)
/* BE1E8 80107E28 1451FFFB */  bne        $v0, $s1, .Lrace_80107E18
/* BE1EC 80107E2C 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_80107E30:
/* BE1F0 80107E30 001010C0 */  sll        $v0, $s0, 3
/* BE1F4 80107E34 00501023 */  subu       $v0, $v0, $s0
/* BE1F8 80107E38 00022100 */  sll        $a0, $v0, 4
/* BE1FC 80107E3C 00921021 */  addu       $v0, $a0, $s2
/* BE200 80107E40 8C42023C */  lw         $v0, 0x23C($v0)
/* BE204 80107E44 10400003 */  beqz       $v0, .Lrace_80107E54
/* BE208 80107E48 2484023C */   addiu     $a0, $a0, 0x23C
/* BE20C 80107E4C 0C04096B */  jal        func_race_801025AC
/* BE210 80107E50 02442021 */   addu      $a0, $s2, $a0
.Lrace_80107E54:
/* BE214 80107E54 264406B0 */  addiu      $a0, $s2, 0x6B0
/* BE218 80107E58 0C04B3F9 */  jal        func_race_8012CFE4
/* BE21C 80107E5C 02202821 */   addu      $a1, $s1, $zero
/* BE220 80107E60 8E240D04 */  lw         $a0, 0xD04($s1)
/* BE224 80107E64 30820010 */  andi       $v0, $a0, 0x10
/* BE228 80107E68 14400003 */  bnez       $v0, .Lrace_80107E78
/* BE22C 80107E6C 00001821 */   addu      $v1, $zero, $zero
/* BE230 80107E70 00951024 */  and        $v0, $a0, $s5
/* BE234 80107E74 2C430001 */  sltiu      $v1, $v0, 0x1
.Lrace_80107E78:
/* BE238 80107E78 1060000A */  beqz       $v1, .Lrace_80107EA4
/* BE23C 80107E7C 00102080 */   sll       $a0, $s0, 2
/* BE240 80107E80 00902021 */  addu       $a0, $a0, $s0
/* BE244 80107E84 00042080 */  sll        $a0, $a0, 2
/* BE248 80107E88 00902021 */  addu       $a0, $a0, $s0
/* BE24C 80107E8C 00042100 */  sll        $a0, $a0, 4
/* BE250 80107E90 24842AA8 */  addiu      $a0, $a0, 0x2AA8
/* BE254 80107E94 02442021 */  addu       $a0, $s2, $a0
/* BE258 80107E98 8E46332C */  lw         $a2, 0x332C($s2)
/* BE25C 80107E9C 0C03F26E */  jal        func_race_800FC9B8
/* BE260 80107EA0 24050004 */   addiu     $a1, $zero, 0x4
.Lrace_80107EA4:
/* BE264 80107EA4 8E230D04 */  lw         $v1, 0xD04($s1)
/* BE268 80107EA8 30621000 */  andi       $v0, $v1, 0x1000
/* BE26C 80107EAC 1040000B */  beqz       $v0, .Lrace_80107EDC
/* BE270 80107EB0 00002021 */   addu      $a0, $zero, $zero
/* BE274 80107EB4 8E220DAC */  lw         $v0, 0xDAC($s1)
/* BE278 80107EB8 10400008 */  beqz       $v0, .Lrace_80107EDC
/* BE27C 80107EBC 30620010 */   andi      $v0, $v1, 0x10
/* BE280 80107EC0 14400006 */  bnez       $v0, .Lrace_80107EDC
/* BE284 80107EC4 00751024 */   and       $v0, $v1, $s5
/* BE288 80107EC8 14400004 */  bnez       $v0, .Lrace_80107EDC
/* BE28C 80107ECC 00000000 */   nop
/* BE290 80107ED0 8E220DB0 */  lw         $v0, 0xDB0($s1)
/* BE294 80107ED4 38420004 */  xori       $v0, $v0, 0x4
/* BE298 80107ED8 0082202B */  sltu       $a0, $a0, $v0
.Lrace_80107EDC:
/* BE29C 80107EDC 50800009 */  beql       $a0, $zero, .Lrace_80107F04
/* BE2A0 80107EE0 26730E2C */   addiu     $s3, $s3, 0xE2C
/* BE2A4 80107EE4 8E423334 */  lw         $v0, 0x3334($s2)
/* BE2A8 80107EE8 54400006 */  bnel       $v0, $zero, .Lrace_80107F04
/* BE2AC 80107EEC 26730E2C */   addiu     $s3, $s3, 0xE2C
/* BE2B0 80107EF0 8E240DAC */  lw         $a0, 0xDAC($s1)
/* BE2B4 80107EF4 8E46332C */  lw         $a2, 0x332C($s2)
/* BE2B8 80107EF8 0C03F26E */  jal        func_race_800FC9B8
/* BE2BC 80107EFC 24050004 */   addiu     $a1, $zero, 0x4
/* BE2C0 80107F00 26730E2C */  addiu      $s3, $s3, 0xE2C
.Lrace_80107F04:
/* BE2C4 80107F04 08041F5C */  j          .Lrace_80107D70
/* BE2C8 80107F08 26940001 */   addiu     $s4, $s4, 0x1
.Lrace_80107F0C:
/* BE2CC 80107F0C 8E440018 */  lw         $a0, 0x18($s2)
/* BE2D0 80107F10 10800009 */  beqz       $a0, .Lrace_80107F38
/* BE2D4 80107F14 00000000 */   nop
/* BE2D8 80107F18 8E423304 */  lw         $v0, 0x3304($s2)
/* BE2DC 80107F1C 2C421389 */  sltiu      $v0, $v0, 0x1389
/* BE2E0 80107F20 14400005 */  bnez       $v0, .Lrace_80107F38
/* BE2E4 80107F24 00000000 */   nop
/* BE2E8 80107F28 8E420008 */  lw         $v0, 0x8($s2)
/* BE2EC 80107F2C 8C450090 */  lw         $a1, 0x90($v0)
/* BE2F0 80107F30 0C0457C0 */  jal        func_race_80115F00
/* BE2F4 80107F34 00000000 */   nop
.Lrace_80107F38:
/* BE2F8 80107F38 8FBF0034 */  lw         $ra, 0x34($sp)
/* BE2FC 80107F3C 8FB60030 */  lw         $s6, 0x30($sp)
/* BE300 80107F40 8FB5002C */  lw         $s5, 0x2C($sp)
/* BE304 80107F44 8FB40028 */  lw         $s4, 0x28($sp)
/* BE308 80107F48 8FB30024 */  lw         $s3, 0x24($sp)
/* BE30C 80107F4C 8FB20020 */  lw         $s2, 0x20($sp)
/* BE310 80107F50 8FB1001C */  lw         $s1, 0x1C($sp)
/* BE314 80107F54 8FB00018 */  lw         $s0, 0x18($sp)
/* BE318 80107F58 03E00008 */  jr         $ra
/* BE31C 80107F5C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_80107F60
/* BE320 80107F60 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* BE324 80107F64 AFB00018 */  sw         $s0, 0x18($sp)
/* BE328 80107F68 00808021 */  addu       $s0, $a0, $zero
/* BE32C 80107F6C AFBF0020 */  sw         $ra, 0x20($sp)
/* BE330 80107F70 AFB1001C */  sw         $s1, 0x1C($sp)
/* BE334 80107F74 8E023304 */  lw         $v0, 0x3304($s0)
/* BE338 80107F78 2C420FA1 */  sltiu      $v0, $v0, 0xFA1
/* BE33C 80107F7C 1440000A */  bnez       $v0, .Lrace_80107FA8
/* BE340 80107F80 261127D0 */   addiu     $s1, $s0, 0x27D0
/* BE344 80107F84 0C010467 */  jal        func_8004119C
/* BE348 80107F88 02202021 */   addu      $a0, $s1, $zero
/* BE34C 80107F8C 14400006 */  bnez       $v0, .Lrace_80107FA8
/* BE350 80107F90 02202021 */   addu      $a0, $s1, $zero
/* BE354 80107F94 AFA00010 */  sw         $zero, 0x10($sp)
/* BE358 80107F98 240503E8 */  addiu      $a1, $zero, 0x3E8
/* BE35C 80107F9C 00003021 */  addu       $a2, $zero, $zero
/* BE360 80107FA0 0C010435 */  jal        func_800410D4
/* BE364 80107FA4 00C03821 */   addu      $a3, $a2, $zero
.Lrace_80107FA8:
/* BE368 80107FA8 8E023304 */  lw         $v0, 0x3304($s0)
/* BE36C 80107FAC 2C421388 */  sltiu      $v0, $v0, 0x1388
/* BE370 80107FB0 50400005 */  beql       $v0, $zero, .Lrace_80107FC8
/* BE374 80107FB4 AE003304 */   sw        $zero, 0x3304($s0)
/* BE378 80107FB8 8E040018 */  lw         $a0, 0x18($s0)
/* BE37C 80107FBC 14800004 */  bnez       $a0, .Lrace_80107FD0
/* BE380 80107FC0 00000000 */   nop
/* BE384 80107FC4 AE003304 */  sw         $zero, 0x3304($s0)
.Lrace_80107FC8:
/* BE388 80107FC8 08041FF8 */  j          .Lrace_80107FE0
/* BE38C 80107FCC AE00330C */   sw        $zero, 0x330C($s0)
.Lrace_80107FD0:
/* BE390 80107FD0 8E020008 */  lw         $v0, 0x8($s0)
/* BE394 80107FD4 8C450090 */  lw         $a1, 0x90($v0)
/* BE398 80107FD8 0C0457C0 */  jal        func_race_80115F00
/* BE39C 80107FDC 00000000 */   nop
.Lrace_80107FE0:
/* BE3A0 80107FE0 8FBF0020 */  lw         $ra, 0x20($sp)
/* BE3A4 80107FE4 8FB1001C */  lw         $s1, 0x1C($sp)
/* BE3A8 80107FE8 8FB00018 */  lw         $s0, 0x18($sp)
/* BE3AC 80107FEC 03E00008 */  jr         $ra
/* BE3B0 80107FF0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_80107FF4
/* BE3B4 80107FF4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* BE3B8 80107FF8 AFB20018 */  sw         $s2, 0x18($sp)
/* BE3BC 80107FFC 00809021 */  addu       $s2, $a0, $zero
/* BE3C0 80108000 AFB10014 */  sw         $s1, 0x14($sp)
/* BE3C4 80108004 00008821 */  addu       $s1, $zero, $zero
/* BE3C8 80108008 AFB00010 */  sw         $s0, 0x10($sp)
/* BE3CC 8010800C 24102810 */  addiu      $s0, $zero, 0x2810
/* BE3D0 80108010 AFBF001C */  sw         $ra, 0x1C($sp)
/* BE3D4 80108014 2E220002 */  sltiu      $v0, $s1, 0x2
.Lrace_80108018:
/* BE3D8 80108018 10400008 */  beqz       $v0, .Lrace_8010803C
/* BE3DC 8010801C 02502021 */   addu      $a0, $s2, $s0
/* BE3E0 80108020 8E420008 */  lw         $v0, 0x8($s2)
/* BE3E4 80108024 26100140 */  addiu      $s0, $s0, 0x140
/* BE3E8 80108028 8C450090 */  lw         $a1, 0x90($v0)
/* BE3EC 8010802C 0C03E81B */  jal        func_race_800FA06C
/* BE3F0 80108030 26310001 */   addiu     $s1, $s1, 0x1
/* BE3F4 80108034 08042006 */  j          .Lrace_80108018
/* BE3F8 80108038 2E220002 */   sltiu     $v0, $s1, 0x2
.Lrace_8010803C:
/* BE3FC 8010803C 8FBF001C */  lw         $ra, 0x1C($sp)
/* BE400 80108040 8FB20018 */  lw         $s2, 0x18($sp)
/* BE404 80108044 8FB10014 */  lw         $s1, 0x14($sp)
/* BE408 80108048 8FB00010 */  lw         $s0, 0x10($sp)
/* BE40C 8010804C 03E00008 */  jr         $ra
/* BE410 80108050 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80108054
/* BE414 80108054 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* BE418 80108058 AFB40020 */  sw         $s4, 0x20($sp)
/* BE41C 8010805C 0080A021 */  addu       $s4, $a0, $zero
/* BE420 80108060 AFBF0028 */  sw         $ra, 0x28($sp)
/* BE424 80108064 AFB50024 */  sw         $s5, 0x24($sp)
/* BE428 80108068 AFB3001C */  sw         $s3, 0x1C($sp)
/* BE42C 8010806C AFB20018 */  sw         $s2, 0x18($sp)
/* BE430 80108070 AFB10014 */  sw         $s1, 0x14($sp)
/* BE434 80108074 AFB00010 */  sw         $s0, 0x10($sp)
/* BE438 80108078 8E820004 */  lw         $v0, 0x4($s4)
/* BE43C 8010807C 8C430004 */  lw         $v1, 0x4($v0)
/* BE440 80108080 8C62009C */  lw         $v0, 0x9C($v1)
/* BE444 80108084 84440070 */  lh         $a0, 0x70($v0)
/* BE448 80108088 8C420074 */  lw         $v0, 0x74($v0)
/* BE44C 8010808C 0040F809 */  jalr       $v0
/* BE450 80108090 00642021 */   addu      $a0, $v1, $a0
/* BE454 80108094 8E833328 */  lw         $v1, 0x3328($s4)
/* BE458 80108098 14600057 */  bnez       $v1, .Lrace_801081F8
/* BE45C 8010809C 00408021 */   addu      $s0, $v0, $zero
/* BE460 801080A0 8E020050 */  lw         $v0, 0x50($s0)
/* BE464 801080A4 84440040 */  lh         $a0, 0x40($v0)
/* BE468 801080A8 8C420044 */  lw         $v0, 0x44($v0)
/* BE46C 801080AC 0040F809 */  jalr       $v0
/* BE470 801080B0 02042021 */   addu      $a0, $s0, $a0
/* BE474 801080B4 10400050 */  beqz       $v0, .Lrace_801081F8
/* BE478 801080B8 00008821 */   addu      $s1, $zero, $zero
/* BE47C 801080BC 24150001 */  addiu      $s5, $zero, 0x1
/* BE480 801080C0 02209821 */  addu       $s3, $s1, $zero
/* BE484 801080C4 8E020050 */  lw         $v0, 0x50($s0)
/* BE488 801080C8 02209021 */  addu       $s2, $s1, $zero
/* BE48C 801080CC 84440030 */  lh         $a0, 0x30($v0)
/* BE490 801080D0 8C420034 */  lw         $v0, 0x34($v0)
/* BE494 801080D4 0040F809 */  jalr       $v0
/* BE498 801080D8 02042021 */   addu      $a0, $s0, $a0
.Lrace_801080DC:
/* BE49C 801080DC 8E830004 */  lw         $v1, 0x4($s4)
/* BE4A0 801080E0 8C620330 */  lw         $v0, 0x330($v1)
/* BE4A4 801080E4 0222102B */  sltu       $v0, $s1, $v0
/* BE4A8 801080E8 10400013 */  beqz       $v0, .Lrace_80108138
/* BE4AC 801080EC 00721021 */   addu      $v0, $v1, $s2
/* BE4B0 801080F0 8E86021C */  lw         $a2, 0x21C($s4)
/* BE4B4 801080F4 8CC30050 */  lw         $v1, 0x50($a2)
/* BE4B8 801080F8 9045034E */  lbu        $a1, 0x34E($v0)
/* BE4BC 801080FC 84640018 */  lh         $a0, 0x18($v1)
/* BE4C0 80108100 8C62001C */  lw         $v0, 0x1C($v1)
/* BE4C4 80108104 0040F809 */  jalr       $v0
/* BE4C8 80108108 00C42021 */   addu      $a0, $a2, $a0
/* BE4CC 8010810C 00408021 */  addu       $s0, $v0, $zero
/* BE4D0 80108110 52000006 */  beql       $s0, $zero, .Lrace_8010812C
/* BE4D4 80108114 26730070 */   addiu     $s3, $s3, 0x70
/* BE4D8 80108118 AE150020 */  sw         $s5, 0x20($s0)
/* BE4DC 8010811C 02742021 */  addu       $a0, $s3, $s4
/* BE4E0 80108120 0C0409F5 */  jal        func_race_801027D4
/* BE4E4 80108124 24840240 */   addiu     $a0, $a0, 0x240
/* BE4E8 80108128 26730070 */  addiu      $s3, $s3, 0x70
.Lrace_8010812C:
/* BE4EC 8010812C 26520028 */  addiu      $s2, $s2, 0x28
/* BE4F0 80108130 08042037 */  j          .Lrace_801080DC
/* BE4F4 80108134 26310001 */   addiu     $s1, $s1, 0x1
.Lrace_80108138:
/* BE4F8 80108138 8E84021C */  lw         $a0, 0x21C($s4)
/* BE4FC 8010813C 0C01F211 */  jal        func_8007C844
/* BE500 80108140 00002821 */   addu      $a1, $zero, $zero
/* BE504 80108144 1440001B */  bnez       $v0, .Lrace_801081B4
/* BE508 80108148 24110001 */   addiu     $s1, $zero, 0x1
/* BE50C 8010814C 26920220 */  addiu      $s2, $s4, 0x220
/* BE510 80108150 02209821 */  addu       $s3, $s1, $zero
.Lrace_80108154:
/* BE514 80108154 2E220004 */  sltiu      $v0, $s1, 0x4
/* BE518 80108158 10400027 */  beqz       $v0, .Lrace_801081F8
/* BE51C 8010815C 02202821 */   addu      $a1, $s1, $zero
/* BE520 80108160 8E83021C */  lw         $v1, 0x21C($s4)
/* BE524 80108164 8C620050 */  lw         $v0, 0x50($v1)
/* BE528 80108168 84440018 */  lh         $a0, 0x18($v0)
/* BE52C 8010816C 8C42001C */  lw         $v0, 0x1C($v0)
/* BE530 80108170 0040F809 */  jalr       $v0
/* BE534 80108174 00642021 */   addu      $a0, $v1, $a0
/* BE538 80108178 00408021 */  addu       $s0, $v0, $zero
/* BE53C 8010817C 5200FFF5 */  beql       $s0, $zero, .Lrace_80108154
/* BE540 80108180 26310001 */   addiu     $s1, $s1, 0x1
/* BE544 80108184 8E02008C */  lw         $v0, 0x8C($s0)
/* BE548 80108188 5440FFF2 */  bnel       $v0, $zero, .Lrace_80108154
/* BE54C 8010818C 26310001 */   addiu     $s1, $s1, 0x1
/* BE550 80108190 8E020098 */  lw         $v0, 0x98($s0)
/* BE554 80108194 AE12008C */  sw         $s2, 0x8C($s0)
/* BE558 80108198 844400A8 */  lh         $a0, 0xA8($v0)
/* BE55C 8010819C 8C4200AC */  lw         $v0, 0xAC($v0)
/* BE560 801081A0 0040F809 */  jalr       $v0
/* BE564 801081A4 02042021 */   addu      $a0, $s0, $a0
/* BE568 801081A8 AE130020 */  sw         $s3, 0x20($s0)
/* BE56C 801081AC 08042055 */  j          .Lrace_80108154
/* BE570 801081B0 26310001 */   addiu     $s1, $s1, 0x1
.Lrace_801081B4:
/* BE574 801081B4 8E823098 */  lw         $v0, 0x3098($s4)
/* BE578 801081B8 1040000F */  beqz       $v0, .Lrace_801081F8
/* BE57C 801081BC 00000000 */   nop
/* BE580 801081C0 8E903094 */  lw         $s0, 0x3094($s4)
/* BE584 801081C4 1200000C */  beqz       $s0, .Lrace_801081F8
/* BE588 801081C8 00000000 */   nop
/* BE58C 801081CC 8E02008C */  lw         $v0, 0x8C($s0)
/* BE590 801081D0 14400009 */  bnez       $v0, .Lrace_801081F8
/* BE594 801081D4 26820220 */   addiu     $v0, $s4, 0x220
/* BE598 801081D8 8E030098 */  lw         $v1, 0x98($s0)
/* BE59C 801081DC AE02008C */  sw         $v0, 0x8C($s0)
/* BE5A0 801081E0 846400A8 */  lh         $a0, 0xA8($v1)
/* BE5A4 801081E4 8C6200AC */  lw         $v0, 0xAC($v1)
/* BE5A8 801081E8 0040F809 */  jalr       $v0
/* BE5AC 801081EC 02042021 */   addu      $a0, $s0, $a0
/* BE5B0 801081F0 24020001 */  addiu      $v0, $zero, 0x1
/* BE5B4 801081F4 AE020020 */  sw         $v0, 0x20($s0)
.Lrace_801081F8:
/* BE5B8 801081F8 8E820004 */  lw         $v0, 0x4($s4)
/* BE5BC 801081FC 8E830008 */  lw         $v1, 0x8($s4)
/* BE5C0 80108200 8C420024 */  lw         $v0, 0x24($v0)
/* BE5C4 80108204 8C750090 */  lw         $s5, 0x90($v1)
/* BE5C8 80108208 30420100 */  andi       $v0, $v0, 0x100
/* BE5CC 8010820C 10400008 */  beqz       $v0, .Lrace_80108230
/* BE5D0 80108210 00000000 */   nop
/* BE5D4 80108214 3C01800D */  lui        $at, %hi(D_race_800CD8D0)
/* BE5D8 80108218 C422D8D0 */  lwc1       $f2, %lo(D_race_800CD8D0)($at)
/* BE5DC 8010821C 44950000 */  mtc1       $s5, $f0
/* BE5E0 80108220 46800020 */  cvt.s.w    $f0, $f0
/* BE5E4 80108224 46020002 */  mul.s      $f0, $f0, $f2
/* BE5E8 80108228 4600010D */  trunc.w.s  $f4, $f0
/* BE5EC 8010822C 44152000 */  mfc1       $s5, $f4
.Lrace_80108230:
/* BE5F0 80108230 8E823098 */  lw         $v0, 0x3098($s4)
/* BE5F4 80108234 1040000E */  beqz       $v0, .Lrace_80108270
/* BE5F8 80108238 2690302C */   addiu     $s0, $s4, 0x302C
/* BE5FC 8010823C 02002021 */  addu       $a0, $s0, $zero
/* BE600 80108240 0C03EDAA */  jal        func_race_800FB6A8
/* BE604 80108244 02A02821 */   addu      $a1, $s5, $zero
/* BE608 80108248 8E020048 */  lw         $v0, 0x48($s0)
/* BE60C 8010824C 38420002 */  xori       $v0, $v0, 0x2
/* BE610 80108250 1440008B */  bnez       $v0, .Lrace_80108480
/* BE614 80108254 00000000 */   nop
/* BE618 80108258 0C04267C */  jal        func_race_801099F0
/* BE61C 8010825C 02802021 */   addu      $a0, $s4, $zero
/* BE620 80108260 8E833098 */  lw         $v1, 0x3098($s4)
/* BE624 80108264 24020003 */  addiu      $v0, $zero, 0x3
/* BE628 80108268 10620085 */  beq        $v1, $v0, .Lrace_80108480
/* BE62C 8010826C 00000000 */   nop
.Lrace_80108270:
/* BE630 80108270 8E833324 */  lw         $v1, 0x3324($s4)
/* BE634 80108274 0075102B */  sltu       $v0, $v1, $s5
/* BE638 80108278 14400002 */  bnez       $v0, .Lrace_80108284
/* BE63C 8010827C 240203E8 */   addiu     $v0, $zero, 0x3E8
/* BE640 80108280 00751023 */  subu       $v0, $v1, $s5
.Lrace_80108284:
/* BE644 80108284 AE823324 */  sw         $v0, 0x3324($s4)
/* BE648 80108288 02A02821 */  addu       $a1, $s5, $zero
/* BE64C 8010828C 8E840364 */  lw         $a0, 0x364($s4)
/* BE650 80108290 0C0190C0 */  jal        func_80064300
/* BE654 80108294 02A09821 */   addu      $s3, $s5, $zero
/* BE658 80108298 8E840378 */  lw         $a0, 0x378($s4)
/* BE65C 8010829C 0C0190C0 */  jal        func_80064300
/* BE660 801082A0 02A02821 */   addu      $a1, $s5, $zero
/* BE664 801082A4 8E84036C */  lw         $a0, 0x36C($s4)
/* BE668 801082A8 0C0190C0 */  jal        func_80064300
/* BE66C 801082AC 02A02821 */   addu      $a1, $s5, $zero
/* BE670 801082B0 12A00023 */  beqz       $s5, .Lrace_80108340
/* BE674 801082B4 268406B0 */   addiu     $a0, $s4, 0x6B0
/* BE678 801082B8 2E620047 */  sltiu      $v0, $s3, 0x47
.Lrace_801082BC:
/* BE67C 801082BC 14400004 */  bnez       $v0, .Lrace_801082D0
/* BE680 801082C0 02609021 */   addu      $s2, $s3, $zero
/* BE684 801082C4 24120046 */  addiu      $s2, $zero, 0x46
/* BE688 801082C8 080420B5 */  j          .Lrace_801082D4
/* BE68C 801082CC 2673FFBA */   addiu     $s3, $s3, -0x46
.Lrace_801082D0:
/* BE690 801082D0 00009821 */  addu       $s3, $zero, $zero
.Lrace_801082D4:
/* BE694 801082D4 26840390 */  addiu      $a0, $s4, 0x390
/* BE698 801082D8 0C0441DA */  jal        func_race_80110768
/* BE69C 801082DC 02402821 */   addu      $a1, $s2, $zero
/* BE6A0 801082E0 8E820004 */  lw         $v0, 0x4($s4)
/* BE6A4 801082E4 8C420330 */  lw         $v0, 0x330($v0)
/* BE6A8 801082E8 1040000D */  beqz       $v0, .Lrace_80108320
/* BE6AC 801082EC 00008821 */   addu      $s1, $zero, $zero
/* BE6B0 801082F0 24102AA8 */  addiu      $s0, $zero, 0x2AA8
.Lrace_801082F4:
/* BE6B4 801082F4 44922000 */  mtc1       $s2, $f4
/* BE6B8 801082F8 46802120 */  cvt.s.w    $f4, $f4
/* BE6BC 801082FC 44052000 */  mfc1       $a1, $f4
/* BE6C0 80108300 0C03F31E */  jal        func_race_800FCC78
/* BE6C4 80108304 02902021 */   addu      $a0, $s4, $s0
/* BE6C8 80108308 8E820004 */  lw         $v0, 0x4($s4)
/* BE6CC 8010830C 8C420330 */  lw         $v0, 0x330($v0)
/* BE6D0 80108310 26310001 */  addiu      $s1, $s1, 0x1
/* BE6D4 80108314 0222102B */  sltu       $v0, $s1, $v0
/* BE6D8 80108318 1440FFF6 */  bnez       $v0, .Lrace_801082F4
/* BE6DC 8010831C 26100150 */   addiu     $s0, $s0, 0x150
.Lrace_80108320:
/* BE6E0 80108320 8E84333C */  lw         $a0, 0x333C($s4)
/* BE6E4 80108324 10800003 */  beqz       $a0, .Lrace_80108334
/* BE6E8 80108328 00000000 */   nop
/* BE6EC 8010832C 0C03D549 */  jal        func_race_800F5524
/* BE6F0 80108330 02402821 */   addu      $a1, $s2, $zero
.Lrace_80108334:
/* BE6F4 80108334 1660FFE1 */  bnez       $s3, .Lrace_801082BC
/* BE6F8 80108338 2E620047 */   sltiu     $v0, $s3, 0x47
/* BE6FC 8010833C 268406B0 */  addiu      $a0, $s4, 0x6B0
.Lrace_80108340:
/* BE700 80108340 0C04AD61 */  jal        func_race_8012B584
/* BE704 80108344 02A02821 */   addu      $a1, $s5, $zero
/* BE708 80108348 2684329C */  addiu      $a0, $s4, 0x329C
/* BE70C 8010834C 0C035760 */  jal        func_race_800D5D80
/* BE710 80108350 02A02821 */   addu      $a1, $s5, $zero
/* BE714 80108354 268420FC */  addiu      $a0, $s4, 0x20FC
/* BE718 80108358 0C037EE8 */  jal        func_race_800DFBA0
/* BE71C 8010835C 02A02821 */   addu      $a1, $s5, $zero
/* BE720 80108360 26842054 */  addiu      $a0, $s4, 0x2054
/* BE724 80108364 0C03778C */  jal        func_race_800DDE30
/* BE728 80108368 02A02821 */   addu      $a1, $s5, $zero
/* BE72C 8010836C 26842124 */  addiu      $a0, $s4, 0x2124
/* BE730 80108370 0C0108B9 */  jal        func_800422E4
/* BE734 80108374 02A02821 */   addu      $a1, $s5, $zero
/* BE738 80108378 26842460 */  addiu      $a0, $s4, 0x2460
/* BE73C 8010837C 0C0108B9 */  jal        func_800422E4
/* BE740 80108380 02A02821 */   addu      $a1, $s5, $zero
/* BE744 80108384 2684279C */  addiu      $a0, $s4, 0x279C
/* BE748 80108388 0C034F82 */  jal        func_race_800D3E08
/* BE74C 8010838C 02A02821 */   addu      $a1, $s5, $zero
/* BE750 80108390 2684206C */  addiu      $a0, $s4, 0x206C
/* BE754 80108394 0C036A0D */  jal        func_race_800DA834
/* BE758 80108398 02A02821 */   addu      $a1, $s5, $zero
/* BE75C 8010839C 2684211C */  addiu      $a0, $s4, 0x211C
/* BE760 801083A0 0C03A53C */  jal        func_race_800E94F0
/* BE764 801083A4 02A02821 */   addu      $a1, $s5, $zero
/* BE768 801083A8 26842110 */  addiu      $a0, $s4, 0x2110
/* BE76C 801083AC 0C037C94 */  jal        func_race_800DF250
/* BE770 801083B0 02A02821 */   addu      $a1, $s5, $zero
/* BE774 801083B4 268427D0 */  addiu      $a0, $s4, 0x27D0
/* BE778 801083B8 0C010479 */  jal        func_800411E4
/* BE77C 801083BC 02A02821 */   addu      $a1, $s5, $zero
/* BE780 801083C0 8E83000C */  lw         $v1, 0xC($s4)
/* BE784 801083C4 8C620014 */  lw         $v0, 0x14($v1)
/* BE788 801083C8 02A02821 */  addu       $a1, $s5, $zero
/* BE78C 801083CC 84440070 */  lh         $a0, 0x70($v0)
/* BE790 801083D0 8C420074 */  lw         $v0, 0x74($v0)
/* BE794 801083D4 0040F809 */  jalr       $v0
/* BE798 801083D8 00642021 */   addu      $a0, $v1, $a0
/* BE79C 801083DC 8E823328 */  lw         $v0, 0x3328($s4)
/* BE7A0 801083E0 54400017 */  bnel       $v0, $zero, .Lrace_80108440
/* BE7A4 801083E4 268427A8 */   addiu     $a0, $s4, 0x27A8
/* BE7A8 801083E8 00008821 */  addu       $s1, $zero, $zero
/* BE7AC 801083EC 2413023C */  addiu      $s3, $zero, 0x23C
/* BE7B0 801083F0 2412031C */  addiu      $s2, $zero, 0x31C
/* BE7B4 801083F4 02808021 */  addu       $s0, $s4, $zero
.Lrace_801083F8:
/* BE7B8 801083F8 8E820004 */  lw         $v0, 0x4($s4)
/* BE7BC 801083FC 8C420330 */  lw         $v0, 0x330($v0)
/* BE7C0 80108400 0222102B */  sltu       $v0, $s1, $v0
/* BE7C4 80108404 1040000E */  beqz       $v0, .Lrace_80108440
/* BE7C8 80108408 268427A8 */   addiu     $a0, $s4, 0x27A8
/* BE7CC 8010840C 02922021 */  addu       $a0, $s4, $s2
/* BE7D0 80108410 02A02821 */  addu       $a1, $s5, $zero
/* BE7D4 80108414 26520024 */  addiu      $s2, $s2, 0x24
/* BE7D8 80108418 8E0206A8 */  lw         $v0, 0x6A8($s0)
/* BE7DC 8010841C 26100004 */  addiu      $s0, $s0, 0x4
/* BE7E0 80108420 8C460A18 */  lw         $a2, 0xA18($v0)
/* BE7E4 80108424 0C03D2FC */  jal        func_race_800F4BF0
/* BE7E8 80108428 26310001 */   addiu     $s1, $s1, 0x1
/* BE7EC 8010842C 02932021 */  addu       $a0, $s4, $s3
/* BE7F0 80108430 0C04089A */  jal        func_race_80102268
/* BE7F4 80108434 02A02821 */   addu      $a1, $s5, $zero
/* BE7F8 80108438 080420FE */  j          .Lrace_801083F8
/* BE7FC 8010843C 26730070 */   addiu     $s3, $s3, 0x70
.Lrace_80108440:
/* BE800 80108440 0C03494E */  jal        func_race_800D2538
/* BE804 80108444 02A02821 */   addu      $a1, $s5, $zero
/* BE808 80108448 8E852AA0 */  lw         $a1, 0x2AA0($s4)
/* BE80C 8010844C 8E862B7C */  lw         $a2, 0x2B7C($s4)
/* BE810 80108450 0C03A55B */  jal        func_race_800E956C
/* BE814 80108454 2684211C */   addiu     $a0, $s4, 0x211C
/* BE818 80108458 26842F64 */  addiu      $a0, $s4, 0x2F64
/* BE81C 8010845C 0C03C45A */  jal        func_race_800F1168
/* BE820 80108460 02A02821 */   addu      $a1, $s5, $zero
/* BE824 80108464 8E823300 */  lw         $v0, 0x3300($s4)
/* BE828 80108468 2442FFFE */  addiu      $v0, $v0, -0x2
/* BE82C 8010846C 2C420003 */  sltiu      $v0, $v0, 0x3
/* BE830 80108470 10400003 */  beqz       $v0, .Lrace_80108480
/* BE834 80108474 00000000 */   nop
/* BE838 80108478 0C041FFD */  jal        func_race_80107FF4
/* BE83C 8010847C 02802021 */   addu      $a0, $s4, $zero
.Lrace_80108480:
/* BE840 80108480 8FBF0028 */  lw         $ra, 0x28($sp)
/* BE844 80108484 8FB50024 */  lw         $s5, 0x24($sp)
/* BE848 80108488 8FB40020 */  lw         $s4, 0x20($sp)
/* BE84C 8010848C 8FB3001C */  lw         $s3, 0x1C($sp)
/* BE850 80108490 8FB20018 */  lw         $s2, 0x18($sp)
/* BE854 80108494 8FB10014 */  lw         $s1, 0x14($sp)
/* BE858 80108498 8FB00010 */  lw         $s0, 0x10($sp)
/* BE85C 8010849C 03E00008 */  jr         $ra
/* BE860 801084A0 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_801084A4
/* BE864 801084A4 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* BE868 801084A8 AFB10024 */  sw         $s1, 0x24($sp)
/* BE86C 801084AC 00808821 */  addu       $s1, $a0, $zero
/* BE870 801084B0 262406B0 */  addiu      $a0, $s1, 0x6B0
/* BE874 801084B4 AFBF0034 */  sw         $ra, 0x34($sp)
/* BE878 801084B8 AFB40030 */  sw         $s4, 0x30($sp)
/* BE87C 801084BC AFB3002C */  sw         $s3, 0x2C($sp)
/* BE880 801084C0 AFB20028 */  sw         $s2, 0x28($sp)
/* BE884 801084C4 AFB00020 */  sw         $s0, 0x20($sp)
/* BE888 801084C8 8C8219A0 */  lw         $v0, 0x19A0($a0)
/* BE88C 801084CC 10400005 */  beqz       $v0, .Lrace_801084E4
/* BE890 801084D0 00000000 */   nop
/* BE894 801084D4 0C04AE56 */  jal        func_race_8012B958
/* BE898 801084D8 00002821 */   addu      $a1, $zero, $zero
/* BE89C 801084DC 08042226 */  j          .Lrace_80108898
/* BE8A0 801084E0 00000000 */   nop
.Lrace_801084E4:
/* BE8A4 801084E4 0C04232F */  jal        func_race_80108CBC
/* BE8A8 801084E8 02202021 */   addu      $a0, $s1, $zero
/* BE8AC 801084EC 8E230014 */  lw         $v1, 0x14($s1)
/* BE8B0 801084F0 8C62012C */  lw         $v0, 0x12C($v1)
/* BE8B4 801084F4 8E252AA0 */  lw         $a1, 0x2AA0($s1)
/* BE8B8 801084F8 84440048 */  lh         $a0, 0x48($v0)
/* BE8BC 801084FC 8C42004C */  lw         $v0, 0x4C($v0)
/* BE8C0 80108500 0040F809 */  jalr       $v0
/* BE8C4 80108504 00642021 */   addu      $a0, $v1, $a0
/* BE8C8 80108508 8E220000 */  lw         $v0, 0x0($s1)
/* BE8CC 8010850C 84440070 */  lh         $a0, 0x70($v0)
/* BE8D0 80108510 8C420074 */  lw         $v0, 0x74($v0)
/* BE8D4 80108514 0040F809 */  jalr       $v0
/* BE8D8 80108518 02242021 */   addu      $a0, $s1, $a0
/* BE8DC 8010851C 8E22332C */  lw         $v0, 0x332C($s1)
/* BE8E0 80108520 1040000B */  beqz       $v0, .Lrace_80108550
/* BE8E4 80108524 00000000 */   nop
/* BE8E8 80108528 8E2406A8 */  lw         $a0, 0x6A8($s1)
/* BE8EC 8010852C 8E252AA0 */  lw         $a1, 0x2AA0($s1)
/* BE8F0 80108530 0C045432 */  jal        func_race_801150C8
/* BE8F4 80108534 24840018 */   addiu     $a0, $a0, 0x18
/* BE8F8 80108538 8E2406AC */  lw         $a0, 0x6AC($s1)
/* BE8FC 8010853C 8E252AA4 */  lw         $a1, 0x2AA4($s1)
/* BE900 80108540 0C045432 */  jal        func_race_801150C8
/* BE904 80108544 24840018 */   addiu     $a0, $a0, 0x18
/* BE908 80108548 08042157 */  j          .Lrace_8010855C
/* BE90C 8010854C 00000000 */   nop
.Lrace_80108550:
/* BE910 80108550 8E252AA0 */  lw         $a1, 0x2AA0($s1)
/* BE914 80108554 0C0443F4 */  jal        func_race_80110FD0
/* BE918 80108558 26240390 */   addiu     $a0, $s1, 0x390
.Lrace_8010855C:
/* BE91C 8010855C 8E22332C */  lw         $v0, 0x332C($s1)
/* BE920 80108560 10400005 */  beqz       $v0, .Lrace_80108578
/* BE924 80108564 24050001 */   addiu     $a1, $zero, 0x1
/* BE928 80108568 8E230014 */  lw         $v1, 0x14($s1)
/* BE92C 8010856C 8C62012C */  lw         $v0, 0x12C($v1)
/* BE930 80108570 08042161 */  j          .Lrace_80108584
/* BE934 80108574 00000000 */   nop
.Lrace_80108578:
/* BE938 80108578 8E230014 */  lw         $v1, 0x14($s1)
/* BE93C 8010857C 8C62012C */  lw         $v0, 0x12C($v1)
/* BE940 80108580 00002821 */  addu       $a1, $zero, $zero
.Lrace_80108584:
/* BE944 80108584 844401D8 */  lh         $a0, 0x1D8($v0)
/* BE948 80108588 8C4201DC */  lw         $v0, 0x1DC($v0)
/* BE94C 8010858C 0040F809 */  jalr       $v0
/* BE950 80108590 00642021 */   addu      $a0, $v1, $a0
/* BE954 80108594 8E2206A8 */  lw         $v0, 0x6A8($s1)
/* BE958 80108598 8C420D04 */  lw         $v0, 0xD04($v0)
/* BE95C 8010859C 30420010 */  andi       $v0, $v0, 0x10
/* BE960 801085A0 10400006 */  beqz       $v0, .Lrace_801085BC
/* BE964 801085A4 27B00010 */   addiu     $s0, $sp, 0x10
/* BE968 801085A8 262406B0 */  addiu      $a0, $s1, 0x6B0
/* BE96C 801085AC 0C04AE56 */  jal        func_race_8012B958
/* BE970 801085B0 24050001 */   addiu     $a1, $zero, 0x1
/* BE974 801085B4 0804219D */  j          .Lrace_80108674
/* BE978 801085B8 24120001 */   addiu     $s2, $zero, 0x1
.Lrace_801085BC:
/* BE97C 801085BC 8E222AA0 */  lw         $v0, 0x2AA0($s1)
/* BE980 801085C0 8C430000 */  lw         $v1, 0x0($v0)
/* BE984 801085C4 8C62000C */  lw         $v0, 0xC($v1)
/* BE988 801085C8 02002821 */  addu       $a1, $s0, $zero
/* BE98C 801085CC 84440088 */  lh         $a0, 0x88($v0)
/* BE990 801085D0 8C42008C */  lw         $v0, 0x8C($v0)
/* BE994 801085D4 0040F809 */  jalr       $v0
/* BE998 801085D8 00642021 */   addu      $a0, $v1, $a0
/* BE99C 801085DC 26242F64 */  addiu      $a0, $s1, 0x2F64
/* BE9A0 801085E0 0C03C5A1 */  jal        func_race_800F1684
/* BE9A4 801085E4 02002821 */   addu      $a1, $s0, $zero
/* BE9A8 801085E8 8E223300 */  lw         $v0, 0x3300($s1)
/* BE9AC 801085EC 2443FFFF */  addiu      $v1, $v0, -0x1
/* BE9B0 801085F0 2C620005 */  sltiu      $v0, $v1, 0x5
/* BE9B4 801085F4 1040001E */  beqz       $v0, .Lrace_80108670
/* BE9B8 801085F8 3C02800D */   lui       $v0, %hi(jtbl_race_800CD8D8)
/* BE9BC 801085FC 2442D8D8 */  addiu      $v0, $v0, %lo(jtbl_race_800CD8D8)
/* BE9C0 80108600 00031880 */  sll        $v1, $v1, 2
/* BE9C4 80108604 00621821 */  addu       $v1, $v1, $v0
/* BE9C8 80108608 8C620000 */  lw         $v0, 0x0($v1)
/* BE9CC 8010860C 00400008 */  jr         $v0
/* BE9D0 80108610 00000000 */   nop
glabel Lrace_80108614
/* BE9D4 80108614 8E2506A8 */  lw         $a1, 0x6A8($s1)
/* BE9D8 80108618 0C04222E */  jal        func_race_801088B8
/* BE9DC 8010861C 02202021 */   addu      $a0, $s1, $zero
/* BE9E0 80108620 0804219D */  j          .Lrace_80108674
/* BE9E4 80108624 24120001 */   addiu     $s2, $zero, 0x1
glabel Lrace_80108628
/* BE9E8 80108628 8E2506A8 */  lw         $a1, 0x6A8($s1)
/* BE9EC 8010862C 0C042247 */  jal        func_race_8010891C
/* BE9F0 80108630 02202021 */   addu      $a0, $s1, $zero
/* BE9F4 80108634 0804219D */  j          .Lrace_80108674
/* BE9F8 80108638 24120001 */   addiu     $s2, $zero, 0x1
glabel Lrace_8010863C
/* BE9FC 8010863C 8E2506A8 */  lw         $a1, 0x6A8($s1)
/* BEA00 80108640 0C042260 */  jal        func_race_80108980
/* BEA04 80108644 02202021 */   addu      $a0, $s1, $zero
/* BEA08 80108648 0804219D */  j          .Lrace_80108674
/* BEA0C 8010864C 24120001 */   addiu     $s2, $zero, 0x1
glabel Lrace_80108650
/* BEA10 80108650 8E2506A8 */  lw         $a1, 0x6A8($s1)
/* BEA14 80108654 0C042279 */  jal        func_race_801089E4
/* BEA18 80108658 02202021 */   addu      $a0, $s1, $zero
/* BEA1C 8010865C 0804219D */  j          .Lrace_80108674
/* BEA20 80108660 24120001 */   addiu     $s2, $zero, 0x1
glabel Lrace_80108664
/* BEA24 80108664 8E2506A8 */  lw         $a1, 0x6A8($s1)
/* BEA28 80108668 0C042292 */  jal        func_race_80108A48
/* BEA2C 8010866C 02202021 */   addu      $a0, $s1, $zero
.Lrace_80108670:
/* BEA30 80108670 24120001 */  addiu      $s2, $zero, 0x1
.Lrace_80108674:
/* BEA34 80108674 27B30010 */  addiu      $s3, $sp, 0x10
/* BEA38 80108678 3C02800D */  lui        $v0, %hi(jtbl_race_800CD8F0)
/* BEA3C 8010867C 2454D8F0 */  addiu      $s4, $v0, %lo(jtbl_race_800CD8F0)
/* BEA40 80108680 26300004 */  addiu      $s0, $s1, 0x4
.Lrace_80108684:
/* BEA44 80108684 8E220004 */  lw         $v0, 0x4($s1)
/* BEA48 80108688 8C420330 */  lw         $v0, 0x330($v0)
/* BEA4C 8010868C 0242102B */  sltu       $v0, $s2, $v0
/* BEA50 80108690 1040004C */  beqz       $v0, .Lrace_801087C4
/* BEA54 80108694 00000000 */   nop
/* BEA58 80108698 8E230014 */  lw         $v1, 0x14($s1)
/* BEA5C 8010869C 8C62012C */  lw         $v0, 0x12C($v1)
/* BEA60 801086A0 8E052AA0 */  lw         $a1, 0x2AA0($s0)
/* BEA64 801086A4 84440048 */  lh         $a0, 0x48($v0)
/* BEA68 801086A8 8C42004C */  lw         $v0, 0x4C($v0)
/* BEA6C 801086AC 0040F809 */  jalr       $v0
/* BEA70 801086B0 00642021 */   addu      $a0, $v1, $a0
/* BEA74 801086B4 8E230014 */  lw         $v1, 0x14($s1)
/* BEA78 801086B8 8C62012C */  lw         $v0, 0x12C($v1)
/* BEA7C 801086BC 844400C0 */  lh         $a0, 0xC0($v0)
/* BEA80 801086C0 8C4200C4 */  lw         $v0, 0xC4($v0)
/* BEA84 801086C4 0040F809 */  jalr       $v0
/* BEA88 801086C8 00642021 */   addu      $a0, $v1, $a0
/* BEA8C 801086CC 8E230014 */  lw         $v1, 0x14($s1)
/* BEA90 801086D0 8C62012C */  lw         $v0, 0x12C($v1)
/* BEA94 801086D4 26450001 */  addiu      $a1, $s2, 0x1
/* BEA98 801086D8 844401D8 */  lh         $a0, 0x1D8($v0)
/* BEA9C 801086DC 8C4201DC */  lw         $v0, 0x1DC($v0)
/* BEAA0 801086E0 0040F809 */  jalr       $v0
/* BEAA4 801086E4 00642021 */   addu      $a0, $v1, $a0
/* BEAA8 801086E8 8E0206A8 */  lw         $v0, 0x6A8($s0)
/* BEAAC 801086EC 8C420D04 */  lw         $v0, 0xD04($v0)
/* BEAB0 801086F0 30420010 */  andi       $v0, $v0, 0x10
/* BEAB4 801086F4 10400006 */  beqz       $v0, .Lrace_80108710
/* BEAB8 801086F8 02602821 */   addu      $a1, $s3, $zero
/* BEABC 801086FC 262406B0 */  addiu      $a0, $s1, 0x6B0
/* BEAC0 80108700 0C04AE56 */  jal        func_race_8012B958
/* BEAC4 80108704 00002821 */   addu      $a1, $zero, $zero
/* BEAC8 80108708 080421EF */  j          .Lrace_801087BC
/* BEACC 8010870C 26100004 */   addiu     $s0, $s0, 0x4
.Lrace_80108710:
/* BEAD0 80108710 8E022AA0 */  lw         $v0, 0x2AA0($s0)
/* BEAD4 80108714 8C430000 */  lw         $v1, 0x0($v0)
/* BEAD8 80108718 8C62000C */  lw         $v0, 0xC($v1)
/* BEADC 8010871C 84440088 */  lh         $a0, 0x88($v0)
/* BEAE0 80108720 8C42008C */  lw         $v0, 0x8C($v0)
/* BEAE4 80108724 0040F809 */  jalr       $v0
/* BEAE8 80108728 00642021 */   addu      $a0, $v1, $a0
/* BEAEC 8010872C 26242F64 */  addiu      $a0, $s1, 0x2F64
/* BEAF0 80108730 0C03C5A1 */  jal        func_race_800F1684
/* BEAF4 80108734 02602821 */   addu      $a1, $s3, $zero
/* BEAF8 80108738 8E223300 */  lw         $v0, 0x3300($s1)
/* BEAFC 8010873C 2443FFFF */  addiu      $v1, $v0, -0x1
/* BEB00 80108740 2C620005 */  sltiu      $v0, $v1, 0x5
/* BEB04 80108744 1040001C */  beqz       $v0, .Lrace_801087B8
/* BEB08 80108748 00031080 */   sll       $v0, $v1, 2
/* BEB0C 8010874C 00541021 */  addu       $v0, $v0, $s4
/* BEB10 80108750 8C420000 */  lw         $v0, 0x0($v0)
/* BEB14 80108754 00400008 */  jr         $v0
/* BEB18 80108758 00000000 */   nop
glabel Lrace_8010875C
/* BEB1C 8010875C 8E0506A8 */  lw         $a1, 0x6A8($s0)
/* BEB20 80108760 0C04222E */  jal        func_race_801088B8
/* BEB24 80108764 02202021 */   addu      $a0, $s1, $zero
/* BEB28 80108768 080421EF */  j          .Lrace_801087BC
/* BEB2C 8010876C 26100004 */   addiu     $s0, $s0, 0x4
glabel Lrace_80108770
/* BEB30 80108770 8E0506A8 */  lw         $a1, 0x6A8($s0)
/* BEB34 80108774 0C042247 */  jal        func_race_8010891C
/* BEB38 80108778 02202021 */   addu      $a0, $s1, $zero
/* BEB3C 8010877C 080421EF */  j          .Lrace_801087BC
/* BEB40 80108780 26100004 */   addiu     $s0, $s0, 0x4
glabel Lrace_80108784
/* BEB44 80108784 8E0506A8 */  lw         $a1, 0x6A8($s0)
/* BEB48 80108788 0C042260 */  jal        func_race_80108980
/* BEB4C 8010878C 02202021 */   addu      $a0, $s1, $zero
/* BEB50 80108790 080421EF */  j          .Lrace_801087BC
/* BEB54 80108794 26100004 */   addiu     $s0, $s0, 0x4
glabel Lrace_80108798
/* BEB58 80108798 8E0506A8 */  lw         $a1, 0x6A8($s0)
/* BEB5C 8010879C 0C042279 */  jal        func_race_801089E4
/* BEB60 801087A0 02202021 */   addu      $a0, $s1, $zero
/* BEB64 801087A4 080421EF */  j          .Lrace_801087BC
/* BEB68 801087A8 26100004 */   addiu     $s0, $s0, 0x4
glabel Lrace_801087AC
/* BEB6C 801087AC 8E0506A8 */  lw         $a1, 0x6A8($s0)
/* BEB70 801087B0 0C042292 */  jal        func_race_80108A48
/* BEB74 801087B4 02202021 */   addu      $a0, $s1, $zero
.Lrace_801087B8:
/* BEB78 801087B8 26100004 */  addiu      $s0, $s0, 0x4
.Lrace_801087BC:
/* BEB7C 801087BC 080421A1 */  j          .Lrace_80108684
/* BEB80 801087C0 26520001 */   addiu     $s2, $s2, 0x1
.Lrace_801087C4:
/* BEB84 801087C4 8E22332C */  lw         $v0, 0x332C($s1)
/* BEB88 801087C8 10400007 */  beqz       $v0, .Lrace_801087E8
/* BEB8C 801087CC 00002821 */   addu      $a1, $zero, $zero
/* BEB90 801087D0 8E230014 */  lw         $v1, 0x14($s1)
/* BEB94 801087D4 8C62012C */  lw         $v0, 0x12C($v1)
/* BEB98 801087D8 844401D8 */  lh         $a0, 0x1D8($v0)
/* BEB9C 801087DC 8C4201DC */  lw         $v0, 0x1DC($v0)
/* BEBA0 801087E0 0040F809 */  jalr       $v0
/* BEBA4 801087E4 00642021 */   addu      $a0, $v1, $a0
.Lrace_801087E8:
/* BEBA8 801087E8 8E230014 */  lw         $v1, 0x14($s1)
/* BEBAC 801087EC 8C62012C */  lw         $v0, 0x12C($v1)
/* BEBB0 801087F0 00002821 */  addu       $a1, $zero, $zero
/* BEBB4 801087F4 844401D0 */  lh         $a0, 0x1D0($v0)
/* BEBB8 801087F8 8C4201D4 */  lw         $v0, 0x1D4($v0)
/* BEBBC 801087FC 0040F809 */  jalr       $v0
/* BEBC0 80108800 00642021 */   addu      $a0, $v1, $a0
/* BEBC4 80108804 8E223300 */  lw         $v0, 0x3300($s1)
/* BEBC8 80108808 2443FFFF */  addiu      $v1, $v0, -0x1
/* BEBCC 8010880C 2C620005 */  sltiu      $v0, $v1, 0x5
/* BEBD0 80108810 10400019 */  beqz       $v0, .Lrace_80108878
/* BEBD4 80108814 3C02800D */   lui       $v0, %hi(jtbl_race_800CD908)
/* BEBD8 80108818 2442D908 */  addiu      $v0, $v0, %lo(jtbl_race_800CD908)
/* BEBDC 8010881C 00031880 */  sll        $v1, $v1, 2
/* BEBE0 80108820 00621821 */  addu       $v1, $v1, $v0
/* BEBE4 80108824 8C620000 */  lw         $v0, 0x0($v1)
/* BEBE8 80108828 00400008 */  jr         $v0
/* BEBEC 8010882C 00000000 */   nop
glabel Lrace_80108830
/* BEBF0 80108830 0C0422AB */  jal        func_race_80108AAC
/* BEBF4 80108834 02202021 */   addu      $a0, $s1, $zero
/* BEBF8 80108838 0804221E */  j          .Lrace_80108878
/* BEBFC 8010883C 00000000 */   nop
glabel Lrace_80108840
/* BEC00 80108840 0C0422B9 */  jal        func_race_80108AE4
/* BEC04 80108844 02202021 */   addu      $a0, $s1, $zero
/* BEC08 80108848 0804221E */  j          .Lrace_80108878
/* BEC0C 8010884C 00000000 */   nop
glabel Lrace_80108850
/* BEC10 80108850 0C0422CD */  jal        func_race_80108B34
/* BEC14 80108854 02202021 */   addu      $a0, $s1, $zero
/* BEC18 80108858 0804221E */  j          .Lrace_80108878
/* BEC1C 8010885C 00000000 */   nop
glabel Lrace_80108860
/* BEC20 80108860 0C0422E3 */  jal        func_race_80108B8C
/* BEC24 80108864 02202021 */   addu      $a0, $s1, $zero
/* BEC28 80108868 0804221E */  j          .Lrace_80108878
/* BEC2C 8010886C 00000000 */   nop
glabel Lrace_80108870
/* BEC30 80108870 0C04230E */  jal        func_race_80108C38
/* BEC34 80108874 02202021 */   addu      $a0, $s1, $zero
.Lrace_80108878:
/* BEC38 80108878 8E230014 */  lw         $v1, 0x14($s1)
/* BEC3C 8010887C 8C62012C */  lw         $v0, 0x12C($v1)
/* BEC40 80108880 844401C8 */  lh         $a0, 0x1C8($v0)
/* BEC44 80108884 8C4201CC */  lw         $v0, 0x1CC($v0)
/* BEC48 80108888 0040F809 */  jalr       $v0
/* BEC4C 8010888C 00642021 */   addu      $a0, $v1, $a0
/* BEC50 80108890 0C04248A */  jal        func_race_80109228
/* BEC54 80108894 02202021 */   addu      $a0, $s1, $zero
.Lrace_80108898:
/* BEC58 80108898 8FBF0034 */  lw         $ra, 0x34($sp)
/* BEC5C 8010889C 8FB40030 */  lw         $s4, 0x30($sp)
/* BEC60 801088A0 8FB3002C */  lw         $s3, 0x2C($sp)
/* BEC64 801088A4 8FB20028 */  lw         $s2, 0x28($sp)
/* BEC68 801088A8 8FB10024 */  lw         $s1, 0x24($sp)
/* BEC6C 801088AC 8FB00020 */  lw         $s0, 0x20($sp)
/* BEC70 801088B0 03E00008 */  jr         $ra
/* BEC74 801088B4 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_801088B8
/* BEC78 801088B8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* BEC7C 801088BC AFB00010 */  sw         $s0, 0x10($sp)
/* BEC80 801088C0 00808021 */  addu       $s0, $a0, $zero
/* BEC84 801088C4 AFB10014 */  sw         $s1, 0x14($sp)
/* BEC88 801088C8 00A08821 */  addu       $s1, $a1, $zero
/* BEC8C 801088CC AFBF0018 */  sw         $ra, 0x18($sp)
/* BEC90 801088D0 8E050014 */  lw         $a1, 0x14($s0)
/* BEC94 801088D4 0C03C5E4 */  jal        func_race_800F1790
/* BEC98 801088D8 26042F64 */   addiu     $a0, $s0, 0x2F64
/* BEC9C 801088DC 8E020000 */  lw         $v0, 0x0($s0)
/* BECA0 801088E0 02202821 */  addu       $a1, $s1, $zero
/* BECA4 801088E4 84440078 */  lh         $a0, 0x78($v0)
/* BECA8 801088E8 8C42007C */  lw         $v0, 0x7C($v0)
/* BECAC 801088EC 0040F809 */  jalr       $v0
/* BECB0 801088F0 02042021 */   addu      $a0, $s0, $a0
/* BECB4 801088F4 8E020000 */  lw         $v0, 0x0($s0)
/* BECB8 801088F8 84440080 */  lh         $a0, 0x80($v0)
/* BECBC 801088FC 8C420084 */  lw         $v0, 0x84($v0)
/* BECC0 80108900 0040F809 */  jalr       $v0
/* BECC4 80108904 02042021 */   addu      $a0, $s0, $a0
/* BECC8 80108908 8FBF0018 */  lw         $ra, 0x18($sp)
/* BECCC 8010890C 8FB10014 */  lw         $s1, 0x14($sp)
/* BECD0 80108910 8FB00010 */  lw         $s0, 0x10($sp)
/* BECD4 80108914 03E00008 */  jr         $ra
/* BECD8 80108918 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8010891C
/* BECDC 8010891C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* BECE0 80108920 AFB00010 */  sw         $s0, 0x10($sp)
/* BECE4 80108924 00808021 */  addu       $s0, $a0, $zero
/* BECE8 80108928 AFB10014 */  sw         $s1, 0x14($sp)
/* BECEC 8010892C 00A08821 */  addu       $s1, $a1, $zero
/* BECF0 80108930 AFBF0018 */  sw         $ra, 0x18($sp)
/* BECF4 80108934 8E050014 */  lw         $a1, 0x14($s0)
/* BECF8 80108938 0C03C5E4 */  jal        func_race_800F1790
/* BECFC 8010893C 26042F64 */   addiu     $a0, $s0, 0x2F64
/* BED00 80108940 8E020000 */  lw         $v0, 0x0($s0)
/* BED04 80108944 02202821 */  addu       $a1, $s1, $zero
/* BED08 80108948 84440078 */  lh         $a0, 0x78($v0)
/* BED0C 8010894C 8C42007C */  lw         $v0, 0x7C($v0)
/* BED10 80108950 0040F809 */  jalr       $v0
/* BED14 80108954 02042021 */   addu      $a0, $s0, $a0
/* BED18 80108958 8E020000 */  lw         $v0, 0x0($s0)
/* BED1C 8010895C 84440080 */  lh         $a0, 0x80($v0)
/* BED20 80108960 8C420084 */  lw         $v0, 0x84($v0)
/* BED24 80108964 0040F809 */  jalr       $v0
/* BED28 80108968 02042021 */   addu      $a0, $s0, $a0
/* BED2C 8010896C 8FBF0018 */  lw         $ra, 0x18($sp)
/* BED30 80108970 8FB10014 */  lw         $s1, 0x14($sp)
/* BED34 80108974 8FB00010 */  lw         $s0, 0x10($sp)
/* BED38 80108978 03E00008 */  jr         $ra
/* BED3C 8010897C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80108980
/* BED40 80108980 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* BED44 80108984 AFB00010 */  sw         $s0, 0x10($sp)
/* BED48 80108988 00808021 */  addu       $s0, $a0, $zero
/* BED4C 8010898C AFB10014 */  sw         $s1, 0x14($sp)
/* BED50 80108990 00A08821 */  addu       $s1, $a1, $zero
/* BED54 80108994 AFBF0018 */  sw         $ra, 0x18($sp)
/* BED58 80108998 8E050014 */  lw         $a1, 0x14($s0)
/* BED5C 8010899C 0C03C5E4 */  jal        func_race_800F1790
/* BED60 801089A0 26042F64 */   addiu     $a0, $s0, 0x2F64
/* BED64 801089A4 8E020000 */  lw         $v0, 0x0($s0)
/* BED68 801089A8 02202821 */  addu       $a1, $s1, $zero
/* BED6C 801089AC 84440078 */  lh         $a0, 0x78($v0)
/* BED70 801089B0 8C42007C */  lw         $v0, 0x7C($v0)
/* BED74 801089B4 0040F809 */  jalr       $v0
/* BED78 801089B8 02042021 */   addu      $a0, $s0, $a0
/* BED7C 801089BC 8E020000 */  lw         $v0, 0x0($s0)
/* BED80 801089C0 84440080 */  lh         $a0, 0x80($v0)
/* BED84 801089C4 8C420084 */  lw         $v0, 0x84($v0)
/* BED88 801089C8 0040F809 */  jalr       $v0
/* BED8C 801089CC 02042021 */   addu      $a0, $s0, $a0
/* BED90 801089D0 8FBF0018 */  lw         $ra, 0x18($sp)
/* BED94 801089D4 8FB10014 */  lw         $s1, 0x14($sp)
/* BED98 801089D8 8FB00010 */  lw         $s0, 0x10($sp)
/* BED9C 801089DC 03E00008 */  jr         $ra
/* BEDA0 801089E0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_801089E4
/* BEDA4 801089E4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* BEDA8 801089E8 AFB00010 */  sw         $s0, 0x10($sp)
/* BEDAC 801089EC 00808021 */  addu       $s0, $a0, $zero
/* BEDB0 801089F0 AFB10014 */  sw         $s1, 0x14($sp)
/* BEDB4 801089F4 00A08821 */  addu       $s1, $a1, $zero
/* BEDB8 801089F8 AFBF0018 */  sw         $ra, 0x18($sp)
/* BEDBC 801089FC 8E050014 */  lw         $a1, 0x14($s0)
/* BEDC0 80108A00 0C03C5E4 */  jal        func_race_800F1790
/* BEDC4 80108A04 26042F64 */   addiu     $a0, $s0, 0x2F64
/* BEDC8 80108A08 8E020000 */  lw         $v0, 0x0($s0)
/* BEDCC 80108A0C 02202821 */  addu       $a1, $s1, $zero
/* BEDD0 80108A10 84440078 */  lh         $a0, 0x78($v0)
/* BEDD4 80108A14 8C42007C */  lw         $v0, 0x7C($v0)
/* BEDD8 80108A18 0040F809 */  jalr       $v0
/* BEDDC 80108A1C 02042021 */   addu      $a0, $s0, $a0
/* BEDE0 80108A20 8E020000 */  lw         $v0, 0x0($s0)
/* BEDE4 80108A24 84440080 */  lh         $a0, 0x80($v0)
/* BEDE8 80108A28 8C420084 */  lw         $v0, 0x84($v0)
/* BEDEC 80108A2C 0040F809 */  jalr       $v0
/* BEDF0 80108A30 02042021 */   addu      $a0, $s0, $a0
/* BEDF4 80108A34 8FBF0018 */  lw         $ra, 0x18($sp)
/* BEDF8 80108A38 8FB10014 */  lw         $s1, 0x14($sp)
/* BEDFC 80108A3C 8FB00010 */  lw         $s0, 0x10($sp)
/* BEE00 80108A40 03E00008 */  jr         $ra
/* BEE04 80108A44 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80108A48
/* BEE08 80108A48 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* BEE0C 80108A4C AFB00010 */  sw         $s0, 0x10($sp)
/* BEE10 80108A50 00808021 */  addu       $s0, $a0, $zero
/* BEE14 80108A54 AFB10014 */  sw         $s1, 0x14($sp)
/* BEE18 80108A58 00A08821 */  addu       $s1, $a1, $zero
/* BEE1C 80108A5C AFBF0018 */  sw         $ra, 0x18($sp)
/* BEE20 80108A60 8E050014 */  lw         $a1, 0x14($s0)
/* BEE24 80108A64 0C03C5E4 */  jal        func_race_800F1790
/* BEE28 80108A68 26042F64 */   addiu     $a0, $s0, 0x2F64
/* BEE2C 80108A6C 8E020000 */  lw         $v0, 0x0($s0)
/* BEE30 80108A70 02202821 */  addu       $a1, $s1, $zero
/* BEE34 80108A74 84440078 */  lh         $a0, 0x78($v0)
/* BEE38 80108A78 8C42007C */  lw         $v0, 0x7C($v0)
/* BEE3C 80108A7C 0040F809 */  jalr       $v0
/* BEE40 80108A80 02042021 */   addu      $a0, $s0, $a0
/* BEE44 80108A84 8E020000 */  lw         $v0, 0x0($s0)
/* BEE48 80108A88 84440080 */  lh         $a0, 0x80($v0)
/* BEE4C 80108A8C 8C420084 */  lw         $v0, 0x84($v0)
/* BEE50 80108A90 0040F809 */  jalr       $v0
/* BEE54 80108A94 02042021 */   addu      $a0, $s0, $a0
/* BEE58 80108A98 8FBF0018 */  lw         $ra, 0x18($sp)
/* BEE5C 80108A9C 8FB10014 */  lw         $s1, 0x14($sp)
/* BEE60 80108AA0 8FB00010 */  lw         $s0, 0x10($sp)
/* BEE64 80108AA4 03E00008 */  jr         $ra
/* BEE68 80108AA8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80108AAC
/* BEE6C 80108AAC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BEE70 80108AB0 AFB00010 */  sw         $s0, 0x10($sp)
/* BEE74 80108AB4 AFBF0014 */  sw         $ra, 0x14($sp)
/* BEE78 80108AB8 0C04241A */  jal        func_race_80109068
/* BEE7C 80108ABC 00808021 */   addu      $s0, $a0, $zero
/* BEE80 80108AC0 8E050014 */  lw         $a1, 0x14($s0)
/* BEE84 80108AC4 0C010499 */  jal        func_80041264
/* BEE88 80108AC8 260427D0 */   addiu     $a0, $s0, 0x27D0
/* BEE8C 80108ACC 0C042325 */  jal        func_race_80108C94
/* BEE90 80108AD0 02002021 */   addu      $a0, $s0, $zero
/* BEE94 80108AD4 8FBF0014 */  lw         $ra, 0x14($sp)
/* BEE98 80108AD8 8FB00010 */  lw         $s0, 0x10($sp)
/* BEE9C 80108ADC 03E00008 */  jr         $ra
/* BEEA0 80108AE0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80108AE4
/* BEEA4 80108AE4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BEEA8 80108AE8 AFB00010 */  sw         $s0, 0x10($sp)
/* BEEAC 80108AEC 00808021 */  addu       $s0, $a0, $zero
/* BEEB0 80108AF0 AFBF0014 */  sw         $ra, 0x14($sp)
/* BEEB4 80108AF4 8E020000 */  lw         $v0, 0x0($s0)
/* BEEB8 80108AF8 84440088 */  lh         $a0, 0x88($v0)
/* BEEBC 80108AFC 8C42008C */  lw         $v0, 0x8C($v0)
/* BEEC0 80108B00 0040F809 */  jalr       $v0
/* BEEC4 80108B04 02042021 */   addu      $a0, $s0, $a0
/* BEEC8 80108B08 0C04241A */  jal        func_race_80109068
/* BEECC 80108B0C 02002021 */   addu      $a0, $s0, $zero
/* BEED0 80108B10 8E050014 */  lw         $a1, 0x14($s0)
/* BEED4 80108B14 0C010499 */  jal        func_80041264
/* BEED8 80108B18 260427D0 */   addiu     $a0, $s0, 0x27D0
/* BEEDC 80108B1C 0C042325 */  jal        func_race_80108C94
/* BEEE0 80108B20 02002021 */   addu      $a0, $s0, $zero
/* BEEE4 80108B24 8FBF0014 */  lw         $ra, 0x14($sp)
/* BEEE8 80108B28 8FB00010 */  lw         $s0, 0x10($sp)
/* BEEEC 80108B2C 03E00008 */  jr         $ra
/* BEEF0 80108B30 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80108B34
/* BEEF4 80108B34 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BEEF8 80108B38 AFB00010 */  sw         $s0, 0x10($sp)
/* BEEFC 80108B3C 00808021 */  addu       $s0, $a0, $zero
/* BEF00 80108B40 AFBF0014 */  sw         $ra, 0x14($sp)
/* BEF04 80108B44 8E020000 */  lw         $v0, 0x0($s0)
/* BEF08 80108B48 84440088 */  lh         $a0, 0x88($v0)
/* BEF0C 80108B4C 8C42008C */  lw         $v0, 0x8C($v0)
/* BEF10 80108B50 0040F809 */  jalr       $v0
/* BEF14 80108B54 02042021 */   addu      $a0, $s0, $a0
/* BEF18 80108B58 0C04241A */  jal        func_race_80109068
/* BEF1C 80108B5C 02002021 */   addu      $a0, $s0, $zero
/* BEF20 80108B60 0C042488 */  jal        func_race_80109220
/* BEF24 80108B64 02002021 */   addu      $a0, $s0, $zero
/* BEF28 80108B68 8E050014 */  lw         $a1, 0x14($s0)
/* BEF2C 80108B6C 0C010499 */  jal        func_80041264
/* BEF30 80108B70 260427D0 */   addiu     $a0, $s0, 0x27D0
/* BEF34 80108B74 0C042325 */  jal        func_race_80108C94
/* BEF38 80108B78 02002021 */   addu      $a0, $s0, $zero
/* BEF3C 80108B7C 8FBF0014 */  lw         $ra, 0x14($sp)
/* BEF40 80108B80 8FB00010 */  lw         $s0, 0x10($sp)
/* BEF44 80108B84 03E00008 */  jr         $ra
/* BEF48 80108B88 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80108B8C
/* BEF4C 80108B8C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BEF50 80108B90 AFB00010 */  sw         $s0, 0x10($sp)
/* BEF54 80108B94 00808021 */  addu       $s0, $a0, $zero
/* BEF58 80108B98 AFBF0014 */  sw         $ra, 0x14($sp)
/* BEF5C 80108B9C 8E020000 */  lw         $v0, 0x0($s0)
/* BEF60 80108BA0 84440088 */  lh         $a0, 0x88($v0)
/* BEF64 80108BA4 8C42008C */  lw         $v0, 0x8C($v0)
/* BEF68 80108BA8 0040F809 */  jalr       $v0
/* BEF6C 80108BAC 02042021 */   addu      $a0, $s0, $a0
/* BEF70 80108BB0 8E020018 */  lw         $v0, 0x18($s0)
/* BEF74 80108BB4 10400015 */  beqz       $v0, .Lrace_80108C0C
/* BEF78 80108BB8 00000000 */   nop
/* BEF7C 80108BBC 8E02330C */  lw         $v0, 0x330C($s0)
/* BEF80 80108BC0 10400012 */  beqz       $v0, .Lrace_80108C0C
/* BEF84 80108BC4 00000000 */   nop
/* BEF88 80108BC8 8E023304 */  lw         $v0, 0x3304($s0)
/* BEF8C 80108BCC 2C421389 */  sltiu      $v0, $v0, 0x1389
/* BEF90 80108BD0 1440000E */  bnez       $v0, .Lrace_80108C0C
/* BEF94 80108BD4 00002021 */   addu      $a0, $zero, $zero
/* BEF98 80108BD8 00801821 */  addu       $v1, $a0, $zero
.Lrace_80108BDC:
/* BEF9C 80108BDC 8E020004 */  lw         $v0, 0x4($s0)
/* BEFA0 80108BE0 8C420330 */  lw         $v0, 0x330($v0)
/* BEFA4 80108BE4 0082102B */  sltu       $v0, $a0, $v0
/* BEFA8 80108BE8 10400005 */  beqz       $v0, .Lrace_80108C00
/* BEFAC 80108BEC 00701021 */   addu      $v0, $v1, $s0
/* BEFB0 80108BF0 AC402880 */  sw         $zero, 0x2880($v0)
/* BEFB4 80108BF4 24630140 */  addiu      $v1, $v1, 0x140
/* BEFB8 80108BF8 080422F7 */  j          .Lrace_80108BDC
/* BEFBC 80108BFC 24840001 */   addiu     $a0, $a0, 0x1
.Lrace_80108C00:
/* BEFC0 80108C00 8E040018 */  lw         $a0, 0x18($s0)
/* BEFC4 80108C04 0C04583D */  jal        func_race_801160F4
/* BEFC8 80108C08 00002821 */   addu      $a1, $zero, $zero
.Lrace_80108C0C:
/* BEFCC 80108C0C 0C04241A */  jal        func_race_80109068
/* BEFD0 80108C10 02002021 */   addu      $a0, $s0, $zero
/* BEFD4 80108C14 8E050014 */  lw         $a1, 0x14($s0)
/* BEFD8 80108C18 0C010499 */  jal        func_80041264
/* BEFDC 80108C1C 260427D0 */   addiu     $a0, $s0, 0x27D0
/* BEFE0 80108C20 0C042325 */  jal        func_race_80108C94
/* BEFE4 80108C24 02002021 */   addu      $a0, $s0, $zero
/* BEFE8 80108C28 8FBF0014 */  lw         $ra, 0x14($sp)
/* BEFEC 80108C2C 8FB00010 */  lw         $s0, 0x10($sp)
/* BEFF0 80108C30 03E00008 */  jr         $ra
/* BEFF4 80108C34 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80108C38
/* BEFF8 80108C38 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BEFFC 80108C3C AFB00010 */  sw         $s0, 0x10($sp)
/* BF000 80108C40 00808021 */  addu       $s0, $a0, $zero
/* BF004 80108C44 AFBF0014 */  sw         $ra, 0x14($sp)
/* BF008 80108C48 8E040018 */  lw         $a0, 0x18($s0)
/* BF00C 80108C4C 10800006 */  beqz       $a0, .Lrace_80108C68
/* BF010 80108C50 00000000 */   nop
/* BF014 80108C54 8E02330C */  lw         $v0, 0x330C($s0)
/* BF018 80108C58 10400003 */  beqz       $v0, .Lrace_80108C68
/* BF01C 80108C5C 00000000 */   nop
/* BF020 80108C60 0C04583D */  jal        func_race_801160F4
/* BF024 80108C64 24050001 */   addiu     $a1, $zero, 0x1
.Lrace_80108C68:
/* BF028 80108C68 0C04241A */  jal        func_race_80109068
/* BF02C 80108C6C 02002021 */   addu      $a0, $s0, $zero
/* BF030 80108C70 8E050014 */  lw         $a1, 0x14($s0)
/* BF034 80108C74 0C010499 */  jal        func_80041264
/* BF038 80108C78 260427D0 */   addiu     $a0, $s0, 0x27D0
/* BF03C 80108C7C 0C042325 */  jal        func_race_80108C94
/* BF040 80108C80 02002021 */   addu      $a0, $s0, $zero
/* BF044 80108C84 8FBF0014 */  lw         $ra, 0x14($sp)
/* BF048 80108C88 8FB00010 */  lw         $s0, 0x10($sp)
/* BF04C 80108C8C 03E00008 */  jr         $ra
/* BF050 80108C90 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80108C94
/* BF054 80108C94 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BF058 80108C98 AFBF0010 */  sw         $ra, 0x10($sp)
/* BF05C 80108C9C 8C823098 */  lw         $v0, 0x3098($a0)
/* BF060 80108CA0 10400003 */  beqz       $v0, .Lrace_80108CB0
/* BF064 80108CA4 00000000 */   nop
/* BF068 80108CA8 0C03EDB2 */  jal        func_race_800FB6C8
/* BF06C 80108CAC 2484302C */   addiu     $a0, $a0, 0x302C
.Lrace_80108CB0:
/* BF070 80108CB0 8FBF0010 */  lw         $ra, 0x10($sp)
/* BF074 80108CB4 03E00008 */  jr         $ra
/* BF078 80108CB8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80108CBC
/* BF07C 80108CBC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* BF080 80108CC0 AFB3001C */  sw         $s3, 0x1C($sp)
/* BF084 80108CC4 00809821 */  addu       $s3, $a0, $zero
/* BF088 80108CC8 AFBF0020 */  sw         $ra, 0x20($sp)
/* BF08C 80108CCC AFB20018 */  sw         $s2, 0x18($sp)
/* BF090 80108CD0 AFB10014 */  sw         $s1, 0x14($sp)
/* BF094 80108CD4 AFB00010 */  sw         $s0, 0x10($sp)
/* BF098 80108CD8 8E623354 */  lw         $v0, 0x3354($s3)
/* BF09C 80108CDC 1040001A */  beqz       $v0, .Lrace_80108D48
/* BF0A0 80108CE0 00008821 */   addu      $s1, $zero, $zero
/* BF0A4 80108CE4 26720390 */  addiu      $s2, $s3, 0x390
/* BF0A8 80108CE8 02208021 */  addu       $s0, $s1, $zero
.Lrace_80108CEC:
/* BF0AC 80108CEC 8E420144 */  lw         $v0, 0x144($s2)
/* BF0B0 80108CF0 0222102B */  sltu       $v0, $s1, $v0
/* BF0B4 80108CF4 1040000C */  beqz       $v0, .Lrace_80108D28
/* BF0B8 80108CF8 26310001 */   addiu     $s1, $s1, 0x1
/* BF0BC 80108CFC 8E440140 */  lw         $a0, 0x140($s2)
/* BF0C0 80108D00 00902021 */  addu       $a0, $a0, $s0
/* BF0C4 80108D04 2484001C */  addiu      $a0, $a0, 0x1C
/* BF0C8 80108D08 8C820024 */  lw         $v0, 0x24($a0)
/* BF0CC 80108D0C 26100E2C */  addiu      $s0, $s0, 0xE2C
/* BF0D0 80108D10 84430008 */  lh         $v1, 0x8($v0)
/* BF0D4 80108D14 8C42000C */  lw         $v0, 0xC($v0)
/* BF0D8 80108D18 0040F809 */  jalr       $v0
/* BF0DC 80108D1C 00832021 */   addu      $a0, $a0, $v1
/* BF0E0 80108D20 0804233B */  j          .Lrace_80108CEC
/* BF0E4 80108D24 00000000 */   nop
.Lrace_80108D28:
/* BF0E8 80108D28 26703340 */  addiu      $s0, $s3, 0x3340
/* BF0EC 80108D2C 8E620008 */  lw         $v0, 0x8($s3)
/* BF0F0 80108D30 8E662AA0 */  lw         $a2, 0x2AA0($s3)
/* BF0F4 80108D34 8C450090 */  lw         $a1, 0x90($v0)
/* BF0F8 80108D38 0C039846 */  jal        func_race_800E6118
/* BF0FC 80108D3C 02002021 */   addu      $a0, $s0, $zero
/* BF100 80108D40 0C0398E1 */  jal        func_race_800E6384
/* BF104 80108D44 02002021 */   addu      $a0, $s0, $zero
.Lrace_80108D48:
/* BF108 80108D48 8FBF0020 */  lw         $ra, 0x20($sp)
/* BF10C 80108D4C 8FB3001C */  lw         $s3, 0x1C($sp)
/* BF110 80108D50 8FB20018 */  lw         $s2, 0x18($sp)
/* BF114 80108D54 8FB10014 */  lw         $s1, 0x14($sp)
/* BF118 80108D58 8FB00010 */  lw         $s0, 0x10($sp)
/* BF11C 80108D5C 03E00008 */  jr         $ra
/* BF120 80108D60 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_80108D64
/* BF124 80108D64 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BF128 80108D68 AFBF0010 */  sw         $ra, 0x10($sp)
/* BF12C 80108D6C 8C823330 */  lw         $v0, 0x3330($a0)
/* BF130 80108D70 10400005 */  beqz       $v0, .Lrace_80108D88
/* BF134 80108D74 24050002 */   addiu     $a1, $zero, 0x2
/* BF138 80108D78 8C830014 */  lw         $v1, 0x14($a0)
/* BF13C 80108D7C 8C62012C */  lw         $v0, 0x12C($v1)
/* BF140 80108D80 08042365 */  j          .Lrace_80108D94
/* BF144 80108D84 00000000 */   nop
.Lrace_80108D88:
/* BF148 80108D88 8C830014 */  lw         $v1, 0x14($a0)
/* BF14C 80108D8C 8C62012C */  lw         $v0, 0x12C($v1)
/* BF150 80108D90 24050006 */  addiu      $a1, $zero, 0x6
.Lrace_80108D94:
/* BF154 80108D94 844400B8 */  lh         $a0, 0xB8($v0)
/* BF158 80108D98 8C4200BC */  lw         $v0, 0xBC($v0)
/* BF15C 80108D9C 0040F809 */  jalr       $v0
/* BF160 80108DA0 00642021 */   addu      $a0, $v1, $a0
/* BF164 80108DA4 8FBF0010 */  lw         $ra, 0x10($sp)
/* BF168 80108DA8 03E00008 */  jr         $ra
/* BF16C 80108DAC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80108DB0
/* BF170 80108DB0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* BF174 80108DB4 AFB00010 */  sw         $s0, 0x10($sp)
/* BF178 80108DB8 00808021 */  addu       $s0, $a0, $zero
/* BF17C 80108DBC 26043340 */  addiu      $a0, $s0, 0x3340
/* BF180 80108DC0 AFBF002C */  sw         $ra, 0x2C($sp)
/* BF184 80108DC4 AFB60028 */  sw         $s6, 0x28($sp)
/* BF188 80108DC8 AFB50024 */  sw         $s5, 0x24($sp)
/* BF18C 80108DCC AFB40020 */  sw         $s4, 0x20($sp)
/* BF190 80108DD0 AFB3001C */  sw         $s3, 0x1C($sp)
/* BF194 80108DD4 AFB20018 */  sw         $s2, 0x18($sp)
/* BF198 80108DD8 AFB10014 */  sw         $s1, 0x14($sp)
/* BF19C 80108DDC 8C820014 */  lw         $v0, 0x14($a0)
/* BF1A0 80108DE0 10400029 */  beqz       $v0, .Lrace_80108E88
/* BF1A4 80108DE4 00A0A021 */   addu      $s4, $a1, $zero
/* BF1A8 80108DE8 8E050014 */  lw         $a1, 0x14($s0)
/* BF1AC 80108DEC 00009821 */  addu       $s3, $zero, $zero
/* BF1B0 80108DF0 24160003 */  addiu      $s6, $zero, 0x3
/* BF1B4 80108DF4 02609021 */  addu       $s2, $s3, $zero
/* BF1B8 80108DF8 0C0399BF */  jal        func_race_800E66FC
/* BF1BC 80108DFC 02608821 */   addu      $s1, $s3, $zero
/* BF1C0 80108E00 26150390 */  addiu      $s5, $s0, 0x390
.Lrace_80108E04:
/* BF1C4 80108E04 8E030004 */  lw         $v1, 0x4($s0)
/* BF1C8 80108E08 8C620104 */  lw         $v0, 0x104($v1)
/* BF1CC 80108E0C 0262102B */  sltu       $v0, $s3, $v0
/* BF1D0 80108E10 10400021 */  beqz       $v0, .Lrace_80108E98
/* BF1D4 80108E14 00711021 */   addu      $v0, $v1, $s1
/* BF1D8 80108E18 8C420118 */  lw         $v0, 0x118($v0)
/* BF1DC 80108E1C 54400017 */  bnel       $v0, $zero, .Lrace_80108E7C
/* BF1E0 80108E20 26520E2C */   addiu     $s2, $s2, 0xE2C
/* BF1E4 80108E24 8EA20140 */  lw         $v0, 0x140($s5)
/* BF1E8 80108E28 00521821 */  addu       $v1, $v0, $s2
/* BF1EC 80108E2C 16830009 */  bne        $s4, $v1, .Lrace_80108E54
/* BF1F0 80108E30 00002821 */   addu      $a1, $zero, $zero
/* BF1F4 80108E34 8E820DB0 */  lw         $v0, 0xDB0($s4)
/* BF1F8 80108E38 14560006 */  bne        $v0, $s6, .Lrace_80108E54
/* BF1FC 80108E3C 00000000 */   nop
/* BF200 80108E40 8E840D04 */  lw         $a0, 0xD04($s4)
/* BF204 80108E44 30821000 */  andi       $v0, $a0, 0x1000
/* BF208 80108E48 14400002 */  bnez       $v0, .Lrace_80108E54
/* BF20C 80108E4C 30820400 */   andi      $v0, $a0, 0x400
/* BF210 80108E50 00A2282B */  sltu       $a1, $a1, $v0
.Lrace_80108E54:
/* BF214 80108E54 54A00009 */  bnel       $a1, $zero, .Lrace_80108E7C
/* BF218 80108E58 26520E2C */   addiu     $s2, $s2, 0xE2C
/* BF21C 80108E5C 2463001C */  addiu      $v1, $v1, 0x1C
/* BF220 80108E60 8C620024 */  lw         $v0, 0x24($v1)
/* BF224 80108E64 8E050014 */  lw         $a1, 0x14($s0)
/* BF228 80108E68 84440040 */  lh         $a0, 0x40($v0)
/* BF22C 80108E6C 8C420044 */  lw         $v0, 0x44($v0)
/* BF230 80108E70 0040F809 */  jalr       $v0
/* BF234 80108E74 00642021 */   addu      $a0, $v1, $a0
/* BF238 80108E78 26520E2C */  addiu      $s2, $s2, 0xE2C
.Lrace_80108E7C:
/* BF23C 80108E7C 2631005C */  addiu      $s1, $s1, 0x5C
/* BF240 80108E80 08042381 */  j          .Lrace_80108E04
/* BF244 80108E84 26730001 */   addiu     $s3, $s3, 0x1
.Lrace_80108E88:
/* BF248 80108E88 26040390 */  addiu      $a0, $s0, 0x390
/* BF24C 80108E8C 8E050014 */  lw         $a1, 0x14($s0)
/* BF250 80108E90 0C044672 */  jal        func_race_801119C8
/* BF254 80108E94 02803021 */   addu      $a2, $s4, $zero
.Lrace_80108E98:
/* BF258 80108E98 260406B0 */  addiu      $a0, $s0, 0x6B0
/* BF25C 80108E9C 0C04AE56 */  jal        func_race_8012B958
/* BF260 80108EA0 00002821 */   addu      $a1, $zero, $zero
/* BF264 80108EA4 8E050014 */  lw         $a1, 0x14($s0)
/* BF268 80108EA8 0C0108D9 */  jal        func_80042364
/* BF26C 80108EAC 26042124 */   addiu     $a0, $s0, 0x2124
/* BF270 80108EB0 8E050014 */  lw         $a1, 0x14($s0)
/* BF274 80108EB4 0C0108D9 */  jal        func_80042364
/* BF278 80108EB8 26042460 */   addiu     $a0, $s0, 0x2460
/* BF27C 80108EBC 8E050014 */  lw         $a1, 0x14($s0)
/* BF280 80108EC0 0C034FA2 */  jal        func_race_800D3E88
/* BF284 80108EC4 2604279C */   addiu     $a0, $s0, 0x279C
/* BF288 80108EC8 8E030364 */  lw         $v1, 0x364($s0)
/* BF28C 80108ECC 8C6200EC */  lw         $v0, 0xEC($v1)
/* BF290 80108ED0 8E050014 */  lw         $a1, 0x14($s0)
/* BF294 80108ED4 84440050 */  lh         $a0, 0x50($v0)
/* BF298 80108ED8 8C420054 */  lw         $v0, 0x54($v0)
/* BF29C 80108EDC 0040F809 */  jalr       $v0
/* BF2A0 80108EE0 00642021 */   addu      $a0, $v1, $a0
/* BF2A4 80108EE4 8E030364 */  lw         $v1, 0x364($s0)
/* BF2A8 80108EE8 8C6200EC */  lw         $v0, 0xEC($v1)
/* BF2AC 80108EEC 8E050014 */  lw         $a1, 0x14($s0)
/* BF2B0 80108EF0 84440048 */  lh         $a0, 0x48($v0)
/* BF2B4 80108EF4 8C42004C */  lw         $v0, 0x4C($v0)
/* BF2B8 80108EF8 0040F809 */  jalr       $v0
/* BF2BC 80108EFC 00642021 */   addu      $a0, $v1, $a0
/* BF2C0 80108F00 8E030364 */  lw         $v1, 0x364($s0)
/* BF2C4 80108F04 8C6200EC */  lw         $v0, 0xEC($v1)
/* BF2C8 80108F08 8E050014 */  lw         $a1, 0x14($s0)
/* BF2CC 80108F0C 84440058 */  lh         $a0, 0x58($v0)
/* BF2D0 80108F10 8C42005C */  lw         $v0, 0x5C($v0)
/* BF2D4 80108F14 0040F809 */  jalr       $v0
/* BF2D8 80108F18 00642021 */   addu      $a0, $v1, $a0
/* BF2DC 80108F1C 8E030014 */  lw         $v1, 0x14($s0)
/* BF2E0 80108F20 8C62012C */  lw         $v0, 0x12C($v1)
/* BF2E4 80108F24 844401B0 */  lh         $a0, 0x1B0($v0)
/* BF2E8 80108F28 8C4201B4 */  lw         $v0, 0x1B4($v0)
/* BF2EC 80108F2C 0040F809 */  jalr       $v0
/* BF2F0 80108F30 00642021 */   addu      $a0, $v1, $a0
/* BF2F4 80108F34 8E030364 */  lw         $v1, 0x364($s0)
/* BF2F8 80108F38 8C6200EC */  lw         $v0, 0xEC($v1)
/* BF2FC 80108F3C 8E050014 */  lw         $a1, 0x14($s0)
/* BF300 80108F40 84440040 */  lh         $a0, 0x40($v0)
/* BF304 80108F44 8C420044 */  lw         $v0, 0x44($v0)
/* BF308 80108F48 0040F809 */  jalr       $v0
/* BF30C 80108F4C 00642021 */   addu      $a0, $v1, $a0
/* BF310 80108F50 8E050014 */  lw         $a1, 0x14($s0)
/* BF314 80108F54 0C03496E */  jal        func_race_800D25B8
/* BF318 80108F58 260427A8 */   addiu     $a0, $s0, 0x27A8
/* BF31C 80108F5C 8FBF002C */  lw         $ra, 0x2C($sp)
/* BF320 80108F60 8FB60028 */  lw         $s6, 0x28($sp)
/* BF324 80108F64 8FB50024 */  lw         $s5, 0x24($sp)
/* BF328 80108F68 8FB40020 */  lw         $s4, 0x20($sp)
/* BF32C 80108F6C 8FB3001C */  lw         $s3, 0x1C($sp)
/* BF330 80108F70 8FB20018 */  lw         $s2, 0x18($sp)
/* BF334 80108F74 8FB10014 */  lw         $s1, 0x14($sp)
/* BF338 80108F78 8FB00010 */  lw         $s0, 0x10($sp)
/* BF33C 80108F7C 03E00008 */  jr         $ra
/* BF340 80108F80 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_80108F84
/* BF344 80108F84 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BF348 80108F88 AFB00010 */  sw         $s0, 0x10($sp)
/* BF34C 80108F8C 00808021 */  addu       $s0, $a0, $zero
/* BF350 80108F90 AFBF0014 */  sw         $ra, 0x14($sp)
/* BF354 80108F94 8E04036C */  lw         $a0, 0x36C($s0)
/* BF358 80108F98 0C019094 */  jal        func_80064250
/* BF35C 80108F9C 00000000 */   nop
/* BF360 80108FA0 8E050014 */  lw         $a1, 0x14($s0)
/* BF364 80108FA4 0C0441BE */  jal        func_race_801106F8
/* BF368 80108FA8 26040390 */   addiu     $a0, $s0, 0x390
/* BF36C 80108FAC 8E050014 */  lw         $a1, 0x14($s0)
/* BF370 80108FB0 0C03A57E */  jal        func_race_800E95F8
/* BF374 80108FB4 2604211C */   addiu     $a0, $s0, 0x211C
/* BF378 80108FB8 0C04AEBD */  jal        func_race_8012BAF4
/* BF37C 80108FBC 260406B0 */   addiu     $a0, $s0, 0x6B0
/* BF380 80108FC0 8E050014 */  lw         $a1, 0x14($s0)
/* BF384 80108FC4 0C0108F9 */  jal        func_800423E4
/* BF388 80108FC8 26042124 */   addiu     $a0, $s0, 0x2124
/* BF38C 80108FCC 8E050014 */  lw         $a1, 0x14($s0)
/* BF390 80108FD0 0C0108F9 */  jal        func_800423E4
/* BF394 80108FD4 26042460 */   addiu     $a0, $s0, 0x2460
/* BF398 80108FD8 8E050014 */  lw         $a1, 0x14($s0)
/* BF39C 80108FDC 0C034FC2 */  jal        func_race_800D3F08
/* BF3A0 80108FE0 2604279C */   addiu     $a0, $s0, 0x279C
/* BF3A4 80108FE4 8E050014 */  lw         $a1, 0x14($s0)
/* BF3A8 80108FE8 0C03498E */  jal        func_race_800D2638
/* BF3AC 80108FEC 260427A8 */   addiu     $a0, $s0, 0x27A8
/* BF3B0 80108FF0 8E04333C */  lw         $a0, 0x333C($s0)
/* BF3B4 80108FF4 10800004 */  beqz       $a0, .Lrace_80109008
/* BF3B8 80108FF8 00000000 */   nop
/* BF3BC 80108FFC 8E050014 */  lw         $a1, 0x14($s0)
/* BF3C0 80109000 0C03D607 */  jal        func_race_800F581C
/* BF3C4 80109004 00000000 */   nop
.Lrace_80109008:
/* BF3C8 80109008 8FBF0014 */  lw         $ra, 0x14($sp)
/* BF3CC 8010900C 8FB00010 */  lw         $s0, 0x10($sp)
/* BF3D0 80109010 03E00008 */  jr         $ra
/* BF3D4 80109014 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80109018
/* BF3D8 80109018 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* BF3DC 8010901C AFB20018 */  sw         $s2, 0x18($sp)
/* BF3E0 80109020 00809021 */  addu       $s2, $a0, $zero
/* BF3E4 80109024 AFB10014 */  sw         $s1, 0x14($sp)
/* BF3E8 80109028 00008821 */  addu       $s1, $zero, $zero
/* BF3EC 8010902C AFB00010 */  sw         $s0, 0x10($sp)
/* BF3F0 80109030 24102810 */  addiu      $s0, $zero, 0x2810
/* BF3F4 80109034 AFBF001C */  sw         $ra, 0x1C($sp)
.Lrace_80109038:
/* BF3F8 80109038 0C03E81F */  jal        func_race_800FA07C
/* BF3FC 8010903C 02502021 */   addu      $a0, $s2, $s0
/* BF400 80109040 26310001 */  addiu      $s1, $s1, 0x1
/* BF404 80109044 2E220002 */  sltiu      $v0, $s1, 0x2
/* BF408 80109048 1440FFFB */  bnez       $v0, .Lrace_80109038
/* BF40C 8010904C 26100140 */   addiu     $s0, $s0, 0x140
/* BF410 80109050 8FBF001C */  lw         $ra, 0x1C($sp)
/* BF414 80109054 8FB20018 */  lw         $s2, 0x18($sp)
/* BF418 80109058 8FB10014 */  lw         $s1, 0x14($sp)
/* BF41C 8010905C 8FB00010 */  lw         $s0, 0x10($sp)
/* BF420 80109060 03E00008 */  jr         $ra
/* BF424 80109064 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80109068
/* BF428 80109068 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* BF42C 8010906C AFB10044 */  sw         $s1, 0x44($sp)
/* BF430 80109070 00808821 */  addu       $s1, $a0, $zero
/* BF434 80109074 AFBF0048 */  sw         $ra, 0x48($sp)
/* BF438 80109078 AFB00040 */  sw         $s0, 0x40($sp)
/* BF43C 8010907C 8E223328 */  lw         $v0, 0x3328($s1)
/* BF440 80109080 10400035 */  beqz       $v0, .Lrace_80109158
/* BF444 80109084 00000000 */   nop
/* BF448 80109088 8E223324 */  lw         $v0, 0x3324($s1)
/* BF44C 8010908C 2C4200FB */  sltiu      $v0, $v0, 0xFB
/* BF450 80109090 14400031 */  bnez       $v0, .Lrace_80109158
/* BF454 80109094 00000000 */   nop
/* BF458 80109098 0C0016DC */  jal        func_80005B70
/* BF45C 8010909C 27A40028 */   addiu     $a0, $sp, 0x28
/* BF460 801090A0 8E230014 */  lw         $v1, 0x14($s1)
/* BF464 801090A4 8C62012C */  lw         $v0, 0x12C($v1)
/* BF468 801090A8 84440030 */  lh         $a0, 0x30($v0)
/* BF46C 801090AC 8C420034 */  lw         $v0, 0x34($v0)
/* BF470 801090B0 0040F809 */  jalr       $v0
/* BF474 801090B4 00642021 */   addu      $a0, $v1, $a0
/* BF478 801090B8 262430C8 */  addiu      $a0, $s1, 0x30C8
/* BF47C 801090BC 2405002E */  addiu      $a1, $zero, 0x2E
/* BF480 801090C0 0C00306A */  jal        func_8000C1A8
/* BF484 801090C4 00408021 */   addu      $s0, $v0, $zero
/* BF488 801090C8 27A40028 */  addiu      $a0, $sp, 0x28
/* BF48C 801090CC 00402821 */  addu       $a1, $v0, $zero
/* BF490 801090D0 0C0016F6 */  jal        func_80005BD8
/* BF494 801090D4 00003021 */   addu      $a2, $zero, $zero
/* BF498 801090D8 27A50028 */  addiu      $a1, $sp, 0x28
/* BF49C 801090DC 27A60038 */  addiu      $a2, $sp, 0x38
/* BF4A0 801090E0 8E242D50 */  lw         $a0, 0x2D50($s1)
/* BF4A4 801090E4 0C01376C */  jal        func_8004DDB0
/* BF4A8 801090E8 27A7003C */   addiu     $a3, $sp, 0x3C
/* BF4AC 801090EC 27A50028 */  addiu      $a1, $sp, 0x28
/* BF4B0 801090F0 96020026 */  lhu        $v0, 0x26($s0)
/* BF4B4 801090F4 8FA70038 */  lw         $a3, 0x38($sp)
/* BF4B8 801090F8 8E240014 */  lw         $a0, 0x14($s1)
/* BF4BC 801090FC 8FA3003C */  lw         $v1, 0x3C($sp)
/* BF4C0 80109100 3C01800D */  lui        $at, %hi(D_race_800CD91C)
/* BF4C4 80109104 C420D91C */  lwc1       $f0, %lo(D_race_800CD91C)($at)
/* BF4C8 80109108 00021042 */  srl        $v0, $v0, 1
/* BF4CC 8010910C 00073842 */  srl        $a3, $a3, 1
/* BF4D0 80109110 00473823 */  subu       $a3, $v0, $a3
/* BF4D4 80109114 96020028 */  lhu        $v0, 0x28($s0)
/* BF4D8 80109118 8C88012C */  lw         $t0, 0x12C($a0)
/* BF4DC 8010911C 00431023 */  subu       $v0, $v0, $v1
/* BF4E0 80109120 850300D8 */  lh         $v1, 0xD8($t0)
/* BF4E4 80109124 2442FFF6 */  addiu      $v0, $v0, -0xA
/* BF4E8 80109128 AFA20010 */  sw         $v0, 0x10($sp)
/* BF4EC 8010912C E7A00014 */  swc1       $f0, 0x14($sp)
/* BF4F0 80109130 E7A00018 */  swc1       $f0, 0x18($sp)
/* BF4F4 80109134 AFA0001C */  sw         $zero, 0x1C($sp)
/* BF4F8 80109138 AFA00020 */  sw         $zero, 0x20($sp)
/* BF4FC 8010913C 8E262D50 */  lw         $a2, 0x2D50($s1)
/* BF500 80109140 8D0200DC */  lw         $v0, 0xDC($t0)
/* BF504 80109144 0040F809 */  jalr       $v0
/* BF508 80109148 00832021 */   addu      $a0, $a0, $v1
/* BF50C 8010914C 27A40028 */  addiu      $a0, $sp, 0x28
/* BF510 80109150 0C0016E2 */  jal        func_80005B88
/* BF514 80109154 24050002 */   addiu     $a1, $zero, 0x2
.Lrace_80109158:
/* BF518 80109158 8FBF0048 */  lw         $ra, 0x48($sp)
/* BF51C 8010915C 8FB10044 */  lw         $s1, 0x44($sp)
/* BF520 80109160 8FB00040 */  lw         $s0, 0x40($sp)
/* BF524 80109164 03E00008 */  jr         $ra
/* BF528 80109168 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_race_8010916C
/* BF52C 8010916C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* BF530 80109170 AFB10014 */  sw         $s1, 0x14($sp)
/* BF534 80109174 00808821 */  addu       $s1, $a0, $zero
/* BF538 80109178 AFBF0018 */  sw         $ra, 0x18($sp)
/* BF53C 8010917C AFB00010 */  sw         $s0, 0x10($sp)
/* BF540 80109180 F7B40020 */  sdc1       $f20, 0x20($sp)
/* BF544 80109184 8E230014 */  lw         $v1, 0x14($s1)
/* BF548 80109188 4485A000 */  mtc1       $a1, $f20
/* BF54C 8010918C 8C62012C */  lw         $v0, 0x12C($v1)
/* BF550 80109190 00002821 */  addu       $a1, $zero, $zero
/* BF554 80109194 844400B8 */  lh         $a0, 0xB8($v0)
/* BF558 80109198 8C4200BC */  lw         $v0, 0xBC($v0)
/* BF55C 8010919C 0040F809 */  jalr       $v0
/* BF560 801091A0 00642021 */   addu      $a0, $v1, $a0
/* BF564 801091A4 8E230014 */  lw         $v1, 0x14($s1)
/* BF568 801091A8 8C62012C */  lw         $v0, 0x12C($v1)
/* BF56C 801091AC 00002821 */  addu       $a1, $zero, $zero
/* BF570 801091B0 844401D8 */  lh         $a0, 0x1D8($v0)
/* BF574 801091B4 8C4201DC */  lw         $v0, 0x1DC($v0)
/* BF578 801091B8 0040F809 */  jalr       $v0
/* BF57C 801091BC 00642021 */   addu      $a0, $v1, $a0
/* BF580 801091C0 263027E0 */  addiu      $s0, $s1, 0x27E0
/* BF584 801091C4 4405A000 */  mfc1       $a1, $f20
/* BF588 801091C8 0C0404A9 */  jal        func_race_801012A4
/* BF58C 801091CC 02002021 */   addu      $a0, $s0, $zero
/* BF590 801091D0 0C0404AB */  jal        func_race_801012AC
/* BF594 801091D4 02002021 */   addu      $a0, $s0, $zero
/* BF598 801091D8 8E230014 */  lw         $v1, 0x14($s1)
/* BF59C 801091DC 8C62012C */  lw         $v0, 0x12C($v1)
/* BF5A0 801091E0 844401E0 */  lh         $a0, 0x1E0($v0)
/* BF5A4 801091E4 8C4201E4 */  lw         $v0, 0x1E4($v0)
/* BF5A8 801091E8 0040F809 */  jalr       $v0
/* BF5AC 801091EC 00642021 */   addu      $a0, $v1, $a0
/* BF5B0 801091F0 8E230008 */  lw         $v1, 0x8($s1)
/* BF5B4 801091F4 8C62009C */  lw         $v0, 0x9C($v1)
/* BF5B8 801091F8 84440010 */  lh         $a0, 0x10($v0)
/* BF5BC 801091FC 8C420014 */  lw         $v0, 0x14($v0)
/* BF5C0 80109200 0040F809 */  jalr       $v0
/* BF5C4 80109204 00642021 */   addu      $a0, $v1, $a0
/* BF5C8 80109208 8FBF0018 */  lw         $ra, 0x18($sp)
/* BF5CC 8010920C 8FB10014 */  lw         $s1, 0x14($sp)
/* BF5D0 80109210 8FB00010 */  lw         $s0, 0x10($sp)
/* BF5D4 80109214 D7B40020 */  ldc1       $f20, 0x20($sp)
/* BF5D8 80109218 03E00008 */  jr         $ra
/* BF5DC 8010921C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_80109220
/* BF5E0 80109220 03E00008 */  jr         $ra
/* BF5E4 80109224 00000000 */   nop

glabel func_race_80109228
/* BF5E8 80109228 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BF5EC 8010922C AFBF0010 */  sw         $ra, 0x10($sp)
/* BF5F0 80109230 8C830014 */  lw         $v1, 0x14($a0)
/* BF5F4 80109234 8C62012C */  lw         $v0, 0x12C($v1)
/* BF5F8 80109238 844401E0 */  lh         $a0, 0x1E0($v0)
/* BF5FC 8010923C 8C4201E4 */  lw         $v0, 0x1E4($v0)
/* BF600 80109240 0040F809 */  jalr       $v0
/* BF604 80109244 00642021 */   addu      $a0, $v1, $a0
/* BF608 80109248 8FBF0010 */  lw         $ra, 0x10($sp)
/* BF60C 8010924C 03E00008 */  jr         $ra
/* BF610 80109250 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80109254
/* BF614 80109254 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* BF618 80109258 AFB00010 */  sw         $s0, 0x10($sp)
/* BF61C 8010925C 00808021 */  addu       $s0, $a0, $zero
/* BF620 80109260 AFB10014 */  sw         $s1, 0x14($sp)
/* BF624 80109264 00A08821 */  addu       $s1, $a1, $zero
/* BF628 80109268 AFBF001C */  sw         $ra, 0x1C($sp)
/* BF62C 8010926C AFB20018 */  sw         $s2, 0x18($sp)
/* BF630 80109270 8E023328 */  lw         $v0, 0x3328($s0)
/* BF634 80109274 1040000B */  beqz       $v0, .Lrace_801092A4
/* BF638 80109278 00C09021 */   addu      $s2, $a2, $zero
/* BF63C 8010927C 3C023000 */  lui        $v0, (0x30000000 >> 16)
/* BF640 80109280 02221024 */  and        $v0, $s1, $v0
/* BF644 80109284 10400008 */  beqz       $v0, .Lrace_801092A8
/* BF648 80109288 3C023000 */   lui       $v0, (0x3000000C >> 16)
/* BF64C 8010928C 8E030004 */  lw         $v1, 0x4($s0)
/* BF650 80109290 AE00330C */  sw         $zero, 0x330C($s0)
/* BF654 80109294 94620022 */  lhu        $v0, 0x22($v1)
/* BF658 80109298 34420080 */  ori        $v0, $v0, 0x80
/* BF65C 8010929C 080424D6 */  j          .Lrace_80109358
/* BF660 801092A0 A4620022 */   sh        $v0, 0x22($v1)
.Lrace_801092A4:
/* BF664 801092A4 3C023000 */  lui        $v0, (0x3000000C >> 16)
.Lrace_801092A8:
/* BF668 801092A8 3442000C */  ori        $v0, $v0, (0x3000000C & 0xFFFF)
/* BF66C 801092AC 16220019 */  bne        $s1, $v0, .Lrace_80109314
/* BF670 801092B0 00000000 */   nop
/* BF674 801092B4 8E023098 */  lw         $v0, 0x3098($s0)
/* BF678 801092B8 14400008 */  bnez       $v0, .Lrace_801092DC
/* BF67C 801092BC 2442FFFE */   addiu     $v0, $v0, -0x2
/* BF680 801092C0 24020001 */  addiu      $v0, $zero, 0x1
/* BF684 801092C4 AE023098 */  sw         $v0, 0x3098($s0)
/* BF688 801092C8 02002021 */  addu       $a0, $s0, $zero
/* BF68C 801092CC 0C0425EF */  jal        func_race_801097BC
/* BF690 801092D0 02402821 */   addu      $a1, $s2, $zero
/* BF694 801092D4 080424C5 */  j          .Lrace_80109314
/* BF698 801092D8 00000000 */   nop
.Lrace_801092DC:
/* BF69C 801092DC 2C420002 */  sltiu      $v0, $v0, 0x2
/* BF6A0 801092E0 1440000C */  bnez       $v0, .Lrace_80109314
/* BF6A4 801092E4 00000000 */   nop
/* BF6A8 801092E8 8E023094 */  lw         $v0, 0x3094($s0)
/* BF6AC 801092EC 10400003 */  beqz       $v0, .Lrace_801092FC
/* BF6B0 801092F0 00001821 */   addu      $v1, $zero, $zero
/* BF6B4 801092F4 16420002 */  bne        $s2, $v0, .Lrace_80109300
/* BF6B8 801092F8 00000000 */   nop
.Lrace_801092FC:
/* BF6BC 801092FC 24030001 */  addiu      $v1, $zero, 0x1
.Lrace_80109300:
/* BF6C0 80109300 10600004 */  beqz       $v1, .Lrace_80109314
/* BF6C4 80109304 24020001 */   addiu     $v0, $zero, 0x1
/* BF6C8 80109308 AE023098 */  sw         $v0, 0x3098($s0)
/* BF6CC 8010930C 0C04267C */  jal        func_race_801099F0
/* BF6D0 80109310 02002021 */   addu      $a0, $s0, $zero
.Lrace_80109314:
/* BF6D4 80109314 92033310 */  lbu        $v1, 0x3310($s0)
/* BF6D8 80109318 24020003 */  addiu      $v0, $zero, 0x3
/* BF6DC 8010931C 50620001 */  beql       $v1, $v0, .Lrace_80109324
/* BF6E0 80109320 AE00330C */   sw        $zero, 0x330C($s0)
.Lrace_80109324:
/* BF6E4 80109324 92033310 */  lbu        $v1, 0x3310($s0)
/* BF6E8 80109328 24020007 */  addiu      $v0, $zero, 0x7
/* BF6EC 8010932C 14620004 */  bne        $v1, $v0, .Lrace_80109340
/* BF6F0 80109330 00000000 */   nop
/* BF6F4 80109334 8E020004 */  lw         $v0, 0x4($s0)
/* BF6F8 80109338 AE00330C */  sw         $zero, 0x330C($s0)
/* BF6FC 8010933C AC400000 */  sw         $zero, 0x0($v0)
.Lrace_80109340:
/* BF700 80109340 8E023098 */  lw         $v0, 0x3098($s0)
/* BF704 80109344 10400004 */  beqz       $v0, .Lrace_80109358
/* BF708 80109348 2604302C */   addiu     $a0, $s0, 0x302C
/* BF70C 8010934C 02202821 */  addu       $a1, $s1, $zero
/* BF710 80109350 0C03EF1E */  jal        func_race_800FBC78
/* BF714 80109354 02403021 */   addu      $a2, $s2, $zero
.Lrace_80109358:
/* BF718 80109358 8FBF001C */  lw         $ra, 0x1C($sp)
/* BF71C 8010935C 8FB20018 */  lw         $s2, 0x18($sp)
/* BF720 80109360 8FB10014 */  lw         $s1, 0x14($sp)
/* BF724 80109364 8FB00010 */  lw         $s0, 0x10($sp)
/* BF728 80109368 03E00008 */  jr         $ra
/* BF72C 8010936C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80109370
/* BF730 80109370 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BF734 80109374 3C021000 */  lui        $v0, (0x1000001D >> 16)
/* BF738 80109378 3442001D */  ori        $v0, $v0, (0x1000001D & 0xFFFF)
/* BF73C 8010937C 10A20011 */  beq        $a1, $v0, .Lrace_801093C4
/* BF740 80109380 AFBF0010 */   sw        $ra, 0x10($sp)
/* BF744 80109384 0045102B */  sltu       $v0, $v0, $a1
/* BF748 80109388 14400006 */  bnez       $v0, .Lrace_801093A4
/* BF74C 8010938C 3C021000 */   lui       $v0, (0x10000010 >> 16)
/* BF750 80109390 34420010 */  ori        $v0, $v0, (0x10000010 & 0xFFFF)
/* BF754 80109394 10A20008 */  beq        $a1, $v0, .Lrace_801093B8
/* BF758 80109398 00000000 */   nop
/* BF75C 8010939C 080424F7 */  j          .Lrace_801093DC
/* BF760 801093A0 00000000 */   nop
.Lrace_801093A4:
/* BF764 801093A4 3442002A */  ori        $v0, $v0, (0x1000002A & 0xFFFF)
/* BF768 801093A8 10A20009 */  beq        $a1, $v0, .Lrace_801093D0
/* BF76C 801093AC 00000000 */   nop
/* BF770 801093B0 080424F7 */  j          .Lrace_801093DC
/* BF774 801093B4 00000000 */   nop
.Lrace_801093B8:
/* BF778 801093B8 90823310 */  lbu        $v0, 0x3310($a0)
/* BF77C 801093BC 080424F6 */  j          .Lrace_801093D8
/* BF780 801093C0 304200FE */   andi      $v0, $v0, 0xFE
.Lrace_801093C4:
/* BF784 801093C4 90823310 */  lbu        $v0, 0x3310($a0)
/* BF788 801093C8 080424F6 */  j          .Lrace_801093D8
/* BF78C 801093CC 304200FD */   andi      $v0, $v0, 0xFD
.Lrace_801093D0:
/* BF790 801093D0 90823310 */  lbu        $v0, 0x3310($a0)
/* BF794 801093D4 304200FB */  andi       $v0, $v0, 0xFB
.Lrace_801093D8:
/* BF798 801093D8 A0823310 */  sb         $v0, 0x3310($a0)
.Lrace_801093DC:
/* BF79C 801093DC 8C823098 */  lw         $v0, 0x3098($a0)
/* BF7A0 801093E0 10400003 */  beqz       $v0, .Lrace_801093F0
/* BF7A4 801093E4 00000000 */   nop
/* BF7A8 801093E8 0C03EF59 */  jal        func_race_800FBD64
/* BF7AC 801093EC 2484302C */   addiu     $a0, $a0, 0x302C
.Lrace_801093F0:
/* BF7B0 801093F0 8FBF0010 */  lw         $ra, 0x10($sp)
/* BF7B4 801093F4 03E00008 */  jr         $ra
/* BF7B8 801093F8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_801093FC
/* BF7BC 801093FC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* BF7C0 80109400 AFB5002C */  sw         $s5, 0x2C($sp)
/* BF7C4 80109404 0080A821 */  addu       $s5, $a0, $zero
/* BF7C8 80109408 AFBF0034 */  sw         $ra, 0x34($sp)
/* BF7CC 8010940C AFB60030 */  sw         $s6, 0x30($sp)
/* BF7D0 80109410 AFB40028 */  sw         $s4, 0x28($sp)
/* BF7D4 80109414 AFB30024 */  sw         $s3, 0x24($sp)
/* BF7D8 80109418 AFB20020 */  sw         $s2, 0x20($sp)
/* BF7DC 8010941C AFB1001C */  sw         $s1, 0x1C($sp)
/* BF7E0 80109420 AFB00018 */  sw         $s0, 0x18($sp)
/* BF7E4 80109424 92A201AE */  lbu        $v0, 0x1AE($s5)
/* BF7E8 80109428 14400021 */  bnez       $v0, .Lrace_801094B0
/* BF7EC 8010942C 00A03821 */   addu      $a3, $a1, $zero
/* BF7F0 80109430 00009821 */  addu       $s3, $zero, $zero
/* BF7F4 80109434 3C050004 */  lui        $a1, (0x40000 >> 16)
/* BF7F8 80109438 02602021 */  addu       $a0, $s3, $zero
.Lrace_8010943C:
/* BF7FC 8010943C 8EA30374 */  lw         $v1, 0x374($s5)
/* BF800 80109440 8C620060 */  lw         $v0, 0x60($v1)
/* BF804 80109444 0262102B */  sltu       $v0, $s3, $v0
/* BF808 80109448 1040004F */  beqz       $v0, .Lrace_80109588
/* BF80C 8010944C 00000000 */   nop
/* BF810 80109450 8C6200A4 */  lw         $v0, 0xA4($v1)
/* BF814 80109454 00441021 */  addu       $v0, $v0, $a0
/* BF818 80109458 8C43005C */  lw         $v1, 0x5C($v0)
/* BF81C 8010945C 14600003 */  bnez       $v1, .Lrace_8010946C
/* BF820 80109460 00609021 */   addu      $s2, $v1, $zero
/* BF824 80109464 8C420058 */  lw         $v0, 0x58($v0)
/* BF828 80109468 24520014 */  addiu      $s2, $v0, 0x14
.Lrace_8010946C:
/* BF82C 8010946C 00008821 */  addu       $s1, $zero, $zero
.Lrace_80109470:
/* BF830 80109470 8E420004 */  lw         $v0, 0x4($s2)
/* BF834 80109474 0222102B */  sltu       $v0, $s1, $v0
/* BF838 80109478 1040000A */  beqz       $v0, .Lrace_801094A4
/* BF83C 8010947C 00111880 */   sll       $v1, $s1, 2
/* BF840 80109480 8E420008 */  lw         $v0, 0x8($s2)
/* BF844 80109484 00621821 */  addu       $v1, $v1, $v0
/* BF848 80109488 8C700000 */  lw         $s0, 0x0($v1)
/* BF84C 8010948C 8E020004 */  lw         $v0, 0x4($s0)
/* BF850 80109490 26310001 */  addiu      $s1, $s1, 0x1
/* BF854 80109494 AE000010 */  sw         $zero, 0x10($s0)
/* BF858 80109498 00451025 */  or         $v0, $v0, $a1
/* BF85C 8010949C 0804251C */  j          .Lrace_80109470
/* BF860 801094A0 AE020004 */   sw        $v0, 0x4($s0)
.Lrace_801094A4:
/* BF864 801094A4 24840064 */  addiu      $a0, $a0, 0x64
/* BF868 801094A8 0804250F */  j          .Lrace_8010943C
/* BF86C 801094AC 26730001 */   addiu     $s3, $s3, 0x1
.Lrace_801094B0:
/* BF870 801094B0 26A427B4 */  addiu      $a0, $s5, 0x27B4
/* BF874 801094B4 26A501AE */  addiu      $a1, $s5, 0x1AE
/* BF878 801094B8 00009821 */  addu       $s3, $zero, $zero
/* BF87C 801094BC 8EA20004 */  lw         $v0, 0x4($s5)
/* BF880 801094C0 3C160004 */  lui        $s6, (0x40000 >> 16)
/* BF884 801094C4 8C46001C */  lw         $a2, 0x1C($v0)
/* BF888 801094C8 0C046999 */  jal        func_race_8011A664
/* BF88C 801094CC 0260A021 */   addu      $s4, $s3, $zero
.Lrace_801094D0:
/* BF890 801094D0 8EA30374 */  lw         $v1, 0x374($s5)
/* BF894 801094D4 8C620060 */  lw         $v0, 0x60($v1)
/* BF898 801094D8 0262102B */  sltu       $v0, $s3, $v0
/* BF89C 801094DC 1040002A */  beqz       $v0, .Lrace_80109588
/* BF8A0 801094E0 00000000 */   nop
/* BF8A4 801094E4 8C6200A4 */  lw         $v0, 0xA4($v1)
/* BF8A8 801094E8 00541021 */  addu       $v0, $v0, $s4
/* BF8AC 801094EC 8C43005C */  lw         $v1, 0x5C($v0)
/* BF8B0 801094F0 14600003 */  bnez       $v1, .Lrace_80109500
/* BF8B4 801094F4 00609021 */   addu      $s2, $v1, $zero
/* BF8B8 801094F8 8C420058 */  lw         $v0, 0x58($v0)
/* BF8BC 801094FC 24520014 */  addiu      $s2, $v0, 0x14
.Lrace_80109500:
/* BF8C0 80109500 00008821 */  addu       $s1, $zero, $zero
.Lrace_80109504:
/* BF8C4 80109504 8E420004 */  lw         $v0, 0x4($s2)
/* BF8C8 80109508 0222102B */  sltu       $v0, $s1, $v0
/* BF8CC 8010950C 1040001B */  beqz       $v0, .Lrace_8010957C
/* BF8D0 80109510 00111080 */   sll       $v0, $s1, 2
/* BF8D4 80109514 8E430008 */  lw         $v1, 0x8($s2)
/* BF8D8 80109518 00431021 */  addu       $v0, $v0, $v1
/* BF8DC 8010951C 8C500000 */  lw         $s0, 0x0($v0)
/* BF8E0 80109520 27A50010 */  addiu      $a1, $sp, 0x10
/* BF8E4 80109524 8A080014 */  lwl        $t0, 0x14($s0)
/* BF8E8 80109528 9A080017 */  lwr        $t0, 0x17($s0)
/* BF8EC 8010952C 8A090018 */  lwl        $t1, 0x18($s0)
/* BF8F0 80109530 9A09001B */  lwr        $t1, 0x1B($s0)
/* BF8F4 80109534 ABA80010 */  swl        $t0, 0x10($sp)
/* BF8F8 80109538 BBA80013 */  swr        $t0, 0x13($sp)
/* BF8FC 8010953C ABA90014 */  swl        $t1, 0x14($sp)
/* BF900 80109540 BBA90017 */  swr        $t1, 0x17($sp)
/* BF904 80109544 8EA227B4 */  lw         $v0, 0x27B4($s5)
/* BF908 80109548 14400003 */  bnez       $v0, .Lrace_80109558
/* BF90C 8010954C 26A427B4 */   addiu     $a0, $s5, 0x27B4
/* BF910 80109550 08042559 */  j          .Lrace_80109564
/* BF914 80109554 00001821 */   addu      $v1, $zero, $zero
.Lrace_80109558:
/* BF918 80109558 0C016427 */  jal        func_8005909C
/* BF91C 8010955C 00000000 */   nop
/* BF920 80109560 00401821 */  addu       $v1, $v0, $zero
.Lrace_80109564:
/* BF924 80109564 8E020004 */  lw         $v0, 0x4($s0)
/* BF928 80109568 26310001 */  addiu      $s1, $s1, 0x1
/* BF92C 8010956C AE030010 */  sw         $v1, 0x10($s0)
/* BF930 80109570 00561025 */  or         $v0, $v0, $s6
/* BF934 80109574 08042541 */  j          .Lrace_80109504
/* BF938 80109578 AE020004 */   sw        $v0, 0x4($s0)
.Lrace_8010957C:
/* BF93C 8010957C 26940064 */  addiu      $s4, $s4, 0x64
/* BF940 80109580 08042534 */  j          .Lrace_801094D0
/* BF944 80109584 26730001 */   addiu     $s3, $s3, 0x1
.Lrace_80109588:
/* BF948 80109588 8FBF0034 */  lw         $ra, 0x34($sp)
/* BF94C 8010958C 8FB60030 */  lw         $s6, 0x30($sp)
/* BF950 80109590 8FB5002C */  lw         $s5, 0x2C($sp)
/* BF954 80109594 8FB40028 */  lw         $s4, 0x28($sp)
/* BF958 80109598 8FB30024 */  lw         $s3, 0x24($sp)
/* BF95C 8010959C 8FB20020 */  lw         $s2, 0x20($sp)
/* BF960 801095A0 8FB1001C */  lw         $s1, 0x1C($sp)
/* BF964 801095A4 8FB00018 */  lw         $s0, 0x18($sp)
/* BF968 801095A8 03E00008 */  jr         $ra
/* BF96C 801095AC 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_801095B0
/* BF970 801095B0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* BF974 801095B4 AFB30024 */  sw         $s3, 0x24($sp)
/* BF978 801095B8 00809821 */  addu       $s3, $a0, $zero
/* BF97C 801095BC AFBF0030 */  sw         $ra, 0x30($sp)
/* BF980 801095C0 AFB5002C */  sw         $s5, 0x2C($sp)
/* BF984 801095C4 AFB40028 */  sw         $s4, 0x28($sp)
/* BF988 801095C8 AFB20020 */  sw         $s2, 0x20($sp)
/* BF98C 801095CC AFB1001C */  sw         $s1, 0x1C($sp)
/* BF990 801095D0 AFB00018 */  sw         $s0, 0x18($sp)
/* BF994 801095D4 8E62038C */  lw         $v0, 0x38C($s3)
/* BF998 801095D8 10400030 */  beqz       $v0, .Lrace_8010969C
/* BF99C 801095DC 00008821 */   addu      $s1, $zero, $zero
/* BF9A0 801095E0 02209021 */  addu       $s2, $s1, $zero
/* BF9A4 801095E4 8C420058 */  lw         $v0, 0x58($v0)
/* BF9A8 801095E8 3C150004 */  lui        $s5, (0x40000 >> 16)
/* BF9AC 801095EC 24540014 */  addiu      $s4, $v0, 0x14
.Lrace_801095F0:
/* BF9B0 801095F0 8E820004 */  lw         $v0, 0x4($s4)
/* BF9B4 801095F4 0222102B */  sltu       $v0, $s1, $v0
/* BF9B8 801095F8 10400028 */  beqz       $v0, .Lrace_8010969C
/* BF9BC 801095FC 00111080 */   sll       $v0, $s1, 2
/* BF9C0 80109600 8E830008 */  lw         $v1, 0x8($s4)
/* BF9C4 80109604 00431021 */  addu       $v0, $v0, $v1
/* BF9C8 80109608 8C500000 */  lw         $s0, 0x0($v0)
/* BF9CC 8010960C 8A060014 */  lwl        $a2, 0x14($s0)
/* BF9D0 80109610 9A060017 */  lwr        $a2, 0x17($s0)
/* BF9D4 80109614 8A070018 */  lwl        $a3, 0x18($s0)
/* BF9D8 80109618 9A07001B */  lwr        $a3, 0x1B($s0)
/* BF9DC 8010961C ABA60010 */  swl        $a2, 0x10($sp)
/* BF9E0 80109620 BBA60013 */  swr        $a2, 0x13($sp)
/* BF9E4 80109624 ABA70014 */  swl        $a3, 0x14($sp)
/* BF9E8 80109628 BBA70017 */  swr        $a3, 0x17($sp)
/* BF9EC 8010962C 93A20010 */  lbu        $v0, 0x10($sp)
/* BF9F0 80109630 2442FFD0 */  addiu      $v0, $v0, -0x30
/* BF9F4 80109634 2C42000A */  sltiu      $v0, $v0, 0xA
/* BF9F8 80109638 1040000A */  beqz       $v0, .Lrace_80109664
/* BF9FC 8010963C 27A50010 */   addiu     $a1, $sp, 0x10
/* BFA00 80109640 266427C8 */  addiu      $a0, $s3, 0x27C8
/* BFA04 80109644 0C03C8CA */  jal        func_race_800F2328
/* BFA08 80109648 02402821 */   addu      $a1, $s2, $zero
/* BFA0C 8010964C 8E030004 */  lw         $v1, 0x4($s0)
/* BFA10 80109650 26520001 */  addiu      $s2, $s2, 0x1
/* BFA14 80109654 AE020010 */  sw         $v0, 0x10($s0)
/* BFA18 80109658 00751825 */  or         $v1, $v1, $s5
/* BFA1C 8010965C 080425A5 */  j          .Lrace_80109694
/* BFA20 80109660 AE030004 */   sw        $v1, 0x4($s0)
.Lrace_80109664:
/* BFA24 80109664 8E6227B4 */  lw         $v0, 0x27B4($s3)
/* BFA28 80109668 14400003 */  bnez       $v0, .Lrace_80109678
/* BFA2C 8010966C 266427B4 */   addiu     $a0, $s3, 0x27B4
/* BFA30 80109670 080425A1 */  j          .Lrace_80109684
/* BFA34 80109674 00001821 */   addu      $v1, $zero, $zero
.Lrace_80109678:
/* BFA38 80109678 0C016427 */  jal        func_8005909C
/* BFA3C 8010967C 00000000 */   nop
/* BFA40 80109680 00401821 */  addu       $v1, $v0, $zero
.Lrace_80109684:
/* BFA44 80109684 8E020004 */  lw         $v0, 0x4($s0)
/* BFA48 80109688 AE030010 */  sw         $v1, 0x10($s0)
/* BFA4C 8010968C 00551025 */  or         $v0, $v0, $s5
/* BFA50 80109690 AE020004 */  sw         $v0, 0x4($s0)
.Lrace_80109694:
/* BFA54 80109694 0804257C */  j          .Lrace_801095F0
/* BFA58 80109698 26310001 */   addiu     $s1, $s1, 0x1
.Lrace_8010969C:
/* BFA5C 8010969C 8FBF0030 */  lw         $ra, 0x30($sp)
/* BFA60 801096A0 8FB5002C */  lw         $s5, 0x2C($sp)
/* BFA64 801096A4 8FB40028 */  lw         $s4, 0x28($sp)
/* BFA68 801096A8 8FB30024 */  lw         $s3, 0x24($sp)
/* BFA6C 801096AC 8FB20020 */  lw         $s2, 0x20($sp)
/* BFA70 801096B0 8FB1001C */  lw         $s1, 0x1C($sp)
/* BFA74 801096B4 8FB00018 */  lw         $s0, 0x18($sp)
/* BFA78 801096B8 03E00008 */  jr         $ra
/* BFA7C 801096BC 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_801096C0
/* BFA80 801096C0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* BFA84 801096C4 AFB60028 */  sw         $s6, 0x28($sp)
/* BFA88 801096C8 0080B021 */  addu       $s6, $a0, $zero
/* BFA8C 801096CC AFB7002C */  sw         $s7, 0x2C($sp)
/* BFA90 801096D0 00A0B821 */  addu       $s7, $a1, $zero
/* BFA94 801096D4 AFB3001C */  sw         $s3, 0x1C($sp)
/* BFA98 801096D8 00009821 */  addu       $s3, $zero, $zero
/* BFA9C 801096DC 26C20390 */  addiu      $v0, $s6, 0x390
/* BFAA0 801096E0 AFBF0030 */  sw         $ra, 0x30($sp)
/* BFAA4 801096E4 AFB50024 */  sw         $s5, 0x24($sp)
/* BFAA8 801096E8 AFB40020 */  sw         $s4, 0x20($sp)
/* BFAAC 801096EC AFB20018 */  sw         $s2, 0x18($sp)
/* BFAB0 801096F0 AFB10014 */  sw         $s1, 0x14($sp)
/* BFAB4 801096F4 AFB00010 */  sw         $s0, 0x10($sp)
/* BFAB8 801096F8 8C550170 */  lw         $s5, 0x170($v0)
/* BFABC 801096FC 12A00024 */  beqz       $s5, .Lrace_80109790
/* BFAC0 80109700 0260A021 */   addu      $s4, $s3, $zero
/* BFAC4 80109704 02608821 */  addu       $s1, $s3, $zero
/* BFAC8 80109708 00409021 */  addu       $s2, $v0, $zero
/* BFACC 8010970C 02608021 */  addu       $s0, $s3, $zero
.Lrace_80109710:
/* BFAD0 80109710 8E420144 */  lw         $v0, 0x144($s2)
/* BFAD4 80109714 0222102B */  sltu       $v0, $s1, $v0
/* BFAD8 80109718 10400006 */  beqz       $v0, .Lrace_80109734
/* BFADC 8010971C 26310001 */   addiu     $s1, $s1, 0x1
/* BFAE0 80109720 8E440140 */  lw         $a0, 0x140($s2)
/* BFAE4 80109724 0C04348D */  jal        func_race_8010D234
/* BFAE8 80109728 00902021 */   addu      $a0, $a0, $s0
/* BFAEC 8010972C 080425C4 */  j          .Lrace_80109710
/* BFAF0 80109730 26100E2C */   addiu     $s0, $s0, 0xE2C
.Lrace_80109734:
/* BFAF4 80109734 00131040 */  sll        $v0, $s3, 1
/* BFAF8 80109738 00531021 */  addu       $v0, $v0, $s3
/* BFAFC 8010973C 00021080 */  sll        $v0, $v0, 2
/* BFB00 80109740 00531021 */  addu       $v0, $v0, $s3
/* BFB04 80109744 000280C0 */  sll        $s0, $v0, 3
.Lrace_80109748:
/* BFB08 80109748 0297102B */  sltu       $v0, $s4, $s7
/* BFB0C 8010974C 10400010 */  beqz       $v0, .Lrace_80109790
/* BFB10 80109750 26C306B0 */   addiu     $v1, $s6, 0x6B0
/* BFB14 80109754 8C620038 */  lw         $v0, 0x38($v1)
/* BFB18 80109758 0262102B */  sltu       $v0, $s3, $v0
/* BFB1C 8010975C 1040000C */  beqz       $v0, .Lrace_80109790
/* BFB20 80109760 00000000 */   nop
/* BFB24 80109764 8C62002C */  lw         $v0, 0x2C($v1)
/* BFB28 80109768 00502821 */  addu       $a1, $v0, $s0
/* BFB2C 8010976C 8CA2003C */  lw         $v0, 0x3C($a1)
/* BFB30 80109770 54400005 */  bnel       $v0, $zero, .Lrace_80109788
/* BFB34 80109774 26100068 */   addiu     $s0, $s0, 0x68
/* BFB38 80109778 0C043438 */  jal        func_race_8010D0E0
/* BFB3C 8010977C 02A02021 */   addu      $a0, $s5, $zero
/* BFB40 80109780 26940001 */  addiu      $s4, $s4, 0x1
/* BFB44 80109784 26100068 */  addiu      $s0, $s0, 0x68
.Lrace_80109788:
/* BFB48 80109788 080425D2 */  j          .Lrace_80109748
/* BFB4C 8010978C 26730001 */   addiu     $s3, $s3, 0x1
.Lrace_80109790:
/* BFB50 80109790 8FBF0030 */  lw         $ra, 0x30($sp)
/* BFB54 80109794 8FB7002C */  lw         $s7, 0x2C($sp)
/* BFB58 80109798 8FB60028 */  lw         $s6, 0x28($sp)
/* BFB5C 8010979C 8FB50024 */  lw         $s5, 0x24($sp)
/* BFB60 801097A0 8FB40020 */  lw         $s4, 0x20($sp)
/* BFB64 801097A4 8FB3001C */  lw         $s3, 0x1C($sp)
/* BFB68 801097A8 8FB20018 */  lw         $s2, 0x18($sp)
/* BFB6C 801097AC 8FB10014 */  lw         $s1, 0x14($sp)
/* BFB70 801097B0 8FB00010 */  lw         $s0, 0x10($sp)
/* BFB74 801097B4 03E00008 */  jr         $ra
/* BFB78 801097B8 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_801097BC
/* BFB7C 801097BC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* BFB80 801097C0 AFB3002C */  sw         $s3, 0x2C($sp)
/* BFB84 801097C4 00809821 */  addu       $s3, $a0, $zero
/* BFB88 801097C8 AFB40030 */  sw         $s4, 0x30($sp)
/* BFB8C 801097CC 00A0A021 */  addu       $s4, $a1, $zero
/* BFB90 801097D0 AFB20028 */  sw         $s2, 0x28($sp)
/* BFB94 801097D4 00009021 */  addu       $s2, $zero, $zero
/* BFB98 801097D8 AFB10024 */  sw         $s1, 0x24($sp)
/* BFB9C 801097DC 2411031C */  addiu      $s1, $zero, 0x31C
/* BFBA0 801097E0 AFB00020 */  sw         $s0, 0x20($sp)
/* BFBA4 801097E4 02408021 */  addu       $s0, $s2, $zero
/* BFBA8 801097E8 AFBF0034 */  sw         $ra, 0x34($sp)
.Lrace_801097EC:
/* BFBAC 801097EC 8E620004 */  lw         $v0, 0x4($s3)
/* BFBB0 801097F0 8C420330 */  lw         $v0, 0x330($v0)
/* BFBB4 801097F4 0242102B */  sltu       $v0, $s2, $v0
/* BFBB8 801097F8 1040000B */  beqz       $v0, .Lrace_80109828
/* BFBBC 801097FC 02131021 */   addu      $v0, $s0, $s3
/* BFBC0 80109800 AC400294 */  sw         $zero, 0x294($v0)
/* BFBC4 80109804 00402021 */  addu       $a0, $v0, $zero
/* BFBC8 80109808 0C040AE6 */  jal        func_race_80102B98
/* BFBCC 8010980C 24840240 */   addiu     $a0, $a0, 0x240
/* BFBD0 80109810 0C03D405 */  jal        func_race_800F5014
/* BFBD4 80109814 02712021 */   addu      $a0, $s3, $s1
/* BFBD8 80109818 26310024 */  addiu      $s1, $s1, 0x24
/* BFBDC 8010981C 26100070 */  addiu      $s0, $s0, 0x70
/* BFBE0 80109820 080425FB */  j          .Lrace_801097EC
/* BFBE4 80109824 26520001 */   addiu     $s2, $s2, 0x1
.Lrace_80109828:
/* BFBE8 80109828 00002021 */  addu       $a0, $zero, $zero
/* BFBEC 8010982C 00801821 */  addu       $v1, $a0, $zero
.Lrace_80109830:
/* BFBF0 80109830 2C820002 */  sltiu      $v0, $a0, 0x2
/* BFBF4 80109834 10400005 */  beqz       $v0, .Lrace_8010984C
/* BFBF8 80109838 00731021 */   addu      $v0, $v1, $s3
/* BFBFC 8010983C AC40294C */  sw         $zero, 0x294C($v0)
/* BFC00 80109840 24630140 */  addiu      $v1, $v1, 0x140
/* BFC04 80109844 0804260C */  j          .Lrace_80109830
/* BFC08 80109848 24840001 */   addiu     $a0, $a0, 0x1
.Lrace_8010984C:
/* BFC0C 8010984C 8E620018 */  lw         $v0, 0x18($s3)
/* BFC10 80109850 54400001 */  bnel       $v0, $zero, .Lrace_80109858
/* BFC14 80109854 AC400044 */   sw        $zero, 0x44($v0)
.Lrace_80109858:
/* BFC18 80109858 8E633098 */  lw         $v1, 0x3098($s3)
/* BFC1C 8010985C 24020002 */  addiu      $v0, $zero, 0x2
/* BFC20 80109860 10620023 */  beq        $v1, $v0, .Lrace_801098F0
/* BFC24 80109864 28620003 */   slti      $v0, $v1, 0x3
/* BFC28 80109868 10400005 */  beqz       $v0, .Lrace_80109880
/* BFC2C 8010986C 24020001 */   addiu     $v0, $zero, 0x1
/* BFC30 80109870 10620008 */  beq        $v1, $v0, .Lrace_80109894
/* BFC34 80109874 00000000 */   nop
/* BFC38 80109878 08042666 */  j          .Lrace_80109998
/* BFC3C 8010987C 00000000 */   nop
.Lrace_80109880:
/* BFC40 80109880 24020003 */  addiu      $v0, $zero, 0x3
/* BFC44 80109884 10620037 */  beq        $v1, $v0, .Lrace_80109964
/* BFC48 80109888 2664302C */   addiu     $a0, $s3, 0x302C
/* BFC4C 8010988C 08042666 */  j          .Lrace_80109998
/* BFC50 80109890 00000000 */   nop
.Lrace_80109894:
/* BFC54 80109894 8E620018 */  lw         $v0, 0x18($s3)
/* BFC58 80109898 1040000B */  beqz       $v0, .Lrace_801098C8
/* BFC5C 8010989C 2664302C */   addiu     $a0, $s3, 0x302C
/* BFC60 801098A0 02802821 */  addu       $a1, $s4, $zero
/* BFC64 801098A4 24060003 */  addiu      $a2, $zero, 0x3
/* BFC68 801098A8 3C078013 */  lui        $a3, %hi(D_race_80132228)
/* BFC6C 801098AC 24E72228 */  addiu      $a3, $a3, %lo(D_race_80132228)
/* BFC70 801098B0 3C028013 */  lui        $v0, %hi(D_race_80132226)
/* BFC74 801098B4 94432226 */  lhu        $v1, %lo(D_race_80132226)($v0)
/* BFC78 801098B8 3402FFFF */  ori        $v0, $zero, 0xFFFF
/* BFC7C 801098BC AFA20014 */  sw         $v0, 0x14($sp)
/* BFC80 801098C0 08042663 */  j          .Lrace_8010998C
/* BFC84 801098C4 AFA00018 */   sw        $zero, 0x18($sp)
.Lrace_801098C8:
/* BFC88 801098C8 02802821 */  addu       $a1, $s4, $zero
/* BFC8C 801098CC 24060003 */  addiu      $a2, $zero, 0x3
/* BFC90 801098D0 3C078013 */  lui        $a3, %hi(D_race_80132220)
/* BFC94 801098D4 24E72220 */  addiu      $a3, $a3, %lo(D_race_80132220)
/* BFC98 801098D8 3C028013 */  lui        $v0, %hi(D_race_80132226)
/* BFC9C 801098DC 94432226 */  lhu        $v1, %lo(D_race_80132226)($v0)
/* BFCA0 801098E0 3402FFFF */  ori        $v0, $zero, 0xFFFF
/* BFCA4 801098E4 AFA20014 */  sw         $v0, 0x14($sp)
/* BFCA8 801098E8 08042663 */  j          .Lrace_8010998C
/* BFCAC 801098EC AFA00018 */   sw        $zero, 0x18($sp)
.Lrace_801098F0:
/* BFCB0 801098F0 8E64333C */  lw         $a0, 0x333C($s3)
/* BFCB4 801098F4 0C03D971 */  jal        func_race_800F65C4
/* BFCB8 801098F8 00000000 */   nop
/* BFCBC 801098FC 1040000D */  beqz       $v0, .Lrace_80109934
/* BFCC0 80109900 2664302C */   addiu     $a0, $s3, 0x302C
/* BFCC4 80109904 02802821 */  addu       $a1, $s4, $zero
/* BFCC8 80109908 24060002 */  addiu      $a2, $zero, 0x2
/* BFCCC 8010990C 3C078013 */  lui        $a3, %hi(D_race_80132230)
/* BFCD0 80109910 3C028013 */  lui        $v0, %hi(D_race_80132238)
/* BFCD4 80109914 3C038013 */  lui        $v1, %hi(D_race_8013223A)
/* BFCD8 80109918 94422238 */  lhu        $v0, %lo(D_race_80132238)($v0)
/* BFCDC 8010991C 9463223A */  lhu        $v1, %lo(D_race_8013223A)($v1)
/* BFCE0 80109920 24E72230 */  addiu      $a3, $a3, %lo(D_race_80132230)
/* BFCE4 80109924 AFA00018 */  sw         $zero, 0x18($sp)
/* BFCE8 80109928 AFA20010 */  sw         $v0, 0x10($sp)
/* BFCEC 8010992C 08042664 */  j          .Lrace_80109990
/* BFCF0 80109930 AFA30014 */   sw        $v1, 0x14($sp)
.Lrace_80109934:
/* BFCF4 80109934 02802821 */  addu       $a1, $s4, $zero
/* BFCF8 80109938 24060002 */  addiu      $a2, $zero, 0x2
/* BFCFC 8010993C 3C078013 */  lui        $a3, %hi(D_race_80132230)
/* BFD00 80109940 3C028013 */  lui        $v0, %hi(D_race_80132234)
/* BFD04 80109944 3C038013 */  lui        $v1, %hi(D_race_80132236)
/* BFD08 80109948 94422234 */  lhu        $v0, %lo(D_race_80132234)($v0)
/* BFD0C 8010994C 94632236 */  lhu        $v1, %lo(D_race_80132236)($v1)
/* BFD10 80109950 24E72230 */  addiu      $a3, $a3, %lo(D_race_80132230)
/* BFD14 80109954 AFA00018 */  sw         $zero, 0x18($sp)
/* BFD18 80109958 AFA20010 */  sw         $v0, 0x10($sp)
/* BFD1C 8010995C 08042664 */  j          .Lrace_80109990
/* BFD20 80109960 AFA30014 */   sw        $v1, 0x14($sp)
.Lrace_80109964:
/* BFD24 80109964 02802821 */  addu       $a1, $s4, $zero
/* BFD28 80109968 24060002 */  addiu      $a2, $zero, 0x2
/* BFD2C 8010996C 3C078013 */  lui        $a3, %hi(D_race_80132230)
/* BFD30 80109970 24E72230 */  addiu      $a3, $a3, %lo(D_race_80132230)
/* BFD34 80109974 3402FFFF */  ori        $v0, $zero, 0xFFFF
/* BFD38 80109978 AFA20014 */  sw         $v0, 0x14($sp)
/* BFD3C 8010997C 3C028013 */  lui        $v0, %hi(D_race_8013223C)
/* BFD40 80109980 9443223C */  lhu        $v1, %lo(D_race_8013223C)($v0)
/* BFD44 80109984 24020001 */  addiu      $v0, $zero, 0x1
/* BFD48 80109988 AFA20018 */  sw         $v0, 0x18($sp)
.Lrace_8010998C:
/* BFD4C 8010998C AFA30010 */  sw         $v1, 0x10($sp)
.Lrace_80109990:
/* BFD50 80109990 0C03ED39 */  jal        func_race_800FB4E4
/* BFD54 80109994 00000000 */   nop
.Lrace_80109998:
/* BFD58 80109998 8E6332F8 */  lw         $v1, 0x32F8($s3)
/* BFD5C 8010999C 10600006 */  beqz       $v1, .Lrace_801099B8
/* BFD60 801099A0 00000000 */   nop
/* BFD64 801099A4 8C620000 */  lw         $v0, 0x0($v1)
/* BFD68 801099A8 84440020 */  lh         $a0, 0x20($v0)
/* BFD6C 801099AC 8C420024 */  lw         $v0, 0x24($v0)
/* BFD70 801099B0 0040F809 */  jalr       $v0
/* BFD74 801099B4 00642021 */   addu      $a0, $v1, $a0
.Lrace_801099B8:
/* BFD78 801099B8 8E63000C */  lw         $v1, 0xC($s3)
/* BFD7C 801099BC 8C620014 */  lw         $v0, 0x14($v1)
/* BFD80 801099C0 84440020 */  lh         $a0, 0x20($v0)
/* BFD84 801099C4 8C420024 */  lw         $v0, 0x24($v0)
/* BFD88 801099C8 0040F809 */  jalr       $v0
/* BFD8C 801099CC 00642021 */   addu      $a0, $v1, $a0
/* BFD90 801099D0 8FBF0034 */  lw         $ra, 0x34($sp)
/* BFD94 801099D4 8FB40030 */  lw         $s4, 0x30($sp)
/* BFD98 801099D8 8FB3002C */  lw         $s3, 0x2C($sp)
/* BFD9C 801099DC 8FB20028 */  lw         $s2, 0x28($sp)
/* BFDA0 801099E0 8FB10024 */  lw         $s1, 0x24($sp)
/* BFDA4 801099E4 8FB00020 */  lw         $s0, 0x20($sp)
/* BFDA8 801099E8 03E00008 */  jr         $ra
/* BFDAC 801099EC 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_801099F0
/* BFDB0 801099F0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* BFDB4 801099F4 AFB3001C */  sw         $s3, 0x1C($sp)
/* BFDB8 801099F8 00809821 */  addu       $s3, $a0, $zero
/* BFDBC 801099FC 00002021 */  addu       $a0, $zero, $zero
/* BFDC0 80109A00 24060001 */  addiu      $a2, $zero, 0x1
/* BFDC4 80109A04 00801821 */  addu       $v1, $a0, $zero
/* BFDC8 80109A08 AFBF0024 */  sw         $ra, 0x24($sp)
/* BFDCC 80109A0C AFB40020 */  sw         $s4, 0x20($sp)
/* BFDD0 80109A10 AFB20018 */  sw         $s2, 0x18($sp)
/* BFDD4 80109A14 AFB10014 */  sw         $s1, 0x14($sp)
/* BFDD8 80109A18 AFB00010 */  sw         $s0, 0x10($sp)
/* BFDDC 80109A1C 8E65307C */  lw         $a1, 0x307C($s3)
.Lrace_80109A20:
/* BFDE0 80109A20 2C820002 */  sltiu      $v0, $a0, 0x2
/* BFDE4 80109A24 10400005 */  beqz       $v0, .Lrace_80109A3C
/* BFDE8 80109A28 00731021 */   addu      $v0, $v1, $s3
/* BFDEC 80109A2C AC46294C */  sw         $a2, 0x294C($v0)
/* BFDF0 80109A30 24630140 */  addiu      $v1, $v1, 0x140
/* BFDF4 80109A34 08042688 */  j          .Lrace_80109A20
/* BFDF8 80109A38 24840001 */   addiu     $a0, $a0, 0x1
.Lrace_80109A3C:
/* BFDFC 80109A3C 8E630018 */  lw         $v1, 0x18($s3)
/* BFE00 80109A40 10600002 */  beqz       $v1, .Lrace_80109A4C
/* BFE04 80109A44 24020001 */   addiu     $v0, $zero, 0x1
/* BFE08 80109A48 AC620044 */  sw         $v0, 0x44($v1)
.Lrace_80109A4C:
/* BFE0C 80109A4C 8E633098 */  lw         $v1, 0x3098($s3)
/* BFE10 80109A50 24040002 */  addiu      $a0, $zero, 0x2
/* BFE14 80109A54 10640014 */  beq        $v1, $a0, .Lrace_80109AA8
/* BFE18 80109A58 28620003 */   slti      $v0, $v1, 0x3
/* BFE1C 80109A5C 10400005 */  beqz       $v0, .Lrace_80109A74
/* BFE20 80109A60 24020001 */   addiu     $v0, $zero, 0x1
/* BFE24 80109A64 10620008 */  beq        $v1, $v0, .Lrace_80109A88
/* BFE28 80109A68 00000000 */   nop
/* BFE2C 80109A6C 080426D6 */  j          .Lrace_80109B58
/* BFE30 80109A70 00000000 */   nop
.Lrace_80109A74:
/* BFE34 80109A74 24020003 */  addiu      $v0, $zero, 0x3
/* BFE38 80109A78 10620016 */  beq        $v1, $v0, .Lrace_80109AD4
/* BFE3C 80109A7C 00000000 */   nop
/* BFE40 80109A80 080426D6 */  j          .Lrace_80109B58
/* BFE44 80109A84 00000000 */   nop
.Lrace_80109A88:
/* BFE48 80109A88 14A30003 */  bne        $a1, $v1, .Lrace_80109A98
/* BFE4C 80109A8C 00000000 */   nop
/* BFE50 80109A90 080426D6 */  j          .Lrace_80109B58
/* BFE54 80109A94 AE653338 */   sw        $a1, 0x3338($s3)
.Lrace_80109A98:
/* BFE58 80109A98 50A4002F */  beql       $a1, $a0, .Lrace_80109B58
/* BFE5C 80109A9C AE643338 */   sw        $a0, 0x3338($s3)
/* BFE60 80109AA0 080426D6 */  j          .Lrace_80109B58
/* BFE64 80109AA4 00000000 */   nop
.Lrace_80109AA8:
/* BFE68 80109AA8 54A0002B */  bnel       $a1, $zero, .Lrace_80109B58
/* BFE6C 80109AAC AE60330C */   sw        $zero, 0x330C($s3)
/* BFE70 80109AB0 8E64333C */  lw         $a0, 0x333C($s3)
/* BFE74 80109AB4 10800003 */  beqz       $a0, .Lrace_80109AC4
/* BFE78 80109AB8 00000000 */   nop
/* BFE7C 80109ABC 0C03D76E */  jal        func_race_800F5DB8
/* BFE80 80109AC0 00002821 */   addu      $a1, $zero, $zero
.Lrace_80109AC4:
/* BFE84 80109AC4 0C042708 */  jal        func_race_80109C20
/* BFE88 80109AC8 02602021 */   addu      $a0, $s3, $zero
/* BFE8C 80109ACC 080426D6 */  j          .Lrace_80109B58
/* BFE90 80109AD0 00000000 */   nop
.Lrace_80109AD4:
/* BFE94 80109AD4 54A00020 */  bnel       $a1, $zero, .Lrace_80109B58
/* BFE98 80109AD8 AE603338 */   sw        $zero, 0x3338($s3)
/* BFE9C 80109ADC 8E633338 */  lw         $v1, 0x3338($s3)
/* BFEA0 80109AE0 24020001 */  addiu      $v0, $zero, 0x1
/* BFEA4 80109AE4 14620014 */  bne        $v1, $v0, .Lrace_80109B38
/* BFEA8 80109AE8 00000000 */   nop
/* BFEAC 80109AEC 8E640018 */  lw         $a0, 0x18($s3)
/* BFEB0 80109AF0 1080000D */  beqz       $a0, .Lrace_80109B28
/* BFEB4 80109AF4 00000000 */   nop
/* BFEB8 80109AF8 8E620004 */  lw         $v0, 0x4($s3)
/* BFEBC 80109AFC 94420022 */  lhu        $v0, 0x22($v0)
/* BFEC0 80109B00 30420040 */  andi       $v0, $v0, 0x40
/* BFEC4 80109B04 14400006 */  bnez       $v0, .Lrace_80109B20
/* BFEC8 80109B08 00000000 */   nop
/* BFECC 80109B0C 8E630004 */  lw         $v1, 0x4($s3)
/* BFED0 80109B10 AE60330C */  sw         $zero, 0x330C($s3)
/* BFED4 80109B14 94620022 */  lhu        $v0, 0x22($v1)
/* BFED8 80109B18 080426D4 */  j          .Lrace_80109B50
/* BFEDC 80109B1C 34420020 */   ori       $v0, $v0, 0x20
.Lrace_80109B20:
/* BFEE0 80109B20 0C04599E */  jal        func_race_80116678
/* BFEE4 80109B24 00000000 */   nop
.Lrace_80109B28:
/* BFEE8 80109B28 0C042708 */  jal        func_race_80109C20
/* BFEEC 80109B2C 02602021 */   addu      $a0, $s3, $zero
/* BFEF0 80109B30 080426D6 */  j          .Lrace_80109B58
/* BFEF4 80109B34 AE603338 */   sw        $zero, 0x3338($s3)
.Lrace_80109B38:
/* BFEF8 80109B38 54640007 */  bnel       $v1, $a0, .Lrace_80109B58
/* BFEFC 80109B3C AE603338 */   sw        $zero, 0x3338($s3)
/* BFF00 80109B40 8E630004 */  lw         $v1, 0x4($s3)
/* BFF04 80109B44 AE60330C */  sw         $zero, 0x330C($s3)
/* BFF08 80109B48 94620022 */  lhu        $v0, 0x22($v1)
/* BFF0C 80109B4C 34420008 */  ori        $v0, $v0, 0x8
.Lrace_80109B50:
/* BFF10 80109B50 A4620022 */  sh         $v0, 0x22($v1)
/* BFF14 80109B54 AE603338 */  sw         $zero, 0x3338($s3)
.Lrace_80109B58:
/* BFF18 80109B58 8E623338 */  lw         $v0, 0x3338($s3)
/* BFF1C 80109B5C 10400007 */  beqz       $v0, .Lrace_80109B7C
/* BFF20 80109B60 24020003 */   addiu     $v0, $zero, 0x3
/* BFF24 80109B64 AE623098 */  sw         $v0, 0x3098($s3)
/* BFF28 80109B68 02602021 */  addu       $a0, $s3, $zero
/* BFF2C 80109B6C 0C0425EF */  jal        func_race_801097BC
/* BFF30 80109B70 00002821 */   addu      $a1, $zero, $zero
/* BFF34 80109B74 08042700 */  j          .Lrace_80109C00
/* BFF38 80109B78 00000000 */   nop
.Lrace_80109B7C:
/* BFF3C 80109B7C 8E62330C */  lw         $v0, 0x330C($s3)
/* BFF40 80109B80 1040001F */  beqz       $v0, .Lrace_80109C00
/* BFF44 80109B84 00009021 */   addu      $s2, $zero, $zero
/* BFF48 80109B88 AE603098 */  sw         $zero, 0x3098($s3)
/* BFF4C 80109B8C 24140001 */  addiu      $s4, $zero, 0x1
/* BFF50 80109B90 2411031C */  addiu      $s1, $zero, 0x31C
/* BFF54 80109B94 02408021 */  addu       $s0, $s2, $zero
.Lrace_80109B98:
/* BFF58 80109B98 8E620004 */  lw         $v0, 0x4($s3)
/* BFF5C 80109B9C 8C420330 */  lw         $v0, 0x330($v0)
/* BFF60 80109BA0 0242102B */  sltu       $v0, $s2, $v0
/* BFF64 80109BA4 10400008 */  beqz       $v0, .Lrace_80109BC8
/* BFF68 80109BA8 02131021 */   addu      $v0, $s0, $s3
/* BFF6C 80109BAC AC540294 */  sw         $s4, 0x294($v0)
/* BFF70 80109BB0 0C03D412 */  jal        func_race_800F5048
/* BFF74 80109BB4 02712021 */   addu      $a0, $s3, $s1
/* BFF78 80109BB8 26310024 */  addiu      $s1, $s1, 0x24
/* BFF7C 80109BBC 26100070 */  addiu      $s0, $s0, 0x70
/* BFF80 80109BC0 080426E6 */  j          .Lrace_80109B98
/* BFF84 80109BC4 26520001 */   addiu     $s2, $s2, 0x1
.Lrace_80109BC8:
/* BFF88 80109BC8 8E63000C */  lw         $v1, 0xC($s3)
/* BFF8C 80109BCC 8C620014 */  lw         $v0, 0x14($v1)
/* BFF90 80109BD0 84440028 */  lh         $a0, 0x28($v0)
/* BFF94 80109BD4 8C42002C */  lw         $v0, 0x2C($v0)
/* BFF98 80109BD8 0040F809 */  jalr       $v0
/* BFF9C 80109BDC 00642021 */   addu      $a0, $v1, $a0
/* BFFA0 80109BE0 8E6332F8 */  lw         $v1, 0x32F8($s3)
/* BFFA4 80109BE4 10600006 */  beqz       $v1, .Lrace_80109C00
/* BFFA8 80109BE8 00000000 */   nop
/* BFFAC 80109BEC 8C620000 */  lw         $v0, 0x0($v1)
/* BFFB0 80109BF0 84440028 */  lh         $a0, 0x28($v0)
/* BFFB4 80109BF4 8C42002C */  lw         $v0, 0x2C($v0)
/* BFFB8 80109BF8 0040F809 */  jalr       $v0
/* BFFBC 80109BFC 00642021 */   addu      $a0, $v1, $a0
.Lrace_80109C00:
/* BFFC0 80109C00 8FBF0024 */  lw         $ra, 0x24($sp)
/* BFFC4 80109C04 8FB40020 */  lw         $s4, 0x20($sp)
/* BFFC8 80109C08 8FB3001C */  lw         $s3, 0x1C($sp)
/* BFFCC 80109C0C 8FB20018 */  lw         $s2, 0x18($sp)
/* BFFD0 80109C10 8FB10014 */  lw         $s1, 0x14($sp)
/* BFFD4 80109C14 8FB00010 */  lw         $s0, 0x10($sp)
/* BFFD8 80109C18 03E00008 */  jr         $ra
/* BFFDC 80109C1C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_80109C20
/* BFFE0 80109C20 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* BFFE4 80109C24 AFB10014 */  sw         $s1, 0x14($sp)
/* BFFE8 80109C28 00808821 */  addu       $s1, $a0, $zero
/* BFFEC 80109C2C AFBF0030 */  sw         $ra, 0x30($sp)
/* BFFF0 80109C30 AFB7002C */  sw         $s7, 0x2C($sp)
/* BFFF4 80109C34 AFB60028 */  sw         $s6, 0x28($sp)
/* BFFF8 80109C38 AFB50024 */  sw         $s5, 0x24($sp)
/* BFFFC 80109C3C AFB40020 */  sw         $s4, 0x20($sp)
/* C0000 80109C40 AFB3001C */  sw         $s3, 0x1C($sp)
/* C0004 80109C44 AFB20018 */  sw         $s2, 0x18($sp)
/* C0008 80109C48 AFB00010 */  sw         $s0, 0x10($sp)
/* C000C 80109C4C F7B40038 */  sdc1       $f20, 0x38($sp)
/* C0010 80109C50 8E2206A8 */  lw         $v0, 0x6A8($s1)
/* C0014 80109C54 10400004 */  beqz       $v0, .Lrace_80109C68
/* C0018 80109C58 00000000 */   nop
/* C001C 80109C5C 8C430DB0 */  lw         $v1, 0xDB0($v0)
/* C0020 80109C60 8E220004 */  lw         $v0, 0x4($s1)
/* C0024 80109C64 AC43039C */  sw         $v1, 0x39C($v0)
.Lrace_80109C68:
/* C0028 80109C68 0C0459E6 */  jal        func_race_80116798
/* C002C 80109C6C 2624309C */   addiu     $a0, $s1, 0x309C
/* C0030 80109C70 0C034936 */  jal        func_race_800D24D8
/* C0034 80109C74 262427A8 */   addiu     $a0, $s1, 0x27A8
/* C0038 80109C78 0000B821 */  addu       $s7, $zero, $zero
/* C003C 80109C7C 02E09021 */  addu       $s2, $s7, $zero
/* C0040 80109C80 24162AA8 */  addiu      $s6, $zero, 0x2AA8
/* C0044 80109C84 02209821 */  addu       $s3, $s1, $zero
/* C0048 80109C88 2415031C */  addiu      $s5, $zero, 0x31C
/* C004C 80109C8C 2414023C */  addiu      $s4, $zero, 0x23C
/* C0050 80109C90 3C01800D */  lui        $at, %hi(D_race_800CD920)
/* C0054 80109C94 C434D920 */  lwc1       $f20, %lo(D_race_800CD920)($at)
/* C0058 80109C98 24020001 */  addiu      $v0, $zero, 0x1
/* C005C 80109C9C AE203304 */  sw         $zero, 0x3304($s1)
/* C0060 80109CA0 AE223300 */  sw         $v0, 0x3300($s1)
.Lrace_80109CA4:
/* C0064 80109CA4 8E220004 */  lw         $v0, 0x4($s1)
/* C0068 80109CA8 8C420330 */  lw         $v0, 0x330($v0)
/* C006C 80109CAC 02E2102B */  sltu       $v0, $s7, $v0
/* C0070 80109CB0 50400040 */  beql       $v0, $zero, .Lrace_80109DB4
/* C0074 80109CB4 26242810 */   addiu     $a0, $s1, 0x2810
/* C0078 80109CB8 0C04074F */  jal        func_race_80101D3C
/* C007C 80109CBC 02342021 */   addu      $a0, $s1, $s4
/* C0080 80109CC0 0C03D403 */  jal        func_race_800F500C
/* C0084 80109CC4 02352021 */   addu      $a0, $s1, $s5
/* C0088 80109CC8 8E6406A8 */  lw         $a0, 0x6A8($s3)
/* C008C 80109CCC 8E220004 */  lw         $v0, 0x4($s1)
/* C0090 80109CD0 8E26332C */  lw         $a2, 0x332C($s1)
/* C0094 80109CD4 8C45039C */  lw         $a1, 0x39C($v0)
/* C0098 80109CD8 0C04391A */  jal        func_race_8010E468
/* C009C 80109CDC 02368021 */   addu      $s0, $s1, $s6
/* C00A0 80109CE0 3C053F80 */  lui        $a1, (0x3F800000 >> 16)
/* C00A4 80109CE4 0C03F31E */  jal        func_race_800FCC78
/* C00A8 80109CE8 02002021 */   addu      $a0, $s0, $zero
/* C00AC 80109CEC 02002021 */  addu       $a0, $s0, $zero
/* C00B0 80109CF0 0C03F266 */  jal        func_race_800FC998
/* C00B4 80109CF4 00002821 */   addu      $a1, $zero, $zero
/* C00B8 80109CF8 02002021 */  addu       $a0, $s0, $zero
/* C00BC 80109CFC 0C03F258 */  jal        func_race_800FC960
/* C00C0 80109D00 262501F8 */   addiu     $a1, $s1, 0x1F8
/* C00C4 80109D04 02002021 */  addu       $a0, $s0, $zero
/* C00C8 80109D08 26250204 */  addiu      $a1, $s1, 0x204
/* C00CC 80109D0C 0C03F23A */  jal        func_race_800FC8E8
/* C00D0 80109D10 26260210 */   addiu     $a2, $s1, 0x210
/* C00D4 80109D14 8E22332C */  lw         $v0, 0x332C($s1)
/* C00D8 80109D18 1040000D */  beqz       $v0, .Lrace_80109D50
/* C00DC 80109D1C 00000000 */   nop
/* C00E0 80109D20 8E220004 */  lw         $v0, 0x4($s1)
/* C00E4 80109D24 8E632AA0 */  lw         $v1, 0x2AA0($s3)
/* C00E8 80109D28 C4400010 */  lwc1       $f0, 0x10($v0)
/* C00EC 80109D2C 8C62002C */  lw         $v0, 0x2C($v1)
/* C00F0 80109D30 46140001 */  sub.s      $f0, $f0, $f20
/* C00F4 80109D34 34420002 */  ori        $v0, $v0, 0x2
/* C00F8 80109D38 AC62002C */  sw         $v0, 0x2C($v1)
/* C00FC 80109D3C E4600004 */  swc1       $f0, 0x4($v1)
/* C0100 80109D40 8E220004 */  lw         $v0, 0x4($s1)
/* C0104 80109D44 C4400010 */  lwc1       $f0, 0x10($v0)
/* C0108 80109D48 0804275D */  j          .Lrace_80109D74
/* C010C 80109D4C 46140001 */   sub.s     $f0, $f0, $f20
.Lrace_80109D50:
/* C0110 80109D50 8E220004 */  lw         $v0, 0x4($s1)
/* C0114 80109D54 8E632AA0 */  lw         $v1, 0x2AA0($s3)
/* C0118 80109D58 C4400010 */  lwc1       $f0, 0x10($v0)
/* C011C 80109D5C 8C62002C */  lw         $v0, 0x2C($v1)
/* C0120 80109D60 34420002 */  ori        $v0, $v0, 0x2
/* C0124 80109D64 E4600004 */  swc1       $f0, 0x4($v1)
/* C0128 80109D68 AC62002C */  sw         $v0, 0x2C($v1)
/* C012C 80109D6C 8E220004 */  lw         $v0, 0x4($s1)
/* C0130 80109D70 C4400010 */  lwc1       $f0, 0x10($v0)
.Lrace_80109D74:
/* C0134 80109D74 02511021 */  addu       $v0, $s2, $s1
/* C0138 80109D78 E4402BDC */  swc1       $f0, 0x2BDC($v0)
/* C013C 80109D7C 02511021 */  addu       $v0, $s2, $s1
/* C0140 80109D80 00401821 */  addu       $v1, $v0, $zero
/* C0144 80109D84 262427D0 */  addiu      $a0, $s1, 0x27D0
/* C0148 80109D88 AC402BE8 */  sw         $zero, 0x2BE8($v0)
/* C014C 80109D8C 24020001 */  addiu      $v0, $zero, 0x1
/* C0150 80109D90 0C0104B9 */  jal        func_800412E4
/* C0154 80109D94 A0622AA8 */   sb        $v0, 0x2AA8($v1)
/* C0158 80109D98 26520150 */  addiu      $s2, $s2, 0x150
/* C015C 80109D9C 26D60150 */  addiu      $s6, $s6, 0x150
/* C0160 80109DA0 26730004 */  addiu      $s3, $s3, 0x4
/* C0164 80109DA4 26B50024 */  addiu      $s5, $s5, 0x24
/* C0168 80109DA8 26940070 */  addiu      $s4, $s4, 0x70
/* C016C 80109DAC 08042729 */  j          .Lrace_80109CA4
/* C0170 80109DB0 26F70001 */   addiu     $s7, $s7, 0x1
.Lrace_80109DB4:
/* C0174 80109DB4 0C03E7DE */  jal        func_race_800F9F78
/* C0178 80109DB8 2405FFFF */   addiu     $a1, $zero, -0x1
/* C017C 80109DBC 8E22332C */  lw         $v0, 0x332C($s1)
/* C0180 80109DC0 10400003 */  beqz       $v0, .Lrace_80109DD0
/* C0184 80109DC4 26242950 */   addiu     $a0, $s1, 0x2950
/* C0188 80109DC8 0C03E7DE */  jal        func_race_800F9F78
/* C018C 80109DCC 2405FFFF */   addiu     $a1, $zero, -0x1
.Lrace_80109DD0:
/* C0190 80109DD0 0C041BEA */  jal        func_race_80106FA8
/* C0194 80109DD4 02202021 */   addu      $a0, $s1, $zero
/* C0198 80109DD8 0C041D2B */  jal        func_race_801074AC
/* C019C 80109DDC 02202021 */   addu      $a0, $s1, $zero
/* C01A0 80109DE0 8FBF0030 */  lw         $ra, 0x30($sp)
/* C01A4 80109DE4 8FB7002C */  lw         $s7, 0x2C($sp)
/* C01A8 80109DE8 8FB60028 */  lw         $s6, 0x28($sp)
/* C01AC 80109DEC 8FB50024 */  lw         $s5, 0x24($sp)
/* C01B0 80109DF0 8FB40020 */  lw         $s4, 0x20($sp)
/* C01B4 80109DF4 8FB3001C */  lw         $s3, 0x1C($sp)
/* C01B8 80109DF8 8FB20018 */  lw         $s2, 0x18($sp)
/* C01BC 80109DFC 8FB10014 */  lw         $s1, 0x14($sp)
/* C01C0 80109E00 8FB00010 */  lw         $s0, 0x10($sp)
/* C01C4 80109E04 D7B40038 */  ldc1       $f20, 0x38($sp)
/* C01C8 80109E08 03E00008 */  jr         $ra
/* C01CC 80109E0C 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_80109E10
/* C01D0 80109E10 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* C01D4 80109E14 AFB1001C */  sw         $s1, 0x1C($sp)
/* C01D8 80109E18 00808821 */  addu       $s1, $a0, $zero
/* C01DC 80109E1C AFBF0020 */  sw         $ra, 0x20($sp)
/* C01E0 80109E20 AFB00018 */  sw         $s0, 0x18($sp)
/* C01E4 80109E24 8E230014 */  lw         $v1, 0x14($s1)
/* C01E8 80109E28 8C62012C */  lw         $v0, 0x12C($v1)
/* C01EC 80109E2C 844401E8 */  lh         $a0, 0x1E8($v0)
/* C01F0 80109E30 8C4201EC */  lw         $v0, 0x1EC($v0)
/* C01F4 80109E34 0040F809 */  jalr       $v0
/* C01F8 80109E38 00642021 */   addu      $a0, $v1, $a0
/* C01FC 80109E3C 8E220008 */  lw         $v0, 0x8($s1)
/* C0200 80109E40 8C500070 */  lw         $s0, 0x70($v0)
/* C0204 80109E44 8E040010 */  lw         $a0, 0x10($s0)
/* C0208 80109E48 0C01AE3C */  jal        func_8006B8F0
/* C020C 80109E4C 00002821 */   addu      $a1, $zero, $zero
/* C0210 80109E50 8E040010 */  lw         $a0, 0x10($s0)
/* C0214 80109E54 8E250004 */  lw         $a1, 0x4($s1)
/* C0218 80109E58 94830026 */  lhu        $v1, 0x26($a0)
/* C021C 80109E5C 8CA212B4 */  lw         $v0, 0x12B4($a1)
/* C0220 80109E60 14620005 */  bne        $v1, $v0, .Lrace_80109E78
/* C0224 80109E64 00003021 */   addu      $a2, $zero, $zero
/* C0228 80109E68 94820028 */  lhu        $v0, 0x28($a0)
/* C022C 80109E6C 8CA312B8 */  lw         $v1, 0x12B8($a1)
/* C0230 80109E70 00431026 */  xor        $v0, $v0, $v1
/* C0234 80109E74 2C460001 */  sltiu      $a2, $v0, 0x1
.Lrace_80109E78:
/* C0238 80109E78 14C00017 */  bnez       $a2, .Lrace_80109ED8
/* C023C 80109E7C 00000000 */   nop
/* C0240 80109E80 8E020014 */  lw         $v0, 0x14($s0)
/* C0244 80109E84 84440040 */  lh         $a0, 0x40($v0)
/* C0248 80109E88 8C420044 */  lw         $v0, 0x44($v0)
/* C024C 80109E8C 0040F809 */  jalr       $v0
/* C0250 80109E90 02042021 */   addu      $a0, $s0, $a0
/* C0254 80109E94 8E240008 */  lw         $a0, 0x8($s1)
/* C0258 80109E98 8C82009C */  lw         $v0, 0x9C($a0)
/* C025C 80109E9C 8C850000 */  lw         $a1, 0x0($a0)
/* C0260 80109EA0 84430078 */  lh         $v1, 0x78($v0)
/* C0264 80109EA4 8C42007C */  lw         $v0, 0x7C($v0)
/* C0268 80109EA8 0040F809 */  jalr       $v0
/* C026C 80109EAC 00832021 */   addu      $a0, $a0, $v1
/* C0270 80109EB0 8E060014 */  lw         $a2, 0x14($s0)
/* C0274 80109EB4 8E230004 */  lw         $v1, 0x4($s1)
/* C0278 80109EB8 84C40048 */  lh         $a0, 0x48($a2)
/* C027C 80109EBC 24070010 */  addiu      $a3, $zero, 0x10
/* C0280 80109EC0 AFA20010 */  sw         $v0, 0x10($sp)
/* C0284 80109EC4 8C6512B4 */  lw         $a1, 0x12B4($v1)
/* C0288 80109EC8 8CC2004C */  lw         $v0, 0x4C($a2)
/* C028C 80109ECC 8C6612B8 */  lw         $a2, 0x12B8($v1)
/* C0290 80109ED0 0040F809 */  jalr       $v0
/* C0294 80109ED4 02042021 */   addu      $a0, $s0, $a0
.Lrace_80109ED8:
/* C0298 80109ED8 8FBF0020 */  lw         $ra, 0x20($sp)
/* C029C 80109EDC 8FB1001C */  lw         $s1, 0x1C($sp)
/* C02A0 80109EE0 8FB00018 */  lw         $s0, 0x18($sp)
/* C02A4 80109EE4 03E00008 */  jr         $ra
/* C02A8 80109EE8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_80109EEC
/* C02AC 80109EEC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* C02B0 80109EF0 AFB1001C */  sw         $s1, 0x1C($sp)
/* C02B4 80109EF4 00808821 */  addu       $s1, $a0, $zero
/* C02B8 80109EF8 AFBF0020 */  sw         $ra, 0x20($sp)
/* C02BC 80109EFC AFB00018 */  sw         $s0, 0x18($sp)
/* C02C0 80109F00 8E220008 */  lw         $v0, 0x8($s1)
/* C02C4 80109F04 8C420070 */  lw         $v0, 0x70($v0)
/* C02C8 80109F08 8C440010 */  lw         $a0, 0x10($v0)
/* C02CC 80109F0C 00408021 */  addu       $s0, $v0, $zero
/* C02D0 80109F10 94830026 */  lhu        $v1, 0x26($a0)
/* C02D4 80109F14 24020140 */  addiu      $v0, $zero, 0x140
/* C02D8 80109F18 14620004 */  bne        $v1, $v0, .Lrace_80109F2C
/* C02DC 80109F1C 00002821 */   addu      $a1, $zero, $zero
/* C02E0 80109F20 94820028 */  lhu        $v0, 0x28($a0)
/* C02E4 80109F24 384200F0 */  xori       $v0, $v0, 0xF0
/* C02E8 80109F28 2C450001 */  sltiu      $a1, $v0, 0x1
.Lrace_80109F2C:
/* C02EC 80109F2C 14A0001F */  bnez       $a1, .Lrace_80109FAC
/* C02F0 80109F30 00000000 */   nop
/* C02F4 80109F34 8E230014 */  lw         $v1, 0x14($s1)
/* C02F8 80109F38 8C62012C */  lw         $v0, 0x12C($v1)
/* C02FC 80109F3C 844401E8 */  lh         $a0, 0x1E8($v0)
/* C0300 80109F40 8C4201EC */  lw         $v0, 0x1EC($v0)
/* C0304 80109F44 0040F809 */  jalr       $v0
/* C0308 80109F48 00642021 */   addu      $a0, $v1, $a0
/* C030C 80109F4C 8E040010 */  lw         $a0, 0x10($s0)
/* C0310 80109F50 0C01AE3C */  jal        func_8006B8F0
/* C0314 80109F54 00002821 */   addu      $a1, $zero, $zero
/* C0318 80109F58 8E020014 */  lw         $v0, 0x14($s0)
/* C031C 80109F5C 84440040 */  lh         $a0, 0x40($v0)
/* C0320 80109F60 8C420044 */  lw         $v0, 0x44($v0)
/* C0324 80109F64 0040F809 */  jalr       $v0
/* C0328 80109F68 02042021 */   addu      $a0, $s0, $a0
/* C032C 80109F6C 8E240008 */  lw         $a0, 0x8($s1)
/* C0330 80109F70 8C82009C */  lw         $v0, 0x9C($a0)
/* C0334 80109F74 8C850000 */  lw         $a1, 0x0($a0)
/* C0338 80109F78 84430078 */  lh         $v1, 0x78($v0)
/* C033C 80109F7C 8C42007C */  lw         $v0, 0x7C($v0)
/* C0340 80109F80 0040F809 */  jalr       $v0
/* C0344 80109F84 00832021 */   addu      $a0, $a0, $v1
/* C0348 80109F88 24050140 */  addiu      $a1, $zero, 0x140
/* C034C 80109F8C 8E030014 */  lw         $v1, 0x14($s0)
/* C0350 80109F90 240600F0 */  addiu      $a2, $zero, 0xF0
/* C0354 80109F94 84640048 */  lh         $a0, 0x48($v1)
/* C0358 80109F98 24070010 */  addiu      $a3, $zero, 0x10
/* C035C 80109F9C AFA20010 */  sw         $v0, 0x10($sp)
/* C0360 80109FA0 8C62004C */  lw         $v0, 0x4C($v1)
/* C0364 80109FA4 0040F809 */  jalr       $v0
/* C0368 80109FA8 02042021 */   addu      $a0, $s0, $a0
.Lrace_80109FAC:
/* C036C 80109FAC 8FBF0020 */  lw         $ra, 0x20($sp)
/* C0370 80109FB0 8FB1001C */  lw         $s1, 0x1C($sp)
/* C0374 80109FB4 8FB00018 */  lw         $s0, 0x18($sp)
/* C0378 80109FB8 03E00008 */  jr         $ra
/* C037C 80109FBC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_80109FC0
/* C0380 80109FC0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C0384 80109FC4 AFBF0010 */  sw         $ra, 0x10($sp)
/* C0388 80109FC8 0C002513 */  jal        func_8000944C
/* C038C 80109FCC 00000000 */   nop
/* C0390 80109FD0 8FBF0010 */  lw         $ra, 0x10($sp)
/* C0394 80109FD4 03E00008 */  jr         $ra
/* C0398 80109FD8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80109FDC
/* C039C 80109FDC 03E00008 */  jr         $ra
/* C03A0 80109FE0 AC850018 */   sw        $a1, 0x18($a0)

glabel func_race_80109FE4
/* C03A4 80109FE4 8C823300 */  lw         $v0, 0x3300($a0)
/* C03A8 80109FE8 03E00008 */  jr         $ra
/* C03AC 80109FEC 00000000 */   nop

glabel func_race_80109FF0
/* C03B0 80109FF0 8C823300 */  lw         $v0, 0x3300($a0)
/* C03B4 80109FF4 03E00008 */  jr         $ra
/* C03B8 80109FF8 0002102B */   sltu      $v0, $zero, $v0
