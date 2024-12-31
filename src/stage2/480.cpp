#include "common.h"
#include "scheduler.h"
extern "C" {
#include <PR/os_vi.h>
void crash(const char*, int, int, int);
void heap_push(s32 heap);
void heap_pop();
}

s32 D_80085E40 = -1;

N64Renderer::N64Renderer()
{
    this->var_38 = NULL;
}

N64Renderer::~N64Renderer()
{
    virt14();
}

#if 1
INCLUDE_ASM("nonmatchings/stage2/480", virt13__11N64RendererP6Foo123Ussl);
INCLUDE_RODATA("nonmatchings/stage2/480", D_8003ECB0);
#else
void N64Renderer::virt13(Foo123* foo, u16 arg2, s16 arg3, s32 arg4)
{
    if (this->var_22 & 1) {
        this->virt14();
    }

    this->var_26 = arg2;
    this->var_22 = 1;
    this->var_30 = foo;
    this->var_28 = arg3;
    this->var_38 = NULL;
    this->var_0 = 0xF800;
    this->var_4 = 0x7C0;
    this->var_8 = 0x3E;
    this->var_20 = (arg2 * arg4) >> 3;
    this->var_C = 1;
    this->var_16 = 0x10;

    u32 size = this->var_20 * arg3;

    heap_push(D_80085E40);
    this->var_18 = new u8[size];
    heap_pop();
    if (!this->var_18) {
        crash("", 0, 0, 0);
    }
    memset(this->var_18, 0, size);

    if (foo->var_C93C != 0) {
        osViBlack(0);
        foo->var_C93C = 0;
    }

    osViSwapBuffer(this->var_18);

    heap_push(D_80085E40);
    this->var_38 = new u8[size];
    heap_pop();
    if (!this->var_38) {
        crash("", 0, 0, 0);
    }
}
#endif

void N64Renderer::virt14()
{
    if (this->var_38) {
        delete[] this->var_38;
        this->var_38 = NULL;
    }

    if (this->var_18) {
        delete[] this->var_18;
        this->var_18 = NULL;
    }

    this->var_26 = 0;
    this->var_28 = 0;
    this->var_20 = 0;
    ParentRenderer::virt14();
}

extern "C" void func_8006B84C(s32 arg0)
{
    D_80085E40 = arg0;
}

void N64Renderer::virt5()
{
    void* temp = this->var_18;
    this->var_18 = this->var_38;
    this->var_38 = temp;
}

void N64Renderer::virt1(u32* out1, u32* out2, u32 flags)
{
    *out2 = this->var_20;
    *out1 = (u32)this->var_38;

    this->var_22 |= 2;

    if (flags & 1) {
        this->var_22 |= 0xA;
    }

    if (flags & 2) {
        this->var_22 |= 0x10;
    }
}

void N64Renderer::virt12()
{
    memcpy(this->var_38, this->var_18, this->var_20 * this->var_28);
}

void N64Renderer::func_8006B8F0(u32 arg0)
{

    u32* start = (u32*)this->var_18;
    u32* end = start + ((this->var_26 * this->var_28) >> 1);
    u32 double_colour = (arg0 << 16) | (arg0 & 0xFFFF);
    while (start < end) {
        *start = double_colour;
        start += 1;
    }

    start = (u32*)this->var_38;
    end = start + ((this->var_26 * this->var_28) >> 1);
    while (start < end) {
        *start = double_colour;
        start += 1;
    }
}
