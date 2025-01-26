#include "common.h"
#include "n64_audio.h"

Stage2_810::Stage2_810()
{
    this->var_38 = 0;
    this->var_3C = 0;
}

Stage2_810::~Stage2_810()
{
    this->func_800825F0();
}

void Stage2_810::func_80082588(int arg1)
{
    this->var_0 = 1.0f;
    this->var_4 = 1.0f;
    this->var_8 = 1.0f;
    this->var_C = 0;
    this->var_10 = 1.0f;
    this->var_14.var_0 = 0;
    this->var_14.var_4 = 0;
    this->var_14.var_8 = 0;
    this->var_20 = 0;
    this->var_24 = 0;
    this->var_28 = 0;
    this->var_2C = 8.0f;
    this->var_30 = 1024.0f;
    this->var_40.func_80082050(arg1);
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

int Stage2_810::virt3()
{
    return this->var_40.virt2();
}

void Stage2_810::virt6(void* arg1)
{
    Stage2_760::virt6(arg1);

    this->var_40.virt3(this->var_8);
    this->var_40.virt4(this->var_C);
    this->var_40.virt5(this->var_10);
}

void* Stage2_810::virt4()
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

void Stage2_810::virt5(int arg1)
{
    this->var_40.virt6(arg1);
}

int Stage2_810::func_80082758()
{
    return this->var_40.var_C & 1;
}

void Stage2_810::func_80082764(Stage2_790* arg0)
{
    this->var_38 = arg0;
    this->var_40.var_4 = arg0;
}
void Stage2_810::func_80082770(Stage2_810* arg0)
{
    this->var_3C = arg0;
}

void* Stage2_810::func_80082778()
{
    return this->var_3C;
}
