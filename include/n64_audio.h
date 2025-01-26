#include "libmus.h"

typedef struct {
    u32 var_0;
    u32 var_4;
    u32 var_8;
} int3;

class Stage2_760 {
public:
    f32 var_0;
    f32 var_4;
    f32 var_8;
    f32 var_C;
    f32 var_10;
    int3 var_14;
    f32 var_20;
    f32 var_24;
    f32 var_28;
    f32 var_2C;
    f32 var_30;

    Stage2_760();
    virtual ~Stage2_760(); // 0
    virtual void virt1(int);
    virtual void virt2();
    virtual int virt3();
    virtual void* virt4();
    virtual void virt5(int);
    virtual void virt6(void*);

    void func_8007F790(f32);

}; // size: 0x38

class Stage2_800_base {
public:
    virtual void virt0(int);
};

typedef struct {
    u32 var_0;
    u8 var_4[0x8];
    f32 var_C;
} Stage2_800_substruct;

class Stage2_790;
class Stage2_800;

class Stage2_800 : public Stage2_800_base {
public:
    Stage2_790* var_4; // ptr to Stage2_790
    Stage2_800* var_8; // ptr to Stage2_800 ?
    int var_C;
    int var_10;
    int var_14;
    f32 var_18;
    int var_1C;
    int var_20;
    musHandle var_24;

    Stage2_800();
    virtual void virt0(int);
    virtual void virt1();
    virtual int virt2();
    virtual void virt3(f32);
    virtual void virt4(f32);
    virtual void virt5(f32);
    virtual void virt6(int);
    virtual void* virt7();
    virtual ~Stage2_800();

    void func_80082050(int);
    void func_80082078();
    void func_80082468();
    void func_80082404();
    void func_800823A4();
    void* func_800824B0();
    int func_800824C8();
    void func_800824C8(Stage2_790*);
    void func_800824D0(Stage2_800*);
    Stage2_800* func_800824D8();

    bool hasFlag()
    {
        return this->var_C & 1;
    }

    void setVar4(Stage2_790* arg0)
    {
        this->var_4 = arg0;
    }
}; // size: 0x28

class Stage2_810 : public Stage2_760 {
public:
    Stage2_790* var_38;
    Stage2_810* var_3C;
    Stage2_800 var_40;

    Stage2_810();
    virtual ~Stage2_810(); // 0
    virtual void virt1(int);
    virtual void virt2();
    virtual int virt3();
    virtual void* virt4();
    virtual void virt5(int);
    virtual void virt6(void*);

    void func_800825F0();
    void func_80082588(int);

    int func_80082758();
    void func_80082764(Stage2_790*);
    void func_80082770(Stage2_810*);
    void* func_80082778();
    void func_800826E8();
    void func_80082704();
    void func_80082720();
}; // size: 0x68

class Stage2_790_base {
public:
    virtual void virt0(char*);
};

class Stage2_790 : public Stage2_790_base {
public:
    // vtable at 0x0
    u32 var_4;
    Stage2_800_substruct* var_8;
    int var_C;
    Stage2_800* var_10;
    Stage2_810* var_14;
    Stage2_800 var_18[48];
    Stage2_810 var_798[48];
    u8* var_1B18;
    void* var_1B1C;
    u8* var_1B20;

    Stage2_790();
    void func_800811D0();

    virtual void virt0(char*);
    virtual void virt1();
    virtual int virt2();
    virtual int virt3();
    virtual void virt4(s32);
    virtual void* virt5(u32);
    virtual void virt6(Stage2_800*);
    virtual void virt7(u32 arg1, int3* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6);
    virtual void* virt8(u32);
    virtual void virt9(Stage2_810*);
    virtual Stage2_800_substruct* virt10();
    virtual ~Stage2_790();

    void* func_80081F5C();
    void* func_80081F68();
    void* func_80081F74();
    void func_80081F80(Stage2_800_substruct*);
    void func_80081F88(s32);
    s32 func_80081F90();

    void func_80081B00();
    void func_80081C9C(int);

    void func_80081EE8();
    void func_80081DC0();
};
