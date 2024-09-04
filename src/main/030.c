#include "common.h"

typedef struct {
    float x;
    float y;
} Vector2;

typedef struct {
    float x;
    float y;
    float z;
} Vector3;

float sqrtf(float);
float sinf(float);
float cosf(float);

extern f32 D_8002E2B0[1024];

void func_80003180(float (*a)[4], float (*b)[4], float (*out)[4])
{
    out[0][0] = (a[0][0] * b[0][0]) + (a[0][1] * b[1][0]) + (a[0][2] * b[2][0]) + (a[0][3] * b[3][0]);
    out[0][1] = (a[0][0] * b[0][1]) + (a[0][1] * b[1][1]) + (a[0][2] * b[2][1]) + (a[0][3] * b[3][1]);
    out[0][2] = (a[0][0] * b[0][2]) + (a[0][1] * b[1][2]) + (a[0][2] * b[2][2]) + (a[0][3] * b[3][2]);
    out[0][3] = (a[0][0] * b[0][3]) + (a[0][1] * b[1][3]) + (a[0][2] * b[2][3]) + (a[0][3] * b[3][3]);
    out[1][0] = (a[1][0] * b[0][0]) + (a[1][1] * b[1][0]) + (a[1][2] * b[2][0]) + (a[1][3] * b[3][0]);
    out[1][1] = (a[1][0] * b[0][1]) + (a[1][1] * b[1][1]) + (a[1][2] * b[2][1]) + (a[1][3] * b[3][1]);
    out[1][2] = (a[1][0] * b[0][2]) + (a[1][1] * b[1][2]) + (a[1][2] * b[2][2]) + (a[1][3] * b[3][2]);
    out[1][3] = (a[1][0] * b[0][3]) + (a[1][1] * b[1][3]) + (a[1][2] * b[2][3]) + (a[1][3] * b[3][3]);
    out[2][0] = (a[2][0] * b[0][0]) + (a[2][1] * b[1][0]) + (a[2][2] * b[2][0]) + (a[2][3] * b[3][0]);
    out[2][1] = (a[2][0] * b[0][1]) + (a[2][1] * b[1][1]) + (a[2][2] * b[2][1]) + (a[2][3] * b[3][1]);
    out[2][2] = (a[2][0] * b[0][2]) + (a[2][1] * b[1][2]) + (a[2][2] * b[2][2]) + (a[2][3] * b[3][2]);
    out[2][3] = (a[2][0] * b[0][3]) + (a[2][1] * b[1][3]) + (a[2][2] * b[2][3]) + (a[2][3] * b[3][3]);
    out[3][0] = (a[3][0] * b[0][0]) + (a[3][1] * b[1][0]) + (a[3][2] * b[2][0]) + (a[3][3] * b[3][0]);
    out[3][1] = (a[3][0] * b[0][1]) + (a[3][1] * b[1][1]) + (a[3][2] * b[2][1]) + (a[3][3] * b[3][1]);
    out[3][2] = (a[3][0] * b[0][2]) + (a[3][1] * b[1][2]) + (a[3][2] * b[2][2]) + (a[3][3] * b[3][2]);
    out[3][3] = (a[3][0] * b[0][3]) + (a[3][1] * b[1][3]) + (a[3][2] * b[2][3]) + (a[3][3] * b[3][3]);
}

