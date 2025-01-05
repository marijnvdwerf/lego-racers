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
    add_symbol(0x80002874, "__pure_virtual")
    add_symbol(0x80004268, "calculateQuaternionFromMatrix")
    add_symbol(0x80004AE0, "lerpQuaternions")
    add_symbol(0x8000589C, "ascii_to_n64")
    add_symbol(0x800059D0, "wcslen")
    add_symbol(0x80005B70, "__6String")
    add_symbol(0x80005B88, "_._6String")
    add_symbol(0x80005BBC, "func_80005BBC__6Stringl")
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
    add_symbol(0x80031160, "osViModeTable")

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
    add_symbol(0x800EF590, "__7Menu320", segment="menu")

    add_symbol(0x8003F190, "_vt.11RenderClass")
    add_symbol(0x8003F3B8, "_vt.15Anon_Stage2_200")
    add_symbol(0x80045990, "racefunc_80045990")
    add_symbol(0x80045CF4, "do_menu")
    add_symbol(0x800460F0, "do_race")
    add_symbol(0x80046B3C, "crash")
    add_symbol(0x80046E20, "menufunc_80046E20")
    add_symbol(0x80046EE0, "__20ParentSchedulerOwner")
    add_symbol(0x80046F1C, "virt4__20ParentSchedulerOwner")
    add_symbol(0x80046F70, "virt5__20ParentSchedulerOwner")
    add_symbol(0x80046FD0, "virt7__20ParentSchedulerOwner")
    add_symbol(0x8004702C, "virt8__20ParentSchedulerOwner")
    add_symbol(0x800470B4, "func_800470B4__20ParentSchedulerOwnerP5Unk18")
    add_symbol(0x800470C4, "func_800470C4__20ParentSchedulerOwnerP5Unk18")
    add_symbol(0x80047120, "virt11__20ParentSchedulerOwner")
    add_symbol(0x80047128, "virt10__20ParentSchedulerOwner")
    add_symbol(0x80047130, "virt12__20ParentSchedulerOwner")
    add_symbol(0x80047138, "virt13__20ParentSchedulerOwner")
    add_symbol(0x80047140, "virt14__20ParentSchedulerOwner")
    add_symbol(0x80047148, "virt15__20ParentSchedulerOwner")
    add_symbol(0x80047150, "virt16__20ParentSchedulerOwner")
    add_symbol(0x80047158, "virt17__20ParentSchedulerOwner")
    add_symbol(0x80047160, "virt18__20ParentSchedulerOwner")
    add_symbol(0x80047168, "virt19__20ParentSchedulerOwner")
    add_symbol(0x80047170, "virt20__20ParentSchedulerOwner")
    add_symbol(0x80047178, "virt21__20ParentSchedulerOwner")
    add_symbol(0x80047180, "virt22__20ParentSchedulerOwner")
    add_symbol(0x80047188, "virt23__20ParentSchedulerOwner")
    add_symbol(0x80047190, "virt27__20ParentSchedulerOwner")
    add_symbol(0x80047198, "virt28__20ParentSchedulerOwner")
    add_symbol(0x800471A0, "virt24__20ParentSchedulerOwner")
    add_symbol(0x800471A8, "virt26__20ParentSchedulerOwner")
    add_symbol(0x800471B0, "virt29__20ParentSchedulerOwner")
    add_symbol(0x800471B8, "virt25__20ParentSchedulerOwner")
    add_symbol(0x800471CC, "virt32__20ParentSchedulerOwner")
    add_symbol(0x800471D4, "virt31__20ParentSchedulerOwner")
    add_symbol(0x800471DC, "virt30__20ParentSchedulerOwner")
    add_symbol(0x8004BF40, "__26ParentParentSchedulerOwner")
    add_symbol(0x8004BF68, "_._26ParentParentSchedulerOwner")
    add_symbol(0x8004BF98, "virt4__26ParentParentSchedulerOwneriiii")
    add_symbol(0x8004C030, "virt7__26ParentParentSchedulerOwner")
    add_symbol(0x8004C07C, "virt8__26ParentParentSchedulerOwneriiii")
    add_symbol(0x8004C128, "virt2__26ParentParentSchedulerOwner")
    add_symbol(0x8004C130, "virt3__26ParentParentSchedulerOwner")
    add_symbol(0x8004C138, "virt6__26ParentParentSchedulerOwner")
    add_symbol(0x8004C168, "virt5__26ParentParentSchedulerOwner")
    add_symbol(0x8004C2B0, "__14ParentRenderer")
    add_symbol(0x8004C2EC, "_._14ParentRenderer")
    add_symbol(0x8004C34C, "virt14__14ParentRenderer")
    add_symbol(0x80054750, "__10Stage2_200")
    add_symbol(0x800547B4, "_._10Stage2_200")
    add_symbol(0x8005B5E0, "__17RenderClassParent")
    add_symbol(0x8005B680, "_._17RenderClassParent")
    add_symbol(0x80069290, "__10Stage2_450")
    add_symbol(0x80069314, "_._10Stage2_450")
    add_symbol(0x8006B2E0, "__10Stage2_470")
    add_symbol(0x8006B2FC, "_._10Stage2_470")
    add_symbol(0x8006B5E0, "__11N64Renderer")
    add_symbol(0x8006B618, "_._11N64Renderer")
    add_symbol(0x8006B660, "virt13__11N64RendererP6Foo123Ussl")
    add_symbol(0x8006B8F0, "func_8006B8F0__11N64RendererUl")
    add_symbol(0x80070554, "_._11RenderClass")
    add_symbol(0x800705FC, "reset__11RenderClass")
    add_symbol(0x800707A4, "virt4__11RenderClass")
    add_symbol(0x800707B0, "virt8__11RenderClassPv")
    add_symbol(0x80071660, "func_80071660__11RenderClassR20ParentSchedulerOwnerR11N64Rendererii")
    add_symbol(0x80071820, "virt6__11RenderClass")
    add_symbol(0x800718F4, "func_800718F4__11RenderClassiPvi")
    add_symbol(0x80072FE0, "func_80072FE0__11RenderClass")
    add_symbol(0x800754F4, "func_800754F4__11RenderClassiii")
    add_symbol(0x8007558C, "func_8007558C__11RenderClassiii")
    add_symbol(0x8007B670, "__10Stage2_660")
    add_symbol(0x8007B6A8, "_._10Stage2_660")
    add_symbol(0x8007E590, "__9Allocator")
    add_symbol(0x8007EAE8, "alloc__9Allocatorii")
    add_symbol(0x8007EBD8, "dealloc__9AllocatorPv")
    add_symbol(0x8007ED30, "__builtin_new")
    add_symbol(0x8007ED70, "__builtin_delete")
    add_symbol(0x8007ED94, "heap_push")
    add_symbol(0x8007EDC8, "heap_pop")
    add_symbol(0x8007EDF4, "_GLOBAL_.I.D_80087570")


    class Class:
        def __init__(self, classname):
            self.classname = classname

        def ctor(self):
            return f"__{len(self.classname)}{self.classname}"

        def dtor(self):
            return f"_._{len(self.classname)}{self.classname}"

        def vtable(self):
            return f"_vt.{len(self.classname)}{self.classname}"

        def __getattr__(self, name):
            return lambda: f"{name}__{len(self.classname)}{self.classname}"


    stage2_030 = Class("Stage2_030");
    stage2_040 = Class("Stage2_040");
    stage2_050 = Class("Stage2_050");
    stage2_070 = Class("Stage2_070");
    stage2_105 = Class("Stage2_105");
    stage2_110 = Class("Stage2_110");
    stage2_130 = Class("ParentParentRenderer");

    add_symbol(0x8003bdd0, stage2_030.vtable());
    add_symbol(0x8003bf70, stage2_040.vtable());
    add_symbol(0x8003c068, stage2_050.vtable());
    add_symbol(0x8003c228, stage2_070.vtable());
    add_symbol(0x8003c558, stage2_105.vtable());
    add_symbol(0x8003c5c8, stage2_110.vtable());
    add_symbol(0x8003c748, stage2_130.vtable());

    add_symbol(0x80041a10, stage2_030.ctor());
    add_symbol(0x80041a8c, stage2_030.virt0());
    add_symbol(0x80041b10, stage2_030.virt2());
    add_symbol(0x80042990, stage2_040.ctor());
    add_symbol(0x800429CC, stage2_040.virt0());
    add_symbol(0x80042A48, stage2_040.virt2());
    add_symbol(0x80043E10, stage2_050.ctor());
    add_symbol(0x80043E4C, stage2_050.virt0());
    add_symbol(0x80043EC0, stage2_050.virt2());
    add_symbol(0x80045a40, stage2_070.ctor());
    add_symbol(0x80045BB0, stage2_070.virt12());
    add_symbol(0x80047200, stage2_105.ctor());
    add_symbol(0x80047240, stage2_105.virt4());
    add_symbol(0x80047250, stage2_105.virt2());
    add_symbol(0x80047374, stage2_105.virt0());
    add_symbol(0x80047E78, stage2_105.virt5());
    add_symbol(0x80048448, stage2_105.virt8());
    add_symbol(0x800487DC, stage2_105.virt7());
    add_symbol(0x80048A80, stage2_105.virt6());
    add_symbol(0x80049430, stage2_105.virt1());
    add_symbol(0x80049450, stage2_110.ctor());
    add_symbol(0x800494CC, stage2_110.virt2());
    add_symbol(0x8004A41C, stage2_110.virt8());
    add_symbol(0x8004A424, stage2_110.virt9());
    add_symbol(0x8004B470, stage2_130.ctor());
    add_symbol(0x8004B4BC, stage2_130.virt0());
    add_symbol(0x8004B4EC, stage2_130.virt1());
    add_symbol(0x8004B538, stage2_130.virt2());
    add_symbol(0x8004B554, stage2_130.virt3());
    add_symbol(0x8004B5A0, stage2_130.virt4());
    add_symbol(0x8004B5BC, stage2_130.virt5());
    add_symbol(0x8004B5C4, stage2_130.virt6());
    add_symbol(0x8004B5CC, stage2_130.virt7());
    add_symbol(0x8004B5D4, stage2_130.virt8());
    add_symbol(0x8004B838, stage2_130.virt10());
    add_symbol(0x8004BB38, stage2_130.virt9());
    add_symbol(0x8004BCB4, stage2_130.virt11());
    add_symbol(0x8004BCBC, stage2_130.virt12());

    

    stage2_140 = Class("Stage2_140"); # TODO
    stage2_150 = Class("Stage2_150"); # TODO

    stage2_160 = Class("Stage2_160")
    add_symbol(0x8004C380, stage2_160.ctor())
    add_symbol(0x8003c890, stage2_160.vtable())
    add_symbol(0x8004C398, stage2_160.virt0())
    add_symbol(0x8004C3E8, stage2_160.virt2())


    stage2_170 = Class("Stage2_170");
    add_symbol(0x8004c410, stage2_170.ctor())
    add_symbol(0x8003c988, stage2_170.vtable())
    add_symbol(0x8004C44C, stage2_170.virt0())
    add_symbol(0x8004CB50, stage2_170.virt2())
    add_symbol(0x8004CB9C, stage2_170.virt6())
    add_symbol(0x8004CBA4, stage2_170.virt7())
    add_symbol(0x8004C494, stage2_170.virt8())

    stage2_180 = Class("Stage2_180");
    add_symbol(0x8004cc20, stage2_180.ctor())
    add_symbol(0x8003ca70, stage2_180.vtable())
    add_symbol(0x8004D0D4, stage2_180.virt0())
    add_symbol(0x8004CC60, stage2_180.virt7())
    add_symbol(0x8004D094, stage2_180.virt8())

    
    stage2_190 = Class("Stage2_190");
    add_symbol(0x80050620, stage2_190.ctor())
    add_symbol(0x8003cc18, stage2_190.vtable())
    add_symbol(0x8005307C, stage2_190.virt0())
    add_symbol(0x800506E8, stage2_190.virt1())
    add_symbol(0x80050744, stage2_190.virt2())
    add_symbol(0x80050808, stage2_190.virt3())
    add_symbol(0x80053060, stage2_190.virt4())
    add_symbol(0x8005306C, stage2_190.virt5())
    add_symbol(0x80053074, stage2_190.virt6())
    add_symbol(0x80053084, stage2_190.virt7())
    add_symbol(0x8005308C, stage2_190.virt8())

    stage2_200 = Class("Stage2_200");
    add_symbol(0x80053FE0, stage2_200.ctor())
    add_symbol(0x8003CDC8, stage2_200.vtable())
    add_symbol(0x80054020, stage2_200.virt0())
    add_symbol(0x80058E5C, stage2_200.virt1())
    add_symbol(0x800545A8, stage2_200.virt2())
    add_symbol(0x800545F4, stage2_200.virt4())
    add_symbol(0x800545FC, stage2_200.virt5())
    add_symbol(0x800544F4, stage2_200.virt6())
    add_symbol(0x80054068, stage2_200.virt7())

    stage2_210 = Class("Stage2_210"); # TODO
    
    stage2_220 = Class("Stage2_220");
    add_symbol(0x80055c20, stage2_220.ctor())
    add_symbol(0x8003d158, stage2_220.vtable())
    add_symbol(0x800596FC, stage2_220.virt0())
    add_symbol(0x8005656C, stage2_220.virt1())
    add_symbol(0x80056588, stage2_220.virt2())
    add_symbol(0x800592C8, stage2_220.virt3())
    add_symbol(0x80059394, stage2_220.virt4())
    add_symbol(0x8005945C, stage2_220.virt5())
    add_symbol(0x80059560, stage2_220.virt6())
    add_symbol(0x800597C4, stage2_220.virt7())
    add_symbol(0x800598E0, stage2_220.virt8())
    add_symbol(0x800598D0, stage2_220.virt9())
    add_symbol(0x800598D8, stage2_220.virt10())
    add_symbol(0x8005630C, stage2_220.virt11())
    add_symbol(0x80056400, stage2_220.virt12())
    add_symbol(0x80056184, stage2_220.virt13())
    add_symbol(0x80056248, stage2_220.virt14())
    add_symbol(0x80055CA4, stage2_220.virt15())
    add_symbol(0x80056918, stage2_220.virt16())
    add_symbol(0x800560EC, stage2_220.virt17())
    add_symbol(0x80056138, stage2_220.virt18())


    stage2_230 = Class("Stage2_230");
    add_symbol(0x80056b50, stage2_230.ctor())
    add_symbol(0x8003d340, stage2_230.vtable())
