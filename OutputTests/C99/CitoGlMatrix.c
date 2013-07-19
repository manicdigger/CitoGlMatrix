// Generated automatically with "cito". Do not edit.
#include <stdlib.h>
#include <string.h>
#include "CitoGlMatrix.h"

struct CitoAssert {
	int errorsCount;
	int testI;
	const char **errors;
};
static void CitoAssert_Construct(CitoAssert *self);








struct TestMat4 {
	float const *center;
	CitoAssert *citoassert;
	float const *eye;
	float const *identity;
	float const *matA;
	float const *matB;
	float *output;
	float const *right;
	float const *up;
	float const *view;
};
static void TestMat4_Adjoint(TestMat4 const *self);
static void TestMat4_AdjointWhenMatAIsTheOutputMatrix(TestMat4 const *self);
static void TestMat4_AdjointWithASeparateOutputMatrix(TestMat4 const *self);
static float *TestMat4_Arr16(TestMat4 const *self, int p, int p_2, int p_3, int p_4, int p_5, int p_6, int p_7, int p_8, int p_9, int p_10, int p_11, int p_12, int p_13, int p_14, int p_15, int p_16);
static float const *TestMat4_Arr3(TestMat4 const *self, float p, float p_2, float p_3);
static void TestMat4_AssertArrayEqual(TestMat4 const *self, float const *actual, float const *expected, int length, const char *msg);
static void TestMat4_CloneIt(TestMat4 const *self);
static void TestMat4_Copy(TestMat4 const *self);
static void TestMat4_Create(TestMat4 const *self);
static void TestMat4_Determinant(TestMat4 const *self);
static void TestMat4_Frustum(TestMat4 const *self);
static void TestMat4_Identity(TestMat4 const *self);
static void TestMat4_Invert(TestMat4 const *self);
static void TestMat4_InvertWhenMatAIsTheOutputMatrix(TestMat4 const *self);
static void TestMat4_InvertWithASeparateOutputMatrix(TestMat4 const *self);
static void TestMat4_LookAt(TestMat4 *self);
static void TestMat4_LookAt3(TestMat4 const *self);
static void TestMat4_LookAt74(TestMat4 const *self);
static void TestMat4_LookAtLookingDown(TestMat4 *self);
static void TestMat4_Multiply(TestMat4 const *self);
static void TestMat4_MultiplyWhenMatAIsTheOutputMatrix(TestMat4 const *self);
static void TestMat4_MultiplyWhenMatBIsTheOutputMatrix(TestMat4 const *self);
static void TestMat4_MultiplyWithASeparateOutputMatrix(TestMat4 const *self);
static void TestMat4_Ortho(TestMat4 const *self);
static void TestMat4_Perspective(TestMat4 const *self);
static void TestMat4_Perspective1(TestMat4 const *self);
static void TestMat4_PerspectiveWithNonzeroNear45degFovyAndRealisticAspectRatio(TestMat4 const *self);
static void TestMat4_ResetTests(TestMat4 *self);
static void TestMat4_Rotate(TestMat4 const *self);
static void TestMat4_RotateWhenMatAIsTheOutputMatrix(TestMat4 const *self);
static void TestMat4_RotateWithASeparateOutputMatrix(TestMat4 const *self);
static void TestMat4_RotateX(TestMat4 const *self);
static void TestMat4_RotateXWhenMatAIsTheOutputMatrix(TestMat4 const *self);
static void TestMat4_RotateXWithASeparateOutputMatrix(TestMat4 const *self);
static void TestMat4_RotateY(TestMat4 const *self);
static void TestMat4_RotateYWhenMatAIsTheOutputMatrix(TestMat4 const *self);
static void TestMat4_RotateYWithASeparateOutputMatrix(TestMat4 const *self);
static void TestMat4_RotateZ(TestMat4 const *self);
static void TestMat4_RotateZWhenMatAIsTheOutputMatrix(TestMat4 const *self);
static void TestMat4_RotateZWithASeparateOutputMatrix(TestMat4 const *self);
static void TestMat4_Scale(TestMat4 const *self);
static void TestMat4_ScaleWhenMatAIsTheOutputMatrix(TestMat4 const *self);
static void TestMat4_ScaleWithASeparateOutputMatrix(TestMat4 const *self);
static void TestMat4_Str(TestMat4 const *self);
static void TestMat4_Translate(TestMat4 const *self);
static void TestMat4_TranslateWhenMatAIsTheOutputMatrix(TestMat4 const *self);
static void TestMat4_TranslateWithASeparateOutputMatrix(TestMat4 const *self);
static void TestMat4_Transpose(TestMat4 const *self);
static void TestMat4_TransposeWhenMatAIsTheOutputMatrix(TestMat4 const *self);
static void TestMat4_TransposeWithASeparateOutputMatrix(TestMat4 const *self);

struct TestVec3 {
	CitoAssert *citoassert;
	float *output;
	float *vecA;
	float const *vecB;
};
static void TestVec3_Add(TestVec3 const *self);
static void TestVec3_AddWhenVecAIsTheOutputVector(TestVec3 const *self);
static void TestVec3_AddWhenVecBIsTheOutputVector(TestVec3 const *self);
static void TestVec3_AddWithASeparateOutputVector(TestVec3 const *self);
static float const *TestVec3_Arr16(TestVec3 const *self, int p, int p_2, int p_3, int p_4, int p_5, int p_6, int p_7, int p_8, int p_9, int p_10, int p_11, int p_12, int p_13, int p_14, int p_15, int p_16);
static float *TestVec3_Arr3(TestVec3 const *self, float p, float p_2, float p_3);
static float const *TestVec3_Arr9(TestVec3 const *self, int p, int p_2, int p_3, int p_4, int p_5, int p_6, int p_7, int p_8, int p_9);
static void TestVec3_AssertArrayEqual(TestVec3 const *self, float const *actual, float const *expected, int length, const char *msg);
static void TestVec3_AssertCloseTo(TestVec3 const *self, float actual, float expected, const char *msg);
static void TestVec3_AssertEqual(TestVec3 const *self, float actual, float expected, const char *msg);
static void TestVec3_CloneIt(TestVec3 const *self);
static void TestVec3_Copy(TestVec3 const *self);
static void TestVec3_Create(TestVec3 const *self);
static void TestVec3_Cross(TestVec3 const *self);
static void TestVec3_CrossWhenVecAIsTheOutputVector(TestVec3 const *self);
static void TestVec3_CrossWhenVecBIsTheOutputVector(TestVec3 const *self);
static void TestVec3_CrossWithASeparateOutputVector(TestVec3 const *self);
static void TestVec3_Distance(TestVec3 const *self);
static void TestVec3_Divide(TestVec3 const *self);
static void TestVec3_DivideWhenVecAIsTheOutputVector(TestVec3 const *self);
static void TestVec3_DivideWhenVecBIsTheOutputVector(TestVec3 const *self);
static void TestVec3_DivideWithASeparateOutputVector(TestVec3 const *self);
static void TestVec3_Dot(TestVec3 const *self);
static void TestVec3_ForEachDo(TestVec3 const *self);
static void TestVec3_FromValues(TestVec3 const *self);
static void TestVec3_Length(TestVec3 const *self);
static void TestVec3_Lerp(TestVec3 const *self);
static void TestVec3_LerpWhenVecAIsTheOutputVector(TestVec3 const *self);
static void TestVec3_LerpWhenVecBIsTheOutputVector(TestVec3 const *self);
static void TestVec3_LerpWithASeparateOutputVector(TestVec3 const *self);
static void TestVec3_Max(TestVec3 const *self);
static void TestVec3_MaxWhenVecAIsTheOutputVector(TestVec3 const *self);
static void TestVec3_MaxWhenVecBIsTheOutputVector(TestVec3 const *self);
static void TestVec3_MaxWithASeparateOutputVector(TestVec3 const *self);
static void TestVec3_Min(TestVec3 const *self);
static void TestVec3_MinWhenVecAIsTheOutputVector(TestVec3 const *self);
static void TestVec3_MinWhenVecBIsTheOutputVector(TestVec3 const *self);
static void TestVec3_MinWithASeparateOutputVector(TestVec3 const *self);
static void TestVec3_Multiply(TestVec3 const *self);
static void TestVec3_MultiplyWhenVecAIsTheOutputVector(TestVec3 const *self);
static void TestVec3_MultiplyWhenVecBIsTheOutputVector(TestVec3 const *self);
static void TestVec3_MultiplyWithASeparateOutputVector(TestVec3 const *self);
static void TestVec3_Negate(TestVec3 const *self);
static void TestVec3_NegateWhenVecAIsTheOutputVector(TestVec3 const *self);
static void TestVec3_NegateWithASeparateOutputVector(TestVec3 const *self);
static void TestVec3_Normalize(TestVec3 *self);
static void TestVec3_NormalizeWhenVecAIsTheOutputVector(TestVec3 const *self);
static void TestVec3_NormalizeWithASeparateOutputVector(TestVec3 *self);
static void TestVec3_Random(TestVec3 const *self);
static void TestVec3_ResetTests(TestVec3 *self);
static void TestVec3_Scale(TestVec3 const *self);
static void TestVec3_ScaleAndAdd(TestVec3 const *self);
static void TestVec3_ScaleAndAddWhenVecAIsTheOutputVector(TestVec3 const *self);
static void TestVec3_ScaleAndAddWhenVecBIsTheOutputVector(TestVec3 const *self);
static void TestVec3_ScaleAndAddWithASeparateOutputVector(TestVec3 const *self);
static void TestVec3_ScaleWhenVecAIsTheOutputVector(TestVec3 const *self);
static void TestVec3_ScaleWithASeparateOutputVector(TestVec3 const *self);
static void TestVec3_Set(TestVec3 const *self);
static void TestVec3_SquaredDistance(TestVec3 const *self);
static void TestVec3_SquaredLength(TestVec3 const *self);
static void TestVec3_Str(TestVec3 const *self);
static void TestVec3_Subtract(TestVec3 const *self);
static void TestVec3_SubtractShouldHaveAnAliasCalledSub(TestVec3 const *self);
static void TestVec3_SubtractWhenVecAIsTheOutputVector(TestVec3 const *self);
static void TestVec3_SubtractWhenVecBIsTheOutputVector(TestVec3 const *self);
static void TestVec3_SubtractWithASeparateOutputVector(TestVec3 const *self);
static void TestVec3_TransformMat3With90DegAboutX(TestVec3 const *self);
static void TestVec3_TransformMat3With90DegAboutY(TestVec3 const *self);
static void TestVec3_TransformMat3With90DegAboutZ(TestVec3 const *self);
static void TestVec3_TransformMat3WithALookAtNormalMatrix(TestVec3 const *self);
static void TestVec3_TransformMat3WithAnIdentity(TestVec3 const *self);
static void TestVec3_TransformMat4(TestVec3 const *self);
static void TestVec3_TransformMat4WithALookAt(TestVec3 const *self);
static void TestVec3_TransformMat4WithAnIdentity(TestVec3 const *self);





static void CitoAssert_Construct(CitoAssert *self)
{
	self->errors = (const char **) malloc(1024 * sizeof(const char *));
	self->errorsCount = 0;
	self->testI = 0;
}

CitoAssert *CitoAssert_New(void)
{
	CitoAssert *self = (CitoAssert *) malloc(sizeof(CitoAssert));
	if (self != NULL)
		CitoAssert_Construct(self);
	return self;
}

void CitoAssert_Delete(CitoAssert *self)
{
	free(self);
}

float const *CitoAssert_Arr16(CitoAssert const *self, int p, int p_2, int p_3, int p_4, int p_5, int p_6, int p_7, int p_8, int p_9, int p_10, int p_11, int p_12, int p_13, int p_14, int p_15, int p_16)
{
	float *arr = (float *) malloc(16 * sizeof(float ));
	arr[0] = p;
	arr[1] = p_2;
	arr[2] = p_3;
	arr[3] = p_4;
	arr[4] = p_5;
	arr[5] = p_6;
	arr[6] = p_7;
	arr[7] = p_8;
	arr[8] = p_9;
	arr[9] = p_10;
	arr[10] = p_11;
	arr[11] = p_12;
	arr[12] = p_13;
	arr[13] = p_14;
	arr[14] = p_15;
	arr[15] = p_16;
	return arr;
}

float const *CitoAssert_Arr3(CitoAssert const *self, float p, float p_2, float p_3)
{
	float *arr = (float *) malloc(3 * sizeof(float ));
	arr[0] = p;
	arr[1] = p_2;
	arr[2] = p_3;
	return arr;
}

float const *CitoAssert_Arr9(CitoAssert const *self, int p, int p_2, int p_3, int p_4, int p_5, int p_6, int p_7, int p_8, int p_9)
{
	float *arr = (float *) malloc(16 * sizeof(float ));
	arr[0] = p;
	arr[1] = p_2;
	arr[2] = p_3;
	arr[3] = p_4;
	arr[4] = p_5;
	arr[5] = p_6;
	arr[6] = p_7;
	arr[7] = p_8;
	arr[8] = p_9;
	return arr;
}

void CitoAssert_AssertArrayEqual(CitoAssert *self, float const *actual, float const *expected, int length, const char *msg)
{
	Platform_WriteString("Test ");
	Platform_WriteInt(self->testI);
	bool isequal = true;
	for (int i = 0; i < length; i++) {
		if (actual[i] != expected[i]) {
			isequal = false;
		}
	}
	if (!isequal) {
		self->errors[self->errorsCount++] = msg;
		Platform_WriteString(" error: ");
		Platform_WriteString(msg);
	}
	else {
		Platform_WriteString(" ok");
	}
	Platform_WriteString("\n");
	self->testI++;
}

void CitoAssert_AssertCloseTo(CitoAssert *self, float actual, float expected, const char *msg)
{
	Platform_WriteString("Test ");
	Platform_WriteInt(self->testI);
	if (GlMatrixMath_Abs(actual - expected) > GlMatrixMath_GLMAT_EPSILON()) {
		self->errors[self->errorsCount++] = msg;
		Platform_WriteString(" error: ");
		Platform_WriteString(msg);
	}
	else {
		Platform_WriteString(" ok");
	}
	Platform_WriteString("\n");
	self->testI++;
}

void CitoAssert_AssertEqual(CitoAssert *self, float actual, float expected, const char *msg)
{
	Platform_WriteString("Test ");
	Platform_WriteInt(self->testI);
	if (actual != expected) {
		self->errors[self->errorsCount++] = msg;
		Platform_WriteString(" error: ");
		Platform_WriteString(msg);
	}
	else {
		Platform_WriteString(" ok");
	}
	Platform_WriteString("\n");
	self->testI++;
}

float GlMatrixMath_Abs(float len)
{
	if (len < 0) {
		return -len;
	}
	else {
		return len;
	}
}

