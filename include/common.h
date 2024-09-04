#include "include_asm.h"
typedef int s32;
typedef short s16;
typedef char s8;
typedef unsigned int u32;
typedef unsigned short u16;
typedef unsigned char u8;
typedef float f32;
typedef double f64;

typedef u32 size_t;

#ifdef __cplusplus
extern "C" {
#endif
void* memset(void* s, int c, size_t n);
void* memcpy(void*, const void*, size_t);
size_t wcslen(const unsigned short* wcs);
void func_menu_80115124(int);
void func_menu_80119D6C(void*, void*, int, int);
void func_menu_80119E78(void*, void*, u16, int, int);
void func_menu_80100A5C(void*, void*, int, int, int);
void func_menu_8011A1C0(void*, void*, int, int);
void func_menu_801234FC(void*, int);
void func_menu_8012341C(void*, int);
void func_menu_801006D0(void*);
void func_menu_80100698(void*, int);

extern u32 osTvType;
#ifdef __cplusplus
};
#endif

#ifdef __cplusplus

class Foo {
public:
    u8 pad[0x34];
    u32 var_34;
};

class Bar {
public:
    int FUN_8007c844(int);
};

class UnkStruct {
public:
    u8 pad_0[0x10];
    Foo* var_10;
    u8 pad_14[0x262C - 0x14];
    Bar* var_262C;
};

class MenuDunno {
public:
    virtual void virt0();
    virtual void virt1();
    virtual void virt2();
    virtual void virt3();
    virtual void virt4();
    virtual void virt5();
    virtual void virt6();
    virtual void virt7();
    virtual void virt8();
    virtual void virt9();
    virtual void virt10();
    virtual void virt11();
    virtual void virt12();
    virtual void virt13();
    virtual void virt14(void* arg1);
    virtual void virt15();
    virtual void virt16();
    virtual void virt17();
    virtual void virt18();
    virtual void virt19() = 0;
    virtual void virt20();
    virtual void virt21();
    virtual void virt22();
    virtual void virt23();
    virtual void virt24();
    virtual void virt25();
    virtual ~MenuDunno(); // 26
    virtual void virt27();
    virtual void virt28();
    virtual int virt29();
    virtual int virt30(int);
    virtual void virt31();
};

class Menu490 : public MenuDunno {
public:
    u32 var_4;
    u8 pad_8[0x27C];
    u32 var_284;
    u8 pad_288[0xCC];
    void* var_354;
    u8 pad_358[0x10];

public:
    Menu490();

    // Parent
    virtual void virt6();
    virtual void virt7();
    virtual void virt13();
    virtual void virt15();
    virtual void virt16();
    virtual void virt21();
    virtual void virt23();
    virtual void virt25();
    virtual ~Menu490(); // 26
    virtual void virt27();
    virtual int virt29();
    virtual int virt30(int);

    // New
    virtual void virt32();
    virtual void virt33() = 0;
    virtual void virt34();
    virtual int virt35(UnkStruct*, int foo);
    virtual void virt36();
    virtual void virt37();
};

class Menu530 {
private:
    u8 padding[0x2f0];

public:
    Menu530();
    ~Menu530();
};

class Menu690 {
private:
    u8 padding[0x21C];

public:
    Menu690();
    ~Menu690();
};

class Menu870 {
private:
    u8 padding[0x54];

public:
    virtual void virt0();
    virtual ~Menu870();
};

// size: 0x5C
class Menu890 {
private:
    u8 padding[0x5C];

public:
    Menu890();
    ~Menu890();
};

// size: 0x78
class Menu900 : Menu870 {
private:
    u8 padding[0x20];

public:
    Menu900();
    virtual ~Menu900();
};

// size: 0x78
class Menu910 {
private:
    u8 padding[0x78];

public:
    Menu910();
    ~Menu910();
};

class String {
public:
    u16* unk0;
    u16 unk4;
    u16 unk6;
    u16 unk8;
    String();
    ~String();
    u16* func_80005BBC(s32 arg1);

    bool func_80005C78(String* arg1);
    void func_80005CB4();
    void func_80005CF4();
    bool func_80005E7C(u16* src);
    bool func_80005F2C(String* arg1);
    bool func_80005FC8(u16* arg1);
    bool func_80006058(String* arg1);
    bool func_800060C4(u16* arg1);
    void func_80006148();
    void func_80006150(void* arg1);
    void func_8000619C(u8* arg1);
    s32 func_80006228();

    u16 size(void) { return unk8 - unk6; }
};

// size: 0x2238
class Menu660 : public Menu490 {
private:
    Menu890 var_368;
    Menu890 var_3C4;
    Menu890 var_420;
    Menu910 var_47C;
    Menu900 var_4F4[5];
    Menu900 var_74C[5];
    Menu900 var_0x9a4;
    Menu900 var_0xa1c;
    Menu900 var_0xa94;
    Menu910 field_0xb0c;
    Menu690 var_b84;
    Menu690 var_da0;
    Menu530 var_fbc;
    Menu530 var_12ac;
    Menu530 var_159C;
    Menu530 var_188C;
    String var_1b7C;
    String var_1B88;

    u8 var_1b94[440];
    u8 var_1d4c[160];
    u8 var_1dec[48];
    s32 var_1e1c;
    u32 var_1e20;
    u32 var_1e24;
    u32 var_1e28;
    u32 var_1e2c;
    u32 var_1e30;
    u8 var_1e34[0x10][0x40];
    u32 var_2234;

public:
    Menu660();
    virtual ~Menu660();
    void init();
    virtual int virt29();
    virtual int virt30(int);
    virtual int virt35(UnkStruct*, int foo);

    virtual void virt14(void* arg1);

    void func_menu_8010FF04();
    void func_menu_8010FCF4();
    void func_menu_8010F8E0();
    void func_menu_8010f400();
    s32 func_menu_8010F7A8();
    virtual void virt19();
    virtual void virt33();
};
#endif