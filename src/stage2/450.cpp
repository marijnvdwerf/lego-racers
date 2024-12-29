#include "common.h"
#include "scheduler.h"

const s32 D_8003EA80[] = {
    0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
    0x09, 0x08, 0x0B, 0x0A, 0x0D, 0x0C,
    -1, -1, // First separator
    0x0E, 0x0F, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15,
    0x17, 0x16, 0x19, 0x18, 0x1B, 0x1A,
    -1, -1, // Second separator
    0x1C, 0x1D, 0x1E, 0x1F, 0x20, 0x21, 0x22, 0x23,
    0x25, 0x24, 0x27, 0x26, 0x29, 0x28,
    -1, -1 // Third separator
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

    if (this->flags & Stage2_450_flags_2) {
        var_s1 |= 1;
    }

    if (this->flags & Stage2_450_flags_3) {
        var_s1 |= 2;
    }

    if (this->depth == 0x20) {
        var_s1 |= 4;
    }

    if (this->height > 240U) {
        var_s1 |= 8;
    }

    if (this->flags & Stage2_450_flags_4) {
        var_s1 |= 16;
    } else if (this->flags & Stage2_450_flags_20) {
        var_s1 |= 32;
    }

    s32 vimode = D_8003EA80[var_s1];
    OSViMode* vi_mode = &osViModeTable[vimode];

    if (this->unk_c938 == 0) {
        osCreateScheduler(&this->scheduler, &D_80085E20, 0x13, vimode, 1);
        this->unk_c938 = 1;
    } else {
        osViSetMode(vi_mode);
    }

    osViBlack(1U);
    this->unk_c93c = 1;

    if (var_s1 & 8) {
        if (this->width != 640) {
            vi_mode->comRegs.width = this->width;
            vi_mode->comRegs.xScale = (s32)((f32)(this->width << 0xA) / 640.0f);
            vi_mode->fldRegs[1].origin = vi_mode->fldRegs[0].origin = this->width * 2;
        }
        if (this->height != 480) {
            vi_mode->fldRegs[1].yScale = vi_mode->fldRegs[0].yScale = (s32)((f32)(this->height << 0xA) / 480.0f);
        }
    } else {
        vi_mode->comRegs.width = this->width;
        vi_mode->comRegs.xScale = (s32)((f32)(this->width << 0xA) / 640.0f);
        vi_mode->fldRegs[1].origin = vi_mode->fldRegs[0].origin = this->width * 2;
    }

    this->updateViFeatures();

    return 0;
}

int Stage2_450::virt9()
{
    RenderClass* rc = &this->render_class;

    if ((this->render_class.flags & 1) == 0) {
        rc->func_80071660(*this, this->renderer, this->flags & Stage2_450_flags_12, 576);
        return 0;
    }

    return this->render_class.func_80072FE0();
}

// 0x800695B4
void Stage2_450::virt2()
{
    this->flags |= Stage2_450_flags_7;
    this->updateViFeatures();
}

// 0x800695D8
void Stage2_450::virt3()
{
    this->flags &= ~Stage2_450_flags_7;
    this->updateViFeatures();
}

void Stage2_450::updateViFeatures()
{
    u32 features = 0;

    if (this->flags & Stage2_450_flags_60) {
        features |= OS_VI_GAMMA_ON;
    } else {
        features |= OS_VI_GAMMA_OFF;
    }

    if (this->flags & Stage2_450_flags_6) {
        features |= OS_VI_GAMMA_DITHER_ON;
    } else {
        features |= OS_VI_GAMMA_DITHER_OFF;
    }

    if (this->flags & Stage2_450_flags_7) {
        features |= OS_VI_DITHER_FILTER_ON;
    } else {
        features |= OS_VI_DITHER_FILTER_OFF;
    }

    if (this->flags & Stage2_450_flags_8) {
        features |= OS_VI_DIVOT_ON;
    } else {
        features |= OS_VI_DIVOT_OFF;
    }

    osViSetSpecialFeatures(features);
}

// 0x8006966C
void Stage2_450::func_8006966C()
{
    this->unk_c93c = 0;
}

int Stage2_450::func_8006967C()
{
    return this->unk_c93c;
}

OSSched* Stage2_450::func_80069690()
{
    return &this->scheduler;
}

OSMesgQueue* Stage2_450::func_80069698()
{
    return osScGetCmdQ(&this->scheduler);
}