void func_80003584(float (*a)[4], float (*b)[4], float (*out)[4])
{
    out[0][0] = (a[0][0] * b[0][0]) + (a[0][1] * b[1][0]) + (a[0][2] * b[2][0]);
    out[0][1] = (a[0][0] * b[0][1]) + (a[0][1] * b[1][1]) + (a[0][2] * b[2][1]);
    out[0][2] = (a[0][0] * b[0][2]) + (a[0][1] * b[1][2]) + (a[0][2] * b[2][2]);

    out[1][0] = (a[1][0] * b[0][0]) + (a[1][1] * b[1][0]) + (a[1][2] * b[2][0]);
    out[1][1] = (a[1][0] * b[0][1]) + (a[1][1] * b[1][1]) + (a[1][2] * b[2][1]);
    out[1][2] = (a[1][0] * b[0][2]) + (a[1][1] * b[1][2]) + (a[1][2] * b[2][2]);

    out[2][0] = (a[2][0] * b[0][0]) + (a[2][1] * b[1][0]) + (a[2][2] * b[2][0]);
    out[2][1] = (a[2][0] * b[0][1]) + (a[2][1] * b[1][1]) + (a[2][2] * b[2][1]);
    out[2][2] = (a[2][0] * b[0][2]) + (a[2][1] * b[1][2]) + (a[2][2] * b[2][2]);

    out[3][0] = (a[3][0] * b[0][0]) + (a[3][1] * b[1][0]) + (a[3][2] * b[2][0]) + b[3][0];
    out[3][1] = (a[3][0] * b[0][1]) + (a[3][1] * b[1][1]) + (a[3][2] * b[2][1]) + b[3][1];
    out[3][2] = (a[3][0] * b[0][2]) + (a[3][1] * b[1][2]) + (a[3][2] * b[2][2]) + b[3][2];
}

void func_800037E0(float (*a)[3], float (*b)[3], float (*out)[3])
{
    out[0][0] = (a[0][0] * b[0][0]) + (a[0][1] * b[1][0]) + (a[0][2] * b[2][0]);
    out[0][1] = (a[0][0] * b[0][1]) + (a[0][1] * b[1][1]) + (a[0][2] * b[2][1]);
    out[0][2] = (a[0][0] * b[0][2]) + (a[0][1] * b[1][2]) + (a[0][2] * b[2][2]);

    out[1][0] = (a[1][0] * b[0][0]) + (a[1][1] * b[1][0]) + (a[1][2] * b[2][0]);
    out[1][1] = (a[1][0] * b[0][1]) + (a[1][1] * b[1][1]) + (a[1][2] * b[2][1]);
    out[1][2] = (a[1][0] * b[0][2]) + (a[1][1] * b[1][2]) + (a[1][2] * b[2][2]);

    out[2][0] = (a[2][0] * b[0][0]) + (a[2][1] * b[1][0]) + (a[2][2] * b[2][0]);
    out[2][1] = (a[2][0] * b[0][1]) + (a[2][1] * b[1][1]) + (a[2][2] * b[2][1]);
    out[2][2] = (a[2][0] * b[0][2]) + (a[2][1] * b[1][2]) + (a[2][2] * b[2][2]);

    out[3][0] = (a[3][0] * b[0][0]) + (a[3][1] * b[1][0]) + (a[3][2] * b[2][0]) + b[3][0];
    out[3][1] = (a[3][0] * b[0][1]) + (a[3][1] * b[1][1]) + (a[3][2] * b[2][1]) + b[3][1];
    out[3][2] = (a[3][0] * b[0][2]) + (a[3][1] * b[1][2]) + (a[3][2] * b[2][2]) + b[3][2];
}

void func_80003A3C(float (*a)[3], float (*b)[3], float (*out)[3])
{
    out[0][0] = (a[0][0] * b[0][0]) + (a[0][1] * b[1][0]) + (a[0][2] * b[2][0]);
    out[0][1] = (a[0][0] * b[0][1]) + (a[0][1] * b[1][1]) + (a[0][2] * b[2][1]);
    out[0][2] = (a[0][0] * b[0][2]) + (a[0][1] * b[1][2]) + (a[0][2] * b[2][2]);

    out[1][0] = (a[1][0] * b[0][0]) + (a[1][1] * b[1][0]) + (a[1][2] * b[2][0]);
    out[1][1] = (a[1][0] * b[0][1]) + (a[1][1] * b[1][1]) + (a[1][2] * b[2][1]);
    out[1][2] = (a[1][0] * b[0][2]) + (a[1][1] * b[1][2]) + (a[1][2] * b[2][2]);

    out[2][0] = (a[2][0] * b[0][0]) + (a[2][1] * b[1][0]) + (a[2][2] * b[2][0]);
    out[2][1] = (a[2][0] * b[0][1]) + (a[2][1] * b[1][1]) + (a[2][2] * b[2][1]);
    out[2][2] = (a[2][0] * b[0][2]) + (a[2][1] * b[1][2]) + (a[2][2] * b[2][2]);
}