# 00000000
# 00000000
# 00000000
# 80057080
# 00000000
# 8005749C
# 00000000
# 800578A4
# 00000000
# 80002874
# 00000000
# 80002874
# 00000000
# 8005754C
# 00000000
# 80056BC4
# 00000000
# 80056C20
# 00000000
# 80002874
# 00000000
# 80056F98
# 00000000
# 80057554
# 00000000
# 80057560
# 00000000
# 800575A8
# 00000000
# 800575B4
# 00000000
# 80057958
# 00000000
# 80057C80
# 00000000
# 80057CB0

    stage2_240 = Class("Stage2_240")
    add_symbol(0x800580e0, stage2_240.ctor())
    add_symbol(0x8003d418, stage2_240.vtable())
# 00000000
# 00000000
# 00000000
# 80058588
# 00000000
# 8005656C
# 00000000
# 80056588
# 00000000
# 80058684
# 00000000
# 80059394
# 00000000
# 80058410
# 00000000
# 80059560
# 00000000
# 8005880C
# 00000000
# 80058AB8
# 00000000
# 800588C8
# 00000000
# 80058934
# 00000000
# 8005630C
# 00000000
# 80056400
# 00000000
# 80056184
# 00000000
# 80056248
# 00000000
# 80055CA4
# 00000000
# 80056918
# 00000000
# 800560EC
# 00000000
# 80056138
# 00000000
# 800585B4
# 00000000
# 80058164
# 00000000
# 800581F8
# 00000000
# 80058540
# 00000000
# 80058548

    stage2_250 = Class("Stage2_250")
    add_symbol(0x80058df0, stage2_250.ctor())
    add_symbol(0x8003d518, stage2_250.vtable())