float GlMatrixMath_GLMAT_EPSILON(void)
{
	float one = 1;
	return one / 1000000;
}

float GlMatrixMath_PI(void)
{
	float a = 3141592;
	return a / 1000000;
}

float GlMatrixMath_max(float a, float b)
{
	if (a > b) {
		return a;
	}
	else {
		return b;
	}
}

float GlMatrixMath_min(float a, float b)
{
	if (a < b) {
		return a;
	}
	else {
		return b;
	}
}

float const *Mat2_Adjoint(float *output, float const *a)
{
	float a0 = a[0];
	output[0] = a[3];
	output[1] = -a[1];
	output[2] = -a[2];
	output[3] = a0;
	return output;
}

float const *Mat2_CloneIt(float const *a)
{
	float *output = (float *) malloc(4 * sizeof(float ));
	output[0] = a[0];
	output[1] = a[1];
	output[2] = a[2];
	output[3] = a[3];
	return output;
}

float const *Mat2_Copy(float *output, float const *a)
{
	output[0] = a[0];
	output[1] = a[1];
	output[2] = a[2];
	output[3] = a[3];
	return output;
}

float const *Mat2_Create(void)
{
	float *output = (float *) malloc(4 * sizeof(float ));
	output[0] = 1;
	output[1] = 0;
	output[2] = 0;
	output[3] = 1;
	return output;
}

float Mat2_Determinant(float const *a)
{
	return a[0] * a[3] - a[2] * a[1];
}

float const *Mat2_Identity(float *output)
{
	output[0] = 1;
	output[1] = 0;
	output[2] = 0;
	output[3] = 1;
	return output;
}

float const *Mat2_Invert(float *output, float const *a)
{
	float a0 = a[0];
	float a1 = a[1];
	float a2 = a[2];
	float a3 = a[3];
	float det = a0 * a3 - a2 * a1;
	if (det == 0) {
		return NULL;
	}
	float one = 1;
	det = one / det;
	output[0] = a3 * det;
	output[1] = -a1 * det;
	output[2] = -a2 * det;
	output[3] = a0 * det;
	return output;
}

float const *Mat2_Mul(float *output, float const *a, float const *b)
{
	return Mat2_Multiply(output, a, b);
}

float const *Mat2_Multiply(float *output, float const *a, float const *b)
{
	float a0 = a[0];
	float a1 = a[1];
	float a2 = a[2];
	float a3 = a[3];
	float b0 = b[0];
	float b1 = b[1];
	float b2 = b[2];
	float b3 = b[3];
	output[0] = a0 * b0 + a1 * b2;
	output[1] = a0 * b1 + a1 * b3;
	output[2] = a2 * b0 + a3 * b2;
	output[3] = a2 * b1 + a3 * b3;
	return output;
}

float const *Mat2_Rotate(float *output, float const *a, float rad)
{
	float a0 = a[0];
	float a1 = a[1];
	float a2 = a[2];
	float a3 = a[3];
	float s = Platform_Sin(rad);
	float c = Platform_Cos(rad);
	output[0] = a0 * c + a1 * s;
	output[1] = a0 * -s + a1 * c;
	output[2] = a2 * c + a3 * s;
	output[3] = a2 * -s + a3 * c;
	return output;
}

float const *Mat2_Scale(float *output, float const *a, float const *v)
{
	float a0 = a[0];
	float a1 = a[1];
	float a2 = a[2];
	float a3 = a[3];
	float v0 = v[0];
	float v1 = v[1];
	output[0] = a0 * v0;
	output[1] = a1 * v1;
	output[2] = a2 * v0;
	output[3] = a3 * v1;
	return output;
}

float const *Mat2_Transpose(float *output, float const *a)
{
	output[0] = a[0];
	output[1] = a[2];
	output[2] = a[1];
	output[3] = a[3];
	return output;
}

float const *Mat2d_CloneIt(float const *a)
{
	float *output = (float *) malloc(6 * sizeof(float ));
	output[0] = a[0];
	output[1] = a[1];
	output[2] = a[2];
	output[3] = a[3];
	output[4] = a[4];
	output[5] = a[5];
	return output;
}

float const *Mat2d_Copy(float *output, float const *a)
{
	output[0] = a[0];
	output[1] = a[1];
	output[2] = a[2];
	output[3] = a[3];
	output[4] = a[4];
	output[5] = a[5];
	return output;
}

float const *Mat2d_Create(void)
{
	float *output = (float *) malloc(6 * sizeof(float ));
	output[0] = 1;
	output[1] = 0;
	output[2] = 0;
	output[3] = 1;
	output[4] = 0;
	output[5] = 0;
	return output;
}

float Mat2d_Determinant(float const *a)
{
	return a[0] * a[3] - a[1] * a[2];
}

float const *Mat2d_Identity(float *output)
{
	output[0] = 1;
	output[1] = 0;
	output[2] = 0;
	output[3] = 1;
	output[4] = 0;
	output[5] = 0;
	return output;
}

float const *Mat2d_Invert(float *output, float const *a)
{
	float aa = a[0];
	float ab = a[1];
	float ac = a[2];
	float ad = a[3];
	float atx = a[4];
	float aty = a[5];
	float det = aa * ad - ab * ac;
	if (det == 0) {
		return NULL;
	}
	float one = 1;
	det = one / det;
	output[0] = ad * det;
	output[1] = -ab * det;
	output[2] = -ac * det;
	output[3] = aa * det;
	output[4] = (ac * aty - ad * atx) * det;
	output[5] = (ab * atx - aa * aty) * det;
	return output;
}

float const *Mat2d_Mul(float *output, float const *a, float const *b)
{
	return Mat2d_Multiply(output, a, b);
}

float const *Mat2d_Multiply(float *output, float const *a, float const *b)
{
	float aa = a[0];
	float ab = a[1];
	float ac = a[2];
	float ad = a[3];
	float atx = a[4];
	float aty = a[5];
	float ba = b[0];
	float bb = b[1];
	float bc = b[2];
	float bd = b[3];
	float btx = b[4];
	float bty = b[5];
	output[0] = aa * ba + ab * bc;
	output[1] = aa * bb + ab * bd;
	output[2] = ac * ba + ad * bc;
	output[3] = ac * bb + ad * bd;
	output[4] = ba * atx + bc * aty + btx;
	output[5] = bb * atx + bd * aty + bty;
	return output;
}

float const *Mat2d_Rotate(float *output, float const *a, float rad)
{
	float aa = a[0];
	float ab = a[1];
	float ac = a[2];
	float ad = a[3];
	float atx = a[4];
	float aty = a[5];
	float st = Platform_Sin(rad);
	float ct = Platform_Cos(rad);
	output[0] = aa * ct + ab * st;
	output[1] = -aa * st + ab * ct;
	output[2] = ac * ct + ad * st;
	output[3] = -ac * st + ct * ad;
	output[4] = ct * atx + st * aty;
	output[5] = ct * aty - st * atx;
	return output;
}

float const *Mat2d_Scale(float *output, float const *a, float const *v)
{
	float vx = v[0];
	float vy = v[1];
	output[0] = a[0] * vx;
	output[1] = a[1] * vy;
	output[2] = a[2] * vx;
	output[3] = a[3] * vy;
	output[4] = a[4] * vx;
	output[5] = a[5] * vy;
	return output;
}

float const *Mat2d_Translate(float *output, float const *a, float const *v)
{
	output[0] = a[0];
	output[1] = a[1];
	output[2] = a[2];
	output[3] = a[3];
	output[4] = a[4] + v[0];
	output[5] = a[5] + v[1];
	return output;
}

float const *Mat3_Adjoint(float *output, float const *a)
{
	float a00 = a[0];
	float a01 = a[1];
	float a02 = a[2];
	float a10 = a[3];
	float a11 = a[4];
	float a12 = a[5];
	float a20 = a[6];
	float a21 = a[7];
	float a22 = a[8];
	output[0] = a11 * a22 - a12 * a21;
	output[1] = a02 * a21 - a01 * a22;
	output[2] = a01 * a12 - a02 * a11;
	output[3] = a12 * a20 - a10 * a22;
	output[4] = a00 * a22 - a02 * a20;
	output[5] = a02 * a10 - a00 * a12;
	output[6] = a10 * a21 - a11 * a20;
	output[7] = a01 * a20 - a00 * a21;
	output[8] = a00 * a11 - a01 * a10;
	return output;
}

float const *Mat3_CloneIt(float const *a)
{
	float *output = (float *) malloc(9 * sizeof(float ));
	output[0] = a[0];
	output[1] = a[1];
	output[2] = a[2];
	output[3] = a[3];
	output[4] = a[4];
	output[5] = a[5];
	output[6] = a[6];
	output[7] = a[7];
	output[8] = a[8];
	return output;
}

float const *Mat3_Copy(float *output, float const *a)
{
	output[0] = a[0];
	output[1] = a[1];
	output[2] = a[2];
	output[3] = a[3];
	output[4] = a[4];
	output[5] = a[5];
	output[6] = a[6];
	output[7] = a[7];
	output[8] = a[8];
	return output;
}

float *Mat3_Create(void)
{
	float *output = (float *) malloc(9 * sizeof(float ));
	output[0] = 1;
	output[1] = 0;
	output[2] = 0;
	output[3] = 0;
	output[4] = 1;
	output[5] = 0;
	output[6] = 0;
	output[7] = 0;
	output[8] = 1;
	return output;
}

float Mat3_Determinant(float const *a)
{
	float a00 = a[0];
	float a01 = a[1];
	float a02 = a[2];
	float a10 = a[3];
	float a11 = a[4];
	float a12 = a[5];
	float a20 = a[6];
	float a21 = a[7];
	float a22 = a[8];
	return a00 * (a22 * a11 - a12 * a21) + a01 * (-a22 * a10 + a12 * a20) + a02 * (a21 * a10 - a11 * a20);
}

float const *Mat3_FromMat2d(float *output, float const *a)
{
	output[0] = a[0];
	output[1] = a[1];
	output[2] = 0;
	output[3] = a[2];
	output[4] = a[3];
	output[5] = 0;
	output[6] = a[4];
	output[7] = a[5];
	output[8] = 1;
	return output;
}

float const *Mat3_FromMat4(float *output, float const *a)
{
	output[0] = a[0];
	output[1] = a[1];
	output[2] = a[2];
	output[3] = a[4];
	output[4] = a[5];
	output[5] = a[6];
	output[6] = a[8];
	output[7] = a[9];
	output[8] = a[10];
	return output;
}

float const *Mat3_FromQuat(float *output, float const *q)
{
	float x = q[0];
	float y = q[1];
	float z = q[2];
	float w = q[3];
	float x2 = x + x;
	float y2 = y + y;
	float z2 = z + z;
	float xx = x * x2;
	float xy = x * y2;
	float xz = x * z2;
	float yy = y * y2;
	float yz = y * z2;
	float zz = z * z2;
	float wx = w * x2;
	float wy = w * y2;
	float wz = w * z2;
	output[0] = 1 - (yy + zz);
	output[3] = xy + wz;
	output[6] = xz - wy;
	output[1] = xy - wz;
	output[4] = 1 - (xx + zz);
	output[7] = yz + wx;
	output[2] = xz + wy;
	output[5] = yz - wx;
	output[8] = 1 - (xx + yy);
	return output;
}

float const *Mat3_Identity(float *output)
{
	output[0] = 1;
	output[1] = 0;
	output[2] = 0;
	output[3] = 0;
	output[4] = 1;
	output[5] = 0;
	output[6] = 0;
	output[7] = 0;
	output[8] = 1;
	return output;
}

float const *Mat3_Invert(float *output, float const *a)
{
	float a00 = a[0];
	float a01 = a[1];
	float a02 = a[2];
	float a10 = a[3];
	float a11 = a[4];
	float a12 = a[5];
	float a20 = a[6];
	float a21 = a[7];
	float a22 = a[8];
	float b01 = a22 * a11 - a12 * a21;
	float b11 = -a22 * a10 + a12 * a20;
	float b21 = a21 * a10 - a11 * a20;
	float det = a00 * b01 + a01 * b11 + a02 * b21;
	if (det == 0) {
		return NULL;
	}
	float one = 1;
	det = one / det;
	output[0] = b01 * det;
	output[1] = (-a22 * a01 + a02 * a21) * det;
	output[2] = (a12 * a01 - a02 * a11) * det;
	output[3] = b11 * det;
	output[4] = (a22 * a00 - a02 * a20) * det;
	output[5] = (-a12 * a00 + a02 * a10) * det;
	output[6] = b21 * det;
	output[7] = (-a21 * a00 + a01 * a20) * det;
	output[8] = (a11 * a00 - a01 * a10) * det;
	return output;
}

float const *Mat3_Mul(float *output, float const *a, float const *b)
{
	return Mat3_Multiply(output, a, b);
}

float const *Mat3_Multiply(float *output, float const *a, float const *b)
{
	float a00 = a[0];
	float a01 = a[1];
	float a02 = a[2];
	float a10 = a[3];
	float a11 = a[4];
	float a12 = a[5];
	float a20 = a[6];
	float a21 = a[7];
	float a22 = a[8];
	float b00 = b[0];
	float b01 = b[1];
	float b02 = b[2];
	float b10 = b[3];
	float b11 = b[4];
	float b12 = b[5];
	float b20 = b[6];
	float b21 = b[7];
	float b22 = b[8];
	output[0] = b00 * a00 + b01 * a10 + b02 * a20;
	output[1] = b00 * a01 + b01 * a11 + b02 * a21;
	output[2] = b00 * a02 + b01 * a12 + b02 * a22;
	output[3] = b10 * a00 + b11 * a10 + b12 * a20;
	output[4] = b10 * a01 + b11 * a11 + b12 * a21;
	output[5] = b10 * a02 + b11 * a12 + b12 * a22;
	output[6] = b20 * a00 + b21 * a10 + b22 * a20;
	output[7] = b20 * a01 + b21 * a11 + b22 * a21;
	output[8] = b20 * a02 + b21 * a12 + b22 * a22;
	return output;
}

