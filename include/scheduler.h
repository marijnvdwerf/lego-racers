extern "C" {
#include <PR/sched.h>
}

class Renderer {
public:
    u8 unk_0[0x22];
    u16 flags; // 0x22
    u8 unk_24[0x8]; // 0x24

public:
    virtual void virt0();
    virtual void virt1();
    virtual void virt2();
    virtual void virt3();
    virtual void virt4();
    virtual void virt5(int);
    virtual void virt6();
    virtual void virt7();
    virtual void virt8();
    virtual void virt9();
    virtual void virt10();
    virtual void virt11();
    virtual void virt12();
    virtual void virt13(void*, int, int, int);
    virtual void virt14();
};

class ParentParentSchedulerOwner {
public:
    s32 width; // 0x0
    s32 height; // 0x4
    s32 depth; // 0x8
    s32 flags; // 0xC
    void* renderer_ptr; // 0xc
public:
    ParentParentSchedulerOwner();
    virtual int virt0() = 0;
    virtual ~ParentParentSchedulerOwner();
    virtual void virt2();
    virtual void virt3();
    virtual int virt4(int, int, int, int);
    virtual void virt5();
    virtual void virt6();
    virtual void virt7();
    virtual int virt8(int, int, int, int);

    bool func_8004C1B8();
    bool func_8004C1C8();
    bool func_8004C1D8();
    bool func_8004C1E8();
    bool func_8004C1F4();
    bool func_8004C200();
    bool func_8004C20C();
    bool func_8004C218();
    bool func_8004C224();
    bool func_8004C230();
    bool func_8004C23C();
    bool func_8004C248();
    bool func_8004C254();
    bool func_8004C260();
    bool func_8004C26C();
    bool func_8004C278();
    bool func_8004C284();
    bool func_8004C290();
    bool func_8004C29C();
};

class Unk18 {
public:
    u8 unk_0[0x44];
    Unk18* var_44; // 0x44
    u8 unk_48[0xE4]; // 0x48
public:
    virtual void virt0();
    virtual void virt1();
    virtual void virt2();
    virtual void virt3();
    virtual void virt4();
    virtual void virt5();
    virtual void virt6();
};

class ParentSchedulerOwner : public ParentParentSchedulerOwner {
public:
    Unk18* unk_18; // 0x18
    void* renderer2_ptr; // 0x1c

public:
    ParentSchedulerOwner();
    virtual int virt4(int, int, int, int);
    virtual void virt5();
    virtual void virt7();
    virtual int virt8(int, int, int, int);
    virtual int virt9() = 0;
    virtual int virt10();
    virtual int virt11();
    virtual int virt12();
    virtual int virt13();
    virtual int virt14();
    virtual int virt15();
    virtual int virt16();
    virtual int virt17();
    virtual int virt18();
    virtual int virt19();
    virtual int virt20();
    virtual int virt21();
    virtual int virt22();
    virtual int virt23();
    virtual int virt24();
    virtual int virt25();
    virtual int virt26();
    virtual int virt27();
    virtual int virt28();
    virtual int virt29();
    virtual int virt30();
    virtual int virt31();
    virtual int virt32();
    void* func_800471C0();
    void func_800471E4();

    void func_800470B4(Unk18*);
    void func_800470C4(Unk18* arg1);
};

class ParentParentRenderer {
public:
    u32 var_0; // 0x0
    u32 var_4; // 0x4
    u32 var_8; // 0x8
    u32 var_C; // 0xC
    u32 var_10; // 0x10

    u16 var_14; // 0x14
    u16 var_16; // 0x14
    void* var_18; // 0x18
    u32 var_1C; // 0x1C
    u16 var_20; // 0x20
    u16 var_22; // 0x22
    u8 unk_24[0x2]; // 0x24
    u16 var_26; // 0x26
    u16 var_28; // 0x28
    u8 unk_2A[0x2]; // 0x2A

    virtual ~ParentParentRenderer();
    virtual void virt1(u32*, u32*, u32);
    virtual void virt2();
    virtual void virt3();
    virtual void virt4();
    virtual void virt5();
    virtual void virt6();
    virtual void virt7();
    virtual void virt8();
    virtual void virt9();
    virtual void virt10();
    virtual void virt11();
    virtual void virt12();
};

class Foo123 {
public:
    u8 pad[0xC93C];
    u32 var_C93C;
};

class ParentRenderer : public ParentParentRenderer {
public:
    Foo123* var_30; // 0x30
    u8 unk_34[0x4]; // 0x34

public:
    ParentRenderer();
    virtual ~ParentRenderer();
    virtual void virt13(Foo123*, u16, u16, u32);
    virtual void virt14();
};

class N64Renderer : public ParentRenderer {
public:
    void* var_38;

public:
    N64Renderer();
    virtual ~N64Renderer();
    virtual void virt1(u32*, u32*, u32);
    virtual void virt5();
    virtual void virt12();
    virtual void virt13(Foo123*, u16, u16, u32);
    virtual void virt14();
    void func_8006B8F0(u32);
};

class Stage2_200 {
public:
    char pad[0x20];

