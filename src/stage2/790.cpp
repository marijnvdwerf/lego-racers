#include "common.h"
#include "libmus.h"
#include "n64_audio.h"

s32 D_80087840 = -1;

Stage2_790::Stage2_790()
{
    this->var_1B20 = NULL;
    this->var_1B18 = NULL;
    this->func_800811D0();
}

Stage2_790::~Stage2_790()
{
    this->virt1();
}

void Stage2_790::func_800811D0()
{
    this->var_4 = 0;
    this->var_8 = NULL;
    this->var_C = 0;
    this->var_10 = NULL;
    this->var_14 = 0;
    this->var_1B1C = 0;
}

class Main_060 {
public:
    u8 var_0[0x10];
    u32 var_10;
    u8 var_14[0x10];

    Main_060();
    virtual void virt0(char*) = 0;
    virtual void virt1() = 0;
    virtual void virt2() = 0;
    virtual void virt3() = 0;
    virtual void virt4();
    virtual void virt5();
    virtual ~Main_060(); // virt6
    virtual int virt7(char*, int, int);
    virtual void virt8();
    virtual int virt9(int, void*, int, u32*);
    virtual void virt10();
    virtual void virt11();
    virtual void virt12();
    virtual void virt13();
};

class Stage2_700 : public Main_060 {
public:
    u32 var_2C;
    Stage2_700();
    virtual void virt0(char*);
    virtual void virt1();
    virtual void virt2();
    virtual void virt3();
    virtual ~Stage2_700(); // virt6
    virtual void virt14();
    virtual void virt15();

    void* func_8007DD08();
};

class Stage2_790_filereader : public Stage2_700 {
};

INCLUDE_RODATA("nonmatchings/stage2/790", D_800408B0);

extern char D_800408B0[];

#ifdef NONMATCHING
typedef struct {
    u8 var_0[0x20];
    u32 var_20;
} Something;

void Stage2_790::virt0(char* arg0)
{

    Stage2_790_filereader reader;
    int len;
    u32 sp48;

    len = strlen(arg0);
    char* buff;
    buff = new char[len + 5];
    if (!buff) {
        crash(D_800408B0, 0, 0, 0);
    }

    memcpy(buff, arg0, len);
    memcpy(buff + len, ".ptr", 4);
    buff[len + 4] = '\0';

    // reader.virt0(buff);
    if (reader.virt7(buff, 2U, 0)) {
        crash(D_800408B0, 0, 0, 0);
    }

    heap_push(D_80087840);
    this->var_1B18 = new u8[reader.var_10];
    heap_pop();
    if (!this->var_1B18) {
        crash(D_800408B0, 0, 0, 0);
    }

    if (reader.virt9(0, this->var_1B18, reader.var_10, &sp48)) {
        crash(D_800408B0, 0, 0, 0);
    }

    reader.virt8();

    this->var_4 = ((Something*)(this->var_1B18))->var_20;

    memcpy(buff + len, ".bfx", 4);
    if (reader.virt7(buff, 2, 0)) {
        crash(D_800408B0, 0, 0, 0);
    }

    heap_push(D_80087840);
    this->var_1B20 = new u8[reader.var_10];
    heap_pop();

    if (!this->var_1B20) {
        crash(D_800408B0, 0, 0, 0);
    }

    if (reader.virt9(0, this->var_1B20, reader.var_10, &sp48)) {
        crash(D_800408B0, 0, 0, 0);
    }
    reader.virt8();

    memcpy(buff + len, ".wbk", 4);
    if (reader.virt7(buff, 2, 0)) {
        crash(D_800408B0, 0, 0, 0);
    }

    this->var_1B1C = reader.func_8007DD08();
    reader.virt8();

    if (buff) {
        delete[] buff;
    }

    MusPtrBankInitialize(this->var_1B18, this->var_1B1C);
    MusFxBankInitialize(this->var_1B20);
    MusFxBankSetPtrBank(this->var_1B20, this->var_1B18);
    this->var_4 = MusFxBankNumberOfEffects(this->var_1B20);
};
#else
INCLUDE_ASM("nonmatchings/stage2/790", virt0__10Stage2_790Pc);
#endif

