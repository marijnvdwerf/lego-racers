#include "common.h"
#include "libmus.h"
#include "n64_audio.h"

extern f32 D_80087850[];

Stage2_800::Stage2_800()
{
    this->var_10 = 0x80;
    this->var_14 = 0x80;
    this->var_4 = NULL;
    this->var_8 = NULL;
    this->var_C = 0;
    this->var_18 = 0.0f;
    this->var_1C = -1;
    this->var_20 = 0;
    this->var_24 = 0;
}

Stage2_800::~Stage2_800()
{
    this->func_80082078();
}

void Stage2_800::func_80082050(int arg1)
{
    this->var_C = 1;
    this->var_10 = 0x80;
    this->var_14 = 0x80;
    this->var_20 = arg1;
    this->var_18 = 0;
    this->var_1C = -1;
}

void Stage2_800::func_80082078()
{
    if (this->var_C & 1) {
        this->virt1();
        this->var_C = 0;
    }
}

#if 1
INCLUDE_ASM("nonmatchings/stage2/800", virt0__10Stage2_800i);
#else
void Stage2_800::virt0(int arg1)
{
    if ((this->var_C & 0xA) != 2) {
        MusFxBankSetSingle(this->var_4->var_1B20);
        MusPtrBankSetSingle(this->var_4->var_1B18);
        this->var_24 = MusStartEffect2(this->var_20, this->var_10, this->var_14, 0, this->var_1C);
        MusHandleSetFreqOffset(this->var_24, this->var_18);
        MusHandleSetVolume(this->var_24, (int)(this->var_10 * this->var_4->virt9()->var_C));
        MusHandleSetPan(this->var_24, this->var_14);

        this->var_C &= ~8;
        this->var_C |= 2;
        if (arg1) {
            this->var_C |= 6;
        }
    }
}
#endif

void Stage2_800::virt1()
{
    if (this->var_C & 2) {
        MusHandleStop(this->var_24, 0);
        this->var_C &= ~(4 | 2);
    }
}

int Stage2_800::virt2()
{
    return this->var_C & 2;
}

void Stage2_800::virt3(f32 arg1)
{
    this->var_10 = (int)(arg1 * 128.0f);

    if (this->var_10 < 0) {
        this->var_10 = 0;
    }
    if (this->var_10 >= 0x101) {
        this->var_10 = 0x100;
    }

    if (this->var_C & 2) {
        MusHandleSetVolume(this->var_24, (int)(this->var_10 * this->var_4->virt9()->var_C));
    }
}

void Stage2_800::virt4(f32 arg1)
{
    f32 value = arg1;
    if (this->var_4->var_8->var_0 & 4) {
        value = 0.0f;
    }

    this->var_14 = (int)(value * 128.0f) + 0x80;

    if (this->var_14 < 0) {
        this->var_14 = 0;
    }
    if (this->var_14 >= 0x101) {
        this->var_14 = 0x100;
    }

    MusHandleSetPan(this->var_24, this->var_14);
}

void Stage2_800::virt5(f32 arg1)
{
    int value = (int)(arg1 * 1024.0f);
    if (value >= 0x800U) {
        value = 0x7FF;
    }

    this->var_18 = D_80087850[value];
    if (this->var_C & 2) {
        MusHandleSetFreqOffset(this->var_24, this->var_18);
    }
}

void Stage2_800::virt6(int arg1)
{
    this->var_1C = arg1;
}

void Stage2_800::func_800823A4()
{
    if ((this->var_C & 2) && (MusHandleAsk(this->var_24) <= 0)) {
        MusHandleStop(this->var_24, 0);
        this->var_C &= ~(4 | 2);
    }
}

void Stage2_800::func_80082404()
{
    if (!(this->var_C & 4)) {
        this->virt1();
    } else {
        MusHandleStop(this->var_24, 0);
        this->var_C |= 8;
    }
}

void Stage2_800::func_80082468()
{
    if (this->var_C & 4) {
        this->virt0(1);
    }
}

int Stage2_800::virt7()
{
    return this->var_4;
}

int Stage2_800::func_800824B0()
{
    return this->var_4;
}

int Stage2_800::func_800824C8()
{
    return this->var_C & 1;
}

void Stage2_800::func_800824C8(int arg1)
{
    this->var_4 = arg1;
}

void Stage2_800::func_800824D0(int arg1)
{
    this->var_8 = arg1;
}

int Stage2_800::func_800824D8()
{
    return this->var_8;
}

#if 1
__asm__(".section .rdata\n.word 0\n.section .text");
INCLUDE_RODATA("nonmatchings/stage2/800", _vt.10Stage2_800);
#endif
