#include "common.h"

extern "C" {
void crash(const char* msg, int a, int b, int c);
int strncmp(const char* str1, const char* str2, size_t n);
void func_8007ED94(int);
void func_8007EDC8();
}

#define nullptr (0)

extern char D_80038E30[];

#define MAX_BUFFER 12
extern char D_80038E20[MAX_BUFFER];

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
    virtual int virt50(int, void*, int, void*);
};

class FileNode {
public:
    char unk0[12];
    int unkC;
    int unk10;
};

class DirectoryNode {
public:
    char unk0[12];
    char unkC;
    int unk10;
    u32 unk14;
    FileNode* unk18;
    u32 childCount;
    DirectoryNode* children;
    DirectoryNode();
    void reset();
    DirectoryNode* func_80008E20(char*, Other*);
    FileNode* func_80008EBC(char*, Other*);
    void func_80008F58(Other*);
};

class Main080b {
public:
    Other* unk0;
    int unk4;
    DirectoryNode unk8;
    FileNode* unk2C;
    Main080b();
    void func_800087E4(Other&);
    void reset();
    void func_80008D2C();
    void* Main080b::func_800093EC();
    Other* Main080b::func_800093F8();
    bool Main080b::func_80009404();

    // Virtual functions
    virtual int func_800088BC(char* inputStr, int* outVal1, int* outVal2);
    virtual int func_80008B14();
    virtual int func_80008B20(s32 offset, u8* buffer, u32 bufferSize, u32 maxLength, u32* processedLength);
    virtual void func_80008CF8(int, void*, int, void*);
    virtual ~Main080b();
    virtual int func_80008A00(char* arg1);
};

Main080b::Main080b()
{
    this->unk0 = nullptr;
    this->unk4 = 0;
    this->unk2C = nullptr;
}

Main080b::~Main080b()
{
    reset();
}

char* D_8002FD60 = {
    "Error reading JAM file."
};
int D_8002FD64 = -1;

void Main080b::func_800087E4(Other& other)
{
    u8 buffer[8];
    this->unk0 = &other;
    this->unk4 = 0;

    int err = other.virt50(0, D_80038E30, 4, &buffer);
    if (err) {
        crash("", 0, 0, 0);
    }

    if (memcmp(D_80038E30, "LJAM", 4)) {
        crash("", 0, 0, 0);
    }
}

void Main080b::reset()
{
    this->unk8.reset();
    this->unk0 = nullptr;
    this->unk4 = 0;
}

int Main080b::func_800088BC(char* inputStr, int* outVal1, int* outVal2)
{
    DirectoryNode* node = &this->unk8;
    int i = -1;

    while (1) {
        u32 bufferPos = 0;

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
            if (node == nullptr) {
                return 8;
            }
        } else {
            break;
        }
    }

    FileNode* res = node->func_80008EBC(D_80038E20, this->unk0);
    if (res == nullptr) {
        return 8;
    }
    *outVal1 = res->unkC;
    *outVal2 = res->unk10;
    this->unk4 = 1;
    return 0;
}

int Main080b::func_80008A00(char* inputStr)
{
    DirectoryNode* node = &this->unk8;
    int i = -1;

    while (1) {
        u32 bufferPos = 0;

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
            if (node == nullptr) {
                return 8;
            }
        } else {
            break;
        }
    }

    FileNode* res = node->func_80008EBC(D_80038E20, this->unk0);
    if (res == nullptr) {
        return 8;
    }
    this->unk2C = res;
    return 0;
}

int Main080b::func_80008B14()
{
    this->unk4 = 0;
    return 0;
}

