extern "C" {
#include <PR/sched.h>
}

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
    virtual void virt4();
    virtual void virt5();
    virtual void virt6();
    virtual void virt7();
    virtual void virt8();
};

class ParentSchedulerOwner : public ParentParentSchedulerOwner {
public:
    int unk_18; // 0x18
    void* renderer2_ptr; // 0x1c

public:
    ParentSchedulerOwner();
    virtual void virt4();
    virtual void virt5();
    virtual void virt7();
    virtual void virt8();
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
    ~ParentSchedulerOwner();
};

class N64Renderer {
public:
    u8 unk_0[0x3C];

public:
    N64Renderer();
    ~N64Renderer();
};

class RenderClass {
public:
    u32 flags; // 0x0
    u8 unk_0[0xc64C];

public:
    RenderClass();
    ~RenderClass();

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