void Stage2_790::virt1()
{
    Stage2_810* cur810 = this->var_14;
    while (cur810) {
        Stage2_810* next810 = cur810->var_3C;
        cur810->func_800825F0();
        delete cur810;
        cur810 = next810;
    }

    Stage2_800* cur800 = this->var_10;
    while (cur800) {
        Stage2_800* next800 = cur800->var_8;
        cur800->func_80082078();
        delete cur800;
        cur800 = next800;
    }

    u32 i;
    for (i = 0; i < 0x30; i++) {
        if (this->var_18[i].hasFlag()) {
            this->var_18[i].func_80082078();
        }
    }

    for (i = 0; i < 0x30; i++) {
        if (this->var_798[i].var_40.hasFlag()) {
            this->var_798[i].func_800825F0();
        }
    }

    if (this->var_1B20 != NULL) {
        delete[] this->var_1B20;
        this->var_1B20 = NULL;
    }

    if (this->var_1B18 != NULL) {
        delete[] this->var_1B18;
        this->var_1B18 = NULL;
    }

    this->func_800811D0();
}

int Stage2_790::virt2()
{
    return this->var_1B18 != 0;
}

int Stage2_790::virt3()
{
    return this->var_4;
}

extern "C" void func_80081668(s32 arg0)
{
    D_80087840 = arg0;
}

#if 1
void Stage2_790::virt4(s32 arg1)
{
    if (arg1 >= this->var_4) {
        return;
    }

    for (u32 i = 0; i < 0x30; i++) {
        if (this->var_18[i].hasFlag()) {
            continue;
        }

        this->var_18[i].setVar4(this);
        this->var_18[i].func_80082050(arg1);
        this->var_18[i].virt0(0);
        return;
    }
}
#else
INCLUDE_ASM("nonmatchings/stage2/790", virt4__10Stage2_790l);
#endif

// Uses same crash string as
void* Stage2_790::virt5(u32 arg1)
{
    Stage2_800* temp;
    if (arg1 >= this->var_4) {
        arg1 = 0;
    }

    heap_push(D_80087840);
    temp = new Stage2_800();
    heap_pop();

    if (!temp) {
        crash(D_800408B0, 0, 0, 0); // TODO: use empty string
    }

    temp->var_4 = this;
    temp->var_8 = this->var_10;
    this->var_10 = temp;
    temp->func_80082050(arg1);
    temp->virt3(1.0);

    return temp;
}

void Stage2_790::virt6(Stage2_800* arg1)
{
    Stage2_800* previous = NULL;
    Stage2_800* current = this->var_10;

    while (TRUE) {
        if (!current) {
            break;
        }

        if (current == arg1) {
            if (previous == NULL) {
                this->var_10 = current->var_8;
            } else {
                previous->var_8 = current->var_8;
            }
            current->func_80082078();
            delete current;
            return;
        }
        previous = current;
        current = current->var_8;
    }
}

#ifdef NONMATCHING
void Stage2_790::virt7(u32 arg1, int3* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6)
{
    if (arg1 >= this->var_4) {
        return;
    }

    for (u32 i = 0; i < 0x30; i++) {
        if (this->var_798[i].hasFlag()) {
            continue;
        }

        this->var_798[i].var_38 = this;
        this->var_798[i].var_40.var_4 = this;
        this->var_798[i].func_80082588(arg1);

        this->var_798[i].var_14 = *arg2;

        this->var_798[i].var_2C = arg3;
        this->var_798[i].var_30 = arg4 * arg4;
        this->var_798[i].virt5(0);
        this->var_798[i].func_8007F790(arg5);
        this->var_798[i].virt1(0);
        break;
    }
}
#else
INCLUDE_ASM("nonmatchings/stage2/790", virt7__10Stage2_790);
#endif

void* Stage2_790::virt8(u32 arg1)
{
    u32 index = arg1;
    Stage2_810* temp;

    if (index >= this->var_4) {
        index = 0;
    }

    heap_push(D_80087840);
    temp = new Stage2_810();
    heap_pop();

    if (!temp) {
        crash(D_800408B0, 0, 0, 0); // TODO: use empty string
    }

    temp->var_38 = this;
    temp->var_40.var_4 = this;
    temp->var_3C = this->var_14;
    this->var_14 = temp;
    temp->func_80082588(index);
    temp->func_8007F790(1.0f);

    return temp;
}

