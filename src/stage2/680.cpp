#include "common.h"
#include "n64_input.h"

typedef struct {
    u32 type;
} Message;

extern Message D_80087350;
extern OSMesgQueue D_800CA0B0;
extern OSMesgQueue D_800CA110;
extern s32 D_80087550;
extern void* D_800CA0D0;
extern void* D_800CA128;
extern OSScClient D_800CA170;
extern OSMesgQueue D_800CA150;
extern OSMesgQueue D_800CA130;
extern OSMesg D_800CA168[1];
extern OSMesg D_800CA148[1];
extern u32 D_80087370;

void func_8007CEBC(Stage2_680* arg0);

typedef struct {
    u8* bitpattern;
    s32 var_4;
} MsgArgs1_10;

typedef struct {
    OSPfs* pfs;
    int controller_no;
    s32 var_8;
} MsgArgs3_11;

typedef struct {
    OSPfs* pfs;
    u16 company_code;
    u32 game_code;
    u8* game_name;
    u8* ext_name;
    int length;
    s32* file_no;
    s32 var_1C;
} MsgArgs5_12;

typedef struct {
    OSPfs* pfs;
    u16 company_code;
    u32 game_code;
    u8* game_name;
    u8* ext_name;
    s32* file_no;
    s32 var_18;
} MsgArgs6_13;

typedef struct {
    OSPfs* pfs;
    u16 company_code;
    u32 game_code;
    u8* game_name;
    u8* ext_name;
    s32 var_14;
} MsgArgs7_14;

typedef struct {
    OSPfs* pfs;
    s32 file_no;
    u8 flag;
    int offset;
    int nbytes;
    u8* data_buffer;
    s32 var_18;
} MsgArgs8_15;

typedef struct {
    OSPfs* pfs;
    s32 var_4;
} MsgArgs2_16;

typedef struct {
    OSPfs* pfs;
    int channel;
    u32 var_8;
} MotorArgs;

typedef struct {
    OSPfs* pfs;
    s32* max_files;
    s32* files_used;
    s32 var_C;
} MsgArgs4_20;

typedef struct {
    OSPfs* pfs;
    s32 file_no;
    OSPfsState* state;
    s32 var_C;
} MsgArgs4_21;

typedef struct {
    OSPfs* pfs;
    s32* bytes_not_used;
    s32 var_8;
} MsgArgs3_22;

extern u32 D_80087390; // 10   MsgArgs1_10
extern u32 D_800873B0; // 11   MsgArgs3_11
extern u32 D_800873D0; // 12   MsgArgs5_12
extern u32 D_800873F0; // 13   MsgArgs6_13
extern u32 D_80087410; // 14   MsgArgs7_14
extern u32 D_80087430; // 15   MsgArgs8_15
extern u32 D_80087450; // 16   MsgArgs2_16
extern u32 D_80087470; // 17   MotorArgs
extern u32 D_80087490; // 18   MotorArgs
extern u32 D_800874B0; // 19   MotorArgs
extern u32 D_800874D0; // 23   MotorArgs
extern u32 D_800874F0; // 20   MsgArgs4_20
extern u32 D_80087510; // 21   MsgArgs4_21
extern u32 D_80087530; // 22   MsgArgs3_22

void Stage2_680::virt0()
{
    memset(this->var_5C, 0, sizeof(this->var_5C));
    memset(this->var_4238, 0, sizeof(this->var_4238));
    this->var_80 = 0;
    this->var_54 = 0;
    this->var_58 = 1;
    this->var_7C = 0;
    Main_100::virt0();
}

Stage2_680::Stage2_680()
{
    Stage2_680::virt0();
}

Stage2_680::~Stage2_680()
{
    Stage2_680::virt4();
}

void Stage2_680::func_8007C3E0()
{
    osSendMesg(&D_800CA0B0, &D_80087350, 1);
    osRecvMesg(&D_800CA110, NULL, 1);
}

void Stage2_680::func_8007C420()
{
    memset(&D_800CA170, 0, 8);
    osCreateMesgQueue(&D_800CA0B0, &D_800CA0D0, 0x10);
    osCreateMesgQueue(&D_800CA110, &D_800CA128, 1);
    osScAddClient(this->var_47AC, &D_800CA170, &D_800CA0B0);
    osCreateThread(&this->var_88, 2, func_8007CEBC, this, &this->stack[0x4000], 51);
    osStartThread(&this->var_88);
    D_80087550 = 1;
}