# 00000000
# 00000000
# 00000000
# 80058E0C
# 00000000
# 80058E5C
# 00000000
# 80058EE4
# 00000000
# 00000000

    stage2_260 = Class("Stage2_260")
    add_symbol(0x80059290, stage2_260.ctor())
    add_symbol(0x8003d550, stage2_260.vtable()) # TODO: weird
# 00000000
# 00000000
# 00000000
# 800596FC
# 00000000
# 80059658
# 00000000
# 80059674
# 00000000
# 800592C8
# 00000000
# 80059394
# 00000000
# 8005945C
# 00000000
# 80059560
# 00000000
# 800597C4
# 00000000
# 800598E0
# 00000000
# 800598D0
# 00000000
# 800598D8
# 00000000
# 800597CC
# 00000000
# 80059800
# 00000000
# 80059834
# 00000000
# 80059850
# 00000000
# 8005986C
# 00000000
# 80059874
# 00000000
# 80059898
# 00000000
# 800598C8

    stage2_270 = Class("Stage2_270")
    add_symbol(0x8005b5e0, stage2_270.ctor())
    add_symbol(0x8003d718, stage2_270.vtable())
# 00000000
# 00000000
# 00000000
# 8005B8FC
# 00000000
# 8005B7F0
# 00000000
# 8005B680
# 00000000
# 8005BD18
# 00000000
# 80002874
# 00000000
# 80002874
# 00000000
# 80002874
# 00000000
# 80002874
# 00000000
# 80002874
# 00000000
# 8005CFD4
# 00000000
# 8005CEB4
# 00000000
# 8005CED8
# 00000000
# 8005CEEC
# 00000000
# 8005CF44
# 00000000
# 8005CF4C
# 00000000
# 8005CF5C
# 00000000
# 8005CF64
# 00000000
# 8005CF6C
# 00000000
# 8005CF80
# 00000000
# 8005CF98
# 00000000
# 8005CFA0
# 00000000
# 8005CFA8
# 00000000
# 80002874
# 00000000
# 80002874
# 00000000
# 8005CF2C
# 00000000
# 80002874
# 00000000
# 80002874
# 00000000
# 80002874
# 00000000
# 80002874
# 00000000
# 80002874
# 00000000
# 80002874
# 00000000
# 80002874
# 00000000
# 80002874
# 00000000
# 80002874
# 00000000
# 80002874
# 00000000
# 80002874
# 00000000
# 8005C96C
# 00000000
# 8005C974
# 00000000
# 8005C97C
# 00000000
# 8005C984
# 00000000
# 8005C98C
# 00000000
# 8005CBBC
# 00000000
# 8005CE20
# 00000000
# 80002874
# 00000000
# 80002874
# 00000000
# 8005CE4C
# 00000000
# 8005CE64
# 00000000
# 8005CE78
# 00000000
# 8005CE9C
# 00000000
# 8005CF34
# 00000000
# 8005CF3C
# 00000000
# 80002874
# 00000000
# 80002874
# 00000000
# 80002874
# 00000000
# 80002874
# 00000000
# 80002874
# 00000000
# 80002874
# 00000000
# 80002874
# 00000000
# 8005CF54
# 00000000
# 80002874
# 00000000
# 8005C964
# 00000000
# 80002874
# 00000000
# 80002874
# 00000000
# 80002874
# 00000000
# 80002874
# 00000000
# 80002874
# 00000000
# 80002874
# 00000000
# 8005C95C

    stage2_280 = Class("Stage2_280")
    add_symbol(0x8005d200, stage2_280.ctor())
    add_symbol(0x8003d948, stage2_280.vtable())
