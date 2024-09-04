#include "common.h"

Menu660::Menu660()
{
    init();
}

void Menu660::init()
{
    this->var_1e1c = 0;
    this->var_1e20 = 0;
    this->var_1e24 = 0;
    this->var_1e28 = 0;
    this->var_1e2c = 0;
    this->var_1e30 = 0;
    this->var_2234 = 0;
    memset(this->var_1b94, 0, sizeof(this->var_1b94));
    memset(this->var_1d4c, 0, sizeof(this->var_1d4c));
    memset(this->var_1dec, 0, sizeof(this->var_1dec));
}

Menu660::~Menu660()
{
    virt29();
}

int Menu660::virt35(UnkStruct* unk, int foo)
{
    int bvar;
    Bar* bar = unk->var_262C;

    if (this->var_4) {
        this->virt29();
    }

    this->var_1e20 = 0;
#ifdef REGION_NTSC
    if (osTvType == 0) {
#else
    if (osTvType == 1 || osTvType == 2) {
#endif
        this->var_1e1c = 4;
    } else {
        bvar = 0;

        if (unk->var_10->var_34 == 0 || bar->FUN_8007c844(0) == 0) {
            bvar = 1;
        }

        if (!bvar) {
            this->var_1e1c = 1;
        } else {
            this->var_1e1c = 2;
        }
    }

    return Menu490::virt35(unk, foo) != 0;
}

int Menu660::virt29()
{
    Menu490::virt29();
    init();

    return 1;
}

int Menu660::virt30(int arg0)
{
    this->var_1e20 += arg0;
    if (this->var_1e1c == 1 && this->var_1e20 > 0xFA) {
        func_menu_8010f400();
    }

    return 0;
}

void Menu660::virt14(void* arg1)
{
    if (arg1 == &this->var_12ac) {
        this->virt33();
        return;
    }

    if (this->var_1e28) {
        if (arg1 == &this->var_159C) {
            func_menu_8010FF04();
            func_menu_80115124(this->var_284);
        } else if (arg1 == &this->var_188C) {
            func_menu_80115124(this->var_284);
        } else if (arg1 == &this->var_fbc) {
            func_menu_8010FCF4();
        } else if (arg1 == &this->var_b84) {
            if (this->var_1e2c + 1 < this->var_1e28) {
                this->var_1e2c++;
                if (this->var_1e2c >= (this->var_1e30 + 5)) {
                    this->var_1e30 = this->var_1e2c - 4;
                }
            }
        } else if (arg1 == &this->var_da0) {
            if (this->var_1e2c) {
                this->var_1e2c--;
                if (this->var_1e2c < this->var_1e30) {
                    this->var_1e30 = this->var_1e2c;
                }
            }
        }

        func_menu_8010F8E0();
    }
}

class Unk1 {
public:
    u8 pad_0[0x4614];
    u32 var_4614;
    u8 pad_4618[0x14];
    u32 var_462c;
};

void Menu660::func_menu_8010f400()
{
    Unk1* ptr = (Unk1*)this->var_354;
    if (ptr->var_4614 & 0x8000) {
        this->var_1e24 = ptr->var_462c;
        if (func_menu_8010F7A8()) {
            this->var_1e1c = 3;
            this->var_1e20 = 0;
            this->virt19();
            func_menu_8010F8E0();
            return;
        }
    }

    virt33();
}

void Menu660::virt19()
{
    u32 var_s0;

    switch (this->var_1e1c) {
    case 1:
        break;
    case 2:
        func_menu_80119D6C(this, &this->var_368, 0x52, 0x52);
        func_menu_80119D6C(this, &this->var_3C4, 0x5B, 0x5B);
        func_menu_80119D6C(this, &this->var_420, 0x5C, 0x5C);
        func_menu_80119E78(this, &this->var_47C, 0x132, 0x40, 0x7D);
        break;
    case 3:
        func_menu_80119D6C(this, &this->var_368, 0x52, 0x52);
        func_menu_80119D6C(this, &this->var_3C4, 0x5B, 0x5B);
        func_menu_80119D6C(this, &this->var_420, 0x5C, 0x5C);
        func_menu_8011A1C0(this, &this->var_da0, 0x133, 0x135);
        func_menu_8011A1C0(this, &this->var_b84, 0x134, 0x136);

        for (var_s0 = 0; var_s0 < 5; var_s0++) {
            func_menu_80119E78(this, &this->var_4F4[var_s0], (var_s0 + 0x138), 0x40, 0x7E);
            func_menu_80119E78(this, &this->var_74C[var_s0], (var_s0 + 0x13D), 0x40, 0x7F);
        }
        func_menu_80119E78(this, &this->var_0x9a4, 0x142, 0x40, 0x82);
        func_menu_80119E78(this, &this->var_0xa1c, 0x143, 0x40, 0x83);
        func_menu_80119E78(this, &this->var_0xa94, 0x144, 0x40, 0x7F);
        func_menu_80119E78(this, &this->field_0xb0c, 0x150, 0x40, 0x91);
        func_menu_80100A5C(this, &this->var_fbc, 0x137, 0x4B, 0x80);
        func_menu_80100A5C(this, &this->var_12ac, 0x49, 0x4F, 0x72);
        if (!this->var_1e28) {
            func_menu_8012341C(&this->var_fbc, 5);
            func_menu_801234FC(&this->var_12ac, 0);
        } else {
            func_menu_801234FC(&this->var_b84, 0);
        }
        break;
    case 4:
        func_menu_80119D6C(this, &this->var_368, 0x52, 0x52);
        func_menu_80119D6C(this, &this->var_3C4, 0x5B, 0x5B);
        func_menu_80119D6C(this, &this->var_420, 0x5C, 0x5C);
        func_menu_80119E78(this, &this->var_47C, 0x132, 0x40, 0xC0);
        break;
    }
}

void Menu660::virt33()
{
    func_menu_801006D0((u32*)(((u32)this->var_354) + 4));

    if (this->var_1e1c != 2) {
        switch (this->var_1e1c) {
        case 1:
        case 3:
            func_menu_80100698((u32*)(((u32)this->var_354) + 4), 0x2B);
            break;
        case 2:
            break;
        }
    }
}

class Unk4 {
public:
    u32 var_0;
    virtual void virt0();
    virtual int bar(void);
    virtual void virt2();
    virtual void virt3();
    virtual void virt4();
    virtual void virt5();
    virtual int fizz(void*, int);
    virtual void virt7(int);
    virtual int virt8(int, void*);
    virtual int foo();
};

class Unk3 {
public:
    virtual void virt0();
    virtual void virt1();
    virtual Unk4* virt2(int);
    virtual void virt3();
    virtual void virt4();
};

class Unk5 {
public:
    u8 pad_0[0xBF4];
};

class Unk2 : public Unk5, public Unk3 {
public:
    virtual Unk4* virt2(int);
};

s32 Menu660::func_menu_8010F7A8()
{
    // u32 i;
    int i2;
    Unk4* unk4;
    Unk2* sub = (Unk2*)this->var_354;

    unk4 = sub->virt2(this->var_1e24);

    if (!unk4->foo()) {
        return 0;
    }

    if (unk4->var_0 && unk4->bar()) {
        return 0;
    }

    unk4->fizz(&this->var_1e28, 0);
    u32 i = 0;
    int j = 0;
    while (j < var_1e28 && i < 16) {
        if (!unk4->virt8(i, &this->var_1e34[j])) {
            j++;
        }
        i++;
    }

    unk4->virt7((int)&this->var_2234);
    return 1;
}

INCLUDE_RODATA("nonmatchings/menu/660", D_menu_800CF4F0);

INCLUDE_ASM("nonmatchings/menu/660", func_menu_8010F8E0__7Menu660);

INCLUDE_ASM("nonmatchings/menu/660", func_menu_8010FCF4__7Menu660);

INCLUDE_ASM("nonmatchings/menu/660", func_menu_8010FD74);

INCLUDE_ASM("nonmatchings/menu/660", func_menu_8010FE3C);

INCLUDE_ASM("nonmatchings/menu/660", func_menu_8010FF04__7Menu660);

INCLUDE_RODATA("nonmatchings/menu/660", D_menu_800CF504);
