.include "macro.inc"

.section .rdata

glabel D_80000760
.word 0x00000000

glabel D_80000764
.word 0x5C000000

glabel D_80000768
.word 0x00000000, 0x00000000, 0x00000000, func_80008338, 0x00000000, func_8000854C, 0x00000000, func_800081BC, 0x00000000, func_800082B8, 0x4572726F, 0x72207265, 0x6164696E, 0x67204A41, 0x4D206669, 0x6C652E00

glabel D_800007A8
.word 0x00000000

glabel D_800007AC
.ascii "LJAM\0\0\0\0\0\0\0\0"

glabel D_800007B8
.word 0x00000000, 0x00000000, 0x00000000, func_800088BC, 0x00000000, func_80008B14, 0x00000000, func_80008B20, 0x00000000, func_80008CF8, 0x00000000, func_80008794, 0x00000000, func_80008A00, 0x492F4F20, 0x6572726F, 0x72206F63, 0x63757272, 0x65640A66, 0x696C6520, 0x25730A00, 0x53796E74, 0x61782065, 0x72726F72, 0x00000000, 0x4E756D65, 0x72696320, 0x746F6F20, 0x6C6F6E67, 0x00000000, 0x45787065, 0x63746564, 0x20737472, 0x696E6700, 0x45787065, 0x63746564, 0x20666C6F, 0x61740000, 0x45787065, 0x63746564, 0x20696E74, 0x00000000, 0x45787065, 0x63746564, 0x206C6566, 0x74206375, 0x726C7900, 0x45787065, 0x63746564, 0x20726967, 0x68742063, 0x75726C79, 0x00000000, 0x45787065, 0x63746564, 0x206C6566, 0x74206272, 0x61636B65, 0x74000000, 0x45787065, 0x63746564, 0x20726967, 0x68742062, 0x7261636B, 0x65740000, 0x45787065, 0x63746564, 0x20636F6D, 0x6D610000, 0x45787065, 0x63746564, 0x2073656D, 0x69636F6C, 0x6F6E0000, 0x45787065, 0x63746564, 0x20454F46, 0x00000000, 0x45787065, 0x63746564, 0x20737472, 0x696E6720, 0x6F722062, 0x7261636B, 0x65740000, 0x496E7661, 0x6C696420, 0x6B657977, 0x6F726400, 0x496E7661, 0x6C696420, 0x73747269, 0x6E670000, 0x496E7661, 0x6C696420, 0x76616C75, 0x65000000, 0x4475706C, 0x69636174, 0x65206E61, 0x6D650000, 0x556E7375, 0x70706F72, 0x74656400, 0x556E6578, 0x70656374, 0x6564206B, 0x6579776F, 0x72640000, 0x45787065, 0x63746564, 0x206B6579, 0x776F7264, 0x00000000

glabel D_80000980
.word 0x00000000

glabel D_80000984
.ascii ".txt\0\0\0\0\0\0\0\0"

glabel jtbl_80000990
.word L800098A4, L800099CC, L800099CC, L800099CC, L800099CC, L800099CC, L800099CC, L800099CC, L800099CC, L800099CC, L800099CC, L800099CC, L800098EC, L80009904, L80009950, L80009990

glabel D_800009D0
.float 0.00024414062

glabel D_800009D4
.float 0.03125

glabel D_800009D8
.float 0.007874016, 0.0

glabel jtbl_800009E0
.word L80009AC4, L80009B9C, L80009B9C, L80009B9C, L80009B9C, L80009B9C, L80009B9C, L80009B10, L80009B10, L80009B34, L80009B6C, 0

glabel D_80000A10
.word 0x00000000, 0x00000000, 0x00000000, 0x8007DD84, 0x00000000, 0x8007DD8C, 0x00000000, 0x8007DD94, 0x00000000, 0x8007DDB4, 0x00000000, func_80007834, 0x00000000, func_8000783C, 0x00000000, func_8000944C, 0x00000000, func_80006624, 0x00000000, func_80009534, 0x00000000, func_80006928, 0x00000000, func_80006CBC, 0x00000000, func_800073F4, 0x00000000, func_800075B0, 0x00000000, func_8000771C, 0x00000000, 0x8007DEA0, 0x00000000, 0x8007DF68, 0x00000000, func_8000969C, 0x00000000, func_800096CC, 0x00000000, func_80002874, 0x00000000, func_80009718, 0x00000000, func_800097D8

glabel D_80000AC0
.word 0x00000007, 0x00000004, 0x00000008, 0x00000008, 0x66696C65, 0x2025730A, 0x00000000

glabel D_80000ADC
.word 0x00000000

glabel D_80000AE0
.ascii ".bin\0\0\0\0"

glabel jtbl_80000AE8
.word L8000A184, L8000A238, L8000A28C, L8000A5AC, L8000A5AC, L8000A5AC, L8000A5AC, L8000A5AC, L8000A5AC, L8000A2D8, L8000A2D8, L8000A300, L8000A33C, L8000A370, L8000A39C, L8000A3F0, L8000A434, L8000A474, L8000A4A4, L8000A578, L8000A590

glabel D_80000B3C
.float 0.00024414062

glabel D_80000B40
.float 0.03125

glabel D_80000B44
.float 0.007874016

glabel D_80000B48
.word 0x00000000, 0x00000000, 0x00000000, 0x8007DD84, 0x00000000, 0x8007DD8C, 0x00000000, 0x8007DD94, 0x00000000, 0x8007DDB4, 0x00000000, func_80007834, 0x00000000, func_8000783C, 0x00000000, func_8000A864, 0x00000000, func_80006624, 0x00000000, func_8000A0B0, 0x00000000, func_80006928, 0x00000000, func_80006CBC, 0x00000000, func_800073F4, 0x00000000, func_800075B0, 0x00000000, func_8000771C, 0x00000000, 0x8007DEA0, 0x00000000, 0x8007DF68, 0x00000000, func_80009E8C, 0x00000000, func_8000A0E4, 0x00000000, func_8000A7A4, 0x00000000, func_8000A100, 0x00000000, func_8000A79C
