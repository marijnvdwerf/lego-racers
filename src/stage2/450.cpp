#include "common.h"
extern "C" {
#include <PR/sched.h>
}

class ParentParentSchedulerOwner {
    public:
    s32 width; // 0x0
    s32 height; // 0x4
    s32 depth; // 0x8
    s32 flags; // 0xC
    void *renderer_ptr; // 0xc
    public:
    ParentParentSchedulerOwner();
    virtual int virt0(); 
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
    int unk_18;//0x18
    void* renderer2_ptr; // 0x1c
    
    public:
    ParentSchedulerOwner();
    virtual ~ParentSchedulerOwner();
    virtual void virt4();
    virtual void virt5();
    virtual void virt7();
    virtual void virt8();
    virtual int virt9()=0;
    virtual void virt10();
    virtual void virt11();
    virtual void virt12();
    virtual void virt13();
    virtual void virt14();
    virtual void virt15();
    virtual void virt16();
    virtual void virt17();
    virtual void virt18();
    virtual void virt19();
    virtual void virt20();
    virtual void virt21();
    virtual void virt22();
    virtual void virt23();
    virtual void virt24();
    virtual void virt25(); 
    virtual void virt26();
    virtual void virt27();
    virtual void virt28();
    virtual void virt29();
    virtual void virt30();
    virtual void virt31();
    virtual void virt32();
}; 

class N64Renderer {
public:
    u8 unk_0[0x3C];
    public:
    N64Renderer();
    ~N64Renderer();
};


class RenderClass{
    public:
    u32 flags; // 0x0
    u8 unk_0[0xc64C];

    public:
    RenderClass();
    ~RenderClass();

    int func_80072FE0();
    void func_80071660(ParentSchedulerOwner &arg0, N64Renderer &arg1, int, int);     
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

const s32 D_8003EA80[] = { 
    0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
    0x09, 0x08, 0x0B, 0x0A, 0x0D, 0x0C, 
    -1, -1,  // First separator
    0x0E, 0x0F, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15,
    0x17, 0x16, 0x19, 0x18, 0x1B, 0x1A,
    -1, -1,  // Second separator
    0x1C, 0x1D, 0x1E, 0x1F, 0x20, 0x21, 0x22, 0x23,
    0x25, 0x24, 0x27, 0x26, 0x29, 0x28,
    -1, -1   // Third separator
};


extern s32 D_80085E20[0x30]; // scheduler stack

Stage2_450::Stage2_450()
{
    memset(&scheduler, 0, sizeof(OSSched));
    this->renderer_ptr = &renderer;
    this->renderer2_ptr = &render_class;
    this->unk_c938 = 0;
    this->unk_c93c = 0;
}

Stage2_450::~Stage2_450()
{
    this->virt5();
}

// 0x80069374
int Stage2_450::virt0() 
{
s32 var_s1 = 0;

    if(this->flags & Stage2_450_flags_2) {
        var_s1 |= 1;
    }

    if(this->flags & Stage2_450_flags_3) {
        var_s1 |= 2;
    }

    if(this->depth == 0x20) {
        var_s1 |= 4;
    }

    if(this->height > 240U) {  
        var_s1 |= 8;
    }

    if(this->flags & Stage2_450_flags_4) {
        var_s1 |= 16;
    }else if(this->flags & Stage2_450_flags_20) {
        var_s1 |= 32;
    }

    s32 vimode = D_8003EA80[var_s1];
    OSViMode *vi_mode = &osViModeTable[vimode];

    if(this->unk_c938 == 0) {
        osCreateScheduler(&this->scheduler, &D_80085E20, 0x13, vimode, 1);
        this->unk_c938 = 1;
    } else {
        osViSetMode(vi_mode); 
    }

    osViBlack(1U);
    this->unk_c93c = 1;

    if(var_s1 & 8) {
        if(this->width != 640) {
            vi_mode->comRegs.width = this->width;
            vi_mode->comRegs.xScale = (s32) ((f32) (this->width << 0xA) / 640.0f);
            vi_mode->fldRegs[1].origin = vi_mode->fldRegs[0].origin = this->width * 2;
        }
        if(this->height != 480) {
            vi_mode->fldRegs[1].yScale =  vi_mode->fldRegs[0].yScale = (s32) ((f32) (this->height << 0xA) / 480.0f); 
        } 
    } else {
        vi_mode->comRegs.width = this->width;
        vi_mode->comRegs.xScale = (s32) ((f32) (this->width << 0xA) / 640.0f);
        vi_mode->fldRegs[1].origin = vi_mode->fldRegs[0].origin = this->width * 2;
    }

    this->updateViFeatures();

    return 0;
}

int Stage2_450::virt9() {
    RenderClass* rc =&this->render_class;

    if((this->render_class.flags & 1) == 0) {
        rc->func_80071660(*this, this->renderer, this->flags & Stage2_450_flags_12, 576);
        return 0;
    } 
    
    return this->render_class.func_80072FE0();
}

// 0x800695B4
void Stage2_450::virt2() {
    this->flags |= Stage2_450_flags_7;
   this->updateViFeatures();
}

// 0x800695D8
void Stage2_450::virt3() {
    this->flags &= ~Stage2_450_flags_7;
   this->updateViFeatures();
}
 
void Stage2_450::updateViFeatures() {
    u32 features = 0;

    if(this->flags & Stage2_450_flags_60) {
        features |= OS_VI_GAMMA_ON;
    } else {
        features |= OS_VI_GAMMA_OFF;
    }

    if(this->flags & Stage2_450_flags_6) {
        features |= OS_VI_GAMMA_DITHER_ON;
    } else {
        features |= OS_VI_GAMMA_DITHER_OFF;
    }

    if(this->flags & Stage2_450_flags_7) {
        features |= OS_VI_DITHER_FILTER_ON;
    } else {
        features |= OS_VI_DITHER_FILTER_OFF;
    }

    if(this->flags & Stage2_450_flags_8) {
        features |= OS_VI_DIVOT_ON;
    } else {
        features |= OS_VI_DIVOT_OFF;
    }

    osViSetSpecialFeatures(features);
}

// 0x8006966C
void Stage2_450::func_8006966C() {
    this->unk_c93c = 0;
}

int Stage2_450::func_8006967C() {
    return this->unk_c93c;
}

OSSched* Stage2_450::func_80069690() {
    return &this->scheduler;
}

OSMesgQueue* Stage2_450::func_80069698() {
    return osScGetCmdQ(&this->scheduler);
}