void Stage2_680::func_8007C4EC()
{
    this->virt4();
    this->func_8007C420();
    this->func_8007C3E0();

    int idx = 0;
    for (int i = 0; i < 4; i++) {
        if (this->var_5C[i]) {
            this->var_4268[i].func_8007D56C(this, i);
            this->var_40[idx++] = &this->var_4268[i];
        }
    }

    this->var_28 = 1;
}

int Stage2_680::virt5()
{
    for (int i = 0; i < 4; i++) {
        if (this->var_40[i]) {
            this->var_40[i]->virt4();
            this->var_40[i] = NULL;
        }
    }

    memset(this->var_5C, 0, sizeof(this->var_5C));
    this->var_7C = 0;
    this->func_8007C3E0();

    int idx = 0;
    for (int i = 0; i < 4; i++) {
        if (this->var_5C[i]) {
            this->var_4268[i].func_8007D56C(this, i);
            this->var_40[idx++] = &this->var_4268[i];
        }
    }
 
    return 1;
}

int Stage2_680::virt4()
{
    if (!this->var_28) {
        return 1;
    }

    for (int i = 0; i < 4; i++) {
        if (this->var_40[i]) {
            this->var_40[i]->virt4();
            this->var_40[i] = NULL;
        }
    }
    osStopThread(&this->var_88);
    this->virt0();

    return 1;
}

#if 1
INCLUDE_ASM("nonmatchings/stage2/680", virt6__10Stage2_680i);
#else
int Stage2_680::virt6(int arg1)
{
    int result = 0;

    if (this->var_80 == 0) {
        return result;
    }

    // Loop through all 4 potential slots
    for (int i = 0; i < 4; i++) {
        // Check if slot is active (var_5C[i])
        if (!this->var_4268[i].var_14) {
            continue;
        }

        Stage2_690* current = &this->var_4268[i];

        // Set up buffer pointer to the correct position in var_4238
        current->var_A4 = &this->var_4238[this->var_54][i];

        // Call virtual function 5 and store result
        int callResult = current->virt5(arg1);
        if (callResult != 0) {
            result = callResult;
        }
        // }
    }

    // Set result to 1 if no other result but var_7C is set
    if (result == 0 && this->var_7C != 0) {
        result = 1;
    }

    // Update state variables
    this->var_80 = 0;
    temp_v0 = this->var_58;
    this->var_54 = temp_v0;
    this->var_58 = !temp_v0;

    return result;
}
#endif

u32 Stage2_680::virt7()
{
    return this->var_7C;
}

u32 Stage2_680::func_8007C844(int arg1)
{
    return this->var_6C[arg1].type & CONT_ABSOLUTE;
}

extern "C" u32 func_8007C858(Stage2_680* ths, u32 arg1)
{
    return ths->var_6C[arg1].type & CONT_JOYPORT;
}

u32 Stage2_680::func_8007C86C(u8* bitpattern)
{
    MsgArgs1_10 args;
    args.bitpattern = bitpattern;

    this->var_47A8 = &args;
    osSendMesg(&D_800CA0B0, &D_80087390, 1);
    osRecvMesg(&D_800CA110, NULL, 1);
    this->var_47A8 = NULL;

    return args.var_4;
}

u32 Stage2_680::func_8007C8CC(OSPfs* pfs, int controller_no)
{
    MsgArgs3_11 args;
    args.pfs = pfs;
    args.controller_no = controller_no;

    this->var_47A8 = &args;
    osSendMesg(&D_800CA0B0, &D_800873B0, 1);
    osRecvMesg(&D_800CA110, NULL, 1);
    this->var_47A8 = NULL;

    return args.var_8;
}

u32 Stage2_680::func_8007C930(OSPfs* arg1, int arg2)
{
    int v1 = func_8007C8CC(arg1, arg2);
    if (v1 != 0xB) {
        return v1;
    }

    v1 = func_8007CC04(arg1, arg2);
    if (v1 == 0xB) {
        return 0xA;
    }

    return v1;
}

