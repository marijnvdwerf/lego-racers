#include "common.h"

class Main670 {
public:
    virtual void func08(void);
    virtual void func10(void);
    virtual void func18(void);
    virtual void func20(void);
    virtual void func28(void);
    virtual void func30(void);
    virtual void func38(void);
    virtual void func40(void);
    virtual void func48(void);
    virtual void func50(void);
    virtual void func58(void);
    virtual void func60(void);
    virtual ~Main670();
};

class Menu320 : public Main670 {
private:
    u8 pad[0x4850 - 4];

public:
    Menu320();
};

extern "C" {
void func_80046B3C(const char*, int, int, int);
void func_8007ED94(s32);
void func_8007EDC8();
void func_menu_800EF8A4(Menu320*, s32);
void func_menu_800EFA4C(Menu320*);
void func_menu_800F086C(Menu320*);
extern s32 D_80082824;
extern Menu320* D_8009C060;

void menufunc_80046E20(s32 arg0)
{
    func_8007ED94(D_80082824);
    D_8009C060 = new Menu320();
    func_8007EDC8();
    if (!D_8009C060) {
        func_80046B3C("", 0, 0, 0);
    }
    func_menu_800EF8A4(D_8009C060, arg0);
    func_menu_800F086C(D_8009C060);
    func_menu_800EFA4C(D_8009C060);
    if (D_8009C060) {
        delete D_8009C060;
    }
}
}
