#include "common.h"

extern int D_80025230;

void func_80002164(void* arg0, void* arg1, s32 arg2);

int memcmp(const void* s1, const void* s2, size_t n)
{
    const u8* u1 = (const u8*)s1;
    const u8* u2 = (const u8*)s2;
    u32 i;

    for (i = 0; i < n; i++) {
        if (u1[i] == u2[i]) {
            continue;
        }

        if (u2[i] < u1[i])
            return 1;
        return -1;
    }

    return 0;
}

void* memset(void* str, int c, size_t n)
{
    void* temp_a2;
    u8* var_v1;

    temp_a2 = str + n;
    var_v1 = str;
    if (str < temp_a2) {
        do {
            *var_v1 = c;
            var_v1 += 1;
        } while ((void*)var_v1 < temp_a2);
    }

    return str;
}

INCLUDE_ASM("nonmatchings/libc", func_80001A88);

int strncmp(const char* str1, const char* str2, size_t num)
{
    u32 i;
    u8 temp_a3;
    u8 temp_v1;

    for (i = 0; i < num; i++) {
        temp_a3 = (u8)str1[i];
        temp_v1 = (u8)str2[i];

        if (temp_a3 != temp_v1) {
            if (temp_v1 < temp_a3) {
                return 1;
            } else {
                return -1;
            }
        }
        if (temp_a3 == 0) {
            return 0;
        }
    }

    return 0;
}

char* strcat(char* arg0, char* arg1)
{
    s32 var_a2;
    s32 var_a3;
    u8 temp_v0;
    u8* var_a1;

    var_a1 = arg1;
    var_a3 = 0;
    if (*arg0 != 0) {
        do {
            var_a3 += 1;
        } while (*(arg0 + var_a3) != 0);
    }
    var_a2 = 0;
    if (*var_a1 != 0) {
        do {
            temp_v0 = *var_a1;
            var_a1 += 1;
            *(arg0 + (var_a3 + var_a2)) = temp_v0;
            var_a2 += 1;
        } while (*var_a1 != 0);
    }
    *(arg0 + (var_a3 + var_a2)) = 0;
    return arg0;
}

INCLUDE_ASM("nonmatchings/libc", strncat);

char* strcpy(char* arg0, const char* arg1)
{
    int i;

    for (i = 0; arg1[i] != '\0'; i++) {
        arg0[i] = arg1[i];
    }

    arg0[i] = '\0';

    return arg0;
}

char* strncpy(char* arg0, char* arg1, u32 n)
{
    int i;

    for (i = 0; arg1[i] != '\0' && i < n; i++) {

        arg0[i] = arg1[i];
    }

    if (i < n) {
        arg0[i] = '\0';
    }

    return arg0;
}

INCLUDE_ASM("nonmatchings/libc", strrchr);

INCLUDE_ASM("nonmatchings/libc", atoi);

INCLUDE_ASM("nonmatchings/libc", atof);

s32 toupper(s32 arg0)
{
    if ((u32)(arg0 - 0x61) < 0x1AU) {
        return arg0 - 0x20;
    }
    return arg0;
}

s32 tolower(s32 arg0)
{
    if (arg0 >= 'A' && arg0 <= 'Z') {
        return arg0 + ('a' - 'A');
    }
    return arg0;
}

void func_80001EBC(void) { }

INCLUDE_ASM("nonmatchings/libc", qsort);

void func_800020B4(void* arg0, void* arg1, s32 arg2,
    s32 (*arg3)(void*, void*))
{
    void* var_a0;
    void* var_s0;
    void* var_s1;
    void* var_s2;

    var_s2 = arg1;
    while (arg0 < var_s2) {
        var_s0 = arg0 + arg2;
        var_s1 = arg0;
        if (var_s2 >= var_s0) {
            var_a0 = var_s0;
            do {
                if (arg3(var_a0, var_s1) > 0) {
                    var_s1 = var_s0;
                }
                var_s0 += arg2;
                var_a0 = var_s0;
            } while (var_s2 >= var_s0);
        }
        func_80002164(var_s1, var_s2, arg2);
        var_s2 -= arg2;
    }
}

void func_80002164(void* arg0, void* arg1, s32 arg2)
{
    s32 var_a2;
    u8 temp_v1;
    u8* var_a0;
    u8* var_a1;

    var_a0 = (u8*)arg0;
    var_a1 = (u8*)arg1;
    var_a2 = arg2 - 1;

    if (var_a0 == var_a1) {
        return;
    }

    while (var_a2 != -1) {
        var_a2--;
        temp_v1 = *var_a0;
        *var_a0++ = *var_a1;
        *var_a1++ = temp_v1;
    }
}

INCLUDE_ASM("nonmatchings/libc", strnicmp);

INCLUDE_ASM("nonmatchings/libc", strstr);

INCLUDE_ASM("nonmatchings/libc", func_800022E0);

char* strupr(char* str)
{
    char temp_a1;
    char* var_v1;

    for (var_v1 = str; *var_v1 != 0; var_v1++) {
        temp_a1 = *var_v1;
        if ((temp_a1 >= 'a') && (temp_a1 <= 'z')) {
            *var_v1 = temp_a1 + ('A' - 'a');
        }
    }

    return str;
}

void srand(int arg0) { D_80025230 = arg0; }

int rand(void)
{
    D_80025230 = (D_80025230 * 0x343FD) + 0x269EC3;
    return (D_80025230 >> 0x10) & 0x7FFF;
}

INCLUDE_ASM("nonmatchings/libc", stricmp);
