#include "common.h"

s32 func_8000C330(u8* src, u8* dest)
{
    s32 repeat;
    s32 size;
    s32 chunkBit;
    u8 chunkByte;
    int var_a1;

    size = 1;
    *(dest++) = *(src++);
    while (1) {
        chunkByte = *(src++);

        for (chunkBit = 0; chunkBit != 8; chunkBit++) {
            if (chunkByte & 0x80) {
                repeat = *(src++);
                if (repeat == 0x00 && *(src) == 0x00) {
                    return size;
                }

                var_a1 = -(((repeat & 0xF0) << 4) + *(src++));
                repeat &= 0xF;

                if (repeat != 0) {
                    repeat = 0x12 - repeat;
                } else {
                    repeat = 0x12 + *(src++);
                }

                while (repeat != 0) {
                    *(dest) = dest[var_a1];
                    size++;
                    repeat--;
                    dest++;
                }
            } else {
                size++;
                *(dest++) = *(src++);
            }

            chunkByte = chunkByte << 1;
        }
    }
}