u32 Stage2_680::func_8007C9A4(OSPfs* arg1, int arg2, int arg3, u8* arg4, u8* arg5, int arg6, s32* arg7)
{
    MsgArgs5_12 sp10;

    sp10.pfs = arg1;
    sp10.company_code = arg2;
    sp10.game_code = arg3;
    sp10.game_name = arg4;
    sp10.ext_name = arg5;
    sp10.length = arg6;
    sp10.file_no = arg7;
    this->var_47A8 = &sp10;
    osSendMesg(&D_800CA0B0, &D_800873D0, 1);
    osRecvMesg(&D_800CA110, NULL, 1);
    this->var_47A8 = NULL;

    return sp10.var_1C;
}

u32 Stage2_680::func_8007CA2C(OSPfs* arg1, int arg2, int arg3, u8* arg4, u8* arg5, s32* arg6)
{
    MsgArgs6_13 sp10;

    sp10.pfs = arg1;
    sp10.company_code = arg2;
    sp10.game_code = arg3;
    sp10.game_name = arg4;
    sp10.ext_name = arg5;
    sp10.file_no = arg6;
    this->var_47A8 = &sp10;
    osSendMesg(&D_800CA0B0, &D_800873F0, 1);
    osRecvMesg(&D_800CA110, NULL, 1);
    this->var_47A8 = NULL;

    return sp10.var_18;
}

u32 Stage2_680::func_8007CAAC(OSPfs* arg1, int arg2, int arg3, u8* arg4, u8* arg5)
{
    MsgArgs7_14 sp10;

    sp10.pfs = arg1;
    sp10.company_code = arg2;
    sp10.game_code = arg3;
    sp10.game_name = arg4;
    sp10.ext_name = arg5;
    this->var_47A8 = &sp10;
    osSendMesg(&D_800CA0B0, &D_80087410, 1);
    osRecvMesg(&D_800CA110, NULL, 1);
    this->var_47A8 = NULL;

    return sp10.var_14;
}

u32 Stage2_680::func_8007CB24(OSPfs* arg1, s32 arg2, u8 arg3, int arg4, int arg5, u8* arg6)
{
    MsgArgs8_15 sp10;

    sp10.pfs = arg1;
    sp10.file_no = arg2;
    sp10.flag = arg3;
    sp10.offset = arg4;
    sp10.nbytes = arg5;
    sp10.data_buffer = arg6;
    this->var_47A8 = &sp10;
    osSendMesg(&D_800CA0B0, &D_80087430, 1);
    osRecvMesg(&D_800CA110, NULL, 1);
    this->var_47A8 = NULL;

    return sp10.var_18;
}

u32 Stage2_680::func_8007CBA4(OSPfs* arg1)
{
    MsgArgs2_16 args;
    args.pfs = arg1;

    this->var_47A8 = &args;
    osSendMesg(&D_800CA0B0, &D_80087450, 1);
    osRecvMesg(&D_800CA110, NULL, 1);
    this->var_47A8 = NULL;

    return args.var_4;
}

u32 Stage2_680::func_8007CC04(OSPfs* pfs, int channel)
{
    MotorArgs sp10;
    sp10.pfs = pfs;
    sp10.channel = channel;

    this->var_47A8 = &sp10;
    osSendMesg(&D_800CA0B0, &D_80087470, 1);
    osRecvMesg(&D_800CA110, NULL, 1);
    this->var_47A8 = NULL;

    return sp10.var_8;
}

u32 Stage2_680::func_8007CC68(OSPfs* pfs)
{
    MotorArgs args;
    args.pfs = pfs;

    this->var_47A8 = &args;
    osSendMesg(&D_800CA0B0, &D_80087490, 1);
    osRecvMesg(&D_800CA110, NULL, 1);
    this->var_47A8 = NULL;

    return args.var_8;
}

u32 Stage2_680::func_8007CCC8(OSPfs* pfs)
{
    MotorArgs args;
    args.pfs = pfs;

    this->var_47A8 = &args;
    osSendMesg(&D_800CA0B0, &D_800874B0, 1);
    osRecvMesg(&D_800CA110, NULL, 1);
    this->var_47A8 = NULL;

    return args.var_8;
}

u32 Stage2_680::func_8007CD28(OSPfs* pfs)
{
    MotorArgs args;
    args.pfs = pfs;

    this->var_47A8 = &args;
    osSendMesg(&D_800CA0B0, &D_800874D0, 1);
    osRecvMesg(&D_800CA110, NULL, 1);
    this->var_47A8 = NULL;

    return args.var_8;
}

