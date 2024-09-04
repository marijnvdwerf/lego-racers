#include "common.h"

void func_80005750(s8* offset, s8* dest, s32 len)
{
    u8* buffer;
    u8 c;
    u8* end;

    for (buffer = offset, end = offset + len; buffer < end; buffer++) {
        c = *(buffer);

        if (c == '\0') {
            if (buffer != offset) {
                *(dest++) = '\0';
                break;
            } else {
                *(dest++) = ' ';
                continue;
            }
        } else if (c >= 0x1A && c <= 0x33) { // A-Z
            *(dest++) = 'A' + (c - 0x1A);
        } else if (c >= 0x10 && c <= 0x19) { // 0-9
            *(dest++) = '0' + (c - 0x10);
        } else if (c == 0xF) {
            *(dest++) = ' ';
        } else if (c >= 0x38 && c <= 0x3D) {
            *(dest++) = '*' + (c - 0x38);
        } else if (c >= 0x34 && c <= 0x36) {
            *(dest++) = '!' + (c - 0x34);
        } else if (c == 0x37) {
            *(dest++) = '\'';
        } else if (c == 0x3E) {
            *(dest++) = ':';
        } else if (c == 0x3F) {
            *(dest++) = '=';
        } else if (c == 0x40) {
            *(dest++) = '?';
        } else if (c == 0x41) {
            *(dest++) = '@';
        } else {
            *(dest++) = '*';
        }
    }
}

void ascii_to_n64(s8* buffer, s8* dest, s32 len)
{
    u8 c;
    u8* end;

    for (end = buffer + len; buffer < end; buffer++) {
        c = *(buffer);

        if (c == '\0') {
            *(dest++) = 0;
            break;
        }

        c = toupper(*(buffer));

        if (c >= 'A' && c <= 'Z') {
            *(dest++) = 0x1A + (c - 'A');
        } else if (c >= '0' && c <= '9') {
            *(dest++) = 0x10 + (c - '0');
        } else if (c == 0x20) {
            *(dest++) = 0xF;
        } else if (c >= '*' && c <= '/') {
            *(dest++) = 0x38 + (c - '*');
        } else if (c >= '!' && c <= '#') {
            *(dest++) = 0x34 + (c - '!');
        } else if (c == '\'') {
            *(dest++) = 0x37;
        } else if (c == ':') {
            *(dest++) = 0x3E;
        } else if (c == '=') {
            *(dest++) = 0x3F;
        } else if (c == '?') {
            *(dest++) = 0x40;
        } else if (c == '@') {
            *(dest++) = 0x41;
        } else {
            *(dest++) = 0x38;
        }
    }
}

size_t wcslen(const unsigned short* arg0)
{

    int strlen = 0;

    while (*(arg0++) != 0) {
        strlen++;
    }

    return strlen;
}

int func_800059F0(u16* a0, u16* a1)
{
    do {
        if (*a0 != *a1) {
            return 0;
        }

        a1++;
    } while (*(a0++) != 0);

    return 1;
}

void func_80005A18(s32 var_a0, s16* arg1)
{
    s32 var_a2;

    var_a2 = 10;
    while (var_a0 / var_a2 != 0) {
        var_a2 *= 10;
    }

    var_a2 = var_a2 / 10;

    while (var_a0 != 0) {
        *(arg1++) = '0' + (var_a0 / var_a2);
        var_a0 = var_a0 % var_a2;
        var_a2 = var_a2 / 10;
    }

    *(arg1++) = '\0';
}

void func_80005B20(u8* arg0, s16* arg1)
{
    while (*arg0 != 0) {
        *(arg1++) = *(arg0++);
    }
    *arg1 = 0;
}

void func_80005B4C(u16* src, u8* dest)
{
    u8* _dest;
    u16* _src;

    _src = src;
    _dest = dest;
    while (*_src != 0) {
        *_dest++ = *_dest++;
    }
    *_dest = 0;
}
