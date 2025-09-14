
#define BUILD_VERSION 7
#include "ultra64.h"
extern "C" {
#include "PR/sched.h"
}

class Main_110;

class Main_100 {
public:
    u8 var_0[0x28];
    u32 var_28;
    u8 var_2C[0x8];
    u32 var_34;
    u8 var_38[0x8];
    Main_110* var_40[4];

    Main_100();
    virtual void virt0();
    virtual ~Main_100();
}; // size: 0x54

class DunnoClass {
public:
    virtual void virt0(Main_110*, int, int);
    virtual void virt1(Main_110*, int, int);
};

class Main_110 {
public:
    u8 var_0[0x14];
    u32 var_14;
    u8 var_18[0x8];
    u32 var_20;
    u8 var_24[4];
    u16* var_28;
    u16* var_2C;
    u32 var_30;
    u32 var_34;
    u8 var_38[0xC];
    u32 var_44;
    u32 var_48;
    u8 var_4C[4];
    u32 var_50;
    u32 var_54;
    u8 var_58[4];
    u8 var_5C[0x2C];
    u32 var_88;
    DunnoClass* var_8C;
    u8 var_90[0x8];

    Main_110();
    virtual void virt0();
    virtual void virt1(int, s8, int);
    virtual void virt2(int, f32);
    virtual ~Main_110();
    virtual int virt4();
    virtual int virt5(int);
    virtual void virt6();
    virtual int virt7();
    virtual int virt8();
    virtual void virt9();
    virtual void virt10(int);
    virtual f32 virt11(int);
    virtual f32 virt12(int);
    virtual u8 virt13(int);
    virtual void virt14();
    virtual int virt15();
    virtual void virt16();
    virtual int virt17();
    virtual int virt18();
    virtual int virt19();
    virtual void virt20();
    virtual void virt21();
    virtual int virt22();
    virtual int virt23();
    virtual int virt24();
    virtual int virt25();
}; // size: 0x9C

class Stage2_680;

// TODO: probably OSContStatus or OSContPad
typedef struct {
    u16 var_0;
    u8 var_2;
    u8 var_3;
    u8 var_4;
} Stage2_690_sub;

class Stage2_690 : public Main_110 {
public:
    Stage2_690_sub var_9C;
    u8 var_A2[2];
    Stage2_690_sub* var_A4;
    u8 var_A8[0x4];
    f32 var_AC[2];
    s32 var_B4;
    u32 var_B8;
    u32 var_BC;
    u32 var_C0;
    u8 var_C4[0x20];
    Stage2_680* var_E4;
    OSPfs pfs; // 0xE8

    Stage2_690();
    virtual void virt0();
    virtual void virt1(int, s8, int);
    virtual void virt2(int, f32);
    virtual ~Stage2_690();
    virtual int virt4();
    virtual int virt5(int);
    virtual int virt7();
    virtual int virt8();
    virtual void virt10(int);
    virtual f32 virt11(int);
    virtual f32 virt12(int);
    virtual u8 virt13(int);
    virtual void virt14();
    virtual int virt15();
    virtual void virt16();
    virtual int virt17();
    virtual int virt18();
    virtual int virt19();
    virtual int virt22();
    virtual int virt23();
    virtual int virt24();
    virtual int virt25();

    void func_8007D680();
    void func_8007D6EC();
    int func_8007DB28(int arg1);
    int func_8007D56C(Stage2_680*, int);
    f32 func_8007D5F4(s8);
    int func_8007DBE8();
    OSPfs* func_8007DBF4();
    void func_8007DBFC(Stage2_690_sub*);
}; // size: 0x150

class Stage2_680 : public Main_100 {
public:
    u32 var_54;
    u32 var_58;
    u32 var_5C[4];
    OSContStatus var_6C[4];
    u32 var_7C;
    u32 var_80;
    u8 pad_84[4];
    OSThread var_88;
    u8 stack[0x4000]; // TODO: force align
    OSContPad var_4238[2][4];
    Stage2_690 var_4268[4];
    void* var_47A8;
    OSSched* var_47AC;

    Stage2_680();
    virtual void virt0();
    virtual ~Stage2_680();
    virtual Stage2_690* virt2(int);
    virtual Stage2_690* virt3(int);
    virtual int virt4();
    virtual int virt5();
    virtual int virt6(int);
    virtual u32 virt7();

    void func_8007C3E0();
    void func_8007C420();
    void func_8007C4EC();
    u32 func_8007C844(int);
    u32 func_8007C86C(u8* bitpattern);
    u32 func_8007C930(OSPfs*, int);
    u32 func_8007C9A4(OSPfs* arg1, int arg2, int arg3, u8* arg4, u8* arg5, int arg6, s32* arg7);
    u32 func_8007CA2C(OSPfs* arg1, int arg2, int arg3, u8* arg4, u8* arg5, s32* arg6);
    u32 func_8007CAAC(OSPfs* arg1, int arg2, int arg3, u8* arg4, u8* arg5);
    u32 func_8007CB24(OSPfs* arg1, s32 arg2, u8 arg3, int arg4, int arg5, u8* arg6);
    u32 func_8007CBA4(OSPfs* arg1);
    u32 func_8007C8CC(OSPfs* pfs, int controller_no);
    u32 func_8007CC04(OSPfs* pfs, int channel);
    u32 func_8007CC68(OSPfs* pfs);
    u32 func_8007CCC8(OSPfs* pfs);
    u32 func_8007CD28(OSPfs* pfs);
    u32 func_8007CD88(OSPfs* arg1, s32* max_files, s32* files_used);
    u32 func_8007CDF0(OSPfs* arg1, s32 file_no, OSPfsState* state);
    u32 func_8007CE58(OSPfs* pfs, s32* bytes_not_used);
};