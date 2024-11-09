from dataclasses import dataclass
from typing import List, Optional


@dataclass
class Symbol:
    addr: int
    name: str
    segment: Optional[str] = None
    rom: Optional[int] = None
    type: Optional[str] = None
    size: Optional[int] = None


def get_n64_symbols(region: str) -> List[Symbol]:
    symbols = []

    def add_symbol(
        addr: int,
        name: str,
        segment: Optional[str] = None,
        rom: Optional[int] = None,
        type: Optional[str] = None,
        size: Optional[int] = None,
    ):
        symbols.append(Symbol(addr, name, segment, rom, type, size))

    add_symbol(0x80001A10, "memcmp")
    add_symbol(0x80001A5C, "memset")
    add_symbol(0x80001A8C, "strcmp")
    add_symbol(0x80001AC8, "strncmp")
    add_symbol(0x80001B20, "strcat")
    add_symbol(0x80001B80, "strncat")
    add_symbol(0x80001BE8, "strcpy")
    add_symbol(0x80001C20, "strncpy")
    add_symbol(0x80001C68, "strrchr")
    add_symbol(0x80001CC8, "atoi")
    add_symbol(0x80001D58, "atof")
    add_symbol(0x80001E7C, "toupper")
    add_symbol(0x80001E9C, "tolower")
    add_symbol(0x80001EC4, "qsort")
    add_symbol(0x800021A0, "strnicmp")
    add_symbol(0x8000226C, "strstr")
    add_symbol(0x80002424, "srand")
    add_symbol(0x80002430, "rand")
    add_symbol(0x8000247C, "stricmp")
    add_symbol(0x8000258C, "boot")
    add_symbol(0x80004268, "calculateQuaternionFromMatrix")
    add_symbol(0x80004AE0, "lerpQuaternions")
    add_symbol(0x8000589C, "ascii_to_n64")
    add_symbol(0x800059D0, "wcslen")
    add_symbol(0x80005B70, "__6String")
    add_symbol(0x80005B88, "_._6String")
    add_symbol(0x80005BBC, "func_80005BBC__6Stringi")
    add_symbol(0x80005C78, "func_80005C78__6StringP6String")
    add_symbol(0x80005CB4, "func_80005CB4__6String")
    add_symbol(0x80005CF4, "func_80005CF4__6String")
    add_symbol(0x80005E7C, "func_80005E7C__6StringPUs")
    add_symbol(0x80005F2C, "func_80005F2C__6StringP6String")
    add_symbol(0x80006058, "func_80006058__6StringP6String")
    add_symbol(0x800060C4, "func_800060C4__6StringPUs")
    add_symbol(0x80006148, "func_80006148__6String")
    add_symbol(0x80006150, "func_80006150__6StringPv")
    add_symbol(0x8000619C, "func_8000619C__6StringPUc")
    add_symbol(0x80006228, "func_80006228__6String")
    add_symbol(0x80008750, "__8Main080b")
    add_symbol(0x800087E4, "func_800087E4__8Main080bR5Other")
    add_symbol(0x80008D2C, "func_80008D2C__8Main080b")
    add_symbol(0x8007ED70, "__builtin_delete")

    if region == "e":
        add_symbol(0x8010F8E0, "func_menu_8010F8E0__7Menu660", segment="menu", rom=0x12D9D0)
        add_symbol(0x8010FCF4, "func_menu_8010FCF4__7Menu660", segment="menu", rom=0x12DDE4)
        add_symbol(0x8010FD74, "func_menu_8010FD74", segment="menu", rom=0x12DE64)
        add_symbol(0x8010FE3C, "func_menu_8010FE3C", segment="menu", rom=0x12DF2C)
        add_symbol(0x8010FF04, "func_menu_8010FF04__7Menu660", segment="menu", rom=0x12DFF4)
    if region == "u":
        add_symbol(0x8010F8D8, "func_menu_8010F8E0__7Menu660", segment="menu", rom=0x12D9C8)
        add_symbol(0x8010FCEC, "func_menu_8010FCF4__7Menu660", segment="menu", rom=0x12DDDC)
        add_symbol(0x8010FD6C, "func_menu_8010FD74", segment="menu", rom=0x12DE5C)
        add_symbol(0x8010FE34, "func_menu_8010FE3C", segment="menu", rom=0x12DF24)
        add_symbol(0x8010FEFC, "func_menu_8010FF04__7Menu660", segment="menu", rom=0x12DFEC)

    add_symbol(0x80100760, "__7Menu490", segment="menu")
    add_symbol(0x80103CE0, "__7Menu530", segment="menu")
    add_symbol(0x80111280, "__7Menu690", segment="menu")
    add_symbol(0x8011EE90, "__7Menu890", segment="menu")
    add_symbol(0x8011F2A0, "__7Menu900", segment="menu")
    add_symbol(0x8011F760, "__7Menu910", segment="menu")
    add_symbol(0x801007BC, "_._7Menu490", segment="menu")
    add_symbol(0x80103D2C, "_._7Menu530", segment="menu")
    add_symbol(0x801112C4, "_._7Menu690", segment="menu")
    add_symbol(0x8011EECC, "_._7Menu890", segment="menu")
    add_symbol(0x8011F2E4, "_._7Menu900", segment="menu")
    add_symbol(0x8011F79C, "_._7Menu910", segment="menu")
    add_symbol(0x800CF508, "_vt.7Menu660", segment="menu")
    add_symbol(0x8010EEA0, "__7Menu660", segment="menu")
    add_symbol(0x8010EFB4, "init__7Menu660", segment="menu")
    add_symbol(0x8010F020, "_._7Menu660", segment="menu")
    add_symbol(0x8010F1B0, "virt35__7Menu660P9UnkStructi", segment="menu")
    add_symbol(0x80100850, "virt35__7Menu490P9UnkStructi", segment="menu")
    add_symbol(0x801008C8, "virt29__7Menu490", segment="menu")
    add_symbol(0x80132F70, "heap_start")
    add_symbol(0x8011AFA8, "virt0__9MenuDunno", segment="menu")
    add_symbol(0x8011AFA0, "virt1__9MenuDunno", segment="menu")
    add_symbol(0x8011AF98, "virt2__9MenuDunno", segment="menu")
    add_symbol(0x8011AF90, "virt3__9MenuDunno", segment="menu")
    add_symbol(0x8011AF88, "virt4__9MenuDunno", segment="menu")
    add_symbol(0x8011AF80, "virt5__9MenuDunno", segment="menu")
    add_symbol(0x80101580, "virt6__7Menu490", segment="menu")
    add_symbol(0x8010158C, "virt7__7Menu490", segment="menu")
    add_symbol(0x8011AF68, "virt8__9MenuDunno", segment="menu")
    add_symbol(0x8011AF60, "virt9__9MenuDunno", segment="menu")
    add_symbol(0x8011AF58, "virt10__9MenuDunno", segment="menu")
    add_symbol(0x8011AF50, "virt11__9MenuDunno", segment="menu")
    add_symbol(0x8011AF48, "virt12__9MenuDunno", segment="menu")
    add_symbol(0x80101598, "virt13__7Menu490", segment="menu")
    add_symbol(0x801015A0, "virt15__7Menu490", segment="menu")
    add_symbol(0x801015A8, "virt16__7Menu490", segment="menu")
    add_symbol(0x8011AF20, "virt17__9MenuDunno", segment="menu")
    add_symbol(0x8011AF18, "virt18__9MenuDunno", segment="menu")
    add_symbol(0x80119458, "virt20__9MenuDunno", segment="menu")
    add_symbol(0x8010081C, "virt21__7Menu490", segment="menu")
    add_symbol(0x801195E4, "virt22__9MenuDunno", segment="menu")
    add_symbol(0x80101688, "virt23__7Menu490", segment="menu")
    add_symbol(0x8011AE98, "virt24__9MenuDunno", segment="menu")
    add_symbol(0x80101680, "virt25__7Menu490", segment="menu")
    add_symbol(0x8010134C, "virt27__7Menu490", segment="menu")
    add_symbol(0x80119170, "virt28__9MenuDunno", segment="menu")
    add_symbol(0x8011AE5C, "virt31__9MenuDunno", segment="menu")
    add_symbol(0x8010141C, "virt32__7Menu490", segment="menu")
    add_symbol(0x801013F8, "virt34__7Menu490", segment="menu")
    add_symbol(0x80101614, "virt36__7Menu490", segment="menu")
    add_symbol(0x8010161C, "virt37__7Menu490", segment="menu")   

    add_symbol(0x80045990, "racefunc_80045990")
    add_symbol(0x800460F0, "do_race")

    add_symbol(0x80045CF4, "do_menu")
    add_symbol(0x80046E20, "menufunc_80046E20")
    add_symbol(0x80046B3C, "crash")

    add_symbol(0x800307A0, "SmallRoomParams")
    add_symbol(0x80030808, "BigRoomParams")
    add_symbol(0x80030890, "EchoParams")
    add_symbol(0x800308B8, "ChorusParams")
    add_symbol(0x80030940, "FlangeParams")
    add_symbol(0x80030968, "NoFxParams")
    add_symbol(0x80030990, "EffectCount")
    add_symbol(0x80030994, "EffectList")
    add_symbol(0x800309B0, "default_sched")
    add_symbol(0x800309BC, "__libmus_current_sched")
    add_symbol(0x800309C0, "last_task")

    add_symbol(0x8001259C, "__OsSchedInstall")

    add_symbol(0x8000F70C, "MusHandleStop")
    add_symbol(0x8000F8C4, "MusHandleSetFreqOffset")
    add_symbol(0x8000F864, "MusHandleSetPan")
    add_symbol(0x8000F80C, "MusHandleSetVolume")
    add_symbol(0x8000F698, "MusAsk")
    add_symbol(0x8000F5D4, "MusStop")
    add_symbol(0x8000F1B0, "MusStartSong")
    add_symbol(0x8000F7BC, "MusHandleAs")
    add_symbol(0x8000FA2C, "MusPtrBankInitialize")
    add_symbol(0x8000FA60, "MusPtrBankSetSingle")
    add_symbol(0x8000FB0C, "MusHandlePause")
    add_symbol(0x8000FB30, "MusHandleUnPause")
    add_symbol(0x8000FBD4, "MusFxBankInitialize")
    add_symbol(0x8000FC44, "MusFxBankNumberOfEffects")
    add_symbol(0x8000FC5C, "MusFxBankSetSingle")
    add_symbol(0x8000FC78, "MusFxBankSetPtrBank")
    add_symbol(0x8000EEF4, "MusInitialize")
    add_symbol(0x8000F4B4, "MusStartEffect2")
    add_symbol(0x80012130, "__MusIntDmaIni")
    add_symbol(0x80012590, "MusIntSchedInit")
    add_symbol(0x80012750, "__MusIntAudManInit")
    add_symbol(0x800129F0, "__MusIntSamplesInit")
    add_symbol(0x80012B10, "__MusIntMemInit")
    add_symbol(0x800309D0, "only_one_flag")

    add_symbol(0x800309E0, "SMALLROOM_PARAMS_N")
    add_symbol(0x80030A48, "BIGROOM_PARAMS_N")
    add_symbol(0x80030AD0, "ECHO_PARAMS_N")
    add_symbol(0x80030AF8, "CHORUS_PARAMS_N")
    add_symbol(0x80030B20, "FLANGE_PARAMS_N")
    add_symbol(0x80030B48, "NULL_PARAMS_N")
    add_symbol(0x80030B70, "n_eqpower")

    add_symbol(0x80014E40, "n_alInit")
    add_symbol(0x80014E7C, "n_alClose")
    add_symbol(0x80030C80, "alGlobals")
    add_symbol(0x80030C84, "n_syn")

    add_symbol(0x8007C844, "FUN_8007c844__3Bari")

    add_symbol(0x80000300, "osTvType")

    add_symbol(0x80013200, "n_alEnvmixerPull")
    add_symbol(0x80012CE0, "n_alFxNew")
    add_symbol(0x80012C40, "n_alAuxBusPull")
    add_symbol(0x80013BA0, "n_alAdpcmPull")
    add_symbol(0x800142B0, "n_alResamplePull")

    add_symbol(0x80014EC0, "n_alSynAddPlayer")
    add_symbol(0x80014F10, "n_alSynAllocVoice")
    add_symbol(0x80015970, "n_alSavePull")
    add_symbol(0x800159C0, "n_alMainBusPull")
    add_symbol(0x80015A40, "n_alSynAllocFX")

    # LIBULTRA
    add_symbol(0x80015AA0, "osSetIntMask")
    add_symbol(0x80015B40, "osCreatePiManager")
    add_symbol(0x80016020, "osEPiStartDma")
    add_symbol(0x800160E0, "osCartRomInit")
    add_symbol(0x80016A80, "osPiStartDma")
    add_symbol(0x80016B30, "osAiGetLength")
    add_symbol(0x80016B40, "osAiGetStatus")
    add_symbol(0x80016B50, "osAiSetFrequency")
    add_symbol(0x80016C70, "osAiSetNextBuffer")
    add_symbol(0x80016D30, "_init_lpfilter")
    add_symbol(0x800195E4, "alFxParam")
    add_symbol(0x800195F8, "alFxParamHdl")
    add_symbol(0x80019D7C, "_doModFunc")
    add_symbol(0x80019F3C, "alLink")
    add_symbol(0x80019F5C, "alUnlink")
    add_symbol(0x80019F90, "alHeapInit")
    add_symbol(0x80019FD0, "alHeapDBAlloc")
    add_symbol(0x8001A020, "bcopy")
    add_symbol(0x8001A750, "osInvalDCache")
    add_symbol(0x8001A800, "osInvalICache")
    add_symbol(0x8001A880, "osWritebackDCache")
    add_symbol(0x8001A900, "osWritebackDCacheAll")
    add_symbol(0x8001A930, "osContStartQuery")
    add_symbol(0x8001A9B0, "osContGetQuery")
    add_symbol(0x8001A9D0, "osContStartReadData")
    add_symbol(0x8001AA58, "osContGetReadData")
    add_symbol(0x8001ABB0, "osContInit")
    add_symbol(0x8001AEC0, "osVirtualToPhysical")
    add_symbol(0x8001AF20, "sqrtf")
    add_symbol(0x8001AF30, "cosf")  # maybe
    add_symbol(0x8001B1B0, "guOrtho")
    add_symbol(0x8001B580, "sinf")
    add_symbol(0x8001B7F8, "strlen")
    add_symbol(0x8001B81C, "memcpy")
    add_symbol(0x8001B850, "sprintf")
    add_symbol(0x8001D1A0, "osCreateMesgQueue")
    add_symbol(0x8001DC80, "osRecvMesg")
    add_symbol(0x8001DDB0, "osSendMesg")
    add_symbol(0x8001DEE0, "osSetEventMesg")
    add_symbol(0x8001DF90, "osSpTaskLoad")
    add_symbol(0x8001E19C, "osSpTaskStartGo")
    add_symbol(0x8001E5E0, "osSpTaskYield")
    add_symbol(0x8001E600, "osSpTaskYielded")
    add_symbol(0x8001E660, "osCreateScheduler")
    add_symbol(0x8001E7A8, "osScAddClient")
    add_symbol(0x8001E890, "osScGetCmdQ")
    add_symbol(0x8001F2D0, "osCreateThread")
    add_symbol(0x8001F4A0, "osSetThreadPri")
    add_symbol(0x8001F570, "osStartThread")
    add_symbol(0x8001F690, "osStopThread")
    add_symbol(0x8001F7E0, "osGetTime")
    add_symbol(0x8001FCF0, "osUnmapTLBAll")
    add_symbol(0x8001FD40, "osViGetCurrentFramebuffer")
    add_symbol(0x8001FE90, "osViGetNextFramebuffer")
    add_symbol(0x8001FED0, "osCreateViManager")
    add_symbol(0x80020220, "osViSetEvent")
    add_symbol(0x80020280, " osViSetMode")
    add_symbol(0x800202D0, "osViSetSpecialFeatures")
    add_symbol(0x80020440, "osViSwapBuffer")
    add_symbol(0x800207A0, "osViBlack")
    add_symbol(0x80020800, "__osMotorAccess")
    add_symbol(0x80020944, "osMotorInit")
    add_symbol(0x80020C80, "osPfsAllocateFile")
    add_symbol(0x800210B0, "osPfsDeleteFile")
    add_symbol(0x800212D0, "osPfsReadWriteFile")
    add_symbol(0x80021710, "osPfsFileState")
    add_symbol(0x800218B0, "osPfsFindFile")
    add_symbol(0x80021A70, "osPfsIsPlug")
    add_symbol(0x80021D50, "osPfsFreeBlocks")
    add_symbol(0x80021E60, "osPfsNumFiles")
    add_symbol(0x80021F60, "osPfsInitPak")
    add_symbol(0x80022A60, "osPfsRepairId")
    add_symbol(0x80023C30, "osInitialize")
    add_symbol(0x80001450, "__osRcpImTable", type="s16", size=9 * 2)
    add_symbol(0x80001920, "pows", type="f64", size=9 * 8)

    # empty strings
    add_symbol(0x8003BCF0, "D_8003BCF0", type="String")

    # LIBSN
    add_symbol(0x80024070, "__divdi3")
    add_symbol(0x800250F0, "__builtin_vec_new")
    add_symbol(0x80025110, "__builtin_vec_delete")
    add_symbol(0x80001150, "__clz_tab", type="u8")
    add_symbol(0x80001250, "__clz_tab_1", type="u8")
    add_symbol(0x80001350, "__clz_tab_2", type="u8")

    # LIBMUS
    add_symbol(0x8000D870, "n_aspMainTextStart")
    add_symbol(0x80030430, "n_aspMainDataStart")
    add_symbol(0x800306E0, "jumptable")

    add_symbol(0x800E85AC, "func_race_800E85AC")  # HACK
    add_symbol(0x800E8620, "func_race_800E8620")  # HACK

    add_symbol(0x80040A70, "D_80040A70")
    add_symbol(0x80040AC0, "D_80040AC0")
    add_symbol(0x8007ED30, "__builtin_new")
    add_symbol(0x800EF590, "__7Menu320", segment="menu")
    add_symbol(0x8007E590, "__9Allocator")

    add_symbol(0x8007EDF4, "_GLOBAL_.I.D_80087570")
    add_symbol(0x8007EAE8, "alloc__9Allocatorii")
    add_symbol(0x8007EBD8, "dealloc__9AllocatorPv")

    return symbols