# 00000000
# 00000000
# 00000000
# 8005D384
# 00000000
# 8005D3EC
# 00000000
# 8005D458
# 00000000
# 8005D4A0
# 00000000
# 8005D500
# 00000000
# 8005D570
# 00000000
# 8005D578
# 00000000
# 8005D584
# 00000000
# 8005D21C
# 00000000
# 00000000

    stage2_290 = Class("Stage2_290")
    add_symbol(0x8005D5C0, stage2_290.ctor())
    add_symbol(0x8003d9a8, stage2_290.vtable())
# 00000000
# 00000000
# 00000000
# 8005D5C0
# 00000000
# 8004B4EC
# 00000000
# 8004B538
# 00000000
# 8004B554
# 00000000
# 8004B5A0
# 00000000
# 8004B5BC
# 00000000
# 8004B5C4
# 00000000
# 8005D774
# 00000000
# 8004B5D4
# 00000000
# 8004BB38
# 00000000
# 8004B838
# 00000000
# 8004BCB4
# 00000000
# 8004BCBC
# 00000000
# 8005D614
# 00000000
# 8005D730
# 00000000
# 8005D7A0

    stage2_300 = Class("Stage2_300") # TODO

    stage2_310 = Class("Stage2_310")
    add_symbol(0x8005F320, stage2_310.ctor())
    add_symbol(0x8003dc58, stage2_310.vtable())
