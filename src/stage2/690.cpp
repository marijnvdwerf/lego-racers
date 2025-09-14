#include "common.h"
#include "n64_input.h"

Stage2_690::Stage2_690()
{
    this->virt0();
}

Stage2_690::~Stage2_690()
{
    this->virt4();
}

void Stage2_690::virt0()
{
    Main_110::virt0();
    this->var_E4 = NULL;
    memset(&this->var_9C, 0, 0x6);
    memset(this->var_A8, 0, 0x4);
    memset(this->var_AC, 0, 0x8);
    this->var_44 = 0xE;
    this->var_48 = 0x2;
    this->var_34 = 0x3;
    this->virt10(0xB);
    this->var_BC = 0;
    this->var_B8 = 0;
    this->var_54 = 4;
    this->var_50 = 2;
    memset(&this->pfs, 0, sizeof(this->pfs));
    this->var_C0 = 0;
}

int Stage2_690::func_8007D56C(Stage2_680* a1, int a2)
{
    this->virt4();
    this->var_E4 = a1;
    this->var_88 = a2;
    this->var_14 = 1;

    return 1;
}

int Stage2_690::virt4()
{
    if (!this->var_14) {
        return 1;
    }

    return Main_110::virt4();
}

#if 1
INCLUDE_ASM("nonmatchings/stage2/690", func_8007D5F4__10Stage2_690Sc);
#else
f32 Stage2_690::func_8007D5F4(s8 a1)
{
    s32 var_a1;
    f32 var_f0;

    // Calculate absolute difference between input and deadzone
    // If input is within deadzone threshold, return 0
    // Otherwise return distance from deadzone boundary
    // s32 deadzone = this->var_B4;
    if (a1 > this->var_B4) {
        var_a1 = a1 - this->var_B4; // Input above deadzone, subtract threshold
    } else {
        var_a1 = a1 + this->var_B4; // Input below deadzone, add threshold
        if (a1 >= -this->var_B4) {
            var_a1 = 0; // Within deadzone, clamp to 0
        }
    }

    var_f0 = var_a1 / (75.0f - this->var_B4);

    // Clamp the result between -1 and 1
    if (var_f0 > 1.0f) {
        var_f0 = 1.0f;
    } else if (var_f0 < -1.0f) {
        var_f0 = -1.0f;
    }

    return var_f0;
}
#endif

extern "C" void func_8000B584(void*, f32, f32, int);

void Stage2_690::func_8007D680()
{
    func_8000B584(this, this->func_8007D5F4(this->var_A4->var_2), this->var_AC[0], 0x40000000);
    func_8000B584(this, this->func_8007D5F4(this->var_A4->var_3), this->var_AC[1], 0x40000002);
}

void Stage2_690::func_8007D6EC()
{
    if (!this->var_8C) {
        return;
    }

    if (this->var_A4->var_0 != this->var_9C.var_0) {
        for (s32 i = 0, bit = 1; i < 0x10; i++, bit <<= 1) {
            if ((this->var_A4->var_0 & bit) != (this->var_9C.var_0 & bit)) {
                this->virt1(i | 0x30000000, !!(this->var_A4->var_0 & bit), 1);
            }
        }
    }

    if (this->var_20 != 0) {
        this->func_8007D680();
    }
}

int Stage2_690::virt5(int a1)
{
    if (this->var_A4->var_4) {
        int foo = (this->var_A4->var_4 & 8);
        return !!foo;
    }

    this->var_A4->var_3 = -this->var_A4->var_3;
    this->func_8007D6EC();
    this->var_AC[0] = this->func_8007D5F4(this->var_A4->var_2);
    this->var_AC[1] = this->func_8007D5F4(this->var_A4->var_3);

    this->var_9C = *this->var_A4;

    Main_110::virt5(a1);

    return 0;
}

u8 Stage2_690::virt13(int a1)
{
    switch (a1 & 0xF0000000) {
        case 0x30000000:
            return (this->var_9C.var_0 & (1 << (a1 & 0xFFFF)));
        case 0x40000000:
            return this->var_A8[a1 & 0xFFFF];
    }

    return 0;
}

