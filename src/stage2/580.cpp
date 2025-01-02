#include "common.h"
#include "scheduler.h"

extern "C" {
#include "ultra64.h"
}

int D_80085EA0 = -1;
int D_80085EA4 = 0;
int D_80085EA8 = 1;
int D_80085EAC = 0;
Mtx D_80085EB0;

extern OSMesgQueue D_800BD140;
extern OSMesg D_800BD160[0x10];
extern OSThread D_800BD1A0;
extern OSScClient D_800BD750;

extern u32 D_800BD350; // stack head?

extern "C" void func_80076BCC(RenderClass*);
extern "C" void func_80071878(void*);
extern "C" void func_8007B6FC(void*, void*, void*);
extern "C" void func_80073020(void*);
extern "C" void func_8006E070(void*);
extern "C" void func_800697A8(void*, void*);

RenderClass::RenderClass()
{
    this->reset();
}

RenderClass::~RenderClass()
{
    this->virt6();
}

extern "C" void func_800705F0(int a)
{
    D_80085EAC = a;
}

// 0x800705FC
void RenderClass::reset()
{
    this->var_150 = 0;
    this->var_130 = 0;
    this->var_14C = 0;
    this->var_134 = -1;
    this->var_138 = -1;
    this->var_13C = 0;
    this->var_140 = 0;
    this->var_144 = 0;
    this->var_148 = 0;
    this->var_154 = 0;
    this->var_158 = NULL;
    this->var_30C = NULL;

    memset(&this->var_15AC, 0, sizeof(UnkStruct_800705FC));
    memset(&this->var_15C8, 0, sizeof(UnkStruct_800705FC));
    this->var_15AC.var_0 = this;
    this->var_15AC.var_C = &this->var_15E4;
    this->var_15C8.var_0 = this;
    this->var_15C8.var_C = &this->var_15E4;

    this->var_15A8 = 0;
    this->var_19E4 = 0;
    this->var_19E8 = 0;
    this->var_19EC = 0;
    this->var_19F0 = 0;
    this->flags = 0;
    this->var_17C = 0;
    this->var_198 = 0;
    this->var_308 = 0;
    this->var_19F4 = 1.0f;
    memset(&this->var_3650, 0, 0x9000);
    memset(&this->var_348, 0, 0x30);
    this->var_1FC = 0;
    this->var_15A0 = 0;
    this->var_15A4 = 0;
    this->var_19F8 = 0;
    this->var_19FC = 0;
    this->var_1A38 = 0;
    memset(&this->var_1A40, 0, 0x1C00);
    memset(&this->var_1A00, 0, 0x38);

    this->var_1BC[0][0] = 1.0f;
    this->var_1BC[0][1] = 0;
    this->var_1BC[0][2] = 0;
    this->var_1BC[0][3] = 0;
    this->var_1BC[1][0] = 0;
    this->var_1BC[1][1] = 1.0f;
    this->var_1BC[1][2] = 0;
    this->var_1BC[1][3] = 0;
    this->var_1BC[2][0] = 0;
    this->var_1BC[2][1] = 0;
    this->var_1BC[2][2] = 1.0f;
    this->var_1BC[2][3] = 0;
    this->var_1BC[3][0] = 0;
    this->var_1BC[3][1] = 0;
    this->var_1BC[3][2] = 0;
    this->var_1BC[3][3] = 1.0f;

    guOrtho(&D_80085EB0, -5.0f, 5.0f, -5.0f, 5.0f, 1.0f, 10.0f, 1.0f);
    D_80085EAC = 0x37000;
}

void* RenderClass::virt4()
{
    return this->var_158;
}

void RenderClass::virt8(void* arg0)
{
    if (this->var_8) {
        func_800697A8(this->var_8, 0);
    }

    this->var_8 = arg0;
    func_800697A8(this->var_8, this);
}

INCLUDE_ASM("nonmatchings/stage2/580", func_800707FC);

INCLUDE_ASM("nonmatchings/stage2/580", func_800708C0);

INCLUDE_ASM("nonmatchings/stage2/580", func_80070974);

INCLUDE_ASM("nonmatchings/stage2/580", func_80070C5C);

INCLUDE_ASM("nonmatchings/stage2/580", func_80070CAC);