void func_80003BF0(Vector2* arg0, Vector2* arg1)
{
    f32 x, y;
    f32 var_f4;
    f32 t1;

    x = arg0->x;
    y = arg0->y;
    t1 = (x * x);
    t1 += (y * y);

    var_f4 = sqrtf(t1);

    if (var_f4 == 0.0) {
        arg1->x = 0.0f;
        arg1->y = 0.0f;
    } else {
        var_f4 = (1.0f / var_f4);
        arg1->x = (x * var_f4);
        arg1->y = (y * var_f4);
    }
}

void func_80003C98(Vector3* arg0, Vector3* arg1)
{
    f32 var_f4;
    f32 y, x, z;
    f32 t1, t2, t3, t4;

    x = arg0->x;
    y = arg0->y;
    z = arg0->z;
    t1 = (x * x);
    t1 += (y * y);
    t1 += (z * z);
    var_f4 = sqrtf(t1);

    if (var_f4 == 0.0) {
        arg1->x = 0.0f;
        arg1->y = 0.0f;
        arg1->z = 0.0f;
    } else {
        var_f4 = 1.0f / var_f4;
        arg1->x = x * var_f4;
        arg1->y = y * var_f4;
        arg1->z = z * var_f4;
    }
}

void func_80003D64(f32* arg0, f32 arg1, f32* arg2)
{
    f32 temp_f0;
    f32 temp_f12;
    float new_var;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_f24;
    f32 temp_f26;
    f32 temp_f8;
    float new_var2;
    f32 f;
    f32 f1, f2, f3;

    temp_f20 = sinf(arg1);
    temp_f0 = cosf(arg1);
    f1 = arg0[0];
    temp_f26 = f1 * f1;
    f2 = arg0[1];
    temp_f24 = f2 * f2;
    f3 = arg0[2];
    temp_f22 = f3 * f3;

    temp_f16 = f1 * f2 * (1.0f - temp_f0);
    temp_f12 = f1 * f3 * (1.0f - temp_f0);
    temp_f14 = f2 * f3 * (1.0f - temp_f0);
    f = ((1.0f - temp_f26) * temp_f0);
    temp_f18 = (1.0f - temp_f24) * temp_f0;
    new_var2 = f1 * temp_f20;
    new_var = (f2 * temp_f20);
    temp_f8 = (1.0f - temp_f22) * temp_f0;

    arg2[0] = temp_f26 + f;
    arg2[1] = temp_f16 - (f3 * temp_f20);
    arg2[2] = temp_f12 + new_var;

    arg2[3] = temp_f16 + (f3 * temp_f20);
    arg2[4] = temp_f24 + temp_f18;
    arg2[5] = temp_f14 - new_var2;

    arg2[6] = temp_f12 - new_var;
    arg2[7] = temp_f14 + new_var2;
    arg2[8] = temp_f22 + temp_f8;

    arg2[9] = 0;
    arg2[10] = 0;
    arg2[11] = 0;
}

