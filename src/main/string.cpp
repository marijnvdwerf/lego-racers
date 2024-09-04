#include "common.h"

// 80005B70
String::String()
{
    this->unk0 = 0;
    this->unk8 = 0;
    this->unk6 = 0;
    this->unk4 = 0;
}

// 80005B88
String::~String()
{
    this->unk0 = 0;
    this->unk8 = 0;
    this->unk6 = 0;
    this->unk4 = 0;
}

// 80005BBC
u16* String::func_80005BBC(s32 arg1)
{
    return unk0 + unk6 + arg1;
}

INCLUDE_ASM("nonmatchings/main/string", func_80005BD8);

// 80005C78
bool String::func_80005C78(String* arg1)
{
    this->unk0 = 0;
    this->unk8 = 0;
    this->unk6 = 0;
    this->unk4 = 0U;
    this->unk0 = arg1->unk0;
    this->unk4 = arg1->unk4;
    this->func_80005CB4();
    return true;
}

// 80005CB4
void String::func_80005CB4()
{
    this->unk8 = 0;
    this->unk6 = 0;

    while (this->unk0[this->unk8] != 0) {
        this->unk8++;
    }
}

void String::func_80005CF4()
{
    this->unk8 = 0;
    this->unk6 = 0;
    while (this->unk0[this->unk8] != 0x0 && this->unk0[this->unk8] != 0xA) {
        this->unk8++;
    }
}

INCLUDE_ASM("nonmatchings/main/string", func_80005D54);

INCLUDE_ASM("nonmatchings/main/string", func_80005DD0);

// 80005E7C
bool String::func_80005E7C(u16* src)
{
    s32 temp_v0 = this->size() + wcslen(src);
    if (temp_v0 >= this->unk4) {
        return false;
    }

    memcpy(&this->unk0[this->unk8], src, wcslen(src) * 2);
    this->unk8 = temp_v0;
    this->unk0[this->unk8] = 0;
    return true;
}

bool String::func_80005F2C(String* arg1)
{
    int strlen = this->size();
    if (strlen != arg1->size()) {
        return false;
    }

    for (strlen--; strlen >= 0; strlen--) {
        if (this->unk0[strlen] != *arg1->func_80005BBC(strlen)) {
            return false;
        }
    }

    return true;
}

bool String::func_80005FC8(u16* arg1)
{
    int strlen = this->size();
    if (strlen != wcslen(arg1)) {
        return false;
    }

    for (strlen--; strlen >= 0; strlen--) {
        if (this->unk0[strlen] != arg1[strlen]) {
            return false;
        }
    }

    return true;
}

// 80006058
bool String::func_80006058(String* arg1)
{
    s32 temp_v0;

    temp_v0 = wcslen(arg1->unk0);
    if (temp_v0 >= this->unk4) {
        return false;
    }
    memcpy(this->unk0, arg1->unk0, temp_v0 * 2);
    this->unk6 = arg1->unk6;
    this->unk8 = arg1->unk8;
    return true;
}

// 800060C4
bool String::func_800060C4(u16* src)
{
    s32 temp_v0;

    temp_v0 = wcslen(src);
    if (temp_v0 >= unk4) {
        return false;
    }

    memcpy(this->unk0, src, temp_v0 * 2);
    this->unk0[temp_v0] = '\0';
    this->unk8 = temp_v0;
    return true;
}

// 80006148
void String::func_80006148(void)
{
}

// 80006150
void String::func_80006150(void* arg1)
{
    s32 strlen;
    u8* s = (u8*)arg1;

    strlen = size();

    s[strlen] = '\0';

    for (strlen--; strlen >= 0; strlen--) {
        s[strlen] = this->unk0[strlen];
    }
}

// 8000619C
void String::func_8000619C(u8* arg1)
{
    s32 strlen;
    u8* s = (u8*)arg1;

    strlen = size();
    memset(s, 0, 8);

    if ((strlen < 0) || (strlen >= 9)) {
        strlen = 8;
    }

    for (strlen--; strlen >= 0; strlen--) {
        s[strlen] = this->unk0[strlen];
    }
}

// 80006228
s32 String::func_80006228()
{
    s32 var_a0;
    s32 var_a1;

    var_a0 = wcslen(this->unk0) - 1;
    var_a1 = 1;

    for (; var_a0 >= 0; var_a0--) {
        if (this->unk0[var_a0] == 0xA) {
            var_a1++;
        }
    }
    return var_a1;
}