int Main080b::func_80008B20(s32 offset, u8* buffer, u32 bufferSize, u32 maxLength, u32* processedLength)
{
    u8* currentPos;
    u32 totalProcessed;
    u32 currentOffset;
    u32 remainingSize;
    s32 hasCR;

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
        u32 chunkSize;
        if (remainingSize > 0x40) {
            chunkSize = 0x40;
        } else {
            chunkSize = remainingSize;
        }

        // Process chunk through context handler
        u32 bytesProcessed;
        s32 result = this->unk0->virt50(
            offset + currentOffset,
            buffer + currentOffset,
            chunkSize,
            &bytesProcessed);

        if (result != 0) {
            return result;
        }

        // Update processed count
        totalProcessed += bytesProcessed;

        // Process special characters
        if (currentOffset < totalProcessed) {
            do {
                u8 ch = buffer[currentOffset];

                if (ch == 0x0D) { // CR
                    hasCR = true;
                } else if (ch == 0x0A) { // LF
                    *processedLength = currentOffset + 1;
                    if (hasCR) {
                        buffer[currentOffset - 1] = 0;
                    } else {
                        buffer[currentOffset] = 0;
                    }
                    return 0;
                } else if (ch == 0x1A || ch == 0x00) { // EOF or null
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

void Main080b::func_80008CF8(int a, void* b, int c, void* d)
{
    this->unk0->virt50(a, b, c, d);
}

void Main080b::func_80008D2C()
{
    this->unk8.reset();
}

extern "C" void func_80008D48(int a)
{
    D_8002FD64 = a;
}

DirectoryNode::DirectoryNode()
{
    this->unk0[0] = '\0';
    this->unkC = 0;
    this->unk10 = 4;
    this->unk14 = 0;
    this->unk18 = 0;
    this->childCount = 0;
    this->children = 0;
}

void DirectoryNode::reset()
{
    this->unkC = 0;
    if (this->children) {
        for (u32 i = 0; i < this->childCount; i++) {
            this->children[i].reset();
        }

        if (this->children) {
            delete[] this->children;
        }
        this->children = nullptr;
        this->childCount = 0;
    }

    if (this->unk18) {
        if (this->unk18) {
            delete[] this->unk18;
        }
        this->unk18 = nullptr;
        this->unk14 = 0;
    }
}

DirectoryNode* DirectoryNode::func_80008E20(char* searchStr, Other* other)
{
    if (this->unkC == 0) {
        this->func_80008F58(other);
    }

    for (u32 index = 0; index < this->childCount; index++) {
        if (strncmp(this->children[index].unk0, searchStr, 12) == 0) {
            return &this->children[index];
        }
    }
    return nullptr;
}

FileNode* DirectoryNode::func_80008EBC(char* searchStr, Other* other)
{
    if (this->unkC == 0) {
        this->func_80008F58(other);
    }

    for (u32 index = 0; index < this->unk14; index++) {
        if (strncmp(this->unk18[index].unk0, searchStr, 12) == 0) {
            return &this->unk18[index];
        }
    }

    return nullptr;
}

void DirectoryNode::func_80008F58(Other* other)
{
    if (this->unkC != 0) {
        return;
    }

    u32 fileOffset = this->unk10;
    int bytesRead;
    int i;

    // Read number of Node2 entries
    if (other->virt50(fileOffset, &D_80038E30, 4, &bytesRead) != 0) {
        crash("", 0, 0, 0);
    }
    fileOffset += 4;

    // Parse number of Node2 entries (4 bytes)
    this->unk14 = D_80038E30[0] + (D_80038E30[1] << 8) + (D_80038E30[2] << 16) + (D_80038E30[3] << 24);

    // Validate count
    if (this->unk14 > 100000) {
        crash("", 0, 0, 0);
    }

    // Allocate and read Node2 entries
    if (this->unk14 > 0) {
        func_8007ED94(D_8002FD64);
        this->unk18 = new FileNode[this->unk14];
        func_8007EDC8();

        if (this->unk18 == nullptr) {
            crash("", 0, 0, 0);
        }

        // Read each Node2 entry
        for (i = 0; i < this->unk14; i++) {
            if (other->virt50(fileOffset, &D_80038E30, 0x14, &bytesRead) != 0) {
                crash("", 0, 0, 0);
            }
            fileOffset += bytesRead;

            memcpy(this->unk18[i].unk0, &D_80038E30[0], 12); // Copy first 12 bytes
            this->unk18[i].unkC = D_80038E30[0xC] + (D_80038E30[0xD] << 8) + (D_80038E30[0xE] << 16) + (D_80038E30[0xF] << 24);
            this->unk18[i].unk10 = D_80038E30[0x10] + (D_80038E30[0x11] << 8) + (D_80038E30[0x12] << 16) + (D_80038E30[0x13] << 24);
        }
    }

    // Read number of child nodes
    if (other->virt50(fileOffset, &D_80038E30, 4, &bytesRead) != 0) {
        crash("", 0, 0, 0);
    }
    fileOffset += 4;

    // Parse number of children (4 bytes)
    this->childCount = D_80038E30[0] + (D_80038E30[1] << 8) + (D_80038E30[2] << 16) + (D_80038E30[3] << 24);

    if (this->childCount > 0x186A0) {
        crash("", 0, 0, 0);
    }

    // Allocate and initialize child nodes
    if (this->childCount > 0) {
        func_8007ED94(D_8002FD64);
        this->children = new DirectoryNode[this->childCount];
        func_8007EDC8();

        if (this->children == nullptr) {
            crash("", 0, 0, 0);
        }

        // Read data for each child node
        for (i = 0; i < this->childCount; i++) {
            if (other->virt50(fileOffset, &D_80038E30, 0x10, &bytesRead)) {
                crash("", 0, 0, 0);
            }
            fileOffset += bytesRead;

            memcpy(this->children[i].unk0, &D_80038E30[0], 12); // Copy first 12 bytes
            this->children[i].unkC = 0;
            this->children[i].unk10 = D_80038E30[0xC] + (D_80038E30[0xD] << 8) + (D_80038E30[0xE] << 16) + (D_80038E30[0xF] << 24);
        }
    }

    this->unkC = 1;
}

void* Main080b::func_800093EC()
{
    return this->unk2C;
}

Other* Main080b::func_800093F8()
{
    return this->unk0;
}

bool Main080b::func_80009404()
{
    return this->unk0 != nullptr;
}