f32 Stage2_690::virt12(int a1)
{
    int foo = 1;

    for (int i = 0; i < 2; i++, foo <<= 1) {
        if (a1 == foo) {
            return this->var_AC[i];
        }
    }

    return 0.0f;
}

#if 1
INCLUDE_ASM("nonmatchings/stage2/690", virt1__10Stage2_690iSci); // func_8007D5F4__10Stage2_690Sc
#else
void Stage2_690::virt1(int arg1, s8 arg2, int arg3)
{
    int mask = arg1 & 0xF0000000;
    int index = arg1 & 0xFFFF;
    int bit = 1 << index;

    switch (mask) {
        case 0x30000000:
            if (arg2) {
                this->var_9C.var_0 |= bit;
            } else {
                this->var_9C.var_0 &= ~bit;
            }
            mask |= this->var_28[index];
            break;

        case 0x40000000:
            this->var_A8[index] = arg2;
            mask |= this->var_2C[index];
            break;
    }

    if (arg3 && this->var_8C) {
        if (arg2) {
            this->var_8C->virt0(this, mask, this->var_30);
        } else {
            this->var_8C->virt1(this, mask, this->var_30);
        }
    }

    Main_110::virt1(arg1, arg2, arg3);
}
#endif

void Stage2_690::virt2(int arg1, f32 arg2)
{
    int foo = 1;

    if (!this->var_14) {
        return;
    }

    for (int i = 0; i < 7; i++, foo = foo << 1) {
        if (arg1 == foo) {
            this->var_AC[i] = arg2;
        }
    }
}

int Stage2_690::virt22()
{
    if (this->var_E4 == NULL) {
        return 1;
    }

    return this->func_8007DB28(this->var_E4->func_8007CC04(&this->pfs, this->var_88));
}

int Stage2_690::virt23()
{
    if (this->var_E4 == NULL && this->var_C0 != 0) {
        return 1;
    }

    return this->func_8007DB28(this->var_E4->func_8007CC68(&this->pfs));
}

int Stage2_690::virt24()
{
    if (this->var_E4 == NULL && this->var_C0 != 0) {
        return 1;
    }

    return this->func_8007DB28(this->var_E4->func_8007CCC8(&this->pfs));
}

int Stage2_690::func_8007DB28(int arg1)
{
    switch (arg1) {
        case 0:
            this->var_C0 = 1;
            return 0;
        case 1:
            this->var_C0 = 0;
            return 1;
        case 4:
            this->var_C0 = 0;
            return 3;
        default:
            this->var_C0 = 0;
            return 2;
    }
}

int Stage2_690::virt25()
{
    if (this->var_E4 == NULL && this->var_C0 != 0) {
        return 1;
    }

    this->var_E4->func_8007CC04(&this->pfs, this->var_88);

    return this->func_8007DB28(this->var_E4->func_8007CD28(&this->pfs));
}

int Stage2_690::func_8007DBE8()
{
    return this->var_C0;
}

OSPfs* Stage2_690::func_8007DBF4()
{
    return &this->pfs;
}

void Stage2_690::func_8007DBFC(Stage2_690_sub* a1)
{
    this->var_A4 = a1;
}

int Stage2_690::virt19()
{
    return this->var_BC;
}

int Stage2_690::virt18()
{
    return this->var_B8;
}

int Stage2_690::virt17()
{
    this->var_BC = 0;
    return 1;
}

void Stage2_690::virt16()
{
    // TODO: potentially return 1
    this->var_BC = 1;
}

int Stage2_690::virt15()
{
    this->var_B8 = 0;
    return 1;
}

void Stage2_690::virt14()
{
    // TODO: potentially return 1
    this->var_B8 = 1;
}

f32 Stage2_690::virt11(int arg1)
{
    return this->var_AC[arg1];
}

void Stage2_690::virt10(int a1)
{
    this->var_B4 = a1;
}

int Stage2_690::virt8()
{
    return 2;
}

int Stage2_690::virt7()
{
    return 0x10;
}