# 00000000
# 00000000
# 00000000
# 8005F358
# 00000000
# 8005F3A0
# 00000000
# 8005F598
# 00000000
# 8005F4F8


    stage2_320 = Class("Stage2_320")
    add_symbol(0x80060080, stage2_320.ctor())
    add_symbol(0x8003ddd8, stage2_320.vtable())
# 00000000
# 00000000
# 00000000
# 800600A4
# 00000000
# 800600F4
# 00000000
# 80060228
# 00000000
# 800602A8
# 00000000
# 800603B8
# 00000000
# 800602E0
# 00000000
# 80060320
# 00000000
# 8006032C
# 00000000
# 8006033C
# 00000000
# 80060350
# 00000000
# 80060390
# 00000000
# 80060398
# 00000000
# 800603A0
# 00000000
# 800603A8
# 00000000
# 800603B0
# 00000000
# 00000000

    stage2_330 = Class("Stage2_330")
    add_symbol(0x80060400, stage2_330.ctor())
    add_symbol(0x8003e228, stage2_330.vtable())
00000000
00000000
00000000
800600A4
00000000
800600F4
00000000
80060228
00000000
800602A8
00000000
800603B8
00000000
800602E0
00000000
80060320
00000000
8006032C
00000000
8006033C
00000000
80060350
00000000
80060390
00000000
80060398
00000000
800603A0
00000000
800603A8
00000000
800603B0
00000000
00000000

    stage2_340 = Class("Stage2_340")
    add_symbol(0x80064A50, stage2_340.ctor())
    add_symbol(0x8003e2e0, stage2_340.vtable())
    00000000
00000000
00000000
80064A88
00000000
8004B4EC
00000000
8004B538
00000000
8004B554
00000000
8004B5A0
00000000
8004B5BC
00000000
8004B5C4
00000000
8004B5CC
00000000
8004B5D4
00000000
8004BB38
00000000
8004B838
00000000
8004BCB4
00000000
8004BCBC

    stage2_350 = Class("Stage2_350")

    stage2_360 = Class("Stage2_360")
    add_symbol(0x80064cf0, stage2_360.ctor())
    add_symbol(0x8003e440, stage2_360.vtable())
    00000000
00000000
00000000
80064D3C
00000000
80058E5C
00000000
80064F68
00000000
80064FD0
00000000
80065104
00000000
80064D90
00000000
00000000

    stage2_370 = Class("Stage2_370")
    add_symbol(0x80065570, stage2_370.ctor())
    add_symbol(0x8003e4a8, stage2_370.vtable())
    00000000