void func_80003E9C(float* arg0, float arg1, float* arg2)
{
    f32 temp_f0;
    f32 temp_f10;
    f32 temp_f10_2;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_f24;
    f32 temp_f26;
    f32 temp_f26_2;
    f32 temp_f4;
    f32 temp_f6;
    f32 temp_f6_2;
    f32 temp_f8;

    temp_f20 = sinf(arg1);
    temp_f0 = cosf(arg1);
    temp_f10 = arg0[0];
    temp_f26 = temp_f10 * temp_f10;
    temp_f6 = arg0[1];
    temp_f24 = temp_f6 * temp_f6;
    temp_f4 = arg0[2];
    temp_f22 = temp_f4 * temp_f4;

    temp_f16 = temp_f10 * temp_f6 * (1.0f - temp_f0);
    temp_f12 = temp_f10 * temp_f4 * (1.0f - temp_f0);
    temp_f14 = temp_f6 * temp_f4 * (1.0f - temp_f0);
    temp_f26_2 = ((1.0f - temp_f26) * temp_f0);
    temp_f18 = (1.0f - temp_f24) * temp_f0;
    temp_f10_2 = temp_f10 * temp_f20;
    temp_f6_2 = temp_f6 * temp_f20;
    temp_f8 = (1.0f - temp_f22) * temp_f0;

    arg2[0] = temp_f26 + temp_f26_2;
    arg2[1] = temp_f16 - (temp_f4 * temp_f20);
    arg2[2] = (f32)(temp_f12 + temp_f6_2);

    arg2[4] = temp_f16 + (temp_f4 * temp_f20);
    arg2[5] = (f32)(temp_f24 + temp_f18);
    arg2[6] = temp_f14 - temp_f10_2;

    arg2[8] = (f32)(temp_f12 - temp_f6_2);
    arg2[9] = temp_f14 + temp_f10_2;
    arg2[10] = (f32)(temp_f22 + temp_f8);

    arg2[12] = 0;
    arg2[13] = 0;
    arg2[14] = 0;
}

void func_80003FD4(float* arg0, f32 arg1, float* arg2)
{
    f32 temp_f0;

    arg1 = arg1 * 0.5f;

    temp_f0 = sinf(arg1);
    arg2[0] = (f32)(arg0[0] * temp_f0);
    arg2[1] = (f32)(arg0[1] * temp_f0);
    arg2[2] = (f32)(arg0[2] * temp_f0);
    arg2[3] = cosf(arg1);
}

void func_80004050(float* arg0, float* arg1, f32* arg2)
{
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_f22_2;
    f32 temp_f2;
    f32 var_f4;

    int new_var;

    temp_f2 = arg0[3];
    var_f4 = temp_f2;
    if (temp_f2 < 0.0f) {
        var_f4 = -temp_f2;
    }
    if (var_f4 < 0.99999f) {
        new_var = ((temp_f2 + 1.0f) * 511.5f);
        temp_f20 = D_8002E2B0[new_var & 0x3FF];
        temp_f22_2 = 1.0f / sinf(temp_f20);
        arg1[0] = arg0[0] * temp_f22_2;
        arg1[1] = arg0[1] * temp_f22_2;
        arg1[2] = arg0[2] * temp_f22_2;
        *arg2 = 2.0f * temp_f20;
        return;
    }
    *arg2 = 0.0f;
    arg1[0] = 1.0f;
    arg1[1] = 0.0f;
    arg1[2] = 0.0f;
}

void func_80004154(float* arg0, float* arg1)
{
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f10;
    f32 temp_f10_2;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f22;
    f32 temp_f24;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f6;
    f32 temp_f6_2;
    f32 temp_f8;
    f32 temp_f8_2;

    temp_f6 = arg0[0];
    temp_f10 = arg0[1];
    temp_f8 = arg0[2];
    temp_f4 = arg0[3];
    temp_f0 = 2.0f / ((temp_f6 * temp_f6) + (temp_f10 * temp_f10) + (temp_f8 * temp_f8) + (temp_f4 * temp_f4));
    temp_f2 = temp_f6 * temp_f0;
    temp_f14 = temp_f10 * temp_f0;
    temp_f0_2 = temp_f8 * temp_f0;
    temp_f24 = temp_f4 * temp_f2;
    temp_f22 = temp_f4 * temp_f14;
    temp_f4_2 = temp_f4 * temp_f0_2;
    temp_f2_2 = temp_f6 * temp_f2;
    temp_f12 = temp_f6 * temp_f14;
    temp_f6_2 = temp_f6 * temp_f0_2;
    temp_f14_2 = temp_f10 * temp_f14;
    temp_f8_2 = temp_f8 * temp_f0_2;
    temp_f10_2 = temp_f10 * temp_f0_2;

    arg1[0] = (f32)(1.0f - (temp_f14_2 + temp_f8_2));
    arg1[1] = (f32)(temp_f12 - temp_f4_2);
    arg1[2] = (f32)(temp_f6_2 + temp_f22);
    arg1[3] = (f32)(temp_f12 + temp_f4_2);
    arg1[4] = (f32)(1.0f - (temp_f2_2 + temp_f8_2));
    arg1[5] = (f32)(temp_f10_2 - temp_f24);
    arg1[6] = (f32)(temp_f6_2 - temp_f22);
    arg1[7] = (f32)(temp_f10_2 + temp_f24);
    arg1[8] = (f32)(1.0f - (temp_f2_2 + temp_f14_2));
}

