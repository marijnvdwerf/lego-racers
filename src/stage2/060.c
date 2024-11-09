#include "common.h"

void crash(const char*, int, int, int);
s32 __builtin_new(int);
void func_8007ED94(s32);
void func_8007EDC8();
s32 func_race_80100890(s32);
void func_race_801008D0(s32, int);
void func_race_80100938(s32, s32);
void func_race_80100A24(s32);
void func_race_80100A84(s32);
extern int D_8003C1E0;
extern s32 D_80082824;
extern s32 D_80089850;

void racefunc_80045990(s32 arg0)
{
    func_8007ED94(D_80082824);
    D_80089850 = func_race_80100890(__builtin_new(0x3880));
    func_8007EDC8();
    if (D_80089850 == 0) {
        crash("", 0, 0, 0);
    }
    func_race_80100938(D_80089850, arg0);
    func_race_80100A24(D_80089850);
    func_race_80100A84(D_80089850);
    if (D_80089850 != 0) {
        func_race_801008D0(D_80089850, 3);
    }
}
