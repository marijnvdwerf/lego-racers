#include "common.h"

extern "C" {
    void dealloc(void* ptr);
    void crash(const char* msg, int a, int b, int c);
}

#define nullptr 0 

typedef unsigned int uint32_t;
typedef unsigned char uint8_t;
typedef signed int int32_t;


extern char D_80038E30[];
extern char D_800007A8[];

#define MAX_BUFFER 12
#define NULL ((void*)0)
extern char D_80038E20[12];


class Other {
    public:
        char pad[0x28];
        virtual int fn1();
        virtual int fn2();
        virtual int fn3();
        virtual int fn4(); 
        virtual int fn5();
        virtual int fn6();
        virtual int fn7();
        virtual int fn8();
        virtual int fn9();
        virtual int virt50(int, void*,  int, void*);
};

class Fizz {
public:
    char pad0[0xC];
    u32 unkC;
    u32 unk10;
};

class Node {
    public:
        char unk0;
        int unk4;
        int unk8;
        char unkC;
        int unk10;
        int unk14;
        int unk18;
        int childCount;
        Node* children;
        Node();
        void reset();
        Node* func_80008E20(void*, Other*);
        int func_80008EBC(void*, Other*);
};

class Main080b {
    public:
        Other* unk0;
        int unk4; 
        Node unk8;
        void* unk2C;
        Main080b();
        void func_800087E4(Other&);
        void reset();

        void func_80008D2C();
        virtual int func_800088BC(char* inputStr, int* outVal1, int* outVal2) ;
        virtual int func_80008B14();
        virtual int func_80008B20(s32 arg1, u8 *buffer_ptr, u32 remainingSize, u32 arg4, u32 *arg5);
        virtual void func_80008CF8(int, void*,  int, void*);
        virtual ~Main080b();
        virtual int func_80008A00(char* arg1);
};

Main080b::Main080b() {  
    this->unk0 = 0;
    this->unk4 = 0;
    this->unk2C = NULL;
} 

Main080b::~Main080b() {
    reset();
}

char* D_8002FD60 = {
    "Error reading JAM file."
}; 
int D_8002FD64 = -1; 

INCLUDE_RODATA("nonmatchings/main/080b", D_800007A8); // ""

const char D_800007AC[] = "LJAM";  

void Main080b::func_800087E4(Other&other) {
    u8 buffer[8];
    this->unk0 = &other;
    this->unk4 = 0;

    int err = other.virt50(0, D_80038E30, 4, &buffer);
    if (err) {  
        crash(D_800007A8, 0, 0, 0);
    }

    if(memcmp(D_80038E30, D_800007AC, 4)) {
        crash(D_800007A8, 0, 0, 0);
    }
}

void Main080b::reset() {
    this->unk8.reset();
    this->unk0 = nullptr;
    this->unk4 = 0;
}


int Main080b::func_800088BC(char* inputStr, int* outVal1, int* outVal2) {
    Node* node = &this->unk8;
    int i = -1;
    
    while (1) {
        uint32_t bufferPos = 0;
        
        while (inputStr[++i] && inputStr[i] != '\\') {
            if (bufferPos >= MAX_BUFFER) {
                return 6;
            }
            
            D_80038E20[bufferPos++] = inputStr[i];
        }
        
        if (bufferPos < MAX_BUFFER) {
            D_80038E20[bufferPos] = 0;
        }
        
        if (inputStr[i] == '\\') {
            node = node->func_80008E20(D_80038E20, this->unk0);
            if (node == NULL) {
                return 8;
            }
        } else {
            break;
        }
    }
    
    Fizz* res = (Fizz*)node->func_80008EBC(D_80038E20, this->unk0);
    if (res == NULL) {
        return 8;
    }
    *outVal1 = res->unkC;
    *outVal2 = res->unk10;
    this->unk4 = 1;
    return 0;
}

int Main080b::func_80008A00(char* inputStr) {
    Node* node = &this->unk8;
    int i = -1;
    
    while (1) {
        uint32_t bufferPos = 0;
        
        while (inputStr[++i] && inputStr[i] != '\\') {
            if (bufferPos >= MAX_BUFFER) {
                return 6;
            }
            
            D_80038E20[bufferPos++] = inputStr[i];
        }
        
        if (bufferPos < MAX_BUFFER) {
            D_80038E20[bufferPos] = 0;
        }
        
        if (inputStr[i] == '\\') {
            node = node->func_80008E20(D_80038E20, this->unk0);
            if (node == NULL) {
                return 8;
            }
        } else {
            break;
        }
    }
    
    void* res = node->func_80008EBC(D_80038E20, this->unk0);
    if (res == NULL) {
        return 8;
    }
    this->unk2C = res;
    return 0;
}