00000000
00000000
80058588
00000000
8005656C
00000000
80056588
00000000
80065FD4
00000000
80059394
00000000
800665C0
00000000
80059560
00000000
8005880C
00000000
80058AB8
00000000
800588C8
00000000
80058934
00000000
8005630C
00000000
80056400
00000000
80056184
00000000
80056248
00000000
80055CA4
00000000
80056918
00000000
800560EC
00000000
80056138
00000000
80066384
00000000
80058164
00000000
80065630
00000000
80066954
00000000
800656D8

    stage2_380 = Class("Stage2_380")

    stage2_390 = Class("Stage2_390")
    add_symbol(0x80067800, stage2_390.ctor())
    add_symbol(0x8003e700, stage2_390.vtable())
    00000000
00000000
00000000
80067824
00000000
80067874
00000000
800679C8

    stage2_400 = Class("Stage2_400")

    stage2_410 = Class("Stage2_410")
    stage2_420 = Class("Stage2_420")
    add_symbol(0x800683b0, stage2_420.ctor())
    add_symbol(0x8003e820, stage2_420.vtable())
    00000000
00000000
00000000
800683F0
00000000
80068700
00000000
8006876C
00000000
80002874
00000000
80068438
00000000
800685B4
00000000
80002874
00000000
80068C30
00000000
80068C38
00000000
80068C40
00000000
80068C48
00000000
80068C50
00000000
00000000

    stage2_430 = Class("Stage2_430")
    add_symbol(0x80068cf0, stage2_430.ctor())
    add_symbol(0x8003e8a0, stage2_430.vtable())
    00000000
00000000
00000000
800596FC
00000000
80059658
00000000
800690D8
00000000
800592C8
00000000
80059394
00000000
80068E5C
00000000
80059560
00000000
80069028
00000000
80069058
00000000
800598D0
00000000
800598D8
00000000
800597CC
00000000
80059800
00000000
80059834
00000000
80059850
00000000
8005986C
00000000
80059874
00000000
80059898
00000000
800598C8
00000000
80068D5C
00000000
80068E48

    stage2_440 = Class("Stage2_440")
    add_symbol(0x80069170, stage2_440.ctor())

    stage2_450 = Class("Stage2_450")
    add_symbol(0x80069290, stage2_450.ctor())
    add_symbol(0x80069314, stage2_450.dtor())
    add_symbol(0x8003e970, stage2_450.vtable())

    stage2_460 = Class("Stage2_460")
    add_symbol(0x800696c0, stage2_460.ctor())
    add_symbol(0x8003eb80, stage2_460.vtable())
    00000000
00000000
00000000
80069A00
00000000
80069B98
00000000
80069748
00000000
800698B0
00000000
80069FE0
00000000
80069D90
00000000
80069E14
00000000
80069E98
00000000
8006A138
00000000
8004A424
00000000
80069968

    stage2_470 = Class("Stage2_470")
    add_symbol(0x8006a660, stage2_470.ctor())
    add_symbol(0x8003ec00, stage2_470.vtable())
    00000000
00000000
00000000
8006AE88
00000000
8006AA48
00000000
8006AC00
00000000
8006AB3C
00000000
8006AD6C
00000000
8006B1EC
00000000
8006A71C
00000000
8006A768
00000000
8006A79C
00000000
8006A7D0
00000000
8006A904
00000000
8006B010
00000000
8006B124
00000000
8006B140
00000000
8006B15C
00000000
8006B178
00000000
8006B1B4
00000000
8006B1D0
00000000
8006B250

    stage2_480 = Class("N64Renderer")
    add_symbol(0x8006b5e0, stage2_480.ctor())
    add_symbol(0x8003ecb8, stage2_480.vtable())

    stage2_490 = Class("Stage2_490")
    add_symbol(0x8006b990, stage2_490.ctor())
    add_symbol(0x8003ed48, stage2_490.vtable())
    00000000
00000000
00000000
8006B9D4
00000000
80058E5C
00000000
8006BC28
00000000
8006BA1C
00000000
8006BB98
00000000
8006BCC8
00000000
8004CB9C
00000000
8004CBA4
00000000
8004C494
00000000
8006BDD4
    
    stage2_500 = Class("Stage2_500")
    add_symbol(0x8006be00, stage2_500.ctor())
    add_symbol(0x8003eda8, stage2_500.vtable())
    00000000
00000000
00000000
8004D0D4
00000000
8006BF2C
00000000
8006C0E4
00000000
8006C104
00000000
8006C448
00000000
8006C664
00000000
8006C7AC
00000000
8006BE44
00000000
8006BE8C
00000000
00000000

    stage2_510 = Class("Stage2_510")
    add_symbol(0x8006c850, stage2_510.ctor())
    add_symbol(0x8003ee18, stage2_510.vtable())
    00000000
00000000
00000000
8006C9A0
00000000
8006CA04
00000000
8006CA68
00000000
8006CB68
00000000
8004F360
00000000
8006C890
00000000
8006C8D8
00000000
8006D7EC

    stage2_520 = Class("Stage2_520")
    add_symbol(0x8006d830, stage2_520.ctor())
    add_symbol(0x8003ee68, stage2_520.vtable())
    00000000