void calculateQuaternionFromMatrix(f32 matrix[][3], f32* quaternion)
{
    f32 root;
    s32 biggestIndex;
    f32 trace;
    f32 matrix4;
    f32 matrix8;
    f32 matrix0;

    matrix0 = matrix[0][0];
    matrix4 = matrix[1][1];
    matrix8 = matrix[2][2];

    trace = matrix0 + matrix4 + matrix8;

    if (trace > 0.0f) {
        root = sqrtf(trace + 1.0f);
        quaternion[3] = (root * 0.5f);
        root = 0.5f / root;
        quaternion[0] = ((matrix[2][1] - matrix[1][2]) * root);
        quaternion[1] = ((matrix[0][2] - matrix[2][0]) * root);
        quaternion[2] = ((matrix[1][0] - matrix[0][1]) * root);
        return;
    }
    biggestIndex = 0;
    if (matrix[0][0] < matrix[1][1]) {
        biggestIndex = 1;
    }
    if (matrix[biggestIndex][biggestIndex] < matrix8) {
        biggestIndex = 2;
    }

    switch (biggestIndex) {
    case 0:
        root = sqrtf(matrix0 - (matrix4 + matrix8) + 1.0f);
        quaternion[0] = (root * 0.5f);
        root = 0.5f / root;
        quaternion[3] = ((matrix[2][1] - matrix[1][2]) * root);
        quaternion[1] = ((matrix[1][0] + matrix[0][1]) * root);
        quaternion[2] = ((matrix[2][0] + matrix[0][2]) * root);
        break;
    case 1:
        root = sqrtf(matrix4 - (matrix8 + matrix0) + 1.0f);
        quaternion[1] = (root * 0.5f);
        root = 0.5f / root;
        quaternion[3] = ((matrix[0][2] - matrix[2][0]) * root);
        quaternion[2] = ((matrix[2][1] + matrix[1][2]) * root);
        quaternion[0] = ((matrix[0][1] + matrix[1][0]) * root);
        break;
    case 2:
        root = sqrtf(matrix8 - (matrix0 + matrix4) + 1.0f);
        quaternion[2] = (root * 0.5f);
        root = 0.5f / root;
        quaternion[3] = ((matrix[1][0] - matrix[0][1]) * root);
        quaternion[0] = ((matrix[0][2] + matrix[2][0]) * root);
        quaternion[1] = ((matrix[1][2] + matrix[2][1]) * root);
        break;
    }
}