float const *Mat3_NormalFromMat4(float *output, float const *a)
{
	float a00 = a[0];
	float a01 = a[1];
	float a02 = a[2];
	float a03 = a[3];
	float a10 = a[4];
	float a11 = a[5];
	float a12 = a[6];
	float a13 = a[7];
	float a20 = a[8];
	float a21 = a[9];
	float a22 = a[10];
	float a23 = a[11];
	float a30 = a[12];
	float a31 = a[13];
	float a32 = a[14];
	float a33 = a[15];
	float b00 = a00 * a11 - a01 * a10;
	float b01 = a00 * a12 - a02 * a10;
	float b02 = a00 * a13 - a03 * a10;
	float b03 = a01 * a12 - a02 * a11;
	float b04 = a01 * a13 - a03 * a11;
	float b05 = a02 * a13 - a03 * a12;
	float b06 = a20 * a31 - a21 * a30;
	float b07 = a20 * a32 - a22 * a30;
	float b08 = a20 * a33 - a23 * a30;
	float b09 = a21 * a32 - a22 * a31;
	float b10 = a21 * a33 - a23 * a31;
	float b11 = a22 * a33 - a23 * a32;
	float det = b00 * b11 - b01 * b10 + b02 * b09 + b03 * b08 - b04 * b07 + b05 * b06;
	if (det == 0) {
		return NULL;
	}
	float one = 1;
	det = one / det;
	output[0] = (a11 * b11 - a12 * b10 + a13 * b09) * det;
	output[1] = (a12 * b08 - a10 * b11 - a13 * b07) * det;
	output[2] = (a10 * b10 - a11 * b08 + a13 * b06) * det;
	output[3] = (a02 * b10 - a01 * b11 - a03 * b09) * det;
	output[4] = (a00 * b11 - a02 * b08 + a03 * b07) * det;
	output[5] = (a01 * b08 - a00 * b10 - a03 * b06) * det;
	output[6] = (a31 * b05 - a32 * b04 + a33 * b03) * det;
	output[7] = (a32 * b02 - a30 * b05 - a33 * b01) * det;
	output[8] = (a30 * b04 - a31 * b02 + a33 * b00) * det;
	return output;
}

float const *Mat3_Rotate(float *output, float const *a, float rad)
{
	float a00 = a[0];
	float a01 = a[1];
	float a02 = a[2];
	float a10 = a[3];
	float a11 = a[4];
	float a12 = a[5];
	float a20 = a[6];
	float a21 = a[7];
	float a22 = a[8];
	float s = Platform_Sin(rad);
	float c = Platform_Cos(rad);
	output[0] = c * a00 + s * a10;
	output[1] = c * a01 + s * a11;
	output[2] = c * a02 + s * a12;
	output[3] = c * a10 - s * a00;
	output[4] = c * a11 - s * a01;
	output[5] = c * a12 - s * a02;
	output[6] = a20;
	output[7] = a21;
	output[8] = a22;
	return output;
}

float const *Mat3_Scale(float *output, float const *a, float const *v)
{
	float x = v[0];
	float y = v[1];
	output[0] = x * a[0];
	output[1] = x * a[1];
	output[2] = x * a[2];
	output[3] = y * a[3];
	output[4] = y * a[4];
	output[5] = y * a[5];
	output[6] = a[6];
	output[7] = a[7];
	output[8] = a[8];
	return output;
}

float const *Mat3_Translate(float *output, float const *a, float const *v)
{
	float a00 = a[0];
	float a01 = a[1];
	float a02 = a[2];
	float a10 = a[3];
	float a11 = a[4];
	float a12 = a[5];
	float a20 = a[6];
	float a21 = a[7];
	float a22 = a[8];
	float x = v[0];
	float y = v[1];
	output[0] = a00;
	output[1] = a01;
	output[2] = a02;
	output[3] = a10;
	output[4] = a11;
	output[5] = a12;
	output[6] = x * a00 + y * a10 + a20;
	output[7] = x * a01 + y * a11 + a21;
	output[8] = x * a02 + y * a12 + a22;
	return output;
}

float const *Mat3_Transpose(float *output, float const *a)
{
	output[0] = a[0];
	output[1] = a[3];
	output[2] = a[6];
	output[3] = a[1];
	output[4] = a[4];
	output[5] = a[7];
	output[6] = a[2];
	output[7] = a[5];
	output[8] = a[8];
	return output;
}

float const *Mat4_Adjoint(float *output, float const *a)
{
	float a00 = a[0];
	float a01 = a[1];
	float a02 = a[2];
	float a03 = a[3];
	float a10 = a[4];
	float a11 = a[5];
	float a12 = a[6];
	float a13 = a[7];
	float a20 = a[8];
	float a21 = a[9];
	float a22 = a[10];
	float a23 = a[11];
	float a30 = a[12];
	float a31 = a[13];
	float a32 = a[14];
	float a33 = a[15];
	output[0] = a11 * (a22 * a33 - a23 * a32) - a21 * (a12 * a33 - a13 * a32) + a31 * (a12 * a23 - a13 * a22);
	output[1] = -(a01 * (a22 * a33 - a23 * a32) - a21 * (a02 * a33 - a03 * a32) + a31 * (a02 * a23 - a03 * a22));
	output[2] = a01 * (a12 * a33 - a13 * a32) - a11 * (a02 * a33 - a03 * a32) + a31 * (a02 * a13 - a03 * a12);
	output[3] = -(a01 * (a12 * a23 - a13 * a22) - a11 * (a02 * a23 - a03 * a22) + a21 * (a02 * a13 - a03 * a12));
	output[4] = -(a10 * (a22 * a33 - a23 * a32) - a20 * (a12 * a33 - a13 * a32) + a30 * (a12 * a23 - a13 * a22));
	output[5] = a00 * (a22 * a33 - a23 * a32) - a20 * (a02 * a33 - a03 * a32) + a30 * (a02 * a23 - a03 * a22);
	output[6] = -(a00 * (a12 * a33 - a13 * a32) - a10 * (a02 * a33 - a03 * a32) + a30 * (a02 * a13 - a03 * a12));
	output[7] = a00 * (a12 * a23 - a13 * a22) - a10 * (a02 * a23 - a03 * a22) + a20 * (a02 * a13 - a03 * a12);
	output[8] = a10 * (a21 * a33 - a23 * a31) - a20 * (a11 * a33 - a13 * a31) + a30 * (a11 * a23 - a13 * a21);
	output[9] = -(a00 * (a21 * a33 - a23 * a31) - a20 * (a01 * a33 - a03 * a31) + a30 * (a01 * a23 - a03 * a21));
	output[10] = a00 * (a11 * a33 - a13 * a31) - a10 * (a01 * a33 - a03 * a31) + a30 * (a01 * a13 - a03 * a11);
	output[11] = -(a00 * (a11 * a23 - a13 * a21) - a10 * (a01 * a23 - a03 * a21) + a20 * (a01 * a13 - a03 * a11));
	output[12] = -(a10 * (a21 * a32 - a22 * a31) - a20 * (a11 * a32 - a12 * a31) + a30 * (a11 * a22 - a12 * a21));
	output[13] = a00 * (a21 * a32 - a22 * a31) - a20 * (a01 * a32 - a02 * a31) + a30 * (a01 * a22 - a02 * a21);
	output[14] = -(a00 * (a11 * a32 - a12 * a31) - a10 * (a01 * a32 - a02 * a31) + a30 * (a01 * a12 - a02 * a11));
	output[15] = a00 * (a11 * a22 - a12 * a21) - a10 * (a01 * a22 - a02 * a21) + a20 * (a01 * a12 - a02 * a11);
	return output;
}

float const *Mat4_CloneIt(float const *a)
{
	float *output = (float *) malloc(16 * sizeof(float ));
	output[0] = a[0];
	output[1] = a[1];
	output[2] = a[2];
	output[3] = a[3];
	output[4] = a[4];
	output[5] = a[5];
	output[6] = a[6];
	output[7] = a[7];
	output[8] = a[8];
	output[9] = a[9];
	output[10] = a[10];
	output[11] = a[11];
	output[12] = a[12];
	output[13] = a[13];
	output[14] = a[14];
	output[15] = a[15];
	return output;
}

float const *Mat4_Copy(float *output, float const *a)
{
	output[0] = a[0];
	output[1] = a[1];
	output[2] = a[2];
	output[3] = a[3];
	output[4] = a[4];
	output[5] = a[5];
	output[6] = a[6];
	output[7] = a[7];
	output[8] = a[8];
	output[9] = a[9];
	output[10] = a[10];
	output[11] = a[11];
	output[12] = a[12];
	output[13] = a[13];
	output[14] = a[14];
	output[15] = a[15];
	return output;
}

float *Mat4_Create(void)
{
	float *output = (float *) malloc(16 * sizeof(float ));
	output[0] = 1;
	output[1] = 0;
	output[2] = 0;
	output[3] = 0;
	output[4] = 0;
	output[5] = 1;
	output[6] = 0;
	output[7] = 0;
	output[8] = 0;
	output[9] = 0;
	output[10] = 1;
	output[11] = 0;
	output[12] = 0;
	output[13] = 0;
	output[14] = 0;
	output[15] = 1;
	return output;
}

float Mat4_Determinant(float const *a)
{
	float a00 = a[0];
	float a01 = a[1];
	float a02 = a[2];
	float a03 = a[3];
	float a10 = a[4];
	float a11 = a[5];
	float a12 = a[6];
	float a13 = a[7];
	float a20 = a[8];
	float a21 = a[9];
	float a22 = a[10];
	float a23 = a[11];
	float a30 = a[12];
	float a31 = a[13];
	float a32 = a[14];
	float a33 = a[15];
	float b00 = a00 * a11 - a01 * a10;
	float b01 = a00 * a12 - a02 * a10;
	float b02 = a00 * a13 - a03 * a10;
	float b03 = a01 * a12 - a02 * a11;
	float b04 = a01 * a13 - a03 * a11;
	float b05 = a02 * a13 - a03 * a12;
	float b06 = a20 * a31 - a21 * a30;
	float b07 = a20 * a32 - a22 * a30;
	float b08 = a20 * a33 - a23 * a30;
	float b09 = a21 * a32 - a22 * a31;
	float b10 = a21 * a33 - a23 * a31;
	float b11 = a22 * a33 - a23 * a32;
	return b00 * b11 - b01 * b10 + b02 * b09 + b03 * b08 - b04 * b07 + b05 * b06;
}

float const *Mat4_FromQuat(float *output, float const *q)
{
	float x = q[0];
	float y = q[1];
	float z = q[2];
	float w = q[3];
	float x2 = x + x;
	float y2 = y + y;
	float z2 = z + z;
	float xx = x * x2;
	float xy = x * y2;
	float xz = x * z2;
	float yy = y * y2;
	float yz = y * z2;
	float zz = z * z2;
	float wx = w * x2;
	float wy = w * y2;
	float wz = w * z2;
	output[0] = 1 - (yy + zz);
	output[1] = xy + wz;
	output[2] = xz - wy;
	output[3] = 0;
	output[4] = xy - wz;
	output[5] = 1 - (xx + zz);
	output[6] = yz + wx;
	output[7] = 0;
	output[8] = xz + wy;
	output[9] = yz - wx;
	output[10] = 1 - (xx + yy);
	output[11] = 0;
	output[12] = 0;
	output[13] = 0;
	output[14] = 0;
	output[15] = 1;
	return output;
}

float const *Mat4_FromRotationTranslation(float *output, float const *q, float const *v)
{
	float x = q[0];
	float y = q[1];
	float z = q[2];
	float w = q[3];
	float x2 = x + x;
	float y2 = y + y;
	float z2 = z + z;
	float xx = x * x2;
	float xy = x * y2;
	float xz = x * z2;
	float yy = y * y2;
	float yz = y * z2;
	float zz = z * z2;
	float wx = w * x2;
	float wy = w * y2;
	float wz = w * z2;
	output[0] = 1 - (yy + zz);
	output[1] = xy + wz;
	output[2] = xz - wy;
	output[3] = 0;
	output[4] = xy - wz;
	output[5] = 1 - (xx + zz);
	output[6] = yz + wx;
	output[7] = 0;
	output[8] = xz + wy;
	output[9] = yz - wx;
	output[10] = 1 - (xx + yy);
	output[11] = 0;
	output[12] = v[0];
	output[13] = v[1];
	output[14] = v[2];
	output[15] = 1;
	return output;
}

float const *Mat4_Frustum(float *output, float left, float right, float bottom, float top, float near, float far)
{
	float rl = 1 / (right - left);
	float tb = 1 / (top - bottom);
	float nf = 1 / (near - far);
	output[0] = near * 2 * rl;
	output[1] = 0;
	output[2] = 0;
	output[3] = 0;
	output[4] = 0;
	output[5] = near * 2 * tb;
	output[6] = 0;
	output[7] = 0;
	output[8] = (right + left) * rl;
	output[9] = (top + bottom) * tb;
	output[10] = (far + near) * nf;
	output[11] = -1;
	output[12] = 0;
	output[13] = 0;
	output[14] = far * near * 2 * nf;
	output[15] = 0;
	return output;
}

float const *Mat4_Identity(float *output)
{
	output[0] = 1;
	output[1] = 0;
	output[2] = 0;
	output[3] = 0;
	output[4] = 0;
	output[5] = 1;
	output[6] = 0;
	output[7] = 0;
	output[8] = 0;
	output[9] = 0;
	output[10] = 1;
	output[11] = 0;
	output[12] = 0;
	output[13] = 0;
	output[14] = 0;
	output[15] = 1;
	return output;
}

float const *Mat4_Invert(float *output, float const *a)
{
	float a00 = a[0];
	float a01 = a[1];
	float a02 = a[2];
	float a03 = a[3];
	float a10 = a[4];
	float a11 = a[5];
	float a12 = a[6];
	float a13 = a[7];
	float a20 = a[8];
	float a21 = a[9];
	float a22 = a[10];
	float a23 = a[11];
	float a30 = a[12];
	float a31 = a[13];
	float a32 = a[14];
	float a33 = a[15];
	float b00 = a00 * a11 - a01 * a10;
	float b01 = a00 * a12 - a02 * a10;
	float b02 = a00 * a13 - a03 * a10;
	float b03 = a01 * a12 - a02 * a11;
	float b04 = a01 * a13 - a03 * a11;
	float b05 = a02 * a13 - a03 * a12;
	float b06 = a20 * a31 - a21 * a30;
	float b07 = a20 * a32 - a22 * a30;
	float b08 = a20 * a33 - a23 * a30;
	float b09 = a21 * a32 - a22 * a31;
	float b10 = a21 * a33 - a23 * a31;
	float b11 = a22 * a33 - a23 * a32;
	float det = b00 * b11 - b01 * b10 + b02 * b09 + b03 * b08 - b04 * b07 + b05 * b06;
	if (det == 0) {
		return NULL;
	}
	float one = 1;
	det = one / det;
	output[0] = (a11 * b11 - a12 * b10 + a13 * b09) * det;
	output[1] = (a02 * b10 - a01 * b11 - a03 * b09) * det;
	output[2] = (a31 * b05 - a32 * b04 + a33 * b03) * det;
	output[3] = (a22 * b04 - a21 * b05 - a23 * b03) * det;
	output[4] = (a12 * b08 - a10 * b11 - a13 * b07) * det;
	output[5] = (a00 * b11 - a02 * b08 + a03 * b07) * det;
	output[6] = (a32 * b02 - a30 * b05 - a33 * b01) * det;
	output[7] = (a20 * b05 - a22 * b02 + a23 * b01) * det;
	output[8] = (a10 * b10 - a11 * b08 + a13 * b06) * det;
	output[9] = (a01 * b08 - a00 * b10 - a03 * b06) * det;
	output[10] = (a30 * b04 - a31 * b02 + a33 * b00) * det;
	output[11] = (a21 * b02 - a20 * b04 - a23 * b00) * det;
	output[12] = (a11 * b07 - a10 * b09 - a12 * b06) * det;
	output[13] = (a00 * b09 - a01 * b07 + a02 * b06) * det;
	output[14] = (a31 * b01 - a30 * b03 - a32 * b00) * det;
	output[15] = (a20 * b03 - a21 * b01 + a22 * b00) * det;
	return output;
}

