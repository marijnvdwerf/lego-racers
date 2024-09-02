from typing import Optional, List

from dataclasses import dataclass


@dataclass
class Symbol:
    addr: int
    name: str
    segment: Optional[str] = None
    rom: Optional[int] = None
    type: Optional[str] = None


class Syms:
    def __init__(self):
        self.symbols: List[Symbol] = []

    def add_symbol(
        self,
        addr: int,
        name: str,
        segment: Optional[str] = None,
        rom: Optional[int] = None,
        type: Optional[str] = None,
    ):
        symbol = Symbol(addr, name, segment, rom, type)
        self.symbols.append(symbol)


def get_n64_symbols(region: str):
    syms = Syms()

    syms.add_symbol(0x80001A10, "memcmp")
    syms.add_symbol(0x80001A5C, "memset")
    syms.add_symbol(0x80001A8C, "strcmp")
    syms.add_symbol(0x80001AC8, "strncmp")
    syms.add_symbol(0x80001B20, "strcat")
    syms.add_symbol(0x80001B80, "strncat")
    syms.add_symbol(0x80001BE8, "strcpy")
    syms.add_symbol(0x80001C20, "strncpy")
    syms.add_symbol(0x80001C68, "strrchr")
    syms.add_symbol(0x80001CC8, "atoi")
    syms.add_symbol(0x80001D58, "atof")
    syms.add_symbol(0x80001E7C, "toupper")
    syms.add_symbol(0x80001E9C, "tolower")
    syms.add_symbol(0x80001EC4, "qsort")
    syms.add_symbol(0x800021A0, "strnicmp")
    syms.add_symbol(0x8000226C, "strstr")
    syms.add_symbol(0x80002424, "srand")
    syms.add_symbol(0x80002430, "rand")
    syms.add_symbol(0x8000247C, "stricmp")
    syms.add_symbol(0x8000258C, "boot")
    syms.add_symbol(0x80004268, "calculateQuaternionFromMatrix")
    syms.add_symbol(0x80004AE0, "lerpQuaternions")
    syms.add_symbol(0x8000589C, "ascii_to_n64")
    syms.add_symbol(0x800059D0, "wcslen")
    syms.add_symbol(0x80005B70, "__6String")
    syms.add_symbol(0x80005B88, "_._6String")
    syms.add_symbol(0x80005BBC, "func_80005BBC__6Stringi")
    syms.add_symbol(0x80005C78, "func_80005C78__6StringP6String")
    syms.add_symbol(0x80005CB4, "func_80005CB4__6String")
    syms.add_symbol(0x80005CF4, "func_80005CF4__6String")
    syms.add_symbol(0x80005E7C, "func_80005E7C__6StringPUs")
    syms.add_symbol(0x80005F2C, "func_80005F2C__6StringP6String")
    syms.add_symbol(0x80006058, "func_80006058__6StringP6String")
    syms.add_symbol(0x800060C4, "func_800060C4__6StringPUs")
    syms.add_symbol(0x80006148, "func_80006148__6String")
    syms.add_symbol(0x80006150, "func_80006150__6StringPv")
    syms.add_symbol(0x8000619C, "func_8000619C__6StringPUc")
    syms.add_symbol(0x80006228, "func_80006228__6String")
    syms.add_symbol(0x8007ED70, "__builtin_delete")

    if region == "e":
        syms.add_symbol(0x8010F8E0, "func_menu_8010F8E0__7Menu660", segment="menu", rom=0x12D9D0)
        syms.add_symbol(0x8010FCF4, "func_menu_8010FCF4__7Menu660", segment="menu", rom=0x12DDE4)
        syms.add_symbol(0x8010FD74, "func_menu_8010FD74", segment="menu", rom=0x12DE64)
        syms.add_symbol(0x8010FE3C, "func_menu_8010FE3C", segment="menu", rom=0x12DF2C)
        syms.add_symbol(0x8010FF04, "func_menu_8010FF04__7Menu660", segment="menu", rom=0x12DFF4)
    if region == "u":
        syms.add_symbol(0x8010F8D8, "func_menu_8010F8E0__7Menu660", segment="menu", rom=0x12D9C8)
        syms.add_symbol(0x8010FCEC, "func_menu_8010FCF4__7Menu660", segment="menu", rom=0x12DDDC)
        syms.add_symbol(0x8010FD6C, "func_menu_8010FD74", segment="menu", rom=0x12DE5C)
        syms.add_symbol(0x8010FE34, "func_menu_8010FE3C", segment="menu", rom=0x12DF24)
        syms.add_symbol(0x8010FEFC, "func_menu_8010FF04__7Menu660", segment="menu", rom=0x12DFEC)

    syms.add_symbol(0x80100760, "__7Menu490", segment="menu")
    syms.add_symbol(0x80103CE0, "__7Menu530", segment="menu")
    syms.add_symbol(0x80111280, "__7Menu690", segment="menu")
    syms.add_symbol(0x8011EE90, "__7Menu890", segment="menu")
    syms.add_symbol(0x8011F2A0, "__7Menu900", segment="menu")
    syms.add_symbol(0x8011F760, "__7Menu910", segment="menu")
    syms.add_symbol(0x801007BC, "_._7Menu490", segment="menu")
    syms.add_symbol(0x80103D2C, "_._7Menu530", segment="menu")
    syms.add_symbol(0x801112C4, "_._7Menu690", segment="menu")
    syms.add_symbol(0x8011EECC, "_._7Menu890", segment="menu")
    syms.add_symbol(0x8011F2E4, "_._7Menu900", segment="menu")
    syms.add_symbol(0x8011F79C, "_._7Menu910", segment="menu")
    syms.add_symbol(0x800CF508, "_vt.7Menu660", segment="menu")
    syms.add_symbol(0x8010EEA0, "__7Menu660", segment="menu")
    syms.add_symbol(0x8010EFB4, "init__7Menu660", segment="menu")
    syms.add_symbol(0x8010F020, "_._7Menu660", segment="menu")
    syms.add_symbol(0x8010F1B0, "virt35__7Menu660P9UnkStructi", segment="menu")
    syms.add_symbol(0x80100850, "virt35__7Menu490P9UnkStructi", segment="menu")
    syms.add_symbol(0x801008C8, "virt29__7Menu490", segment="menu")
    syms.add_symbol(0x80132F70, "heap_start")
    syms.add_symbol(0x8011AFA8, "virt0__9MenuDunno", segment="menu")
    syms.add_symbol(0x8011AFA0, "virt1__9MenuDunno", segment="menu")
    syms.add_symbol(0x8011AF98, "virt2__9MenuDunno", segment="menu")
    syms.add_symbol(0x8011AF90, "virt3__9MenuDunno", segment="menu")
    syms.add_symbol(0x8011AF88, "virt4__9MenuDunno", segment="menu")
    syms.add_symbol(0x8011AF80, "virt5__9MenuDunno", segment="menu")
    syms.add_symbol(0x80101580, "virt6__7Menu490", segment="menu")
    syms.add_symbol(0x8010158C, "virt7__7Menu490", segment="menu")
    syms.add_symbol(0x8011AF68, "virt8__9MenuDunno", segment="menu")
    syms.add_symbol(0x8011AF60, "virt9__9MenuDunno", segment="menu")
    syms.add_symbol(0x8011AF58, "virt10__9MenuDunno", segment="menu")
    syms.add_symbol(0x8011AF50, "virt11__9MenuDunno", segment="menu")
    syms.add_symbol(0x8011AF48, "virt12__9MenuDunno", segment="menu")
    syms.add_symbol(0x80101598, "virt13__7Menu490", segment="menu")
    syms.add_symbol(0x801015A0, "virt15__7Menu490", segment="menu")
    syms.add_symbol(0x801015A8, "virt16__7Menu490", segment="menu")
    syms.add_symbol(0x8011AF20, "virt17__9MenuDunno", segment="menu")
    syms.add_symbol(0x8011AF18, "virt18__9MenuDunno", segment="menu")
    syms.add_symbol(0x80119458, "virt20__9MenuDunno", segment="menu")
    syms.add_symbol(0x8010081C, "virt21__7Menu490", segment="menu")
    syms.add_symbol(0x801195E4, "virt22__9MenuDunno", segment="menu")
    syms.add_symbol(0x80101688, "virt23__7Menu490", segment="menu")
    syms.add_symbol(0x8011AE98, "virt24__9MenuDunno", segment="menu")
    syms.add_symbol(0x80101680, "virt25__7Menu490", segment="menu")
    syms.add_symbol(0x8010134C, "virt27__7Menu490", segment="menu")
    syms.add_symbol(0x80119170, "virt28__9MenuDunno", segment="menu")
    syms.add_symbol(0x8011AE5C, "virt31__9MenuDunno", segment="menu")
    syms.add_symbol(0x8010141C, "virt32__7Menu490", segment="menu")
    syms.add_symbol(0x801013F8, "virt34__7Menu490", segment="menu")
    syms.add_symbol(0x80101614, "virt36__7Menu490", segment="menu")
    syms.add_symbol(0x8010161C, "virt37__7Menu490", segment="menu")

    syms.add_symbol(0x80045990, "racefunc_80045990")
    syms.add_symbol(0x800460F0, "do_race")

    syms.add_symbol(0x80045CF4, "do_menu")
    syms.add_symbol(0x80046E20, "menufunc_80046E20")

    syms.add_symbol(0x800307A0, "SmallRoomParams")
    syms.add_symbol(0x80030808, "BigRoomParams")
    syms.add_symbol(0x80030890, "EchoParams")
    syms.add_symbol(0x800308B8, "ChorusParams")
    syms.add_symbol(0x80030940, "FlangeParams")
    syms.add_symbol(0x80030968, "NoFxParams")
    syms.add_symbol(0x80030990, "EffectCount")
    syms.add_symbol(0x80030994, "EffectList")
    syms.add_symbol(0x800309B0, "default_sched")
    syms.add_symbol(0x800309BC, "__libmus_current_sched")
    syms.add_symbol(0x800309C0, "last_task")

    syms.add_symbol(0x8001259C, "__OsSchedInstall")

    syms.add_symbol(0x8000F70C, "MusHandleStop")
    syms.add_symbol(0x8000F8C4, "MusHandleSetFreqOffset")
    syms.add_symbol(0x8000F864, "MusHandleSetPan")
    syms.add_symbol(0x8000F80C, "MusHandleSetVolume")
    syms.add_symbol(0x8000F698, "MusAsk")
    syms.add_symbol(0x8000F5D4, "MusStop")
    syms.add_symbol(0x8000F1B0, "MusStartSong")
    syms.add_symbol(0x8000F7BC, "MusHandleAs")
    syms.add_symbol(0x8000FA2C, "MusPtrBankInitialize")
    syms.add_symbol(0x8000FA60, "MusPtrBankSetSingle")
    syms.add_symbol(0x8000FB0C, "MusHandlePause")
    syms.add_symbol(0x8000FB30, "MusHandleUnPause")
    syms.add_symbol(0x8000FBD4, "MusFxBankInitialize")
    syms.add_symbol(0x8000FC44, "MusFxBankNumberOfEffects")
    syms.add_symbol(0x8000FC5C, "MusFxBankSetSingle")
    syms.add_symbol(0x8000FC78, "MusFxBankSetPtrBank")
    syms.add_symbol(0x8000EEF4, "MusInitialize")
    syms.add_symbol(0x8000F4B4, "MusStartEffect2")
    syms.add_symbol(0x80012130, "__MusIntDmaIni")
    syms.add_symbol(0x80012590, "MusIntSchedInit")
    syms.add_symbol(0x80012750, "__MusIntAudManInit")
    syms.add_symbol(0x800129F0, "__MusIntSamplesInit")
    syms.add_symbol(0x80012B10, "__MusIntMemInit")
    syms.add_symbol(0x800309D0, "only_one_flag")

    syms.add_symbol(0x800309E0, "SMALLROOM_PARAMS_N")
    syms.add_symbol(0x80030A48, "BIGROOM_PARAMS_N")
    syms.add_symbol(0x80030AD0, "ECHO_PARAMS_N")
    syms.add_symbol(0x80030AF8, "CHORUS_PARAMS_N")
    syms.add_symbol(0x80030B20, "FLANGE_PARAMS_N")
    syms.add_symbol(0x80030B48, "NULL_PARAMS_N")
    syms.add_symbol(0x80030B70, "n_eqpower")

    syms.add_symbol(0x80014E40, "n_alInit")
    syms.add_symbol(0x80014E7C, "n_alClose")
    syms.add_symbol(0x80030C80, "alGlobals")
    syms.add_symbol(0x80030C84, "n_syn")

    syms.add_symbol(0x8007C844, "FUN_8007c844__3Bari")

    syms.add_symbol(0x80000300, "osTvType")

    syms.add_symbol(0x80013200, "n_alEnvmixerPull")
    syms.add_symbol(0x80012CE0, "n_alFxNew")
    syms.add_symbol(0x80012C40, "n_alAuxBusPull")
    syms.add_symbol(0x80013BA0, "n_alAdpcmPull")
    syms.add_symbol(0x800142B0, "n_alResamplePull")

    syms.add_symbol(0x80014EC0, "n_alSynAddPlayer")
    syms.add_symbol(0x80014F10, "n_alSynAllocVoice")
    syms.add_symbol(0x80015970, "n_alSavePull")
    syms.add_symbol(0x800159C0, "n_alMainBusPull")
    syms.add_symbol(0x80015A40, "n_alSynAllocFX")

    # LIBULTRA
    syms.add_symbol(0x80015AA0, "osSetIntMask")
    syms.add_symbol(0x80015B40, "osCreatePiManager")
    syms.add_symbol(0x80016020, "osEPiStartDma")
    syms.add_symbol(0x800160E0, "osCartRomInit")
    syms.add_symbol(0x80016A80, "osPiStartDma")
    syms.add_symbol(0x80016B30, "osAiGetLength")
    syms.add_symbol(0x80016B40, "osAiGetStatus")
    syms.add_symbol(0x80016B50, "osAiSetFrequency")
    syms.add_symbol(0x80016C70, "osAiSetNextBuffer")
    syms.add_symbol(0x80016D30, "_init_lpfilter")
    syms.add_symbol(0x800195E4, "alFxParam")
    syms.add_symbol(0x800195F8, "alFxParamHdl")
    syms.add_symbol(0x80019D7C, "_doModFunc")
    syms.add_symbol(0x80019F3C, "alLink")
    syms.add_symbol(0x80019F5C, "alUnlink")
    syms.add_symbol(0x80019F90, "alHeapInit")
    syms.add_symbol(0x80019FD0, "alHeapDBAlloc")
    syms.add_symbol(0x8001A020, "bcopy")
    syms.add_symbol(0x8001A750, "osInvalDCache")
    syms.add_symbol(0x8001A800, "osInvalICache")
    syms.add_symbol(0x8001A880, "osWritebackDCache")
    syms.add_symbol(0x8001A900, "osWritebackDCacheAll")
    syms.add_symbol(0x8001A930, "osContStartQuery")
    syms.add_symbol(0x8001A9B0, "osContGetQuery")
    syms.add_symbol(0x8001A9D0, "osContStartReadData")
    syms.add_symbol(0x8001AA58, "osContGetReadData")
    syms.add_symbol(0x8001ABB0, "osContInit")
    syms.add_symbol(0x8001AEC0, "osVirtualToPhysical")
    syms.add_symbol(0x8001AF20, "sqrtf")
    syms.add_symbol(0x8001AF30, "cosf")  # maybe
    syms.add_symbol(0x8001B1B0, "guOrtho")
    syms.add_symbol(0x8001B580, "sinf")
    syms.add_symbol(0x8001B7F8, "strlen")
    syms.add_symbol(0x8001B81C, "memcpy")
    syms.add_symbol(0x8001B850, "sprintf")
    syms.add_symbol(0x8001D1A0, "osCreateMesgQueue")
    syms.add_symbol(0x8001DC80, "osRecvMesg")
    syms.add_symbol(0x8001DDB0, "osSendMesg")
    syms.add_symbol(0x8001DEE0, "osSetEventMesg")
    syms.add_symbol(0x8001DF90, "osSpTaskLoad")
    syms.add_symbol(0x8001E19C, "osSpTaskStartGo")
    syms.add_symbol(0x8001E5E0, "osSpTaskYield")
    syms.add_symbol(0x8001E600, "osSpTaskYielded")
    syms.add_symbol(0x8001E660, "osCreateScheduler")
    syms.add_symbol(0x8001E7A8, "osScAddClient")
    syms.add_symbol(0x8001E890, "osScGetCmdQ")
    syms.add_symbol(0x8001F2D0, "osCreateThread")
    syms.add_symbol(0x8001F4A0, "osSetThreadPri")
    syms.add_symbol(0x8001F570, "osStartThread")
    syms.add_symbol(0x8001F690, "osStopThread")
    syms.add_symbol(0x8001F7E0, "osGetTime")
    syms.add_symbol(0x8001FCF0, "osUnmapTLBAll")
    syms.add_symbol(0x8001FD40, "osViGetCurrentFramebuffer")
    syms.add_symbol(0x8001FE90, "osViGetNextFramebuffer")
    syms.add_symbol(0x8001FED0, "osCreateViManager")
    syms.add_symbol(0x80020220, "osViSetEvent")
    syms.add_symbol(0x80020280, " osViSetMode")
    syms.add_symbol(0x800202D0, "osViSetSpecialFeatures")
    syms.add_symbol(0x80020440, "osViSwapBuffer")
    syms.add_symbol(0x800207A0, "osViBlack")
    syms.add_symbol(0x80020800, "__osMotorAccess")
    syms.add_symbol(0x80020944, "osMotorInit")
    syms.add_symbol(0x80020C80, "osPfsAllocateFile")
    syms.add_symbol(0x800210B0, "osPfsDeleteFile")
    syms.add_symbol(0x800212D0, "osPfsReadWriteFile")
    syms.add_symbol(0x80021710, "osPfsFileState")
    syms.add_symbol(0x800218B0, "osPfsFindFile")
    syms.add_symbol(0x80021A70, "osPfsIsPlug")
    syms.add_symbol(0x80021D50, "osPfsFreeBlocks")
    syms.add_symbol(0x80021E60, "osPfsNumFiles")
    syms.add_symbol(0x80021F60, "osPfsInitPak")
    syms.add_symbol(0x80022A60, "osPfsRepairId")
    syms.add_symbol(0x80023C30, "osInitialize")
    syms.add_symbol(0x80001450, "__osRcpImTable", type="hword[9]")
    syms.add_symbol(0x80001920, "pows", type="double[9]")

    # empty strings
    syms.add_symbol(0x8003BCF0, "D_8003BCF0", type="char")

    # LIBSN
    syms.add_symbol(0x80024070, "__divdi3")
    syms.add_symbol(0x80001150, "__clz_tab", type="u8")
    syms.add_symbol(0x80001250, "__clz_tab_1", type="u8")
    syms.add_symbol(0x80001350, "__clz_tab_2", type="u8")

    # LIBMUS
    syms.add_symbol(0x8000D870, "n_aspMainTextStart")
    syms.add_symbol(0x80030430, "n_aspMainDataStart")
    syms.add_symbol(0x800306E0, "jumptable")

    syms.add_symbol(0x800E85AC, "func_race_800E85AC")  # HACK
    syms.add_symbol(0x800E8620, "func_race_800E8620")  # HACK

    syms.add_symbol(0x80040A70, "D_80040A70")
    syms.add_symbol(0x80040AC0, "D_80040AC0")
    syms.add_symbol(0x8007ED30, "__builtin_new")
    syms.add_symbol(0x800EF590, "__7Menu320", segment="menu")
    syms.add_symbol(0x8007E590, "__9Allocator")

    syms.add_symbol(0x8007EDF4, "_GLOBAL_.I.D_80087570")
    syms.add_symbol(0x8007EAE8, "alloc__9Allocatorii")
    syms.add_symbol(0x8007EBD8, "dealloc__9AllocatorPv")