u32 Stage2_680::func_8007CD88(OSPfs* arg1, s32* max_files, s32* files_used)
{
    MsgArgs4_20 args;
    args.pfs = arg1;
    args.max_files = max_files;
    args.files_used = files_used;

    this->var_47A8 = &args;
    osSendMesg(&D_800CA0B0, &D_800874F0, 1);
    osRecvMesg(&D_800CA110, NULL, 1);
    this->var_47A8 = NULL;

    return args.var_C;
}

u32 Stage2_680::func_8007CDF0(OSPfs* arg1, s32 file_no, OSPfsState* state)
{
    MsgArgs4_21 args;
    args.pfs = arg1;
    args.file_no = file_no;
    args.state = state;

    this->var_47A8 = &args;
    osSendMesg(&D_800CA0B0, &D_80087510, 1);
    osRecvMesg(&D_800CA110, NULL, 1);
    this->var_47A8 = NULL;

    return args.var_C;
}

u32 Stage2_680::func_8007CE58(OSPfs* pfs, s32* bytes_not_used)
{
    MsgArgs3_22 args;
    args.pfs = pfs;
    args.bytes_not_used = bytes_not_used;

    this->var_47A8 = &args;
    osSendMesg(&D_800CA0B0, &D_80087530, 1);
    osRecvMesg(&D_800CA110, NULL, 1);
    this->var_47A8 = NULL;

    return args.var_8;
}

