#include "common.h"
#include "scheduler.h"

ParentParentSchedulerOwner::ParentParentSchedulerOwner()
{
    this->width = 0;
    this->height = 0;
    this->depth = 0;
    this->flags = 0;
    this->renderer_ptr = NULL;
}

ParentParentSchedulerOwner::~ParentParentSchedulerOwner()
{
}

int ParentParentSchedulerOwner::virt4(int a, int b, int c, int d)
{
    if (this->flags & 1) {
        this->virt5();
    }

    this->flags |= 2;

    int result = ParentParentSchedulerOwner::virt8(a, b, c, d);
    if (result) {
        return result;
    }

    return 0;
}

void ParentParentSchedulerOwner::virt7()
{
    Renderer* renderer = (Renderer*)this->renderer_ptr;
    this->flags |= 2;

    if (renderer && renderer->flags & 1) {
        renderer->virt14();
    }
}

int ParentParentSchedulerOwner::virt8(int a, int b, int c, int d)
{
    if (!a) {
        a = 320;
    }

    if (!b) {
        b = 240;
    }

    if (!c) {
        c = 16;
    }

    this->width = a;
    this->height = b;
    this->depth = c;
    this->flags = d;

    int result = this->virt0();
    if (result) {
        return result;
    }

    Renderer* renderer = (Renderer*)this->renderer_ptr;
    renderer->virt13(this, width, height, depth);

    this->flags |= 1;
    this->flags &= ~2;

    return 0;
}

void ParentParentSchedulerOwner::virt2()
{
}

void ParentParentSchedulerOwner::virt3()
{
}

void ParentParentSchedulerOwner::virt6()
{
    Renderer* renderer = (Renderer*)this->renderer_ptr;
    renderer->virt5(0);
}

void ParentParentSchedulerOwner::virt5()
{
    Renderer* renderer = (Renderer*)this->renderer_ptr;

    this->flags &= ~1;
    if (renderer && renderer->flags & 1) {
        renderer->virt14();
    }
}

INCLUDE_ASM("nonmatchings/stage2/140", func_8004C1B8);

INCLUDE_ASM("nonmatchings/stage2/140", func_8004C1C8);

INCLUDE_ASM("nonmatchings/stage2/140", func_8004C1D8);

INCLUDE_ASM("nonmatchings/stage2/140", func_8004C1E8);

INCLUDE_ASM("nonmatchings/stage2/140", func_8004C1F4);

INCLUDE_ASM("nonmatchings/stage2/140", func_8004C200);

INCLUDE_ASM("nonmatchings/stage2/140", func_8004C20C);

INCLUDE_ASM("nonmatchings/stage2/140", func_8004C218);

INCLUDE_ASM("nonmatchings/stage2/140", func_8004C224);

INCLUDE_ASM("nonmatchings/stage2/140", func_8004C230);

INCLUDE_ASM("nonmatchings/stage2/140", func_8004C23C);

INCLUDE_ASM("nonmatchings/stage2/140", func_8004C248);

INCLUDE_ASM("nonmatchings/stage2/140", func_8004C254);

INCLUDE_ASM("nonmatchings/stage2/140", func_8004C260);

INCLUDE_ASM("nonmatchings/stage2/140", func_8004C26C);

INCLUDE_ASM("nonmatchings/stage2/140", func_8004C278);

INCLUDE_ASM("nonmatchings/stage2/140", func_8004C284);

INCLUDE_ASM("nonmatchings/stage2/140", func_8004C290);

INCLUDE_ASM("nonmatchings/stage2/140", func_8004C29C);