void normalizeQuaternionAndBuildMatrix(float* quaternion, float* matrix)
{
    // Extract quaternion components
    float q1 = quaternion[0];
    float q2 = quaternion[1];
    float q3 = quaternion[2];
    float q4 = quaternion[3];

    // Calculate normalization factor
    float normalizationFactor = 2.0f / ((q1 * q1) + (q2 * q2) + (q3 * q3) + (q4 * q4));

    // Normalize quaternion components
    float nq1 = q1 * normalizationFactor;
    float nq2 = q2 * normalizationFactor;
    float nq3 = q3 * normalizationFactor;

    // Calculate intermediate values for matrix construction
    float q4nq1 = q4 * nq1;
    float q4nq2 = q4 * nq2;
    float q4nq3 = q4 * nq3;
    float nq1q1 = q1 * nq1;
    float nq1q2 = q1 * nq2;
    float nq1q3 = q1 * nq3;
    float nq2q2 = q2 * nq2;
    float nq2q3 = q2 * nq3;
    float nq3q3 = q3 * nq3;

    // Construct the matrix
    matrix[0] = 1.0f - (nq2q2 + nq3q3);
    matrix[1] = nq1q2 - q4nq3;
    matrix[2] = nq1q3 + q4nq2;
    matrix[3] = 0;
    matrix[4] = nq1q2 + q4nq3;
    matrix[5] = 1.0f - (nq1q1 + nq3q3);
    matrix[6] = nq2q3 - q4nq1;
    matrix[7] = 0;
    matrix[8] = nq1q3 - q4nq2;
    matrix[9] = nq2q3 + q4nq1;
    matrix[10] = 1.0f - (nq1q1 + nq2q2);
    matrix[11] = 0;
    matrix[15] = 1.0f;
}

void func_80004640(f32 matrix[][4], float* arg1)
{
    f32 root;
    f32 trace;
    f32 m22;
    f32 m11;
    f32 m00;
    f32 temp_f8;
    f32 var_f0;
    s32 biggestIndex;

    m00 = matrix[0][0];
    m11 = matrix[1][1];
    m22 = matrix[2][2];

    trace = m00 + m11 + m22;
    if (trace > 0.0f) {
        root = sqrtf(trace + 1.0f);
        arg1[3] = root * 0.5f;
        root = 0.5f / root;
        arg1[0] = (matrix[2][1] - matrix[1][2]) * root;
        arg1[1] = (matrix[0][2] - matrix[2][0]) * root;
        arg1[2] = (matrix[1][0] - matrix[0][1]) * root;
        return;
    }

    biggestIndex = 0;
    if (matrix[0][0] < matrix[1][1]) {
        biggestIndex = 1;
    }
    if (matrix[biggestIndex][biggestIndex] < m22) {
        biggestIndex = 2;
    }

    switch (biggestIndex) {
    case 0:
        root = sqrtf((m00 - (m11 + m22)) + 1.0f);
        arg1[0] = root * 0.5f;
        root = 0.5f / root;
        arg1[3] = (matrix[2][1] - matrix[1][2]) * root;
        arg1[1] = (matrix[1][0] + matrix[0][1]) * root;
        arg1[2] = (matrix[2][0] + matrix[0][2]) * root;
        return;
    case 1:
        root = sqrtf((m11 - (m22 + m00)) + 1.0f);
        arg1[1] = root * 0.5f;
        root = 0.5f / root;
        arg1[3] = (matrix[0][2] - matrix[2][0]) * root;
        arg1[2] = (matrix[2][1] + matrix[1][2]) * root;
        arg1[0] = (matrix[0][1] + matrix[1][0]) * root;
        return;
    case 2:
        root = sqrtf((m22 - (m00 + m11)) + 1.0f);
        arg1[2] = root * 0.5f;
        root = 0.5f / root;
        arg1[3] = (matrix[1][0] - matrix[0][1]) * root;
        arg1[0] = (matrix[0][2] + matrix[2][0]) * root;
        arg1[1] = (matrix[1][2] + matrix[2][1]) * root;
        return;
    }
}

extern float D_8002E2B0[];