float const *Mat4_LookAt(float *output, float const *eye, float const *center, float const *up)
{
	float x0;
	float x1;
	float x2;
	float y0;
	float y1;
	float y2;
	float z0;
	float z1;
	float z2;
	float len;
	float eyex = eye[0];
	float eyey = eye[1];
	float eyez = eye[2];
	float upx = up[0];
	float upy = up[1];
	float upz = up[2];
	float centerx = center[0];
	float centery = center[1];
	float centerz = center[2];
	if (GlMatrixMath_Abs(eyex - centerx) < GlMatrixMath_GLMAT_EPSILON() && GlMatrixMath_Abs(eyey - centery) < GlMatrixMath_GLMAT_EPSILON() && GlMatrixMath_Abs(eyez - centerz) < GlMatrixMath_GLMAT_EPSILON()) {
		return Mat4_Identity(output);
	}
	z0 = eyex - centerx;
	z1 = eyey - centery;
	z2 = eyez - centerz;
	len = 1 / Platform_Sqrt(z0 * z0 + z1 * z1 + z2 * z2);
	z0 *= len;
	z1 *= len;
	z2 *= len;
	x0 = upy * z2 - upz * z1;
	x1 = upz * z0 - upx * z2;
	x2 = upx * z1 - upy * z0;
	len = Platform_Sqrt(x0 * x0 + x1 * x1 + x2 * x2);
	if (len == 0) {
		x0 = 0;
		x1 = 0;
		x2 = 0;
	}
	else {
		len = 1 / len;
		x0 *= len;
		x1 *= len;
		x2 *= len;
	}
	y0 = z1 * x2 - z2 * x1;
	y1 = z2 * x0 - z0 * x2;
	y2 = z0 * x1 - z1 * x0;
	len = Platform_Sqrt(y0 * y0 + y1 * y1 + y2 * y2);
	if (len == 0) {
		y0 = 0;
		y1 = 0;
		y2 = 0;
	}
	else {
		len = 1 / len;
		y0 *= len;
		y1 *= len;
		y2 *= len;
	}
	output[0] = x0;
	output[1] = y0;
	output[2] = z0;
	output[3] = 0;
	output[4] = x1;
	output[5] = y1;
	output[6] = z1;
	output[7] = 0;
	output[8] = x2;
	output[9] = y2;
	output[10] = z2;
	output[11] = 0;
	output[12] = -(x0 * eyex + x1 * eyey + x2 * eyez);
	output[13] = -(y0 * eyex + y1 * eyey + y2 * eyez);
	output[14] = -(z0 * eyex + z1 * eyey + z2 * eyez);
	output[15] = 1;
	return output;
}

float const *Mat4_Mul(float *output, float const *a, float const *b)
{
	return Mat4_Multiply(output, a, b);
}

float const *Mat4_Multiply(float *output, float const *a, float const *b)
{
	float a00 = a[0];
	float a01 = a[1];
	float a02 = a[2];
	float a03 = a[3];
	float a10 = a[4];
	float a11 = a[5];
	float a12 = a[6];
	float a13 = a[7];
	float a20 = a[8];
	float a21 = a[9];
	float a22 = a[10];
	float a23 = a[11];
	float a30 = a[12];
	float a31 = a[13];
	float a32 = a[14];
	float a33 = a[15];
	float b0 = b[0];
	float b1 = b[1];
	float b2 = b[2];
	float b3 = b[3];
	output[0] = b0 * a00 + b1 * a10 + b2 * a20 + b3 * a30;
	output[1] = b0 * a01 + b1 * a11 + b2 * a21 + b3 * a31;
	output[2] = b0 * a02 + b1 * a12 + b2 * a22 + b3 * a32;
	output[3] = b0 * a03 + b1 * a13 + b2 * a23 + b3 * a33;
	b0 = b[4];
	b1 = b[5];
	b2 = b[6];
	b3 = b[7];
	output[4] = b0 * a00 + b1 * a10 + b2 * a20 + b3 * a30;
	output[5] = b0 * a01 + b1 * a11 + b2 * a21 + b3 * a31;
	output[6] = b0 * a02 + b1 * a12 + b2 * a22 + b3 * a32;
	output[7] = b0 * a03 + b1 * a13 + b2 * a23 + b3 * a33;
	b0 = b[8];
	b1 = b[9];
	b2 = b[10];
	b3 = b[11];
	output[8] = b0 * a00 + b1 * a10 + b2 * a20 + b3 * a30;
	output[9] = b0 * a01 + b1 * a11 + b2 * a21 + b3 * a31;
	output[10] = b0 * a02 + b1 * a12 + b2 * a22 + b3 * a32;
	output[11] = b0 * a03 + b1 * a13 + b2 * a23 + b3 * a33;
	b0 = b[12];
	b1 = b[13];
	b2 = b[14];
	b3 = b[15];
	output[12] = b0 * a00 + b1 * a10 + b2 * a20 + b3 * a30;
	output[13] = b0 * a01 + b1 * a11 + b2 * a21 + b3 * a31;
	output[14] = b0 * a02 + b1 * a12 + b2 * a22 + b3 * a32;
	output[15] = b0 * a03 + b1 * a13 + b2 * a23 + b3 * a33;
	return output;
}

float const *Mat4_Ortho(float *output, float left, float right, float bottom, float top, float near, float far)
{
	float lr = 1 / (left - right);
	float bt = 1 / (bottom - top);
	float nf = 1 / (near - far);
	output[0] = -2 * lr;
	output[1] = 0;
	output[2] = 0;
	output[3] = 0;
	output[4] = 0;
	output[5] = -2 * bt;
	output[6] = 0;
	output[7] = 0;
	output[8] = 0;
	output[9] = 0;
	output[10] = 2 * nf;
	output[11] = 0;
	output[12] = (left + right) * lr;
	output[13] = (top + bottom) * bt;
	output[14] = (far + near) * nf;
	output[15] = 1;
	return output;
}

float const *Mat4_Perspective(float *output, float fovy, float aspect, float near, float far)
{
	float one = 1;
	float f = one / Platform_Tan(fovy / 2);
	float nf = 1 / (near - far);
	output[0] = f / aspect;
	output[1] = 0;
	output[2] = 0;
	output[3] = 0;
	output[4] = 0;
	output[5] = f;
	output[6] = 0;
	output[7] = 0;
	output[8] = 0;
	output[9] = 0;
	output[10] = (far + near) * nf;
	output[11] = -1;
	output[12] = 0;
	output[13] = 0;
	output[14] = 2 * far * near * nf;
	output[15] = 0;
	return output;
}

float const *Mat4_Rotate(float *output, float const *a, float rad, float const *axis)
{
	float x = axis[0];
	float y = axis[1];
	float z = axis[2];
	float len = Platform_Sqrt(x * x + y * y + z * z);
	float s;
	float c;
	float t;
	float a00;
	float a01;
	float a02;
	float a03;
	float a10;
	float a11;
	float a12;
	float a13;
	float a20;
	float a21;
	float a22;
	float a23;
	float b00;
	float b01;
	float b02;
	float b10;
	float b11;
	float b12;
	float b20;
	float b21;
	float b22;
	if (GlMatrixMath_Abs(len) < GlMatrixMath_GLMAT_EPSILON()) {
		return NULL;
	}
	len = 1 / len;
	x *= len;
	y *= len;
	z *= len;
	s = Platform_Sin(rad);
	c = Platform_Cos(rad);
	t = 1 - c;
	a00 = a[0];
	a01 = a[1];
	a02 = a[2];
	a03 = a[3];
	a10 = a[4];
	a11 = a[5];
	a12 = a[6];
	a13 = a[7];
	a20 = a[8];
	a21 = a[9];
	a22 = a[10];
	a23 = a[11];
	b00 = x * x * t + c;
	b01 = y * x * t + z * s;
	b02 = z * x * t - y * s;
	b10 = x * y * t - z * s;
	b11 = y * y * t + c;
	b12 = z * y * t + x * s;
	b20 = x * z * t + y * s;
	b21 = y * z * t - x * s;
	b22 = z * z * t + c;
	output[0] = a00 * b00 + a10 * b01 + a20 * b02;
	output[1] = a01 * b00 + a11 * b01 + a21 * b02;
	output[2] = a02 * b00 + a12 * b01 + a22 * b02;
	output[3] = a03 * b00 + a13 * b01 + a23 * b02;
	output[4] = a00 * b10 + a10 * b11 + a20 * b12;
	output[5] = a01 * b10 + a11 * b11 + a21 * b12;
	output[6] = a02 * b10 + a12 * b11 + a22 * b12;
	output[7] = a03 * b10 + a13 * b11 + a23 * b12;
	output[8] = a00 * b20 + a10 * b21 + a20 * b22;
	output[9] = a01 * b20 + a11 * b21 + a21 * b22;
	output[10] = a02 * b20 + a12 * b21 + a22 * b22;
	output[11] = a03 * b20 + a13 * b21 + a23 * b22;
	output[12] = a[12];
	output[13] = a[13];
	output[14] = a[14];
	output[15] = a[15];
	return output;
}

float const *Mat4_RotateX(float *output, float const *a, float rad)
{
	float s = Platform_Sin(rad);
	float c = Platform_Cos(rad);
	float a10 = a[4];
	float a11 = a[5];
	float a12 = a[6];
	float a13 = a[7];
	float a20 = a[8];
	float a21 = a[9];
	float a22 = a[10];
	float a23 = a[11];
	output[0] = a[0];
	output[1] = a[1];
	output[2] = a[2];
	output[3] = a[3];
	output[12] = a[12];
	output[13] = a[13];
	output[14] = a[14];
	output[15] = a[15];
	output[4] = a10 * c + a20 * s;
	output[5] = a11 * c + a21 * s;
	output[6] = a12 * c + a22 * s;
	output[7] = a13 * c + a23 * s;
	output[8] = a20 * c - a10 * s;
	output[9] = a21 * c - a11 * s;
	output[10] = a22 * c - a12 * s;
	output[11] = a23 * c - a13 * s;
	return output;
}

float const *Mat4_RotateY(float *output, float const *a, float rad)
{
	float s = Platform_Sin(rad);
	float c = Platform_Cos(rad);
	float a00 = a[0];
	float a01 = a[1];
	float a02 = a[2];
	float a03 = a[3];
	float a20 = a[8];
	float a21 = a[9];
	float a22 = a[10];
	float a23 = a[11];
	output[4] = a[4];
	output[5] = a[5];
	output[6] = a[6];
	output[7] = a[7];
	output[12] = a[12];
	output[13] = a[13];
	output[14] = a[14];
	output[15] = a[15];
	output[0] = a00 * c - a20 * s;
	output[1] = a01 * c - a21 * s;
	output[2] = a02 * c - a22 * s;
	output[3] = a03 * c - a23 * s;
	output[8] = a00 * s + a20 * c;
	output[9] = a01 * s + a21 * c;
	output[10] = a02 * s + a22 * c;
	output[11] = a03 * s + a23 * c;
	return output;
}

float const *Mat4_RotateZ(float *output, float const *a, float rad)
{
	float s = Platform_Sin(rad);
	float c = Platform_Cos(rad);
	float a00 = a[0];
	float a01 = a[1];
	float a02 = a[2];
	float a03 = a[3];
	float a10 = a[4];
	float a11 = a[5];
	float a12 = a[6];
	float a13 = a[7];
	output[8] = a[8];
	output[9] = a[9];
	output[10] = a[10];
	output[11] = a[11];
	output[12] = a[12];
	output[13] = a[13];
	output[14] = a[14];
	output[15] = a[15];
	output[0] = a00 * c + a10 * s;
	output[1] = a01 * c + a11 * s;
	output[2] = a02 * c + a12 * s;
	output[3] = a03 * c + a13 * s;
	output[4] = a10 * c - a00 * s;
	output[5] = a11 * c - a01 * s;
	output[6] = a12 * c - a02 * s;
	output[7] = a13 * c - a03 * s;
	return output;
}

float const *Mat4_Scale(float *output, float const *a, float const *v)
{
	float x = v[0];
	float y = v[1];
	float z = v[2];
	output[0] = a[0] * x;
	output[1] = a[1] * x;
	output[2] = a[2] * x;
	output[3] = a[3] * x;
	output[4] = a[4] * y;
	output[5] = a[5] * y;
	output[6] = a[6] * y;
	output[7] = a[7] * y;
	output[8] = a[8] * z;
	output[9] = a[9] * z;
	output[10] = a[10] * z;
	output[11] = a[11] * z;
	output[12] = a[12];
	output[13] = a[13];
	output[14] = a[14];
	output[15] = a[15];
	return output;
}

float const *Mat4_Translate(float *output, float const *a, float const *v)
{
	float x = v[0];
	float y = v[1];
	float z = v[2];
	float a00;
	float a01;
	float a02;
	float a03;
	float a10;
	float a11;
	float a12;
	float a13;
	float a20;
	float a21;
	float a22;
	float a23;
	a00 = a[0];
	a01 = a[1];
	a02 = a[2];
	a03 = a[3];
	a10 = a[4];
	a11 = a[5];
	a12 = a[6];
	a13 = a[7];
	a20 = a[8];
	a21 = a[9];
	a22 = a[10];
	a23 = a[11];
	output[0] = a00;
	output[1] = a01;
	output[2] = a02;
	output[3] = a03;
	output[4] = a10;
	output[5] = a11;
	output[6] = a12;
	output[7] = a13;
	output[8] = a20;
	output[9] = a21;
	output[10] = a22;
	output[11] = a23;
	output[12] = a00 * x + a10 * y + a20 * z + a[12];
	output[13] = a01 * x + a11 * y + a21 * z + a[13];
	output[14] = a02 * x + a12 * y + a22 * z + a[14];
	output[15] = a03 * x + a13 * y + a23 * z + a[15];
	return output;
}