void Stage2_790::virt9(Stage2_810* arg1)
{
    Stage2_810* previous = NULL;
    Stage2_810* current = this->var_14;

    while (TRUE) {
        if (!current) {
            break;
        }

        if (current == arg1) {
            if (previous == NULL) {
                this->var_14 = current->var_3C;
            } else {
                previous->var_3C = current->var_3C;
            }
            current->func_800825F0();
            delete current;
            return;
        }
        previous = current;
        current = current->var_3C;
    }
}

#ifdef NONMATCHING
void Stage2_790::func_80081B00()
{

    for (u32 i = 0; i < 0x30; i++) {
        if (this->var_18[i].hasFlag()) {
            this->var_18[i].func_800823A4();
            if (!this->var_18[i].virt2()) {
                this->var_18[i].func_80082078();
            }
        }
    }

    for (u32 i = 0; i < 0x30; i++) {
        if (this->var_798[i].hasFlag()) {
            this->var_798[i].var_40.func_800823A4();
            if (!this->var_798[i].virt3()) {
                this->var_798[i].func_800825F0();
            }
        }
    }

    Stage2_800* current = this->var_10;
    while (current) {
        if (current->virt2()) {
            current->func_800823A4();
        }
        current = current->var_8;
    }

    Stage2_810* current2 = this->var_14;
    while (1) {
        if (!current2) {
            break;
        }
        if (current2->virt3()) {
            current2->var_40.func_800823A4();
        }
        current2 = current2->var_3C;
    }
}
#else
INCLUDE_ASM("nonmatchings/stage2/790", func_80081B00__10Stage2_790);
#endif

void Stage2_790::func_80081C9C(int arg1)
{
    this->func_80081B00();

    Stage2_810* foo = this->var_14;
    while (foo) {
        bool var_v1 = FALSE;
        if (foo->var_40.hasFlag()) {
            var_v1 = !!foo->virt3();
        }

        if (var_v1) {
            foo->virt6((void*)arg1);
        }

        foo = foo->var_3C;
    }

    for (u32 var_s3 = 0; var_s3 < 0x30; var_s3++) {
        bool var_v1 = FALSE;
        if (this->var_798[var_s3].var_40.hasFlag()) {
            var_v1 = !!this->var_798[var_s3].virt3();
        }

        if (var_v1) {
            this->var_798[var_s3].virt6((void*)arg1);
        }
    }
}

void Stage2_790::func_80081DC0()
{
    u32 i;

    for (i = 0; i < 0x30; i++) {
        if (this->var_18[i].hasFlag()) {
            this->var_18[i].virt1();
        }
    }

    for (i = 0; i < 0x30; i++) {
        if (this->var_798[i].var_40.hasFlag()) {
            this->var_798[i].virt2();
        }
    }

    Stage2_800* current = this->var_10;
    while (current) {
        current->func_80082404();
        current = current->var_8;
    }

    Stage2_810* current2 = this->var_14;
    while (1) {
        if (!current2) {
            break;
        }
        current2->var_40.func_80082404();
        current2 = current2->var_3C;
    }
}

void Stage2_790::func_80081EE8()
{
    Stage2_800* current = this->var_10;
    while (current) {
        current->func_80082468();
        current = current->var_8;
    }

    Stage2_810* current2 = this->var_14;
    while (1) {
        if (!current2) {
            break;
        }
        current2->var_40.func_80082468();
        current2 = current2->var_3C;
    }
}

Stage2_800_substruct* Stage2_790::virt10()
{
    return this->var_8;
}

void* Stage2_790::func_80081F5C()
{
    return this->var_1B20;
}

void* Stage2_790::func_80081F68()
{
    return this->var_1B18;
}

void* Stage2_790::func_80081F74()
{
    return this->var_8;
}

void Stage2_790::func_80081F80(Stage2_800_substruct* arg1)
{
    this->var_8 = arg1;
}

void Stage2_790::func_80081F88(s32 arg1)
{
    this->var_C = arg1;
}

s32 Stage2_790::func_80081F90()
{
    return this->var_C;
}

INCLUDE_ASM("nonmatchings/stage2/790", virt6__21Stage2_790_filereader);

INCLUDE_RODATA("nonmatchings/stage2/790", _vt.10Stage2_790);

INCLUDE_RODATA("nonmatchings/stage2/790", _vt.21Stage2_790_filereader);