    Stage2_200();
    ~Stage2_200();
    virtual void virt1();
};

class Stage2_660 {
public:
    char pad[0x34];

    Stage2_660();
    ~Stage2_660();
};

class Stage2_470 {
public:
    char pad[0x18];

    Stage2_470();
    ~Stage2_470();
};

class RenderClassParent {
public:
    u32 flags;
    u8 pad_4[0x4];
    void* var_8;
    u8 pad_C[0x120];

    RenderClassParent();
    virtual void virt1();
    virtual void virt2();
    virtual ~RenderClassParent();
    virtual void* virt4();
    virtual void virt5();
    virtual void virt6();
    virtual void virt7();
    virtual void virt8(void*);
    virtual void virt9();
};

class Anon_Stage2_200 : public Stage2_200 {
public:
    virtual void virt1();
};

typedef struct UnkStruct_800705FC {
    void* var_0;
    u8 pad_4[8];
    void* var_C;
    u8 pad_10[0xC];
} UnkStruct_800705FC; // 0x1C

class RenderClass : public RenderClassParent {
public:
    u32 var_130;
    s32 var_134;
    s32 var_138;
    u32 var_13C;
    u32 var_140;
    u32 var_144;
    u32 var_148;
    u32 var_14C;
    u32 var_150;
    u32 var_154;
    void* var_158;
    u32 var_15C;
    u8 pad_15C[0x1C];
    u32 var_17C;
    OSMesgQueue var_180;
    u32 var_198;
    OSMesg var_19C[8];
    f32 var_1BC[4][4];
    u32 var_1FC;
    u8 pad_200[0x4];
    Stage2_470 var_204[2];
    u8 pad_234[0xD4];
    u32 var_308;
    void* var_30C;
    Stage2_660 var_310;
    char pad_344[0x4];
    u8 var_348[0x30];
    Anon_Stage2_200 var_378;
    u8 pad_39C[4612]; // TODO: hex
    u32 var_15A0;
    u32 var_15A4;
    u32 var_15A8;
    UnkStruct_800705FC var_15AC;
    UnkStruct_800705FC var_15C8;
    u8 var_15E4[1024]; // TODO: hex
    u32 var_19E4;
    u32 var_19E8;
    u32 var_19EC;
    u32 var_19F0;
    f32 var_19F4;
    u32 var_19F8;
    u32 var_19FC;
    u8 var_1A00[56];
    u32 var_1A38;
    u8 pad_1A3C[0x4];
    u8 var_1A40[0x1C00];
    u8 pad_3640[0x10];
    u8 var_3650[0x9000];

    RenderClass();
    void reset(); // 800705fc
    virtual void virt1();
    virtual void virt2();
    virtual ~RenderClass();
    virtual void* virt4();
    virtual void virt5();
    virtual void virt6();
    virtual void virt7();
    virtual void virt8(void*);
    virtual void virt9();
    virtual int virt50(int, void*, int, void*);

    int func_80072FE0();
    void func_80071660(ParentSchedulerOwner& arg0, N64Renderer& arg1, int, int);
};

class Stage2_450 : public ParentSchedulerOwner {
public:
    OSSched scheduler; // 0x20
    N64Renderer renderer; // 0x2a8
    u8 unk_2e4[4]; // 0x2e4
    RenderClass render_class; // 0x2e8
    int unk_c938; // 0xc938
    int unk_c93c; // 0xc93c

public:
    Stage2_450();
    virtual int virt0();
    virtual ~Stage2_450();
    virtual int virt9();
    virtual void virt2();
    virtual void virt3();

    void updateViFeatures();
    void func_8006966C();
    int func_8006967C();
    OSSched* func_80069690();
    OSMesgQueue* func_80069698();
};

enum Stage2_450_flags {
    Stage2_450_flags_0 = 1 << 0, // 1
    Stage2_450_flags_1 = 1 << 1, // 2
    Stage2_450_flags_2 = 1 << 2, // 4
    Stage2_450_flags_3 = 1 << 3, // 8
    Stage2_450_flags_4 = 1 << 4, // 16
    Stage2_450_flags_5 = 1 << 5, // 32
    Stage2_450_flags_6 = 1 << 6, // 64
    Stage2_450_flags_7 = 1 << 7, // 128
    Stage2_450_flags_8 = 1 << 8, // 256
    Stage2_450_flags_9 = 1 << 9, // 512
    Stage2_450_flags_10 = 1 << 10, // 1024
    Stage2_450_flags_11 = 1 << 11, // 2048
    Stage2_450_flags_12 = 1 << 12, // 4096
    Stage2_450_flags_13 = 1 << 13, // 8192
    Stage2_450_flags_14 = 1 << 14, // 16384
    Stage2_450_flags_15 = 1 << 15, // 32768
    Stage2_450_flags_16 = 1 << 16, // 65536
    Stage2_450_flags_17 = 1 << 17, // 131072
    Stage2_450_flags_18 = 1 << 18, // 262144
    Stage2_450_flags_19 = 1 << 19, // 524288
    Stage2_450_flags_20 = 1 << 20, // 1048576

    Stage2_450_flags_60 = 0x60,
};