INCLUDE_ASM("nonmatchings/stage2/580", func_80071208);

INCLUDE_ASM("nonmatchings/stage2/580", func_80071514);

void RenderClass::func_80071660(ParentSchedulerOwner& arg1, N64Renderer& arg2, int arg3, int arg4)
{

    if (this->flags & 1) {
        this->virt7();

        // FIXME: Probably a fake match
        this->var_158 = (void*)&arg1;
    } else {
        this->var_158 = (void*)&arg1;
    }

    this->var_30C = (void*)&arg2;
    this->var_8 = 0;
    this->var_17C = 0;
    this->var_308 = 0;
    this->var_15C = 2;
    arg1.func_800470B4((Unk18*)this); // TODO: merge RenderClass and Unk18
    osCreateMesgQueue(&this->var_180, this->var_19C, 8);
    this->var_198 = osScGetCmdQ(&((Stage2_450*)(this->var_158))->scheduler);
    func_80071878(this);
    if (arg3) {
        func_8007B6FC(&this->var_310, this->var_158, this->var_30C);
        this->flags |= 0x22;
    }

    this->flags |= 0x101;
    if (((Stage2_450*)(this->var_158))->flags & 8) {
        this->flags |= 0x141;
    }
    func_80073020(this);
    func_8006E070(&this->var_378);

    if (D_80085EA4 == 0) {
        osCreateMesgQueue(&D_800BD140, D_800BD160, 0x10);
        memset(&D_800BD750, 0, 8);
        osCreateMesgQueue(&D_800BD140, D_800BD160, 0x10);
        osScAddClient(&((Stage2_450*)(this->var_158))->scheduler, &D_800BD750, &D_800BD140);
        osCreateThread(&D_800BD1A0, 0x3E, &func_80076BCC, this, &D_800BD350, 0x29);
        osStartThread(&D_800BD1A0);
        D_80085EA4 = 1;
    }
}

INCLUDE_ASM("nonmatchings/stage2/580", func_80071820);

INCLUDE_ASM("nonmatchings/stage2/580", func_80071878);

INCLUDE_ASM("nonmatchings/stage2/580", func_800718C4);

INCLUDE_ASM("nonmatchings/stage2/580", func_800718F4);

INCLUDE_ASM("nonmatchings/stage2/580", func_80071990);

INCLUDE_ASM("nonmatchings/stage2/580", func_80071A94);

INCLUDE_ASM("nonmatchings/stage2/580", func_80071B98);

INCLUDE_ASM("nonmatchings/stage2/580", func_80071E7C);

INCLUDE_ASM("nonmatchings/stage2/580", func_800726CC);

INCLUDE_ASM("nonmatchings/stage2/580", func_80072758);

INCLUDE_ASM("nonmatchings/stage2/580", func_800727E4);

INCLUDE_ASM("nonmatchings/stage2/580", func_800727F8);

INCLUDE_ASM("nonmatchings/stage2/580", func_80072808);

INCLUDE_ASM("nonmatchings/stage2/580", func_80072868);

INCLUDE_ASM("nonmatchings/stage2/580", func_8007290C);

INCLUDE_ASM("nonmatchings/stage2/580", func_800729E4);

INCLUDE_ASM("nonmatchings/stage2/580", func_80072E68);

INCLUDE_ASM("nonmatchings/stage2/580", func_80072E80);

INCLUDE_ASM("nonmatchings/stage2/580", func_80072E8C);

INCLUDE_ASM("nonmatchings/stage2/580", func_80072F94);

INCLUDE_ASM("nonmatchings/stage2/580", func_80072FE0__11RenderClass);

extern "C" {
void func_80073018(void)
{
}
}

INCLUDE_ASM("nonmatchings/stage2/580", func_80073020);

INCLUDE_ASM("nonmatchings/stage2/580", func_80073310);

INCLUDE_ASM("nonmatchings/stage2/580", func_8007331C);

INCLUDE_ASM("nonmatchings/stage2/580", func_80073338);

INCLUDE_ASM("nonmatchings/stage2/580", func_80073354);

INCLUDE_ASM("nonmatchings/stage2/580", func_8007335C);

INCLUDE_ASM("nonmatchings/stage2/580", func_80073374);

