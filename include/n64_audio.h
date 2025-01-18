#include "libmus.h"

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
    virtual void virt5(int);
    virtual void virt6(void*);

}; // size: 0x38

class Stage2_800_base {
public:
    virtual void virt0(int);
};

typedef struct {
    u32 var_0;
} Stage2_800_substruct;

typedef struct {
    u8 var_0[0xC];
    f32 var_C;
} Stage2_800_substruct2;

// TODO: use proper base class
class Stage2_790 : public Stage2_800_base {
public:
    // vtable at 0x0
    u8 var_4[0x4];
    Stage2_800_substruct* var_8;
    u8 pad_C[0x1B18 - 0xC];
    void* var_1B18;
    u32 var_1B1C;
    void* var_1B20;

    virtual void virt0();
    virtual void virt1();
    virtual void virt2();
    virtual void virt3();
    virtual void virt4();
    virtual void virt5();
    virtual void virt6();
    virtual void virt7();
    virtual void virt8();
    virtual Stage2_800_substruct2* virt9();
};

class Stage2_800 : public Stage2_800_base {
public:
    Stage2_790* var_4; // ptr to Stage2_790
    int var_8; // ptr to Stage2_800 ?
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
    virtual int virt7();
    virtual ~Stage2_800();

    void func_80082050(int);
    void func_80082078();
    void func_80082468();
    void func_80082404();
    void func_800823A4();
    int func_800824B0();
    int func_800824C8();
    void func_800824C8(int);
    void func_800824D0(int);
    int func_800824D8();
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
    virtual void virt5(int);
    virtual void virt6(void*);

    void func_800825F0();
    void func_80082588(int);

    int func_80082758();
    void func_80082764(u32);
    void func_80082770(u32);
    u32 func_80082778();
    void func_800826E8();
    void func_80082704();
    void func_80082720();
};
