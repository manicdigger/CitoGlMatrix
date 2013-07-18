/* Generated automatically with "cito". Do not edit. */
#include <stdlib.h>
#include <string.h>
#include "CitoGlMatrix.h"











float Math_PI(void)
{
	float a = 3141592;
	return a / 1000000;
}

float Math_max(float a, float b)
{
	if (a > b) {
		return a;
	}
	else {
		return b;
	}
}

float Math_min(float a, float b)
{
	if (a < b) {
		return a;
	}
	else {
		return b;
	}
}

float Platform_Cos(float r)
{
	return 0;
}

float Platform_Random(void)
{
	return 0;
}

float Platform_Sin(float r)
{
	return 0;
}

float Platform_Sqrt(float a)
{
	return 0;
}

float const *Vec3_Add(float *output, float const *a, float const *b)
{
	output[0] = a[0] + b[0];
	output[1] = a[1] + b[1];
	output[2] = a[2] + b[2];
	return output;
}

float const *Vec3_Clone(float const *a)
{
	float *output = (float *) malloc(3 * sizeof(float ));
	output[0] = a[0];
	output[1] = a[1];
	output[2] = a[2];
	return output;
}

float const *Vec3_Copy(float *output, float const *a)
{
	output[0] = a[0];
	output[1] = a[1];
	output[2] = a[2];
	return output;
}

float const *Vec3_Create(void)
{
	float *output = (float *) malloc(3 * sizeof(float ));
	output[0] = 0;
	output[1] = 0;
	output[2] = 0;
	return output;
}

float const *Vec3_Cross(float *output, float const *a, float const *b)
{
	float ax = a[0];
	float ay = a[1];
	float az = a[2];
	float bx = b[0];
	float by = b[1];
	float bz = b[2];
	output[0] = ay * bz - az * by;
	output[1] = az * bx - ax * bz;
	output[2] = ax * by - ay * bx;
	return output;
}

float Vec3_Dist(float const *a, float const *b)
{
	return Vec3_Distance(a, b);
}

float Vec3_Distance(float const *a, float const *b)
{
	float x = b[0] - a[0];
	float y = b[1] - a[1];
	float z = b[2] - a[2];
	return Platform_Sqrt(x * x + y * y + z * z);
}

float const *Vec3_Div(float *output, float const *a, float const *b)
{
	return Vec3_Divide(output, a, b);
}

float const *Vec3_Divide(float *output, float const *a, float const *b)
{
	output[0] = a[0] / b[0];
	output[1] = a[1] / b[1];
	output[2] = a[2] / b[2];
	return output;
}

float Vec3_Dot(float const *a, float const *b)
{
	return a[0] * b[0] + a[1] * b[1] + a[2] * b[2];
}

float const *Vec3_FromValues(float x, float y, float z)
{
	float *output = (float *) malloc(3 * sizeof(float ));
	output[0] = x;
	output[1] = y;
	output[2] = z;
	return output;
}

float Vec3_Len(float const *a)
{
	return Vec3_Length(a);
}

float Vec3_Length(float const *a)
{
	float x = a[0];
	float y = a[1];
	float z = a[2];
	return Platform_Sqrt(x * x + y * y + z * z);
}

float const *Vec3_Lerp(float *output, float const *a, float const *b, float t)
{
	float ax = a[0];
	float ay = a[1];
	float az = a[2];
	output[0] = ax + t * (b[0] - ax);
	output[1] = ay + t * (b[1] - ay);
	output[2] = az + t * (b[2] - az);
	return output;
}

float const *Vec3_Max(float *output, float const *a, float const *b)
{
	output[0] = Math_max(a[0], b[0]);
	output[1] = Math_max(a[1], b[1]);
	output[2] = Math_max(a[2], b[2]);
	return output;
}

float const *Vec3_Min(float *output, float const *a, float const *b)
{
	output[0] = Math_min(a[0], b[0]);
	output[1] = Math_min(a[1], b[1]);
	output[2] = Math_min(a[2], b[2]);
	return output;
}

float const *Vec3_Mul(float *output, float const *a, float const *b)
{
	return Vec3_Multiply(output, a, b);
}

float const *Vec3_Multiply(float *output, float const *a, float const *b)
{
	output[0] = a[0] * b[0];
	output[1] = a[1] * b[1];
	output[2] = a[2] * b[2];
	return output;
}