INCLUDE_ASM("nonmatchings/stage2/580", func_8007337C);

INCLUDE_ASM("nonmatchings/stage2/580", func_80073394);

INCLUDE_ASM("nonmatchings/stage2/580", func_8007339C);

INCLUDE_ASM("nonmatchings/stage2/580", func_800733A4);

INCLUDE_ASM("nonmatchings/stage2/580", func_80073458);

INCLUDE_ASM("nonmatchings/stage2/580", func_8007350C);

INCLUDE_ASM("nonmatchings/stage2/580", func_800735C0);

INCLUDE_ASM("nonmatchings/stage2/580", func_8007365C);

INCLUDE_ASM("nonmatchings/stage2/580", func_800736E8);

INCLUDE_ASM("nonmatchings/stage2/580", func_800737F0);

extern "C" {
void func_800738B0(void)
{
}
}

INCLUDE_RODATA("nonmatchings/stage2/580", D_8003F148);

INCLUDE_ASM("nonmatchings/stage2/580", func_800738B8);

INCLUDE_ASM("nonmatchings/stage2/580", func_80073D48);

INCLUDE_ASM("nonmatchings/stage2/580", func_800747F8);

INCLUDE_ASM("nonmatchings/stage2/580", func_80074870);

INCLUDE_ASM("nonmatchings/stage2/580", func_800748A4);

INCLUDE_ASM("nonmatchings/stage2/580", func_80074AA0);

INCLUDE_ASM("nonmatchings/stage2/580", func_80074AAC);

INCLUDE_ASM("nonmatchings/stage2/580", func_80074AF0);

INCLUDE_ASM("nonmatchings/stage2/580", func_8007501C);

INCLUDE_ASM("nonmatchings/stage2/580", func_80075060);

INCLUDE_ASM("nonmatchings/stage2/580", func_80075070);

INCLUDE_ASM("nonmatchings/stage2/580", func_80075078);

INCLUDE_ASM("nonmatchings/stage2/580", func_800751E0);

INCLUDE_ASM("nonmatchings/stage2/580", func_80075340);

INCLUDE_ASM("nonmatchings/stage2/580", func_80075380);

INCLUDE_ASM("nonmatchings/stage2/580", func_800754F4);

INCLUDE_ASM("nonmatchings/stage2/580", func_8007558C);

INCLUDE_ASM("nonmatchings/stage2/580", func_8007561C);

INCLUDE_ASM("nonmatchings/stage2/580", func_80075A28);

INCLUDE_ASM("nonmatchings/stage2/580", func_80076BCC);

INCLUDE_ASM("nonmatchings/stage2/580", func_80076C24);

INCLUDE_ASM("nonmatchings/stage2/580", func_80076C2C);

INCLUDE_ASM("nonmatchings/stage2/580", func_80076C34);

INCLUDE_ASM("nonmatchings/stage2/580", func_80076C3C);

INCLUDE_ASM("nonmatchings/stage2/580", func_80076C48);

INCLUDE_ASM("nonmatchings/stage2/580", func_80076C54);

INCLUDE_ASM("nonmatchings/stage2/580", func_80076C60);

INCLUDE_ASM("nonmatchings/stage2/580", func_80076C6C);

INCLUDE_ASM("nonmatchings/stage2/580", func_80076C74);

INCLUDE_ASM("nonmatchings/stage2/580", func_80076C80);

INCLUDE_ASM("nonmatchings/stage2/580", func_80076C88);

INCLUDE_ASM("nonmatchings/stage2/580", func_80076C94);

INCLUDE_ASM("nonmatchings/stage2/580", func_80076C9C);

INCLUDE_ASM("nonmatchings/stage2/580", func_80076CB8);

INCLUDE_ASM("nonmatchings/stage2/580", func_80076CC4);

INCLUDE_ASM("nonmatchings/stage2/580", func_80076D14);

INCLUDE_ASM("nonmatchings/stage2/580", func_80076D40);

INCLUDE_ASM("nonmatchings/stage2/580", func_80076D6C);

INCLUDE_RODATA("nonmatchings/stage2/580", D_8003F190);

INCLUDE_RODATA("nonmatchings/stage2/580", D_8003F3B8);

INCLUDE_RODATA("nonmatchings/stage2/580", D_8003F3C8);