void func_8007CEBC(Stage2_680* arg0)
{
    OSMesg sp24;
    s16 temp_v0;
    int i;

    osCreateMesgQueue(&D_800CA150, D_800CA168, 1);
    osCreateMesgQueue(&D_800CA130, D_800CA148, 1);
    osSetEventMesg(5, &D_800CA130, (void*)1);
    u8 sp20;
    osContInit(&D_800CA130, &sp20, arg0->var_6C);

    while (true) {
        osRecvMesg(&D_800CA0B0, &sp24, 1);
        temp_v0 = *(s16*)sp24;

        switch (temp_v0) {
            case 1: {
                if (arg0->var_28 != 0) {
                    osContStartQuery(&D_800CA130);
                    osRecvMesg(&D_800CA130, NULL, 1);
                    osContGetQuery(arg0->var_6C);
                    arg0->var_7C = 0;

                    for (i = 0; i < 4; i++) {
                        if (arg0->var_6C[i].type & 5 && arg0->var_5C[i] != !(arg0->var_6C[i].errno & 0xC)) {
                            arg0->var_7C++;
                        }
                    }

                    osContStartReadData(&D_800CA130);
                    osRecvMesg(&D_800CA130, NULL, 1);
                    osContGetReadData(arg0->var_4238[arg0->var_58]);
                    arg0->var_80 = 1;
                }
                break;
            }

            case 4: {
                for (i = 0; i < 4; i++) {
                    Stage2_690* temp_s0 = (Stage2_690*)arg0->var_40[i];
                    if (temp_s0 != NULL && temp_s0->var_C0 != 0) {
                        osMotorInit(&D_800CA130, &temp_s0->pfs, temp_s0->var_88);
                        osMotorStop(&temp_s0->pfs);
                        osMotorStop(&temp_s0->pfs);
                        osMotorStop(&temp_s0->pfs);
                    }
                }
                break;
            }

            case 7: {
                memset(arg0->var_6C, 0, sizeof(arg0->var_6C));
                osContStartQuery(&D_800CA130);
                osRecvMesg(&D_800CA130, NULL, 1);
                osContGetQuery(arg0->var_6C);
                arg0->var_34 = 0;
                for (i = 0; i < 4; i++) {
                    if (!(arg0->var_6C[i].type & 5)) {
                        arg0->var_5C[i] = 0;
                    } else {
                        arg0->var_5C[i] = (arg0->var_6C[i].errno & 0xC) == 0;
                        if (arg0->var_5C[i]) {
                            arg0->var_34++;
                        }
                    }
                }

                osSendMesg(&D_800CA110, &D_80087370, 1);
                break;
            }

            case 10: {
                MsgArgs1_10* args = (MsgArgs1_10*)arg0->var_47A8;
                args->var_4 = osPfsIsPlug(&D_800CA130, args->bitpattern);
                osSendMesg(&D_800CA110, &D_80087370, 1);
                break;
            }

            case 11: {
                MsgArgs3_11* args = (MsgArgs3_11*)arg0->var_47A8;
                args->var_8 = osPfsInitPak(&D_800CA130, args->pfs, args->controller_no);
                osSendMesg(&D_800CA110, &D_80087370, 1);
                break;
            }

            case 12: {
                MsgArgs5_12* args = (MsgArgs5_12*)arg0->var_47A8;
                args->var_1C = osPfsAllocateFile(args->pfs, args->company_code, args->game_code, args->game_name, args->ext_name, args->length, args->file_no);
                osSendMesg(&D_800CA110, &D_80087370, 1);
                break;
            }

            case 13: {
                MsgArgs6_13* args = (MsgArgs6_13*)arg0->var_47A8;
                args->var_18 = osPfsFindFile(args->pfs, args->company_code, args->game_code, args->game_name, args->ext_name, args->file_no);
                osSendMesg(&D_800CA110, &D_80087370, 1);
                break;
            }

            case 14: {
                MsgArgs7_14* args = (MsgArgs7_14*)arg0->var_47A8;
                args->var_14 = osPfsDeleteFile(args->pfs, args->company_code, args->game_code, args->game_name, args->ext_name);
                osSendMesg(&D_800CA110, &D_80087370, 1);
                break;
            }

            case 15: {
                MsgArgs8_15* args = (MsgArgs8_15*)arg0->var_47A8;
                args->var_18 = osPfsReadWriteFile(args->pfs, args->file_no, args->flag, args->offset, args->nbytes, args->data_buffer);
                osSendMesg(&D_800CA110, &D_80087370, 1);
                break;
            }

            case 16: {
                MsgArgs2_16* args = (MsgArgs2_16*)arg0->var_47A8;
                args->var_4 = osPfsRepairId(args->pfs);
                osSendMesg(&D_800CA110, &D_80087370, 1);
                break;
            }

            case 17: {
                MotorArgs* args = (MotorArgs*)arg0->var_47A8;
                args->var_8 = osMotorInit(&D_800CA130, args->pfs, args->channel);
                osSendMesg(&D_800CA110, &D_80087370, 1);
                break;
            }

            case 18: {
                MotorArgs* args = (MotorArgs*)arg0->var_47A8;
                args->var_8 = osMotorStart(args->pfs);
                osSendMesg(&D_800CA110, &D_80087370, 1);
                break;
            }

            case 19: {
                MotorArgs* args = (MotorArgs*)arg0->var_47A8;
                args->var_8 = osMotorStop(args->pfs);
                osSendMesg(&D_800CA110, &D_80087370, 1);
                break;
            }

            case 23: {
                MotorArgs* args = (MotorArgs*)arg0->var_47A8;
                args->var_8 = osMotorStop(args->pfs);
                args->var_8 = osMotorStop(args->pfs);
                args->var_8 = osMotorStop(args->pfs);
                osSendMesg(&D_800CA110, &D_80087370, 1);
                break;
            }

            case 20: {
                MsgArgs4_20* args = (MsgArgs4_20*)arg0->var_47A8;
                args->var_C = osPfsNumFiles(args->pfs, args->max_files, args->files_used);
                osSendMesg(&D_800CA110, &D_80087370, 1);
                break;
            }

            case 21: {
                MsgArgs4_21* args = (MsgArgs4_21*)arg0->var_47A8;
                args->var_C = osPfsFileState(args->pfs, args->file_no, args->state);
                osSendMesg(&D_800CA110, &D_80087370, 1);
                break;
            }

            case 22: {
                MsgArgs3_22* args = (MsgArgs3_22*)arg0->var_47A8;
                args->var_8 = osPfsFreeBlocks(args->pfs, args->bytes_not_used);
                osSendMesg(&D_800CA110, &D_80087370, 1);
                break;
            }
        }
    }
}

Stage2_690* Stage2_680::virt2(int arg1)
{
    return &this->var_4268[arg1];
}

Stage2_690* Stage2_680::virt3(int arg1)
{
    return &this->var_4268[arg1];
}

extern "C" u32 func_8007D41C(Stage2_680* ths, OSSched* sched)
{
    ths->var_47AC = sched;
}
