// Generated automatically with "cito". Do not edit.
import std.utf;

class Mat2
{

	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	private final void f()
	{
	}
}

class Mat2d
{

	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	private final void f()
	{
	}
}

class Mat3
{

	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	private final void f()
	{
	}
}

/// 4x4 Matrix
class Mat4
{

	/// Calculates the adjugate of a mat4
	/// @returns {mat4} out
	/// Params:
	/// output = @param {mat4} out the receiving matrix
	/// a = @param {mat4} a the source matrix
	static const(float)[] Adjoint(float[] output, const(float)[] a)
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

	/// Creates a new mat4 initialized with values from an existing matrix
	/// Returns {mat4} a new 4x4 matrix
	/// Params:
	/// a = {mat4} a matrix to clone
	static const(float)[] Clone(const(float)[] a)
	{
		float[] output = new float[16];
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

	/// Copy the values from one mat4 to another
	/// Returns {mat4} out
	/// Params:
	/// output = {mat4} out the receiving matrix
	/// a = {mat4} a the source matrix
	static const(float)[] Copy(float[] output, const(float)[] a)
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

	/// Creates a new identity mat4
	/// Returns {mat4} a new 4x4 matrix
	static const(float)[] Create()
	{
		float[] output = new float[16];
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

	/// Calculates the determinant of a mat4
	/// @param {mat4} a the source matrix
	/// @returns {Number} determinant of a
	static float Determinant(const(float)[] a)
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

	/// Set a mat4 to the identity matrix
	/// Returns {mat4} out
	/// Params:
	/// output = {mat4} out the receiving matrix
	static const(float)[] Identity(float[] output)
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

	/// Inverts a mat4
	static const(float)[] Invert(float[] output, const(float)[] a)
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
			return null;
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

	/// Alias for {@link mat4.multiply}
	static const(float)[] Mul(float[] output, const(float)[] a, const(float)[] b)
	{
		return Mat4.Multiply(output, a, b);
	}

	/// Multiplies two mat4's
	/// @param {mat4} out the receiving matrix
	/// @param {mat4} a the first operand
	/// @param {mat4} b the second operand
	/// @returns {mat4} out
	static const(float)[] Multiply(float[] output, const(float)[] a, const(float)[] b)
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

	/// Rotates a mat4 by the given angle
	/// @returns {mat4} out
	/// Params:
	/// output = @param {mat4} out the receiving matrix
	/// a = @param {mat4} a the matrix to rotate
	/// rad = @param {Number} rad the angle to rotate the matrix by
	/// axis = @param {vec3} axis the axis to rotate around
	static const(float)[] Rotate(float[] output, const(float)[] a, float rad, const(float)[] axis)
	{
		float x = axis[0];
		float y = axis[1];
		float z = axis[2];
		float len = Platform.Sqrt(x * x + y * y + z * z);
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
		if (Math.Abs(len) < Math.GLMAT_EPSILON()) {
			return null;
		}
		len = 1 / len;
		x *= len;
		y *= len;
		z *= len;
		s = Platform.Sin(rad);
		c = Platform.Cos(rad);
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

	/// Scales the mat4 by the dimensions in the given vec3
	/// @param {mat4} out the receiving matrix
	/// @param {mat4} a the matrix to scale
	/// @param {vec3} v the vec3 to scale the matrix by
	/// @returns {mat4} out
	static const(float)[] Scale(float[] output, const(float)[] a, const(float)[] v)
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

	/// Translate a mat4 by the given vector
	/// @param {mat4} out the receiving matrix
	/// @param {mat4} a the matrix to translate
	/// @param {vec3} v vector to translate by
	/// @returns {mat4} out
	static const(float)[] Translate(float[] output, const(float)[] a, const(float)[] v)
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

	/// Transpose the values of a mat4
	/// @returns {mat4} out
	/// Params:
	/// output = @param {mat4} out the receiving matrix
	/// a = @param {mat4} a the source matrix
	static const(float)[] Transpose(float[] output, const(float)[] a)
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

	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	private final void f()
	{
	}
}

class Math
{

	static float Abs(float len)
	{
		if (len < 0) {
			return -len;
		}
		else {
			return len;
		}
	}

	static float GLMAT_EPSILON()
	{
		float one = 1;
		return one / 1000000;
	}

	static float PI()
	{
		float a = 3141592;
		return a / 1000000;
	}

	static float max(float a, float b)
	{
		if (a > b) {
			return a;
		}
		else {
			return b;
		}
	}

	static float min(float a, float b)
	{
		if (a < b) {
			return a;
		}
		else {
			return b;
		}
	}
}

class Platform
{

	static float Cos(float r)
	{
		return 0;
	}

	static float Random()
	{
		return 0;
	}

	static float Sin(float r)
	{
		return 0;
	}

	static float Sqrt(float a)
	{
		return 0;
	}
}

class Quat
{

	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	private final void f()
	{
	}
}

class Vec2
{

	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	private final void f()
	{
	}
}

/// 3 Dimensional Vector
class Vec3
{

	/// Adds two vec3's
	/// @returns {vec3} out
	/// Params:
	/// output = /@param {vec3} out the receiving vector
	/// a = /@param {vec3} a the first operand
	/// b = /@param {vec3} b the second operand
	static const(float)[] Add(float[] output, const(float)[] a, const(float)[] b)
	{
		output[0] = a[0] + b[0];
		output[1] = a[1] + b[1];
		output[2] = a[2] + b[2];
		return output;
	}

	/// Creates a new vec3 initialized with values from an existing vector
	/// Returns {vec3} a new 3D vector
	/// Params:
	/// a = a vector to clone
	static const(float)[] Clone(const(float)[] a)
	{
		float[] output = new float[3];
		output[0] = a[0];
		output[1] = a[1];
		output[2] = a[2];
		return output;
	}

	/// Copy the values from one vec3 to another
	/// @returns {vec3} out
	/// Params:
	/// output = /@param {vec3} out the receiving vector
	/// a = /@param {vec3} a the source vector
	static const(float)[] Copy(float[] output, const(float)[] a)
	{
		output[0] = a[0];
		output[1] = a[1];
		output[2] = a[2];
		return output;
	}

	/// Creates a new, empty vec3
	/// Returns {vec3} a new 3D vector.
	static const(float)[] Create()
	{
		float[] output = new float[3];
		output[0] = 0;
		output[1] = 0;
		output[2] = 0;
		return output;
	}

	/// Computes the cross product of two vec3's
	/// @returns {vec3} out
	/// Params:
	/// output = /@param {vec3} out the receiving vector
	/// a = /@param {vec3} a the first operand
	/// b = /@param {vec3} b the second operand
	static const(float)[] Cross(float[] output, const(float)[] a, const(float)[] b)
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

	/// Alias for {@link vec3.distance}
	static float Dist(const(float)[] a, const(float)[] b)
	{
		return Vec3.Distance(a, b);
	}

	/// Calculates the euclidian distance between two vec3's
	/// @returns {Number} distance between a and b
	/// Params:
	/// a = /@param {vec3} a the first operand
	/// b = /@param {vec3} b the second operand
	static float Distance(const(float)[] a, const(float)[] b)
	{
		float x = b[0] - a[0];
		float y = b[1] - a[1];
		float z = b[2] - a[2];
		return Platform.Sqrt(x * x + y * y + z * z);
	}

	/// Alias for {@link vec3.divide}
	static const(float)[] Div(float[] output, const(float)[] a, const(float)[] b)
	{
		return Vec3.Divide(output, a, b);
	}

	/// Divides two vec3's
	/// @returns {vec3} out
	/// Params:
	/// output = /@param {vec3} out the receiving vector
	/// a = /@param {vec3} a the first operand
	/// b = /@param {vec3} b the second operand
	static const(float)[] Divide(float[] output, const(float)[] a, const(float)[] b)
	{
		output[0] = a[0] / b[0];
		output[1] = a[1] / b[1];
		output[2] = a[2] / b[2];
		return output;
	}

	/// Calculates the dot product of two vec3's
	/// @returns {Number} dot product of a and b
	/// Params:
	/// a = /@param {vec3} a the first operand
	/// b = /@param {vec3} b the second operand
	static float Dot(const(float)[] a, const(float)[] b)
	{
		return a[0] * b[0] + a[1] * b[1] + a[2] * b[2];
	}

	/// Creates a new vec3 initialized with the given values
	/// Returns {vec3} a new 3D vector
	/// Params:
	/// x = X component
	/// y = Y component
	/// z = Z component
	static const(float)[] FromValues(float x, float y, float z)
	{
		float[] output = new float[3];
		output[0] = x;
		output[1] = y;
		output[2] = z;
		return output;
	}

	/// Alias for {@link vec3.length}
	static float Len(const(float)[] a)
	{
		return Vec3.Length(a);
	}

	/// Calculates the length of a vec3
	/// @returns {Number} length of a
	/// Params:
	/// a = /@param {vec3} a vector to calculate length of
	static float Length(const(float)[] a)
	{
		float x = a[0];
		float y = a[1];
		float z = a[2];
		return Platform.Sqrt(x * x + y * y + z * z);
	}

	/// Performs a linear interpolation between two vec3's
	/// @returns {vec3} out
	/// Params:
	/// output = /@param {vec3} out the receiving vector
	/// a = /@param {vec3} a the first operand
	/// b = /@param {vec3} b the second operand
	/// t = /@param {Number} t interpolation amount between the two inputs
	static const(float)[] Lerp(float[] output, const(float)[] a, const(float)[] b, float t)
	{
		float ax = a[0];
		float ay = a[1];
		float az = a[2];
		output[0] = ax + t * (b[0] - ax);
		output[1] = ay + t * (b[1] - ay);
		output[2] = az + t * (b[2] - az);
		return output;
	}

	/// Returns the maximum of two vec3's
	/// @returns {vec3} out
	/// Params:
	/// output = /@param {vec3} out the receiving vector
	/// a = /@param {vec3} a the first operand
	/// b = /@param {vec3} b the second operand
	static const(float)[] Max(float[] output, const(float)[] a, const(float)[] b)
	{
		output[0] = Math.max(a[0], b[0]);
		output[1] = Math.max(a[1], b[1]);
		output[2] = Math.max(a[2], b[2]);
		return output;
	}

	/// Returns the minimum of two vec3's
	/// @returns {vec3} out
	/// Params:
	/// output = /@param {vec3} out the receiving vector
	/// a = /@param {vec3} a the first operand
	/// b = /@param {vec3} b the second operand
	static const(float)[] Min(float[] output, const(float)[] a, const(float)[] b)
	{
		output[0] = Math.min(a[0], b[0]);
		output[1] = Math.min(a[1], b[1]);
		output[2] = Math.min(a[2], b[2]);
		return output;
	}

	/// Alias for {@link vec3.multiply}
	static const(float)[] Mul(float[] output, const(float)[] a, const(float)[] b)
	{
		return Vec3.Multiply(output, a, b);
	}

	/// Multiplies two vec3's
	/// @returns {vec3} out
	/// Params:
	/// output = /@param {vec3} out the receiving vector
	/// a = /@param {vec3} a the first operand
	/// b = /@param {vec3} b the second operand
	static const(float)[] Multiply(float[] output, const(float)[] a, const(float)[] b)
	{
		output[0] = a[0] * b[0];
		output[1] = a[1] * b[1];
		output[2] = a[2] * b[2];
		return output;
	}

	/// Negates the components of a vec3
	/// @returns {vec3} out
	/// Params:
	/// output = /@param {vec3} out the receiving vector
	/// a = /@param {vec3} a vector to negate
	static const(float)[] Negate(float[] output, const(float)[] a)
	{
		output[0] = 0 - a[0];
		output[1] = 0 - a[1];
		output[2] = 0 - a[2];
		return output;
	}

	/// Normalize a vec3
	/// @returns {vec3} out
	/// Params:
	/// output = /@param {vec3} out the receiving vector
	/// a = /@param {vec3} a vector to normalize
	static const(float)[] Normalize(float[] output, const(float)[] a)
	{
		float x = a[0];
		float y = a[1];
		float z = a[2];
		float len = x * x + y * y + z * z;
		if (len > 0) {
			float one = 1;
			len = one / Platform.Sqrt(len);
			output[0] = a[0] * len;
			output[1] = a[1] * len;
			output[2] = a[2] * len;
		}
		return output;
	}

	/// Generates a random vector with the given scale
	/// @returns {vec3} out
	/// Params:
	/// output = /@param {vec3} out the receiving vector
	/// scale = /@param {Number} [scale] Length of the resulting vector. If ommitted, a unit vector will be returned
	static const(float)[] Random(float[] output, float scale)
	{
		float one = 1;
		float two = 2;
		float r = Platform.Random() * two * Math.PI();
		float z = Platform.Random() * two - one;
		float zScale = Platform.Sqrt(one - z * z) * scale;
		output[0] = Platform.Cos(r) * zScale;
		output[1] = Platform.Sin(r) * zScale;
		output[2] = z * scale;
		return output;
	}

	/// Scales a vec3 by a scalar number
	/// @returns {vec3} out
	/// Params:
	/// output = /@param {vec3} out the receiving vector
	/// a = /@param {vec3} a the vector to scale
	/// b = /@param {Number} b amount to scale the vector by
	static const(float)[] Scale(float[] output, const(float)[] a, float b)
	{
		output[0] = a[0] * b;
		output[1] = a[1] * b;
		output[2] = a[2] * b;
		return output;
	}

	/// Adds two vec3's after scaling the second operand by a scalar value
	/// @returns {vec3} out
	/// Params:
	/// output = /@param {vec3} out the receiving vector
	/// a = /@param {vec3} a the first operand
	/// b = /@param {vec3} b the second operand
	/// scale = /@param {Number} scale the amount to scale b by before adding
	static const(float)[] ScaleAndAdd(float[] output, const(float)[] a, const(float)[] b, float scale)
	{
		output[0] = a[0] + b[0] * scale;
		output[1] = a[1] + b[1] * scale;
		output[2] = a[2] + b[2] * scale;
		return output;
	}

	/// Set the components of a vec3 to the given values
	/// @returns {vec3} out
	/// Params:
	/// output = /@param {vec3} out the receiving vector
	/// x = /@param {Number} x X component
	/// y = /@param {Number} y Y component
	/// z = /@param {Number} z Z component
	static const(float)[] Set(float[] output, float x, float y, float z)
	{
		output[0] = x;
		output[1] = y;
		output[2] = z;
		return output;
	}

	/// Alias for {@link vec3.squaredDistance}
	/// @function
	static float SqrDist(const(float)[] a, const(float)[] b)
	{
		return Vec3.SquaredDistance(a, b);
	}

	/// Alias for {@link vec3.squaredLength}
	static float SqrLen(const(float)[] a)
	{
		return Vec3.SquaredLength(a);
	}

	/// Calculates the squared euclidian distance between two vec3's
	/// @returns {Number} squared distance between a and b
	/// Params:
	/// a = /@param {vec3} a the first operand
	/// b = /@param {vec3} b the second operand
	static float SquaredDistance(const(float)[] a, const(float)[] b)
	{
		float x = b[0] - a[0];
		float y = b[1] - a[1];
		float z = b[2] - a[2];
		return x * x + y * y + z * z;
	}

	/// Calculates the squared length of a vec3
	/// @returns {Number} squared length of a
	/// Params:
	/// a = /@param {vec3} a vector to calculate squared length of
	static float SquaredLength(const(float)[] a)
	{
		float x = a[0];
		float y = a[1];
		float z = a[2];
		return x * x + y * y + z * z;
	}

	/// Alias for {@link vec3.subtract}
	/// @function
	static const(float)[] Sub(float[] output, const(float)[] a, const(float)[] b)
	{
		return Vec3.Substract(output, a, b);
	}

	/// Subtracts vector b from vector a
	/// @returns {vec3} out
	/// Params:
	/// output = /@param {vec3} out the receiving vector
	/// a = /@param {vec3} a the first operand
	/// b = /@param {vec3} b the second operand
	static const(float)[] Substract(float[] output, const(float)[] a, const(float)[] b)
	{
		output[0] = a[0] - b[0];
		output[1] = a[1] - b[1];
		output[2] = a[2] - b[2];
		return output;
	}

	/// Transforms the vec3 with a mat3.
	///
	/// @returns {vec3} out
	/// Params:
	/// output = /@param {vec3} out the receiving vector
	/// a = /@param {vec3} a the vector to transform
	/// m = /@param {mat4} m the 3x3 matrix to transform with
	static const(float)[] TransformMat3(float[] output, const(float)[] a, const(float)[] m)
	{
		float x = a[0];
		float y = a[1];
		float z = a[2];
		output[0] = x * m[0] + y * m[3] + z * m[6];
		output[1] = x * m[1] + y * m[4] + z * m[7];
		output[2] = x * m[2] + y * m[5] + z * m[8];
		return output;
	}

	/// /Transforms the vec3 with a mat4.
	///
	/// /4th vector component is implicitly '1'
	/// /@returns {vec3} out
	/// Params:
	/// output = /@param {vec3} out the receiving vector
	/// a = /@param {vec3} a the vector to transform
	/// m = /@param {mat4} m matrix to transform with
	final const(float)[] TransformMat4(float[] output, const(float)[] a, const(float)[] m)
	{
		float x = a[0];
		float y = a[1];
		float z = a[2];
		output[0] = m[0] * x + m[4] * y + m[8] * z + m[12];
		output[1] = m[1] * x + m[5] * y + m[9] * z + m[13];
		output[2] = m[2] * x + m[6] * y + m[10] * z + m[14];
		return output;
	}

	/// Transforms the vec3 with a quat
	/// @returns {vec3} out
	/// Params:
	/// output = /@param {vec3} out the receiving vector
	/// a = /@param {vec3} a the vector to transform
	/// q = /@param {quat} q quaternion to transform with
	static const(float)[] TransformQuat(float[] output, const(float)[] a, const(float)[] q)
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

	/// /Perform some operation over an array of vec3s.
	///
	/// /@param {Array} a the array of vectors to iterate over
	/// /@param {Number} stride Number of elements between the start of each vec3. If 0 assumes tightly packed
	/// /@param {Number} offset Number of elements to skip at the beginning of the array
	/// /@param {Number} count Number of vec3s to iterate over. If 0 iterates over entire array
	/// /@param {Function} fn Function to call for each vector in the array
	/// /@param {Object} [arg] additional argument to pass to fn
	/// /@returns {Array} a
	/// /
	/// / Returns a string representation of a vector
	/// /
	/// / @param {vec3} vec vector to represent as a string
	/// / @returns {String} string representation of the vector
	static string str(const(float)[] a)
	{
		return "";
	}
}

class Vec4
{

	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	/// **
	private final void f()
	{
	}
}