float const *Mat4_Transpose(float *output, float const *a)
{
	output[0] = a[0];
	output[1] = a[4];
	output[2] = a[8];
	output[3] = a[12];
	output[4] = a[1];
	output[5] = a[5];
	output[6] = a[9];
	output[7] = a[13];
	output[8] = a[2];
	output[9] = a[6];
	output[10] = a[10];
	output[11] = a[14];
	output[12] = a[3];
	output[13] = a[7];
	output[14] = a[11];
	output[15] = a[15];
	return output;
}

float Platform_Acos(float a)
{
	
            return acos(a);
        return 0;
}

float Platform_Cos(float a)
{
	
            return cos(a);
        return 0;
}

float Platform_Random(void)
{
	return 0;
}

float Platform_Sin(float a)
{
	
            return sin(a);
        return 0;
}

float Platform_Sqrt(float a)
{
	
            return sqrt(a);
        return 0;
}

float Platform_Tan(float a)
{
	
            return tan(a);
        return 0;
}

void Platform_WriteInt(int a)
{
	
            printf("%i", a);
        }

void Platform_WriteString(const char *a)
{
	
            printf("%s", a);
        }

float const *Quat_Add(float *output, float const *a, float const *b)
{
	return Vec4_Add(output, a, b);
}

float const *Quat_CalculateW(float *output, float const *a)
{
	float x = a[0];
	float y = a[1];
	float z = a[2];
	output[0] = x;
	output[1] = y;
	output[2] = z;
	float one = 1;
	output[3] = -Platform_Sqrt(GlMatrixMath_Abs(one - x * x - y * y - z * z));
	return output;
}

float const *Quat_CloneIt(float const *a)
{
	return Vec4_CloneIt(a);
}

float const *Quat_Conjugate(Quat const *self, float *output, float const *a)
{
	output[0] = -a[0];
	output[1] = -a[1];
	output[2] = -a[2];
	output[3] = a[3];
	return output;
}

float const *Quat_Copy(float *output, float const *a)
{
	return Vec4_Copy(output, a);
}

float const *Quat_Create(void)
{
	float *output = (float *) malloc(4 * sizeof(float ));
	output[0] = 0;
	output[1] = 0;
	output[2] = 0;
	output[3] = 1;
	return output;
}

float Quat_Dot(float const *a, float const *b)
{
	return Vec4_Dot(a, b);
}

float const *Quat_FromMat3(float *output, float const *m)
{
	float fTrace = m[0] + m[4] + m[8];
	float fRoot;
	float zero = 0;
	float one = 1;
	float half = one / 2;
	if (fTrace > zero) {
		fRoot = Platform_Sqrt(fTrace + one);
		output[3] = half * fRoot;
		fRoot = half / fRoot;
		output[0] = (m[7] - m[5]) * fRoot;
		output[1] = (m[2] - m[6]) * fRoot;
		output[2] = (m[3] - m[1]) * fRoot;
	}
	else {
		int i = 0;
		if (m[4] > m[0])
			i = 1;
		if (m[8] > m[i * 3 + i])
			i = 2;
		int j = (i + 1) % 3;
		int k = (i + 2) % 3;
		fRoot = Platform_Sqrt(m[i * 3 + i] - m[j * 3 + j] - m[k * 3 + k] + one);
		output[i] = half * fRoot;
		fRoot = half / fRoot;
		output[3] = (m[k * 3 + j] - m[j * 3 + k]) * fRoot;
		output[j] = (m[j * 3 + i] + m[i * 3 + j]) * fRoot;
		output[k] = (m[k * 3 + i] + m[i * 3 + k]) * fRoot;
	}
	return output;
}

float const *Quat_FromValues(float x, float y, float z, float w)
{
	return Vec4_FromValues(x, y, z, w);
}

float const *Quat_Identity(float *output)
{
	output[0] = 0;
	output[1] = 0;
	output[2] = 0;
	output[3] = 1;
	return output;
}

float const *Quat_Invert(Quat const *self, float *output, float const *a)
{
	float a0 = a[0];
	float a1 = a[1];
	float a2 = a[2];
	float a3 = a[3];
	float dot = a0 * a0 + a1 * a1 + a2 * a2 + a3 * a3;
	float one = 1;
	float invDot = dot != 0 ? one / dot : 0;
	output[0] = -a0 * invDot;
	output[1] = -a1 * invDot;
	output[2] = -a2 * invDot;
	output[3] = a3 * invDot;
	return output;
}

float Quat_Len(float const *a)
{
	return Quat_Length(a);
}

float Quat_Length(float const *a)
{
	return Vec4_Length(a);
}

float const *Quat_Lerp(float *output, float const *a, float const *b, float t)
{
	return Vec4_Lerp(output, a, b, t);
}

float const *Quat_Mul(float *output, float const *a, float const *b)
{
	return Quat_Multiply(output, a, b);
}

float const *Quat_Multiply(float *output, float const *a, float const *b)
{
	float ax = a[0];
	float ay = a[1];
	float az = a[2];
	float aw = a[3];
	float bx = b[0];
	float by = b[1];
	float bz = b[2];
	float bw = b[3];
	output[0] = ax * bw + aw * bx + ay * bz - az * by;
	output[1] = ay * bw + aw * by + az * bx - ax * bz;
	output[2] = az * bw + aw * bz + ax * by - ay * bx;
	output[3] = aw * bw - ax * bx - ay * by - az * bz;
	return output;
}

float const *Quat_Normalize(float *output, float const *a)
{
	return Vec4_Normalize(output, a);
}

float const *Quat_RotateX(float *output, float const *a, float rad)
{
	rad /= 2;
	float ax = a[0];
	float ay = a[1];
	float az = a[2];
	float aw = a[3];
	float bx = Platform_Sin(rad);
	float bw = Platform_Cos(rad);
	output[0] = ax * bw + aw * bx;
	output[1] = ay * bw + az * bx;
	output[2] = az * bw - ay * bx;
	output[3] = aw * bw - ax * bx;
	return output;
}

float const *Quat_RotateY(float *output, float const *a, float rad)
{
	rad /= 2;
	float ax = a[0];
	float ay = a[1];
	float az = a[2];
	float aw = a[3];
	float by = Platform_Sin(rad);
	float bw = Platform_Cos(rad);
	output[0] = ax * bw - az * by;
	output[1] = ay * bw + aw * by;
	output[2] = az * bw + ax * by;
	output[3] = aw * bw - ay * by;
	return output;
}

float const *Quat_RotateZ(float *output, float const *a, float rad)
{
	rad /= 2;
	float ax = a[0];
	float ay = a[1];
	float az = a[2];
	float aw = a[3];
	float bz = Platform_Sin(rad);
	float bw = Platform_Cos(rad);
	output[0] = ax * bw + ay * bz;
	output[1] = ay * bw - ax * bz;
	output[2] = az * bw + aw * bz;
	output[3] = aw * bw - az * bz;
	return output;
}

float const *Quat_RotationTo(float *output, float const *a, float const *b)
{
	float *tmpvec3 = Vec3_Create();
	float const *xUnitVec3 = Vec3_FromValues(1, 0, 0);
	float const *yUnitVec3 = Vec3_FromValues(0, 1, 0);
	float dot = Vec3_Dot(a, b);
	float nines = 999999;
	nines /= 1000000;
	float epsilon = 1;
	epsilon /= 1000000;
	if (dot < -nines) {
		Vec3_Cross(tmpvec3, xUnitVec3, a);
		if (Vec3_Length(tmpvec3) < epsilon)
			Vec3_Cross(tmpvec3, yUnitVec3, a);
		Vec3_Normalize(tmpvec3, tmpvec3);
		Quat_SetAxisAngle(output, tmpvec3, GlMatrixMath_PI());
		return output;
	}
	else if (dot > nines) {
		output[0] = 0;
		output[1] = 0;
		output[2] = 0;
		output[3] = 1;
		return output;
	}
	else {
		Vec3_Cross(tmpvec3, a, b);
		output[0] = tmpvec3[0];
		output[1] = tmpvec3[1];
		output[2] = tmpvec3[2];
		output[3] = 1 + dot;
		return Quat_Normalize(output, output);
	}
}

float const *Quat_Scale(float *output, float const *a, float b)
{
	return Vec4_Scale(output, a, b);
}

float const *Quat_Set(float *output, float x, float y, float z, float w)
{
	return Vec4_Set(output, x, y, z, w);
}

float const *Quat_SetAxes(float *output, float const *view, float const *right, float const *up)
{
	float *matr = Mat3_Create();
	matr[0] = right[0];
	matr[3] = right[1];
	matr[6] = right[2];
	matr[1] = up[0];
	matr[4] = up[1];
	matr[7] = up[2];
	matr[2] = view[0];
	matr[5] = view[1];
	matr[8] = view[2];
	return Quat_Normalize(output, Quat_FromMat3(output, matr));
}

float const *Quat_SetAxisAngle(float *output, float const *axis, float rad)
{
	rad = rad / 2;
	float s = Platform_Sin(rad);
	output[0] = s * axis[0];
	output[1] = s * axis[1];
	output[2] = s * axis[2];
	output[3] = Platform_Cos(rad);
	return output;
}

float const *Quat_Slerp(float *output, float const *a, float const *b, float t)
{
	float ax = a[0];
	float ay = a[1];
	float az = a[2];
	float aw = a[3];
	float bx = b[0];
	float by = b[1];
	float bz = b[2];
	float bw = b[3];
	float omega;
	float cosom;
	float sinom;
	float scale0;
	float scale1;
	cosom = ax * bx + ay * by + az * bz + aw * bw;
	if (cosom < 0) {
		cosom = -cosom;
		bx = -bx;
		by = -by;
		bz = -bz;
		bw = -bw;
	}
	float one = 1;
	float epsilon = one / 1000000;
	if (one - cosom > epsilon) {
		omega = Platform_Acos(cosom);
		sinom = Platform_Sin(omega);
		scale0 = Platform_Sin((one - t) * omega) / sinom;
		scale1 = Platform_Sin(t * omega) / sinom;
	}
	else {
		scale0 = one - t;
		scale1 = t;
	}
	output[0] = scale0 * ax + scale1 * bx;
	output[1] = scale0 * ay + scale1 * by;
	output[2] = scale0 * az + scale1 * bz;
	output[3] = scale0 * aw + scale1 * bw;
	return output;
}

float Quat_SqrLen(float const *a)
{
	return Quat_SquaredLength(a);
}

float Quat_SquaredLength(float const *a)
{
	return Vec4_SquaredLength(a);
}

TestMat4 *TestMat4_New(void)
{
	TestMat4 *self = (TestMat4 *) malloc(sizeof(TestMat4));
	return self;
}

void TestMat4_Delete(TestMat4 *self)
{
	free(self);
}

static void TestMat4_Adjoint(TestMat4 const *self)
{
	TestMat4_AdjointWithASeparateOutputMatrix(self);
	TestMat4_AdjointWhenMatAIsTheOutputMatrix(self);
}

static void TestMat4_AdjointWhenMatAIsTheOutputMatrix(TestMat4 const *self)
{
}

static void TestMat4_AdjointWithASeparateOutputMatrix(TestMat4 const *self)
{
}

static float *TestMat4_Arr16(TestMat4 const *self, int p, int p_2, int p_3, int p_4, int p_5, int p_6, int p_7, int p_8, int p_9, int p_10, int p_11, int p_12, int p_13, int p_14, int p_15, int p_16)
{
	return CitoAssert_Arr16(self->citoassert, p, p_2, p_3, p_4, p_5, p_6, p_7, p_8, p_9, p_10, p_11, p_12, p_13, p_14, p_15, p_16);
}

static float const *TestMat4_Arr3(TestMat4 const *self, float p, float p_2, float p_3)
{
	return CitoAssert_Arr3(self->citoassert, p, p_2, p_3);
}

static void TestMat4_AssertArrayEqual(TestMat4 const *self, float const *actual, float const *expected, int length, const char *msg)
{
	CitoAssert_AssertArrayEqual(self->citoassert, actual, expected, length, msg);
}

static void TestMat4_CloneIt(TestMat4 const *self)
{
	float const *result = Mat4_CloneIt(self->matA);
	TestMat4_AssertArrayEqual(self, result, self->matA, 16, "Clone should return a 16 element array initialized to the values in matA");
}

static void TestMat4_Copy(TestMat4 const *self)
{
	float const *result = Mat4_Copy(self->output, self->matA);
	TestMat4_AssertArrayEqual(self, self->output, self->matA, 16, "Copy should place values into out");
	TestMat4_AssertArrayEqual(self, result, self->output, 16, "Copy should return out");
}

static void TestMat4_Create(TestMat4 const *self)
{
	float const *result = Mat4_Create();
	TestMat4_AssertArrayEqual(self, result, self->identity, 16, "Create should return a 16 element array initialized to a 4x4 identity matrix");
}

static void TestMat4_Determinant(TestMat4 const *self)
{
}

static void TestMat4_Frustum(TestMat4 const *self)
{
	float const *result = Mat4_Frustum(self->output, -1, 1, -1, 1, -1, 1);
	TestMat4_AssertArrayEqual(self, result, TestMat4_Arr16(self, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, -1, 0, 0, 1, 0), 16, "Frustum should place values into out");
	TestMat4_AssertArrayEqual(self, result, self->output, 16, "Frustum should return out");
}

static void TestMat4_Identity(TestMat4 const *self)
{
	float const *result = Mat4_Identity(self->output);
	TestMat4_AssertArrayEqual(self, self->output, self->identity, 16, "Copy should place values into out");
	TestMat4_AssertArrayEqual(self, result, self->output, 16, "Copy should return out");
}

static void TestMat4_Invert(TestMat4 const *self)
{
	TestMat4_InvertWithASeparateOutputMatrix(self);
	TestMat4_InvertWhenMatAIsTheOutputMatrix(self);
}

static void TestMat4_InvertWhenMatAIsTheOutputMatrix(TestMat4 const *self)
{
}

static void TestMat4_InvertWithASeparateOutputMatrix(TestMat4 const *self)
{
}

static void TestMat4_LookAt(TestMat4 *self)
{
	self->eye = TestMat4_Arr3(self, 0, 0, 1);
	self->center = TestMat4_Arr3(self, 0, 0, -1);
	self->up = TestMat4_Arr3(self, 0, 1, 0);
	TestMat4_LookAtLookingDown(self);
	TestMat4_LookAt74(self);
	TestMat4_LookAt3(self);
}

static void TestMat4_LookAt3(TestMat4 const *self)
{
}