int Main080b::func_80008B14() {
    this->unk4 = 0;
    return 0;
}


int Main080b::func_80008B20(s32 offset, u8 *buffer, u32 bufferSize, u32 maxLength, u32 *processedLength) {

    uint8_t *currentPos;
    uint32_t totalProcessed;
    uint32_t currentOffset;
    uint32_t remainingSize;
    int32_t hasCR;
    
    // Initialize processed length
    *processedLength = 0;
    
    // Check for empty buffer
    if (bufferSize == 0) {
        return 1;
    }

    currentOffset = 0;
    totalProcessed = 0;
    remainingSize = bufferSize;
    hasCR = false;
    
    while (1) {
        // Determine chunk size (max 64 bytes)
        uint32_t chunkSize;
        if (remainingSize > 0x40) {
            chunkSize = 0x40;
        } else {
            chunkSize = remainingSize;
        }
        
        // Process chunk through context handler
        uint32_t bytesProcessed;
        int32_t result = this->unk0->virt50(
            offset + currentOffset,
            buffer + currentOffset,
            chunkSize,
            &bytesProcessed
        );
        
        if (result != 0) {
            return result;
        }
        
        // Update processed count
        totalProcessed += bytesProcessed;
        
        // Process special characters
        if (currentOffset < totalProcessed) {
            do {
                uint8_t ch = buffer[currentOffset];
                
                if (ch == 0x0D) {  // CR
                    hasCR = true;
                } else if (ch == 0x0A) {  // LF
                    *processedLength = currentOffset + 1;
                    if (hasCR) {
                        buffer[currentOffset - 1] = 0;
                    } else {
                        buffer[currentOffset] = 0;
                    }
                    return 0;
                } else if (ch == 0x1A || ch == 0x00) {  // EOF or null
                    *processedLength = currentOffset + 1;
                    buffer[currentOffset] = 0;
                    return 0;
                } else {
                    hasCR = false;
                }
                
                currentOffset++;
            } while (currentOffset < totalProcessed);
        }
        
        // Update remaining size
        remainingSize -= chunkSize;
        
        // Check if we're done
        if (remainingSize != 0 || bytesProcessed < chunkSize) {
            continue;
        }

        break;
    }
    
    if (totalProcessed == 0) {
        *processedLength = 0;
        *buffer = 0;
        return 0x10;
    }
    
    // Handle maximum length
    if (totalProcessed < maxLength) {
        *processedLength = totalProcessed;
        buffer[totalProcessed] = 0;
    } else {
        *processedLength = bufferSize;
        buffer[bufferSize - 1] = 0;
    }
    
    return 0;
}

void Main080b::func_80008CF8(int a, void* b,  int c , void* d) {
    this->unk0->virt50(a, b, c, d);
}

void Main080b::func_80008D2C() {
    this->unk8.reset();
}

extern "C" void func_80008D48(int a ) {
    D_8002FD64 = a;
}

Node::Node() {
    this->unk0 = 0;
    this->unkC = 0;
    this->unk10 = 4;
    this->unk14 = 0;
    this->unk18 = 0;
    this->childCount = 0;
    this->children = 0;
}

void Node::reset() {
    this->unkC = 0;
   if(this->children) {
        for(u32 i = 0; i < this->childCount; i++) {
            this->children[i].reset();
        } 

        if(this->children) {
            dealloc(this->children);
        }
        this->children = nullptr;
        this->childCount=0;
   }

   if(this->unk18) {
    dealloc(this->unk18);
    this->unk18 = nullptr;
    this->unk14 = 0;
   }
}

INCLUDE_ASM("nonmatchings/main/080b", func_80008E20__4NodePvP5Other);

INCLUDE_ASM("nonmatchings/main/080b", func_80008EBC__4NodePvP5Other);

INCLUDE_ASM("nonmatchings/main/080b", func_80008F58);

INCLUDE_ASM("nonmatchings/main/080b", func_800093EC);

INCLUDE_ASM("nonmatchings/main/080b", func_800093F8);

INCLUDE_ASM("nonmatchings/main/080b", func_80009404);
