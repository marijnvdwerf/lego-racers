.include "macro.inc"

.section .rodata

glabel D_race_800CC5B0
.ascii "mmcode1\0"

glabel D_race_800CC5B8
.ascii "mmcode2\0"

glabel D_race_800CC5C0
.ascii "mmcode3\0"

glabel D_race_800CC5C8
.float 0.003

glabel D_race_800CC5CC
.float 0.004

glabel D_race_800CC5D0
.float 0.005, 0.0

glabel jtbl_race_800CC5D8
.word Lrace_800EE860, Lrace_800EE86C, Lrace_800EE860, Lrace_800EE86C, Lrace_800EE860, Lrace_800EE86C, Lrace_800EE8E0, Lrace_800EE878, Lrace_800EE894, Lrace_800EE8B0

glabel D_race_800CC600
.word 0x00000000, 0x00000000, 0x00000000, func_race_800E87C8, 0x00000000, func_race_800EE6E4, 0x00000000, func_race_800EE71C, 0x00000000, func_race_800EE4CC, 0x00000000, func_race_800EE514, 0x00000000, func_race_800EE8F8, 0x00000000, func_race_800E87D8, 0x00000000, func_race_800E87D0, 0x00000000, func_race_800E87F0, 0x00000000, func_race_800E87F8, 0x00000000, func_race_800EE728, 0x00000000, func_race_800E87E8
