#include "common.h"

class Allocator {
public:
    char padding[0x210];

public:
    Allocator();
    void* alloc(int, int); // 8007EAE8
    void dealloc(void*); // 8007EBD8
};

Allocator D_80087570;
int D_80087780[16] = { -1 };
int D_800877C0 = -1;

extern "C" {

// 8007ED30
void __builtin_new(int arg0)
{
    return D_80087570.alloc(D_80087780[D_800877C0], arg0);
}

// 8007ED70
void __builtin_delete(void* arg0)
{
    D_80087570.dealloc(arg0);
}

// 8007ED94
void func_8007ED94(s32 arg0)
{
    D_800877C0++;
    if (D_800877C0 < 0x10) {
        D_80087780[D_800877C0] = arg0;
    }
}

// 8007EDC8
void func_8007EDC8(void)
{
    D_80087780[D_800877C0] = -1;
    D_800877C0--;
}
}