static void TestMat4_LookAt74(TestMat4 const *self)
{
	float six = 6;
	Mat4_LookAt(self->output, TestMat4_Arr3(self, 0, 2, 0), TestMat4_Arr3(self, 0, six / 10, 0), TestMat4_Arr3(self, 0, 0, -1));
	float const *result = Vec3_TransformMat4(Vec3_Create(), TestMat4_Arr3(self, 0, 2, -1), self->output);
	TestMat4_AssertArrayEqual(self, result, TestMat4_Arr3(self, 0, 1, 0), 3, "LookAt74 should transform a point 'above' into local +Y");
	result = Vec3_TransformMat4(Vec3_Create(), TestMat4_Arr3(self, 1, 2, 0), self->output);
	TestMat4_AssertArrayEqual(self, result, TestMat4_Arr3(self, 1, 0, 0), 3, "LookAt74 should transform a point 'right of' into local +X");
	result = Vec3_TransformMat4(Vec3_Create(), TestMat4_Arr3(self, 0, 1, 0), self->output);
	TestMat4_AssertArrayEqual(self, result, TestMat4_Arr3(self, 0, 0, -1), 3, "LookAt74 should transform a point 'in front of' into local -Z");
}

static void TestMat4_LookAtLookingDown(TestMat4 *self)
{
	self->view = TestMat4_Arr3(self, 0, -1, 0);
	self->up = TestMat4_Arr3(self, 0, 0, -1);
	self->right = TestMat4_Arr3(self, 1, 0, 0);
	float const *result = Mat4_LookAt(self->output, TestMat4_Arr3(self, 0, 0, 0), self->view, self->up);
	result = Vec3_TransformMat4(Vec3_Create(), self->view, self->output);
	TestMat4_AssertArrayEqual(self, result, TestMat4_Arr3(self, 0, 0, -1), 3, "LookAtLookingDown should transform view into local -Z");
	result = Vec3_TransformMat4(Vec3_Create(), self->up, self->output);
	TestMat4_AssertArrayEqual(self, result, TestMat4_Arr3(self, 0, 1, 0), 3, "LookAtLookingDownshould transform up into local +Y");
	result = Vec3_TransformMat4(Vec3_Create(), self->right, self->output);
	TestMat4_AssertArrayEqual(self, result, TestMat4_Arr3(self, 1, 0, 0), 3, "LookAtLookingDownshould transform right into local +X");
	TestMat4_AssertArrayEqual(self, result, self->output, 3, "LookAtLookingDown should return out");
}

static void TestMat4_Multiply(TestMat4 const *self)
{
	TestMat4_MultiplyWithASeparateOutputMatrix(self);
	TestMat4_MultiplyWhenMatAIsTheOutputMatrix(self);
	TestMat4_MultiplyWhenMatBIsTheOutputMatrix(self);
}

static void TestMat4_MultiplyWhenMatAIsTheOutputMatrix(TestMat4 const *self)
{
}

static void TestMat4_MultiplyWhenMatBIsTheOutputMatrix(TestMat4 const *self)
{
}

static void TestMat4_MultiplyWithASeparateOutputMatrix(TestMat4 const *self)
{
}

static void TestMat4_Ortho(TestMat4 const *self)
{
	float const *result = Mat4_Ortho(self->output, -1, 1, -1, 1, -1, 1);
	TestMat4_AssertArrayEqual(self, result, TestMat4_Arr16(self, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 1), 16, "Ortho should place values into out");
	TestMat4_AssertArrayEqual(self, result, self->output, 16, "Ortho should return out");
}

static void TestMat4_Perspective(TestMat4 const *self)
{
	TestMat4_Perspective1(self);
	TestMat4_PerspectiveWithNonzeroNear45degFovyAndRealisticAspectRatio(self);
}

static void TestMat4_Perspective1(TestMat4 const *self)
{
}

static void TestMat4_PerspectiveWithNonzeroNear45degFovyAndRealisticAspectRatio(TestMat4 const *self)
{
}