void func_800048FC(f32* arg0, f32* arg1, f32 arg2, f32* arg3)
{
    f32 temp_f20;
    f32 temp_f22;
    f32 var_f12;
    f32 var_f20;
    f32 var_f4;
    f32 temp[4];

    s32 temp_f14;

    var_f4 = (arg0[0] * arg1[0]) + (arg0[1] * arg1[1]) + (arg0[2] * arg1[2]) + (arg0[3] * arg1[3]);
    if (var_f4 < 0.0f) {
        var_f4 = -var_f4;
        temp[0] = -arg1[0];
        temp[1] = -arg1[1];
        temp[2] = -arg1[2];
        temp[3] = -arg1[3];
    } else {
        memcpy(temp, arg1, sizeof(temp));
    }

    if ((1.0f - var_f4) > 0.004f) {
        temp_f14 = (s32)((var_f4 + 1.0f) * 511.5f);
        temp_f20 = D_8002E2B0[temp_f14 & 0x3FF];
        temp_f22 = 1.0f / sinf(temp_f20);
        var_f20 = sinf((1.0f - arg2) * temp_f20) * temp_f22;
        var_f12 = sinf(arg2 * temp_f20) * temp_f22;
    } else {
        var_f12 = arg2;
        var_f20 = 1.0f - var_f12;
    }
    arg3[0] = (f32)((var_f20 * arg0[0]) + (var_f12 * arg1[0]));
    arg3[1] = (f32)((var_f20 * arg0[1]) + (var_f12 * arg1[1]));
    arg3[2] = (f32)((var_f20 * arg0[2]) + (var_f12 * arg1[2]));
    arg3[3] = (f32)((var_f20 * arg0[3]) + (var_f12 * arg1[3]));
}

void lerpQuaternions(f32* arg0, f32* arg1, f32 arg2, f32* arg3)
{
    f32 dotProduct;

    dotProduct = (arg0[0] * arg1[0]) + (arg0[1] * arg1[1]) + (arg0[2] * arg1[2]) + (arg0[3] * arg1[3]);

    if (dotProduct > 0.0f) {
        arg3[0] = arg0[0] + arg2 * (arg1[0] - arg0[0]);
        arg3[1] = arg0[1] + arg2 * (arg1[1] - arg0[1]);
        arg3[2] = arg0[2] + arg2 * (arg1[2] - arg0[2]);
        arg3[3] = arg0[3] + arg2 * (arg1[3] - arg0[3]);
    } else {
        arg3[0] = arg0[0] - arg2 * (arg1[0] + arg0[0]);
        arg3[1] = arg0[1] - arg2 * (arg1[1] + arg0[1]);
        arg3[2] = arg0[2] - arg2 * (arg1[2] + arg0[2]);
        arg3[3] = arg0[3] - arg2 * (arg1[3] + arg0[3]);
    }
}

INCLUDE_ASM("nonmatchings/main/030", func_80004BE8);

INCLUDE_ASM("nonmatchings/main/030", func_80004DBC);

int func_8000509C(Vector3* arg0, Vector3* arg1, f32 arg2, f32 arg3, f32 arg4)
{
    Vector3 distance;
    Vector3 temp_f0_4;
    Vector3 move;
    f32 temp_f4;
    Vector3* p;

    distance.x = arg0->x - arg1->x;
    distance.y = arg0->y - arg1->y;
    distance.z = arg0->z - arg1->z;
    if (((distance.x * distance.x) + (distance.y * distance.y) + (distance.z * distance.z)) < arg2) {
        return 1;
    }

    func_80003C98(&distance, &distance);
    p = &distance;
    temp_f4 = arg3 * arg4;
    move.x = p->x * temp_f4;
    move.y = p->y * temp_f4;
    move.z = p->z * temp_f4;

    arg1->x += move.x;
    arg1->y += move.y;
    arg1->z += move.z;

    temp_f0_4.x = arg0->x - arg1->x;
    temp_f0_4.y = arg0->y - arg1->y;
    temp_f0_4.z = arg0->z - arg1->z;
    if ((temp_f0_4.x * p->x) + (temp_f0_4.y * p->y) + (temp_f0_4.z * p->z) <= 0.0f) {
        return 1;
    }

    return 0;
}

INCLUDE_ASM("nonmatchings/main/030", func_80005200);