00000000
00000000
8006D868
00000000
80058E5C
00000000
8006D974
00000000
8006D8B0
00000000
8006DA28
00000000
8006DAB0
00000000
800544F4
00000000
80054068
00000000
8006DA08
00000000
00000000

    stage2_530 = Class("Stage2_530")
    add_symbol(0x8006dae0, stage2_530.ctor())
    add_symbol(0x8003eee0, stage2_530.vtable())
    00000000
00000000
00000000
8006E048
00000000
8006DB20
00000000
8006DD74
00000000
8006DE14
00000000
800603B8
00000000
8006DE4C
00000000
8006DE9C
00000000
8006DEF4
00000000
8006DF04
00000000
8006DF4C
00000000
8006DF9C
00000000
8006DFF8
00000000
8006E000
00000000
8007A140
00000000
8007A2E4

    stage2_540 = Class("Stage2_540")
    stage2_550 = Class("Stage2_550")
    add_symbol(0x8006e0c0, stage2_550.ctor())
    add_symbol(0x8003ef68, stage2_550.vtable())
    00000000
00000000
00000000
8006E0F8
00000000
80058E5C
00000000
8006E28C
00000000
8006E210
00000000
8006E270
00000000
8006E140
00000000
8006E33C
00000000
800551BC
00000000
80055A24
00000000
80055B20
00000000
8006E324

    stage2_560 = Class("Stage2_560")
    add_symbol(0x8006e390, stage2_560.ctor())
    add_symbol(0x8003eff8, stage2_560.vtable())
    00000000
00000000
00000000
80057080
00000000
8005749C
00000000
800578A4
00000000
8006E6BC
00000000
8006E770
00000000
8006E824
00000000
8006E3D0
00000000
8006E418
00000000
8006E4C8
00000000
8006E648
00000000
80057554
00000000
80057560
00000000
800575A8
00000000
800575B4
00000000
80057958
00000000
80057C80
00000000
80057CB0
00000000
00000000

    stage2_570 = Class("Stage2_570")
    add_symbol(0x8006FFD0, stage2_570.ctor())
    add_symbol(0x8003f098, stage2_570.vtable())
    00000000
00000000
00000000
80070130
00000000
800701F8
00000000
80070274
00000000
8007031C
00000000
800703E8
00000000
80070470
00000000
80070478
00000000
80070484
00000000
8006FFEC
00000000
00000000

    stage2_580 = Class("RenderClass")
    add_symbol(0x800704c0, stage2_580.ctor())
    add_symbol(0x8003f190, stage2_580.vtable())

    stage2_590 = Class("Stage2_590");
    stage2_600 = Class("Stage2_600");
    stage2_610 = Class("Stage2_610")
    add_symbol(0x80078a00, stage2_610.ctor())
    add_symbol(0x8003f810, stage2_610.vtable())
     00000000
 00000000
 00000000
 80078F54
 00000000
 80078A40
 00000000
 80078CB8
 00000000
 80078C80
 00000000
 800603B8
 00000000
 80078D58
 00000000
 80078DA8
 00000000
 80078E00
 00000000
 80078E10
 00000000
 80078E58
 00000000
 80078EA8
 00000000
 80078F04
 00000000
 80078F0C
 00000000
 8007A140
 00000000
 8007A2E4

    stage2_620 = Class("Stage2_620")
    add_symbol(0x800792a0, stage2_620.ctor())
    add_symbol(0x8003f900, stage2_620.vtable())

    stage2_630 = Class("Stage2_630")
    add_symbol(0x80079a80, stage2_630.ctor())
    add_symbol(0x8003fbf8, stage2_630.vtable())
    00000000
00000000
00000000
8007A048
00000000
80079AC0
00000000
80079D34
00000000
80079DD4
00000000
800603B8
00000000
80079E0C
00000000
80079E5C
00000000
80079EB4
00000000
80079F18
00000000
80079F20
00000000
80079F70
00000000
80079FCC
00000000
8007A040
00000000
8007A140
00000000
8007A2E4
00000000
00000000

    stage2_640 = Class("Stage2_640")
    add_symbol(0x8007a070, stage2_640.ctor())
    add_symbol(0x8003fc88, stage2_640.vtable())
    00000000
00000000
00000000
8007A0B0
00000000
800600F4
00000000
80060228
00000000
8007A0F8
00000000
800603B8
00000000
800602E0
00000000
80060320
00000000
8006032C
00000000
8006033C
00000000
80060350
00000000
80060390
00000000
80060398
00000000
800603A0
00000000
8007A140
00000000
8007A2E4
00000000
00000000

    stage2_650 = Class("Stage2_650")
    add_symbol(0x8007a380, stage2_650.ctor())
    add_symbol(0x8003fd68, stage2_650.vtable())

    stage2_660 = Class("Stage2_660")
    add_symbol(0x8007b670, stage2_660.ctor())
    add_symbol(0x8003fe28, stage2_660.vtable())
    00000000