static void TestMat4_ResetTests(TestMat4 *self)
{
	self->matA = TestMat4_Arr16(self, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 2, 3, 1);
	self->matB = TestMat4_Arr16(self, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 4, 5, 6, 1);
	self->output = TestMat4_Arr16(self, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
	self->identity = TestMat4_Arr16(self, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
}

static void TestMat4_Rotate(TestMat4 const *self)
{
	TestMat4_RotateWithASeparateOutputMatrix(self);
	TestMat4_RotateWhenMatAIsTheOutputMatrix(self);
}

static void TestMat4_RotateWhenMatAIsTheOutputMatrix(TestMat4 const *self)
{
}

static void TestMat4_RotateWithASeparateOutputMatrix(TestMat4 const *self)
{
}

static void TestMat4_RotateX(TestMat4 const *self)
{
	TestMat4_RotateXWithASeparateOutputMatrix(self);
	TestMat4_RotateXWhenMatAIsTheOutputMatrix(self);
}

static void TestMat4_RotateXWhenMatAIsTheOutputMatrix(TestMat4 const *self)
{
}

static void TestMat4_RotateXWithASeparateOutputMatrix(TestMat4 const *self)
{
}

static void TestMat4_RotateY(TestMat4 const *self)
{
	TestMat4_RotateYWithASeparateOutputMatrix(self);
	TestMat4_RotateYWhenMatAIsTheOutputMatrix(self);
}

static void TestMat4_RotateYWhenMatAIsTheOutputMatrix(TestMat4 const *self)
{
}

static void TestMat4_RotateYWithASeparateOutputMatrix(TestMat4 const *self)
{
}

static void TestMat4_RotateZ(TestMat4 const *self)
{
	TestMat4_RotateZWithASeparateOutputMatrix(self);
	TestMat4_RotateZWhenMatAIsTheOutputMatrix(self);
}

static void TestMat4_RotateZWhenMatAIsTheOutputMatrix(TestMat4 const *self)
{
}

static void TestMat4_RotateZWithASeparateOutputMatrix(TestMat4 const *self)
{
}

static void TestMat4_Scale(TestMat4 const *self)
{
	TestMat4_ScaleWithASeparateOutputMatrix(self);
	TestMat4_ScaleWhenMatAIsTheOutputMatrix(self);
}

static void TestMat4_ScaleWhenMatAIsTheOutputMatrix(TestMat4 const *self)
{
}

static void TestMat4_ScaleWithASeparateOutputMatrix(TestMat4 const *self)
{
}

static void TestMat4_Str(TestMat4 const *self)
{
}

void TestMat4_Test(TestMat4 *self)
{
	self->citoassert = CitoAssert_New();
	TestMat4_ResetTests(self);
	TestMat4_Create(self);
	TestMat4_ResetTests(self);
	TestMat4_CloneIt(self);
	TestMat4_ResetTests(self);
	TestMat4_Copy(self);
	TestMat4_ResetTests(self);
	TestMat4_Identity(self);
	TestMat4_ResetTests(self);
	TestMat4_Transpose(self);
	TestMat4_ResetTests(self);
	TestMat4_Invert(self);
	TestMat4_ResetTests(self);
	TestMat4_Adjoint(self);
	TestMat4_ResetTests(self);
	TestMat4_Determinant(self);
	TestMat4_ResetTests(self);
	TestMat4_Multiply(self);
	TestMat4_ResetTests(self);
	TestMat4_Translate(self);
	TestMat4_ResetTests(self);
	TestMat4_Scale(self);
	TestMat4_ResetTests(self);
	TestMat4_Rotate(self);
	TestMat4_ResetTests(self);
	TestMat4_RotateX(self);
	TestMat4_ResetTests(self);
	TestMat4_RotateY(self);
	TestMat4_ResetTests(self);
	TestMat4_RotateZ(self);
	TestMat4_ResetTests(self);
	TestMat4_Frustum(self);
	TestMat4_ResetTests(self);
	TestMat4_Perspective(self);
	TestMat4_ResetTests(self);
	TestMat4_Ortho(self);
	TestMat4_ResetTests(self);
	TestMat4_LookAt(self);
	TestMat4_ResetTests(self);
	TestMat4_Str(self);
	TestMat4_ResetTests(self);
}

static void TestMat4_Translate(TestMat4 const *self)
{
	TestMat4_TranslateWithASeparateOutputMatrix(self);
	TestMat4_TranslateWhenMatAIsTheOutputMatrix(self);
}

static void TestMat4_TranslateWhenMatAIsTheOutputMatrix(TestMat4 const *self)
{
}

static void TestMat4_TranslateWithASeparateOutputMatrix(TestMat4 const *self)
{
}

static void TestMat4_Transpose(TestMat4 const *self)
{
	TestMat4_TransposeWithASeparateOutputMatrix(self);
	TestMat4_TransposeWhenMatAIsTheOutputMatrix(self);
}

static void TestMat4_TransposeWhenMatAIsTheOutputMatrix(TestMat4 const *self)
{
}

static void TestMat4_TransposeWithASeparateOutputMatrix(TestMat4 const *self)
{
}

TestVec3 *TestVec3_New(void)
{
	TestVec3 *self = (TestVec3 *) malloc(sizeof(TestVec3));
	return self;
}

void TestVec3_Delete(TestVec3 *self)
{
	free(self);
}

static void TestVec3_Add(TestVec3 const *self)
{
	TestVec3_AddWithASeparateOutputVector(self);
	TestVec3_AddWhenVecAIsTheOutputVector(self);
	TestVec3_AddWhenVecBIsTheOutputVector(self);
}

static void TestVec3_AddWhenVecAIsTheOutputVector(TestVec3 const *self)
{
}

static void TestVec3_AddWhenVecBIsTheOutputVector(TestVec3 const *self)
{
}

static void TestVec3_AddWithASeparateOutputVector(TestVec3 const *self)
{
	float const *result = Vec3_Add(self->output, self->vecA, self->vecB);
	TestVec3_AssertArrayEqual(self, self->output, TestVec3_Arr3(self, 5, 7, 9), 3, "Add should place values into out");
	TestVec3_AssertArrayEqual(self, result, self->output, 3, "Add should return out");
	TestVec3_AssertArrayEqual(self, self->vecA, TestVec3_Arr3(self, 1, 2, 3), 3, "Add should not modify vecA");
	TestVec3_AssertArrayEqual(self, self->vecB, TestVec3_Arr3(self, 4, 5, 6), 3, "Add should not modify vecB");
}

static float const *TestVec3_Arr16(TestVec3 const *self, int p, int p_2, int p_3, int p_4, int p_5, int p_6, int p_7, int p_8, int p_9, int p_10, int p_11, int p_12, int p_13, int p_14, int p_15, int p_16)
{
	return CitoAssert_Arr16(self->citoassert, p, p_2, p_3, p_4, p_5, p_6, p_7, p_8, p_9, p_10, p_11, p_12, p_13, p_14, p_15, p_16);
}

static float *TestVec3_Arr3(TestVec3 const *self, float p, float p_2, float p_3)
{
	return CitoAssert_Arr3(self->citoassert, p, p_2, p_3);
}

static float const *TestVec3_Arr9(TestVec3 const *self, int p, int p_2, int p_3, int p_4, int p_5, int p_6, int p_7, int p_8, int p_9)
{
	return CitoAssert_Arr9(self->citoassert, p, p_2, p_3, p_4, p_5, p_6, p_7, p_8, p_9);
}

static void TestVec3_AssertArrayEqual(TestVec3 const *self, float const *actual, float const *expected, int length, const char *msg)
{
	CitoAssert_AssertArrayEqual(self->citoassert, actual, expected, length, msg);
}

static void TestVec3_AssertCloseTo(TestVec3 const *self, float actual, float expected, const char *msg)
{
	CitoAssert_AssertCloseTo(self->citoassert, actual, expected, msg);
}

static void TestVec3_AssertEqual(TestVec3 const *self, float actual, float expected, const char *msg)
{
	CitoAssert_AssertEqual(self->citoassert, actual, expected, msg);
}

static void TestVec3_CloneIt(TestVec3 const *self)
{
	float const *result = Vec3_CloneIt(self->vecA);
	TestVec3_AssertArrayEqual(self, result, self->vecA, 3, "Clone should return a 3 element array initialized to the values in vecA");
}

static void TestVec3_Copy(TestVec3 const *self)
{
	float const *result = Vec3_Copy(self->output, self->vecA);
	TestVec3_AssertArrayEqual(self, self->output, TestVec3_Arr3(self, 1, 2, 3), 3, "Copy should place values into out");
	TestVec3_AssertArrayEqual(self, result, self->output, 3, "Copy should return output");
}

static void TestVec3_Create(TestVec3 const *self)
{
	float const *result = Vec3_Create();
	TestVec3_AssertArrayEqual(self, result, TestVec3_Arr3(self, 0, 0, 0), 3, "Create should return a 3 element array initialized to 0s");
}

static void TestVec3_Cross(TestVec3 const *self)
{
	TestVec3_CrossWithASeparateOutputVector(self);
	TestVec3_CrossWhenVecAIsTheOutputVector(self);
	TestVec3_CrossWhenVecBIsTheOutputVector(self);
}

static void TestVec3_CrossWhenVecAIsTheOutputVector(TestVec3 const *self)
{
}

static void TestVec3_CrossWhenVecBIsTheOutputVector(TestVec3 const *self)
{
}

static void TestVec3_CrossWithASeparateOutputVector(TestVec3 const *self)
{
}

static void TestVec3_Distance(TestVec3 const *self)
{
	float result = Vec3_Distance(self->vecA, self->vecB);
	float r = 5196152;
	r /= 1000000;
	TestVec3_AssertCloseTo(self, result, r, "Distance should return the distance");
}

static void TestVec3_Divide(TestVec3 const *self)
{
	TestVec3_DivideWithASeparateOutputVector(self);
	TestVec3_DivideWhenVecAIsTheOutputVector(self);
	TestVec3_DivideWhenVecBIsTheOutputVector(self);
}

static void TestVec3_DivideWhenVecAIsTheOutputVector(TestVec3 const *self)
{
}

static void TestVec3_DivideWhenVecBIsTheOutputVector(TestVec3 const *self)
{
}

static void TestVec3_DivideWithASeparateOutputVector(TestVec3 const *self)
{
}

static void TestVec3_Dot(TestVec3 const *self)
{
	float result = Vec3_Dot(self->vecA, self->vecB);
	TestVec3_AssertEqual(self, result, 32, "Dot should return the dot product");
	TestVec3_AssertArrayEqual(self, self->vecA, TestVec3_Arr3(self, 1, 2, 3), 3, "Dot should not modify vecA");
	TestVec3_AssertArrayEqual(self, self->vecB, TestVec3_Arr3(self, 4, 5, 6), 3, "Dot should not modify vecB");
}

static void TestVec3_ForEachDo(TestVec3 const *self)
{
}

static void TestVec3_FromValues(TestVec3 const *self)
{
	float const *result = Vec3_FromValues(1, 2, 3);
	TestVec3_AssertArrayEqual(self, result, TestVec3_Arr3(self, 1, 2, 3), 3, "FromValues should return a 3 element array initialized to the values passed");
}

static void TestVec3_Length(TestVec3 const *self)
{
	float result = Vec3_Length(self->vecA);
	float r = 3741657;
	r /= 1000000;
	TestVec3_AssertCloseTo(self, result, r, "Length should return the length");
}

static void TestVec3_Lerp(TestVec3 const *self)
{
	TestVec3_LerpWithASeparateOutputVector(self);
	TestVec3_LerpWhenVecAIsTheOutputVector(self);
	TestVec3_LerpWhenVecBIsTheOutputVector(self);
}

static void TestVec3_LerpWhenVecAIsTheOutputVector(TestVec3 const *self)
{
}

static void TestVec3_LerpWhenVecBIsTheOutputVector(TestVec3 const *self)
{
}

static void TestVec3_LerpWithASeparateOutputVector(TestVec3 const *self)
{
}

static void TestVec3_Max(TestVec3 const *self)
{
	TestVec3_MaxWithASeparateOutputVector(self);
	TestVec3_MaxWhenVecAIsTheOutputVector(self);
	TestVec3_MaxWhenVecBIsTheOutputVector(self);
}

static void TestVec3_MaxWhenVecAIsTheOutputVector(TestVec3 const *self)
{
}

static void TestVec3_MaxWhenVecBIsTheOutputVector(TestVec3 const *self)
{
}

static void TestVec3_MaxWithASeparateOutputVector(TestVec3 const *self)
{
}

static void TestVec3_Min(TestVec3 const *self)
{
	TestVec3_MinWithASeparateOutputVector(self);
	TestVec3_MinWhenVecAIsTheOutputVector(self);
	TestVec3_MinWhenVecBIsTheOutputVector(self);
}

static void TestVec3_MinWhenVecAIsTheOutputVector(TestVec3 const *self)
{
}

static void TestVec3_MinWhenVecBIsTheOutputVector(TestVec3 const *self)
{
}

static void TestVec3_MinWithASeparateOutputVector(TestVec3 const *self)
{
}

static void TestVec3_Multiply(TestVec3 const *self)
{
	TestVec3_MultiplyWithASeparateOutputVector(self);
	TestVec3_MultiplyWhenVecAIsTheOutputVector(self);
	TestVec3_MultiplyWhenVecBIsTheOutputVector(self);
}

static void TestVec3_MultiplyWhenVecAIsTheOutputVector(TestVec3 const *self)
{
}

static void TestVec3_MultiplyWhenVecBIsTheOutputVector(TestVec3 const *self)
{
}

static void TestVec3_MultiplyWithASeparateOutputVector(TestVec3 const *self)
{
}

static void TestVec3_Negate(TestVec3 const *self)
{
	TestVec3_NegateWithASeparateOutputVector(self);
	TestVec3_NegateWhenVecAIsTheOutputVector(self);
}

static void TestVec3_NegateWhenVecAIsTheOutputVector(TestVec3 const *self)
{
	float const *result = Vec3_Negate(self->vecA, self->vecA);
	TestVec3_AssertArrayEqual(self, self->vecA, TestVec3_Arr3(self, -1, -2, -3), 3, "NegateWhenVecAIsTheOutputVector should place values into vecA");
	TestVec3_AssertArrayEqual(self, result, self->vecA, 3, "NegateWhenVecAIsTheOutputVector should return vecA");
}

static void TestVec3_NegateWithASeparateOutputVector(TestVec3 const *self)
{
	float const *result = Vec3_Negate(self->output, self->vecA);
	TestVec3_AssertArrayEqual(self, self->output, TestVec3_Arr3(self, -1, -2, -3), 3, "NegateWithASeparateOutputVector should place values into out");
	TestVec3_AssertArrayEqual(self, result, self->output, 3, "NegateWithASeparateOutputVector should should return out");
	TestVec3_AssertArrayEqual(self, self->vecA, TestVec3_Arr3(self, 1, 2, 3), 3, "NegateWithASeparateOutputVector should not modify vecA");
}

static void TestVec3_Normalize(TestVec3 *self)
{
	TestVec3_NormalizeWithASeparateOutputVector(self);
	TestVec3_NormalizeWhenVecAIsTheOutputVector(self);
}

static void TestVec3_NormalizeWhenVecAIsTheOutputVector(TestVec3 const *self)
{
	float const *vecA1 = TestVec3_Arr3(self, 5, 0, 0);
	float const *result = Vec3_Normalize(self->vecA, self->vecA);
	TestVec3_AssertArrayEqual(self, self->vecA, TestVec3_Arr3(self, 1, 0, 0), 3, "NormalizeWhenVecAIsTheOutputVector should place values into vecA");
	TestVec3_AssertArrayEqual(self, result, self->vecA, 3, "NormalizeWhenVecAIsTheOutputVector should return vecA");
}

static void TestVec3_NormalizeWithASeparateOutputVector(TestVec3 *self)
{
	self->vecA = TestVec3_Arr3(self, 5, 0, 0);
	float const *result = Vec3_Normalize(self->output, self->vecA);
	TestVec3_AssertArrayEqual(self, self->output, TestVec3_Arr3(self, 1, 0, 0), 3, "NormalizeWithASeparateOutputVector should place values into out");
	TestVec3_AssertArrayEqual(self, result, self->output, 3, "NormalizeWithASeparateOutputVector should return out");
	TestVec3_AssertArrayEqual(self, self->vecA, TestVec3_Arr3(self, 5, 0, 0), 3, "NormalizeWithASeparateOutputVector should not modify vecA");
}

static void TestVec3_Random(TestVec3 const *self)
{
}

static void TestVec3_ResetTests(TestVec3 *self)
{
	self->vecA = TestVec3_Arr3(self, 1, 2, 3);
	self->vecB = TestVec3_Arr3(self, 4, 5, 6);
	self->output = TestVec3_Arr3(self, 0, 0, 0);
}

static void TestVec3_Scale(TestVec3 const *self)
{
	TestVec3_ScaleWithASeparateOutputVector(self);
	TestVec3_ScaleWhenVecAIsTheOutputVector(self);
}

static void TestVec3_ScaleAndAdd(TestVec3 const *self)
{
	TestVec3_ScaleAndAddWithASeparateOutputVector(self);
	TestVec3_ScaleAndAddWhenVecAIsTheOutputVector(self);
	TestVec3_ScaleAndAddWhenVecBIsTheOutputVector(self);
}

static void TestVec3_ScaleAndAddWhenVecAIsTheOutputVector(TestVec3 const *self)
{
}

static void TestVec3_ScaleAndAddWhenVecBIsTheOutputVector(TestVec3 const *self)
{
}

static void TestVec3_ScaleAndAddWithASeparateOutputVector(TestVec3 const *self)
{
}

static void TestVec3_ScaleWhenVecAIsTheOutputVector(TestVec3 const *self)
{
}

static void TestVec3_ScaleWithASeparateOutputVector(TestVec3 const *self)
{
}

static void TestVec3_Set(TestVec3 const *self)
{
	float const *result = Vec3_Set(self->output, 1, 2, 3);
	TestVec3_AssertArrayEqual(self, self->output, TestVec3_Arr3(self, 1, 2, 3), 3, "Set should place values into output");
	TestVec3_AssertArrayEqual(self, result, self->output, 3, "Set should return output");
}

static void TestVec3_SquaredDistance(TestVec3 const *self)
{
	float result = Vec3_SquaredDistance(self->vecA, self->vecB);
	TestVec3_AssertEqual(self, result, 27, "SquaredDistance should return the squared distance");
}

static void TestVec3_SquaredLength(TestVec3 const *self)
{
	float result = Vec3_SquaredLength(self->vecA);
	TestVec3_AssertEqual(self, result, 14, "SquaredLength should return the squared length");
}

static void TestVec3_Str(TestVec3 const *self)
{
}

static void TestVec3_Subtract(TestVec3 const *self)
{
	TestVec3_SubtractShouldHaveAnAliasCalledSub(self);
	TestVec3_SubtractWithASeparateOutputVector(self);
	TestVec3_SubtractWhenVecAIsTheOutputVector(self);
	TestVec3_SubtractWhenVecBIsTheOutputVector(self);
}

static void TestVec3_SubtractShouldHaveAnAliasCalledSub(TestVec3 const *self)
{
}

static void TestVec3_SubtractWhenVecAIsTheOutputVector(TestVec3 const *self)
{
}

static void TestVec3_SubtractWhenVecBIsTheOutputVector(TestVec3 const *self)
{
}

static void TestVec3_SubtractWithASeparateOutputVector(TestVec3 const *self)
{
}

void TestVec3_Test(TestVec3 *self)
{
	self->citoassert = CitoAssert_New();
	TestVec3_ResetTests(self);
	TestVec3_TransformMat4(self);
	TestVec3_ResetTests(self);
	TestVec3_Create(self);
	TestVec3_ResetTests(self);
	TestVec3_CloneIt(self);
	TestVec3_ResetTests(self);
	TestVec3_FromValues(self);
	TestVec3_ResetTests(self);
	TestVec3_Copy(self);
	TestVec3_ResetTests(self);
	TestVec3_Set(self);
	TestVec3_ResetTests(self);
	TestVec3_Add(self);
	TestVec3_ResetTests(self);
	TestVec3_Subtract(self);
	TestVec3_ResetTests(self);
	TestVec3_Multiply(self);
	TestVec3_ResetTests(self);
	TestVec3_Divide(self);
	TestVec3_ResetTests(self);
	TestVec3_Min(self);
	TestVec3_ResetTests(self);
	TestVec3_Max(self);
	TestVec3_ResetTests(self);
	TestVec3_Scale(self);
	TestVec3_ResetTests(self);
	TestVec3_ScaleAndAdd(self);
	TestVec3_ResetTests(self);
	TestVec3_Distance(self);
	TestVec3_ResetTests(self);
	TestVec3_SquaredDistance(self);
	TestVec3_ResetTests(self);
	TestVec3_Length(self);
	TestVec3_ResetTests(self);
	TestVec3_SquaredLength(self);
	TestVec3_ResetTests(self);
	TestVec3_Negate(self);
	TestVec3_ResetTests(self);
	TestVec3_Normalize(self);
	TestVec3_ResetTests(self);
	TestVec3_Dot(self);
	TestVec3_ResetTests(self);
	TestVec3_Cross(self);
	TestVec3_ResetTests(self);
	TestVec3_Lerp(self);
	TestVec3_ResetTests(self);
	TestVec3_Random(self);
	TestVec3_ResetTests(self);
	TestVec3_ForEachDo(self);
	TestVec3_ResetTests(self);
	TestVec3_Str(self);
	TestVec3_ResetTests(self);
}

static void TestVec3_TransformMat3With90DegAboutX(TestVec3 const *self)
{
	float const *result = Vec3_TransformMat3(self->output, TestVec3_Arr3(self, 0, 1, 0), TestVec3_Arr9(self, 1, 0, 0, 0, 0, 1, 0, -1, 0));
	TestVec3_AssertArrayEqual(self, self->output, TestVec3_Arr3(self, 0, 0, 1), 3, "TransformMat3With90DegAboutX should produce correct output");
}

static void TestVec3_TransformMat3With90DegAboutY(TestVec3 const *self)
{
	float const *result = Vec3_TransformMat3(self->output, TestVec3_Arr3(self, 1, 0, 0), TestVec3_Arr9(self, 0, 0, -1, 0, 1, 0, 1, 0, 0));
	TestVec3_AssertArrayEqual(self, self->output, TestVec3_Arr3(self, 0, 0, -1), 3, "TransformMat3With90DegAboutU should produce correct output");
}

static void TestVec3_TransformMat3With90DegAboutZ(TestVec3 const *self)
{
	float const *result = Vec3_TransformMat3(self->output, TestVec3_Arr3(self, 1, 0, 0), TestVec3_Arr9(self, 0, 1, 0, -1, 0, 0, 0, 0, 1));
	TestVec3_AssertArrayEqual(self, self->output, TestVec3_Arr3(self, 0, 1, 0), 3, "TransformMat3With90DegAboutZ should produce correct output");
}

static void TestVec3_TransformMat3WithALookAtNormalMatrix(TestVec3 const *self)
{
	float const *matr = Mat4_LookAt(Mat4_Create(), TestVec3_Arr3(self, 5, 6, 7), TestVec3_Arr3(self, 2, 6, 7), TestVec3_Arr3(self, 0, 1, 0));
	float *n = Mat3_Create();
	matr = Mat3_Transpose(n, Mat3_Invert(n, Mat3_FromMat4(n, matr)));
	float const *result = Vec3_TransformMat3(self->output, TestVec3_Arr3(self, 1, 0, 0), matr);
	TestVec3_AssertArrayEqual(self, self->output, TestVec3_Arr3(self, 0, 0, 1), 3, "TransformMat3WithALookAtNormalMatrix should rotate the input");
	TestVec3_AssertArrayEqual(self, result, self->output, 3, "TransformMat3WithALookAtNormalMatrix should return output");
}

static void TestVec3_TransformMat3WithAnIdentity(TestVec3 const *self)
{
	float const *matr = TestVec3_Arr9(self, 1, 0, 0, 0, 1, 0, 0, 0, 1);
	float const *result = Vec3_TransformMat3(self->output, self->vecA, matr);
	TestVec3_AssertArrayEqual(self, self->output, TestVec3_Arr3(self, 1, 2, 3), 3, "TransformMat3WithAnIdentity should produce the input");
	TestVec3_AssertArrayEqual(self, result, self->output, 3, "TransformMat3WithAnIdentity should return output");
}

static void TestVec3_TransformMat4(TestVec3 const *self)
{
	TestVec3_TransformMat4WithAnIdentity(self);
	TestVec3_TransformMat4WithALookAt(self);
	TestVec3_TransformMat3WithAnIdentity(self);
	TestVec3_TransformMat3With90DegAboutX(self);
	TestVec3_TransformMat3With90DegAboutY(self);
	TestVec3_TransformMat3With90DegAboutZ(self);
	TestVec3_TransformMat3WithALookAtNormalMatrix(self);
}

static void TestVec3_TransformMat4WithALookAt(TestVec3 const *self)
{
	float const *matr = Mat4_LookAt(Mat4_Create(), TestVec3_Arr3(self, 5, 6, 7), TestVec3_Arr3(self, 2, 6, 7), TestVec3_Arr3(self, 0, 1, 0));
	float const *result = Vec3_TransformMat4(self->output, self->vecA, matr);
	TestVec3_AssertArrayEqual(self, self->output, TestVec3_Arr3(self, 4, -4, -4), 3, "TransformMat4WithALookAt should rotate and translate the input");
	TestVec3_AssertArrayEqual(self, result, self->output, 3, "TransformMat4WithALookAt should return out");
}

static void TestVec3_TransformMat4WithAnIdentity(TestVec3 const *self)
{
	float const *matr = TestVec3_Arr16(self, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
	float const *result = Vec3_TransformMat4(self->output, self->vecA, matr);
	TestVec3_AssertArrayEqual(self, self->output, TestVec3_Arr3(self, 1, 2, 3), 3, "TransformMat4WithAnIdentity should produce the input");
	TestVec3_AssertArrayEqual(self, result, self->output, 3, "TransformMat4WithAnIdentity should return output");
}

void Tests_RunAll(void)
{
	TestVec3 *testvec3 = TestVec3_New();
	TestVec3_Test(testvec3);
	TestMat4 *testmat4 = TestMat4_New();
	TestMat4_Test(testmat4);
}

float const *Vec2_Add(float *output, float const *a, float const *b)
{
	output[0] = a[0] + b[0];
	output[1] = a[1] + b[1];
	return output;
}

float const *Vec2_CloneIt(float const *a)
{
	float *output = (float *) malloc(2 * sizeof(float ));
	output[0] = a[0];
	output[1] = a[1];
	return output;
}

float const *Vec2_Copy(float *output, float const *a)
{
	output[0] = a[0];
	output[1] = a[1];
	return output;
}

float const *Vec2_Create(void)
{
	float *output = (float *) malloc(2 * sizeof(float ));
	output[0] = 0;
	output[1] = 0;
	return output;
}

float const *Vec2_Cross(float *output, float const *a, float const *b)
{
	float z = a[0] * b[1] - a[1] * b[0];
	output[0] = output[1] = 0;
	output[2] = z;
	return output;
}

float Vec2_Dist(float const *a, float const *b)
{
	return Vec2_Distance(a, b);
}

float Vec2_Distance(float const *a, float const *b)
{
	float x = b[0] - a[0];
	float y = b[1] - a[1];
	return Platform_Sqrt(x * x + y * y);
}

float const *Vec2_Div(float *output, float const *a, float const *b)
{
	return Vec2_Divide(output, a, b);
}

float const *Vec2_Divide(float *output, float const *a, float const *b)
{
	output[0] = a[0] / b[0];
	output[1] = a[1] / b[1];
	return output;
}

float Vec2_Dot(float const *a, float const *b)
{
	return a[0] * b[0] + a[1] * b[1];
}

float const *Vec2_FromValues(float x, float y)
{
	float *output = (float *) malloc(2 * sizeof(float ));
	output[0] = x;
	output[1] = y;
	return output;
}

float Vec2_Len(float const *a)
{
	return Vec2_Length(a);
}

float Vec2_Length(float const *a)
{
	float x = a[0];
	float y = a[1];
	return Platform_Sqrt(x * x + y * y);
}

float const *Vec2_Lerp(float *output, float const *a, float const *b, float t)
{
	float ax = a[0];
	float ay = a[1];
	output[0] = ax + t * (b[0] - ax);
	output[1] = ay + t * (b[1] - ay);
	return output;
}

float const *Vec2_Max(float *output, float const *a, float const *b)
{
	output[0] = GlMatrixMath_max(a[0], b[0]);
	output[1] = GlMatrixMath_max(a[1], b[1]);
	return output;
}

float const *Vec2_Min(float *output, float const *a, float const *b)
{
	output[0] = GlMatrixMath_min(a[0], b[0]);
	output[1] = GlMatrixMath_min(a[1], b[1]);
	return output;
}

float const *Vec2_Mul(float *output, float const *a, float const *b)
{
	return Vec2_Multiply(output, a, b);
}

float const *Vec2_Multiply(float *output, float const *a, float const *b)
{
	output[0] = a[0] * b[0];
	output[1] = a[1] * b[1];
	return output;
}

float const *Vec2_Negate(float *output, float const *a)
{
	output[0] = -a[0];
	output[1] = -a[1];
	return output;
}

float const *Vec2_Normalize(float *output, float const *a)
{
	float x = a[0];
	float y = a[1];
	float len = x * x + y * y;
	if (len > 0) {
		len = 1 / Platform_Sqrt(len);
		output[0] = a[0] * len;
		output[1] = a[1] * len;
	}
	return output;
}

float const *Vec2_Random(float *output, float scale)
{
	float r = Platform_Random() * 2 * GlMatrixMath_PI();
	output[0] = Platform_Cos(r) * scale;
	output[1] = Platform_Sin(r) * scale;
	return output;
}

float const *Vec2_Scale(float *output, float const *a, float b)
{
	output[0] = a[0] * b;
	output[1] = a[1] * b;
	return output;
}

float const *Vec2_ScaleAndAdd(float *output, float const *a, float const *b, float scale)
{
	output[0] = a[0] + b[0] * scale;
	output[1] = a[1] + b[1] * scale;
	return output;
}

float const *Vec2_Set(float *output, float x, float y)
{
	output[0] = x;
	output[1] = y;
	return output;
}

float Vec2_SqrDist(float const *a, float const *b)
{
	return Vec2_SquaredDistance(a, b);
}

float Vec2_SqrLen(float const *a)
{
	return Vec2_SquaredLength(a);
}

float Vec2_SquaredDistance(float const *a, float const *b)
{
	float x = b[0] - a[0];
	float y = b[1] - a[1];
	return x * x + y * y;
}

float Vec2_SquaredLength(float const *a)
{
	float x = a[0];
	float y = a[1];
	return x * x + y * y;
}

float const *Vec2_Sub(float *output, float const *a, float const *b)
{
	return Vec2_Subtract(output, a, b);
}

float const *Vec2_Subtract(float *output, float const *a, float const *b)
{
	output[0] = a[0] - b[0];
	output[1] = a[1] - b[1];
	return output;
}

float const *Vec2_TransformMat2(float *output, float const *a, float const *m)
{
	float x = a[0];
	float y = a[1];
	output[0] = m[0] * x + m[2] * y;
	output[1] = m[1] * x + m[3] * y;
	return output;
}

float const *Vec2_TransformMat2d(float *output, float const *a, float const *m)
{
	float x = a[0];
	float y = a[1];
	output[0] = m[0] * x + m[2] * y + m[4];
	output[1] = m[1] * x + m[3] * y + m[5];
	return output;
}

float const *Vec2_TransformMat3(float *output, float const *a, float const *m)
{
	float x = a[0];
	float y = a[1];
	output[0] = m[0] * x + m[3] * y + m[6];
	output[1] = m[1] * x + m[4] * y + m[7];
	return output;
}

float const *Vec2_TransformMat4(float *output, float const *a, float const *m)
{
	float x = a[0];
	float y = a[1];
	output[0] = m[0] * x + m[4] * y + m[12];
	output[1] = m[1] * x + m[5] * y + m[13];
	return output;
}

float const *Vec3_Add(float *output, float const *a, float const *b)
{
	output[0] = a[0] + b[0];
	output[1] = a[1] + b[1];
	output[2] = a[2] + b[2];
	return output;
}

float const *Vec3_CloneIt(float const *a)
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

float *Vec3_Create(void)
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
	output[0] = GlMatrixMath_max(a[0], b[0]);
	output[1] = GlMatrixMath_max(a[1], b[1]);
	output[2] = GlMatrixMath_max(a[2], b[2]);
	return output;
}

float const *Vec3_Min(float *output, float const *a, float const *b)
{
	output[0] = GlMatrixMath_min(a[0], b[0]);
	output[1] = GlMatrixMath_min(a[1], b[1]);
	output[2] = GlMatrixMath_min(a[2], b[2]);
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
	float r = Platform_Random() * two * GlMatrixMath_PI();
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

float const *Vec3_TransformMat4(float *output, float const *a, float const *m)
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

float const *Vec4_Add(float *output, float const *a, float const *b)
{
	output[0] = a[0] + b[0];
	output[1] = a[1] + b[1];
	output[2] = a[2] + b[2];
	output[3] = a[3] + b[3];
	return output;
}

float const *Vec4_CloneIt(float const *a)
{
	float *output = (float *) malloc(4 * sizeof(float ));
	output[0] = a[0];
	output[1] = a[1];
	output[2] = a[2];
	output[3] = a[3];
	return output;
}

float const *Vec4_Copy(float *output, float const *a)
{
	output[0] = a[0];
	output[1] = a[1];
	output[2] = a[2];
	output[3] = a[3];
	return output;
}

float const *Vec4_Create(void)
{
	float *output = (float *) malloc(4 * sizeof(float ));
	output[0] = 0;
	output[1] = 0;
	output[2] = 0;
	output[3] = 0;
	return output;
}

float Vec4_Dist(float const *a, float const *b)
{
	return Vec4_Distance(a, b);
}

float Vec4_Distance(float const *a, float const *b)
{
	float x = b[0] - a[0];
	float y = b[1] - a[1];
	float z = b[2] - a[2];
	float w = b[3] - a[3];
	return Platform_Sqrt(x * x + y * y + z * z + w * w);
}

float const *Vec4_Div(float *output, float const *a, float const *b)
{
	return Vec4_Divide(output, a, b);
}

float const *Vec4_Divide(float *output, float const *a, float const *b)
{
	output[0] = a[0] / b[0];
	output[1] = a[1] / b[1];
	output[2] = a[2] / b[2];
	output[3] = a[3] / b[3];
	return output;
}

float Vec4_Dot(float const *a, float const *b)
{
	return a[0] * b[0] + a[1] * b[1] + a[2] * b[2] + a[3] * b[3];
}

float const *Vec4_FromValues(float x, float y, float z, float w)
{
	float *output = (float *) malloc(4 * sizeof(float ));
	output[0] = x;
	output[1] = y;
	output[2] = z;
	output[3] = w;
	return output;
}

float Vec4_Len(float const *a)
{
	return Vec4_Length(a);
}

float Vec4_Length(float const *a)
{
	float x = a[0];
	float y = a[1];
	float z = a[2];
	float w = a[3];
	return Platform_Sqrt(x * x + y * y + z * z + w * w);
}

float const *Vec4_Lerp(float *output, float const *a, float const *b, float t)
{
	float ax = a[0];
	float ay = a[1];
	float az = a[2];
	float aw = a[3];
	output[0] = ax + t * (b[0] - ax);
	output[1] = ay + t * (b[1] - ay);
	output[2] = az + t * (b[2] - az);
	output[3] = aw + t * (b[3] - aw);
	return output;
}

float const *Vec4_Max(float *output, float const *a, float const *b)
{
	output[0] = GlMatrixMath_max(a[0], b[0]);
	output[1] = GlMatrixMath_max(a[1], b[1]);
	output[2] = GlMatrixMath_max(a[2], b[2]);
	output[3] = GlMatrixMath_max(a[3], b[3]);
	return output;
}

float const *Vec4_Min(float *output, float const *a, float const *b)
{
	output[0] = GlMatrixMath_min(a[0], b[0]);
	output[1] = GlMatrixMath_min(a[1], b[1]);
	output[2] = GlMatrixMath_min(a[2], b[2]);
	output[3] = GlMatrixMath_min(a[3], b[3]);
	return output;
}

float const *Vec4_Mul(float *output, float const *a, float const *b)
{
	return Vec4_Multiply(output, a, b);
}

float const *Vec4_Multiply(float *output, float const *a, float const *b)
{
	output[0] = a[0] * b[0];
	output[1] = a[1] * b[1];
	output[2] = a[2] * b[2];
	output[3] = a[3] * b[3];
	return output;
}

float const *Vec4_Negate(float *output, float const *a)
{
	output[0] = -a[0];
	output[1] = -a[1];
	output[2] = -a[2];
	output[3] = -a[3];
	return output;
}

float const *Vec4_Normalize(float *output, float const *a)
{
	float x = a[0];
	float y = a[1];
	float z = a[2];
	float w = a[3];
	float len = x * x + y * y + z * z + w * w;
	if (len > 0) {
		float one = 1;
		len = one / Platform_Sqrt(len);
		output[0] = a[0] * len;
		output[1] = a[1] * len;
		output[2] = a[2] * len;
		output[3] = a[3] * len;
	}
	return output;
}

float const *Vec4_Random(float *output, float scale)
{
	output[0] = Platform_Random();
	output[1] = Platform_Random();
	output[2] = Platform_Random();
	output[3] = Platform_Random();
	Vec4_Normalize(output, output);
	Vec4_Scale(output, output, scale);
	return output;
}

float const *Vec4_Scale(float *output, float const *a, float b)
{
	output[0] = a[0] * b;
	output[1] = a[1] * b;
	output[2] = a[2] * b;
	output[3] = a[3] * b;
	return output;
}

float const *Vec4_ScaleAndAdd(float *output, float const *a, float const *b, float scale)
{
	output[0] = a[0] + b[0] * scale;
	output[1] = a[1] + b[1] * scale;
	output[2] = a[2] + b[2] * scale;
	output[3] = a[3] + b[3] * scale;
	return output;
}

float const *Vec4_Set(float *output, float x, float y, float z, float w)
{
	output[0] = x;
	output[1] = y;
	output[2] = z;
	output[3] = w;
	return output;
}

float Vec4_SqrDist(float const *a, float const *b)
{
	return Vec4_SquaredDistance(a, b);
}

float Vec4_SqrLen(float const *a)
{
	return Vec4_SquaredLength(a);
}

float Vec4_SquaredDistance(float const *a, float const *b)
{
	float x = b[0] - a[0];
	float y = b[1] - a[1];
	float z = b[2] - a[2];
	float w = b[3] - a[3];
	return x * x + y * y + z * z + w * w;
}

float Vec4_SquaredLength(float const *a)
{
	float x = a[0];
	float y = a[1];
	float z = a[2];
	float w = a[3];
	return x * x + y * y + z * z + w * w;
}

float const *Vec4_Sub(float *output, float const *a, float const *b)
{
	return Vec4_Subtract(output, a, b);
}

float const *Vec4_Subtract(float *output, float const *a, float const *b)
{
	output[0] = a[0] - b[0];
	output[1] = a[1] - b[1];
	output[2] = a[2] - b[2];
	output[3] = a[3] - b[3];
	return output;
}

float const *Vec4_TransformMat4(float *output, float const *a, float const *m)
{
	float x = a[0];
	float y = a[1];
	float z = a[2];
	float w = a[3];
	output[0] = m[0] * x + m[4] * y + m[8] * z + m[12] * w;
	output[1] = m[1] * x + m[5] * y + m[9] * z + m[13] * w;
	output[2] = m[2] * x + m[6] * y + m[10] * z + m[14] * w;
	output[3] = m[3] * x + m[7] * y + m[11] * z + m[15] * w;
	return output;
}

float const *Vec4_transformQuat(float *output, float const *a, float const *q)
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
	float iw = -qx * x - qy * y - qz * z;
	output[0] = ix * qw + iw * -qx + iy * -qz - iz * -qy;
	output[1] = iy * qw + iw * -qy + iz * -qx - ix * -qz;
	output[2] = iz * qw + iw * -qz + ix * -qy - iy * -qx;
	return output;
}