float const *Vec3_Negate(float *output, float const *a)
{
	output[0] = 0 - a[0];
	output[1] = 0 - a[1];
	output[2] = 0 - a[2];
	return output;
}

float const *Vec3_Normalize(float *output, float const *a)
{
	float x = a[0];
	float y = a[1];
	float z = a[2];
	float len = x * x + y * y + z * z;
	if (len > 0) {
		float one = 1;
		len = one / Platform_Sqrt(len);
		output[0] = a[0] * len;
		output[1] = a[1] * len;
		output[2] = a[2] * len;
	}
	return output;
}

float const *Vec3_Random(float *output, float scale)
{
	float one = 1;
	float two = 2;
	float r = Platform_Random() * two * Math_PI();
	float z = Platform_Random() * two - one;
	float zScale = Platform_Sqrt(one - z * z) * scale;
	output[0] = Platform_Cos(r) * zScale;
	output[1] = Platform_Sin(r) * zScale;
	output[2] = z * scale;
	return output;
}

float const *Vec3_Scale(float *output, float const *a, float b)
{
	output[0] = a[0] * b;
	output[1] = a[1] * b;
	output[2] = a[2] * b;
	return output;
}

float const *Vec3_ScaleAndAdd(float *output, float const *a, float const *b, float scale)
{
	output[0] = a[0] + b[0] * scale;
	output[1] = a[1] + b[1] * scale;
	output[2] = a[2] + b[2] * scale;
	return output;
}

float const *Vec3_Set(float *output, float x, float y, float z)
{
	output[0] = x;
	output[1] = y;
	output[2] = z;
	return output;
}

float Vec3_SqrDist(float const *a, float const *b)
{
	return Vec3_SquaredDistance(a, b);
}

float Vec3_SqrLen(float const *a)
{
	return Vec3_SquaredLength(a);
}

float Vec3_SquaredDistance(float const *a, float const *b)
{
	float x = b[0] - a[0];
	float y = b[1] - a[1];
	float z = b[2] - a[2];
	return x * x + y * y + z * z;
}

float Vec3_SquaredLength(float const *a)
{
	float x = a[0];
	float y = a[1];
	float z = a[2];
	return x * x + y * y + z * z;
}

float const *Vec3_Sub(float *output, float const *a, float const *b)
{
	return Vec3_Substract(output, a, b);
}

float const *Vec3_Substract(float *output, float const *a, float const *b)
{
	output[0] = a[0] - b[0];
	output[1] = a[1] - b[1];
	output[2] = a[2] - b[2];
	return output;
}

float const *Vec3_TransformMat3(float *output, float const *a, float const *m)
{
	float x = a[0];
	float y = a[1];
	float z = a[2];
	output[0] = x * m[0] + y * m[3] + z * m[6];
	output[1] = x * m[1] + y * m[4] + z * m[7];
	output[2] = x * m[2] + y * m[5] + z * m[8];
	return output;
}

float const *Vec3_TransformMat4(Vec3 const *self, float *output, float const *a, float const *m)
{
	float x = a[0];
	float y = a[1];
	float z = a[2];
	output[0] = m[0] * x + m[4] * y + m[8] * z + m[12];
	output[1] = m[1] * x + m[5] * y + m[9] * z + m[13];
	output[2] = m[2] * x + m[6] * y + m[10] * z + m[14];
	return output;
}

float const *Vec3_TransformQuat(float *output, float const *a, float const *q)
{
	float x = a[0];
	float y = a[1];
	float z = a[2];
	float qx = q[0];
	float qy = q[1];
	float qz = q[2];
	float qw = q[3];
	float ix = qw * x + qy * z - qz * y;
	float iy = qw * y + qz * x - qx * z;
	float iz = qw * z + qx * y - qy * x;
	float iw = (0 - qx) * x - qy * y - qz * z;
	output[0] = ix * qw + iw * (0 - qx) + iy * (0 - qz) - iz * (0 - qy);
	output[1] = iy * qw + iw * (0 - qy) + iz * (0 - qx) - ix * (0 - qz);
	output[2] = iz * qw + iw * (0 - qz) + ix * (0 - qy) - iy * (0 - qx);
	return output;
}

const char *Vec3_str(float const *a)
{
	return "";
}