00000000
00000000
8007B6A8
00000000
8004B4EC
00000000
8004B538
00000000
8004B554
00000000
8004B5A0
00000000
8004B5BC
00000000
8004B5C4
00000000
8004B5CC
00000000
8004B5D4
00000000
8004BB38
00000000
8004B838
00000000
8004BCB4
00000000
8004BCBC

    stage2_670 = Class("Stage2_670") # TODO: complicated
    stage2_680 = Class("Stage2_680")
    stage2_690 = Class("Stage2_690")
    add_symbol(0x8007d430, stage2_690.ctor())
    add_symbol(0x80040250, stage2_690.vtable())
    00000000
00000000
00000000
8007D4B4
00000000
8007D8DC
00000000
8007DA0C
00000000
8007D46C
00000000
8007D5CC
00000000
8007D7A8
00000000
8000BBBC
00000000
8007DC70
00000000
8007DC68
00000000
8000B4E0
00000000
8007DC60
00000000
8007DC4C
00000000
8007D8A4
00000000
8007D850
00000000
8007DC40
00000000
8007DC34
00000000
8007DC28
00000000
8007DC1C
00000000
8007DC10
00000000
8007DC04
00000000
8000BBC8
00000000
8000BBD4
00000000
8007DA44
00000000
8007DA88
00000000
8007DAD8
00000000
8007DB80
00000000
00000000

    stage2_700 = Class("Stage2_700")
    add_symbol(0x8007dc80, stage2_700.ctor())
    add_symbol(0x80040330, stage2_700.vtable())
    00000000
00000000
00000000
8007DD84
00000000
8007DD8C
00000000
8007DD94
00000000
8007DDB4
00000000
80007834
00000000
8000783C
00000000
8007DCB8
00000000
80006624
00000000
80006858
00000000
80006928
00000000
80006CBC
00000000
800073F4
00000000
800075B0
00000000
8000771C
00000000
8007DEA0
00000000
8007DF68
00000000
00000000

    stage2_710 = Class("Stage2_710");
    stage2_720 = Class("Stage2_720");
    stage2_730 = Class("Stage2_730");
    stage2_740 = Class("Stage2_740");
    stage2_750 = Class("Stage2_750");

    stage2_760a = Class("Stage2_760")
    add_symbol(0x8007f160, stage2_760a.ctor())
    add_symbol(0x80040528, stage2_760a.vtable())
    00000000
00000000
00000000
8007F1C0
00000000
8007F770
00000000
8007F778
00000000
8007F780
00000000
8007F788
00000000
8007F844
00000000
8007F644
00000000
00000000

    stage2_770 = Class("Stage2_770")
    add_symbol(0x800803e0, stage2_770.ctor())
    add_symbol(0x800406f0, stage2_770.vtable())
    00000000
00000000
00000000
80080424
00000000
8008046C
00000000
800806B0
00000000
80080850
00000000
80080724
00000000
800807C4
00000000
800808F8

    stage2_780 = Class("Stage2_780")
    add_symbol(0x80080950, stage2_780.ctor())
    add_symbol(0x80040860, stage2_780.vtable())
    00000000
00000000
00000000
80080988
00000000
80080C00
00000000
80080CA8
00000000
80080CF4
00000000
80080DE4
00000000
80080EAC
00000000
80080EB8
00000000
80080F68
00000000
80080FF0

    stage2_790 = Class("Stage2_790") # TODO: multiple vtables
    add_symbol(0x80081060, stage2_790.ctor())
    add_symbol(0x800408d0, stage2_790.vtable())
    00000000
00000000
00000000
800811EC
00000000
800814F4
00000000
80081650
00000000
8008165C
00000000
80081674
00000000
80081718
00000000
800817DC
00000000
80081864
00000000
800819BC
00000000
80081A78
00000000
80081F50
00000000
800810F8

    stage2_800 = Class("Stage2_800")
    add_symbol(0x80081fc0, stage2_800.ctor())
    add_symbol(0x800409d0, stage2_800.vtable())
    00000000
00000000
00000000
800820C0
00000000
800821B4
00000000
80082200
00000000
8008220C
00000000
800822B0
00000000
80082330
00000000
8008239C
00000000
800824A4
00000000
80082000

    stage2_810 = Class("Stage2_810")
    add_symbol(0x800824f0, stage2_810.ctor())
    add_symbol(0x80040a30, stage2_810.vtable())
00000000
00000000
00000000
80082534
00000000
8008260C
00000000
80082650
00000000
8008266C
00000000
800826DC
00000000
8008273C
00000000
80082688

    # TODO vtable at 8003DC88
    return symbols
