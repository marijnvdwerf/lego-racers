#include "common.h"

class Stage2_760 {
public:
    f32 var_0;
    f32 var_4;
    f32 var_8;
    f32 var_C;
    f32 var_10;
    f32 var_14;
    f32 var_18;
    f32 var_1C;
    f32 var_20;
    f32 var_24;
    f32 var_28;
    f32 var_2C;
    f32 var_30;

    Stage2_760();
    virtual ~Stage2_760(); // 0
    virtual void virt1(int);
    virtual void virt2();
    virtual void virt3();
    virtual u32 virt4();
    virtual void virt5();
    virtual void virt6(void*);

}; // size: 0x38

class Stage2_800 {
public:
    u8 var_0[1];
    u32 var_4;
    u8 var_8[4];
    u32 var_C;

    Stage2_800();
    virtual void virt0(int);
    virtual void virt1();
    virtual void virt2();
    virtual void virt3(f32);
    virtual void virt4(f32);
    virtual void virt5(f32);
    virtual void virt6();
    virtual void virt7();
    virtual ~Stage2_800();
    void func_80082050();
    void func_80082078();
    void func_80082468();
    void func_80082404();
    void func_800823A4();
};

class Stage2_810 : public Stage2_760 {
public:
    u32 var_38;
    u32 var_3C;
    Stage2_800 var_40;

    Stage2_810();
    virtual ~Stage2_810(); // 0
    virtual void virt1(int);
    virtual void virt2();
    virtual void virt3();
    virtual u32 virt4();
    virtual void virt5();
    virtual void virt6(void*);

    void func_800825F0();
    void func_80082588();

    int func_80082758();
    void func_80082764(u32);
    void func_80082770(u32);
    u32 func_80082778();
    void func_800826E8();
    void func_80082704();
    void func_80082720();
};

Stage2_810::Stage2_810()
{
    this->var_38 = 0;
    this->var_3C = 0;
}

Stage2_810::~Stage2_810()
{
    this->func_800825F0();
}

void Stage2_810::func_80082588()
{
    this->var_0 = 1.0f;
    this->var_4 = 1.0f;
    this->var_8 = 1.0f;
    this->var_C = 0;
    this->var_10 = 1.0f;
    this->var_14 = 0;
    this->var_18 = 0;
    this->var_1C = 0;
    this->var_20 = 0;
    this->var_24 = 0;
    this->var_28 = 0;
    this->var_2C = 8.0f;
    this->var_30 = 1024.0f;
    this->var_40.func_80082050();
}

void Stage2_810::func_800825F0()
{
    this->var_40.func_80082078();
}

void Stage2_810::virt1(int arg1)
{
    this->var_40.virt3(0);
    this->var_40.virt0(arg1);
}

void Stage2_810::virt2()
{
    this->var_40.virt1();
}

void Stage2_810::virt3()
{
    this->var_40.virt2();
}

void Stage2_810::virt6(void* arg1)
{
    Stage2_760::virt6(arg1);

    this->var_40.virt3(this->var_8);
    this->var_40.virt4(this->var_C);
    this->var_40.virt5(this->var_10);
}

u32 Stage2_810::virt4()
{
    return this->var_38;
}

void Stage2_810::func_800826E8()
{
    this->var_40.func_80082468();
}

void Stage2_810::func_80082704()
{
    this->var_40.func_80082404();
}

void Stage2_810::func_80082720()
{
    this->var_40.func_800823A4();
}

void Stage2_810::virt5()
{
    this->var_40.virt6();
}

int Stage2_810::func_80082758()
{
    return this->var_40.var_C & 1;
}

void Stage2_810::func_80082764(u32 arg0)
{
    this->var_38 = arg0;
    this->var_40.var_4 = arg0;
}
void Stage2_810::func_80082770(u32 arg0)
{
    this->var_3C = arg0;
}

u32 Stage2_810::func_80082778()
{
    return this->var_3C;
}
