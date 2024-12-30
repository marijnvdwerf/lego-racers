#include "common.h"
#include "scheduler.h"

#define nullptr NULL

ParentSchedulerOwner::ParentSchedulerOwner()
{
    this->unk_18 = 0;
    this->renderer2_ptr = NULL;
}

int ParentSchedulerOwner::virt4(int a1, int a2, int a3, int a4)
{
    int res = ParentParentSchedulerOwner::virt4(a1, a2, a3, a4);
    if (res) {
        return res;
    }

    int res2 = this->virt9();
    if (res2) {
        return res2;
    }

    return 0;
}
void ParentSchedulerOwner::virt5()
{
    Unk18* current = unk_18;

    while (current) {
        Unk18* next = current->var_44;
        current->virt6();
        current = next;
    }

    ParentParentSchedulerOwner::virt5();
}

void ParentSchedulerOwner::virt7()
{
    for (Unk18* current = unk_18; current != nullptr; current = current->var_44) {
        current->virt1();
    }
    ParentParentSchedulerOwner::virt7();
}

int ParentSchedulerOwner::virt8(int a1, int a2, int a3, int a4)
{
    ParentParentSchedulerOwner::virt8(a1, a2, a3, a4);
    int ret = this->virt9();
    if (!ret) {
        for (Unk18* current = unk_18; current != nullptr; current = current->var_44) {
            if (current != this->renderer2_ptr) {
                current->virt0();
            }
        }
        return 0;
    }

    return ret;
}

void ParentSchedulerOwner::func_800470B4(Unk18* arg0)
{
    arg0->var_44 = this->unk_18;
    this->unk_18 = arg0;
}

void ParentSchedulerOwner::func_800470C4(Unk18* arg1)
{
    if (this->unk_18 == NULL) {
        return;
    }

    if (arg1 == this->unk_18) {
        this->unk_18 = arg1->var_44;
        return;
    }

    Unk18* curr = this->unk_18;
    Unk18* next = curr->var_44;

    while (true) {
        if (next == NULL) {
            break;
        }

        if (next == arg1) {
            curr->var_44 = next->var_44;
            next->var_44 = NULL;
            return;
        }

        curr = next;
        next = curr->var_44;
    }
}

int ParentSchedulerOwner::virt11()
{
    return 1;
}

int ParentSchedulerOwner::virt10()
{
    return 16;
}

int ParentSchedulerOwner::virt12()
{
    return 1;
}

int ParentSchedulerOwner::virt13()
{
    return 1;
}

int ParentSchedulerOwner::virt14()
{
    return 1;
}

int ParentSchedulerOwner::virt15()
{
    return 1;
}

int ParentSchedulerOwner::virt16()
{
    return 1;
}

int ParentSchedulerOwner::virt17()
{
    return 1;
}

int ParentSchedulerOwner::virt18()
{
    return 1;
}

int ParentSchedulerOwner::virt19()
{
    return 1;
}

int ParentSchedulerOwner::virt20()
{
    return 1;
}

int ParentSchedulerOwner::virt21()
{
    return 1;
}

int ParentSchedulerOwner::virt22()
{
    return 1;
}

int ParentSchedulerOwner::virt23()
{
    return 1;
}

int ParentSchedulerOwner::virt27()
{
    return 1;
}

int ParentSchedulerOwner::virt28()
{
    return 1;
}

int ParentSchedulerOwner::virt24()
{
    return 0;
}

int ParentSchedulerOwner::virt26()
{
    return 1;
}

int ParentSchedulerOwner::virt29()
{
    return 0;
}

int ParentSchedulerOwner::virt25()
{
    return 0;
}

void* ParentSchedulerOwner::func_800471C0()
{
    return this->renderer2_ptr;
}

int ParentSchedulerOwner::virt32()
{
    return 0;
}

int ParentSchedulerOwner::virt31()
{
    return 0;
}

int ParentSchedulerOwner::virt30()
{
    return 0;
}