void func_800052F4(Vector3 arg0, const f32* arg3, Vector3* pos)
{
    pos->x = ((arg0.x * arg3[0]) + (arg0.y * arg3[1]) + (arg0.z * arg3[2]));
    pos->y = ((arg0.x * arg3[3]) + (arg0.y * arg3[4]) + (arg0.z * arg3[5]));
    pos->z = ((arg0.x * arg3[6]) + (arg0.y * arg3[7]) + (arg0.z * arg3[8]));
}

void func_80005398(const float* arg0, const float* arg1, float* arg2)
{
    arg2[0] = (arg0[0] * arg1[0]) + (arg0[1] * arg1[1]) + (arg0[2] * arg1[2]);
    arg2[1] = (arg0[0] * arg1[3]) + (arg0[1] * arg1[4]) + (arg0[2] * arg1[5]);
    arg2[2] = (arg0[0] * arg1[6]) + (arg0[1] * arg1[7]) + (arg0[2] * arg1[8]);
    arg2[3] = (arg0[3] * arg1[0]) + (arg0[4] * arg1[1]) + (arg0[5] * arg1[2]);
    arg2[4] = (arg0[3] * arg1[3]) + (arg0[4] * arg1[4]) + (arg0[5] * arg1[5]);
    arg2[5] = (arg0[3] * arg1[6]) + (arg0[4] * arg1[7]) + (arg0[5] * arg1[8]);
    arg2[6] = (arg0[6] * arg1[0]) + (arg0[7] * arg1[1]) + (arg0[8] * arg1[2]);
    arg2[7] = (arg0[6] * arg1[3]) + (arg0[7] * arg1[4]) + (arg0[8] * arg1[5]);
    arg2[8] = (arg0[6] * arg1[6]) + (arg0[7] * arg1[7]) + (arg0[8] * arg1[8]);
}

void func_8000554C(const float* arg0, const float* arg1, float* arg2)
{
    f32 sp[3];
    f32 sp4;
    f32 sp8;
    f32 temp_f2;

    temp_f2 = 2.0f * ((arg0[0] * arg1[0]) + (arg0[1] * arg1[1]) + (arg0[2] * arg1[2]) + arg0[3]);
    sp[0] = arg0[0] * temp_f2;
    sp[1] = arg0[1] * temp_f2;
    sp[2] = arg0[2] * temp_f2;
    arg2[0] = (arg1[0] - sp[0]);
    arg2[1] = (arg1[1] - sp[1]);
    arg2[2] = (arg1[2] - sp[2]);
}

void func_800055DC(Vector3* arg0, Vector3* arg1, Vector3* arg2)
{
    f32 temp_f4;

    temp_f4 = 2.0f * ((arg1->x * arg0->x) + (arg1->y * arg0->z) + (arg1->z * arg0->y));
    arg2->x = arg1->x - (arg0->x * temp_f4);
    arg2->y = arg1->y - (arg0->z * temp_f4);
    arg2->z = arg1->z - (arg0->y * temp_f4);
}

void func_80005644(float* arg0, float* arg1, float* arg2)
{
    func_800055DC((Vector3*)arg0, (Vector3*)arg1, (Vector3*)arg2);
    arg2[3] = -arg1[3];
}

void func_80005680(Vector3* arg0, Vector3* arg1, Vector3* arg2)
{
    f32 temp_f2;
    Vector3 temp_1;

    temp_f2 = 2.0f * ((arg0->x * arg1->x) + (arg0->y * arg1->y) + (arg0->z * arg1->z));

    temp_1.x = (arg0->x * temp_f2);
    temp_1.y = (arg0->y * temp_f2);
    temp_1.z = (arg0->z * temp_f2);

    arg2->x = arg1->x - temp_1.x;
    arg2->y = arg1->y - temp_1.y;
    arg2->z = arg1->z - temp_1.z;
}

void func_80005708(float* arg0, float* arg1, float* arg2)
{
    func_80005680((Vector3*)arg0, (Vector3*)arg1, (Vector3*)arg2);
    arg2[3] = -arg1[3];
}
