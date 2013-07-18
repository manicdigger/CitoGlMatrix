// Generated automatically with "cito". Do not edit.

public class Mat2
{

	/// <summary>**
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
	/// **</summary>
	void f()
	{
	}
}

public class Mat2d
{

	/// <summary>**
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
	/// **</summary>
	void f()
	{
	}
}

public class Mat3
{

	/// <summary>**
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
	/// **</summary>
	void f()
	{
	}
}

/// <summary>4x4 Matrix</summary>
public class Mat4
{

	/// <summary>Calculates the adjugate of a mat4
	/// @returns {mat4} out</summary>
	/// <param name="output">@param {mat4} out the receiving matrix</param>
	/// <param name="a">@param {mat4} a the source matrix</param>
	public static float[] Adjoint(float[] output, float[] a)
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

	/// <summary>Creates a new mat4 initialized with values from an existing matrix
	/// Returns {mat4} a new 4x4 matrix</summary>
	/// <param name="a">{mat4} a matrix to clone</param>
	public static float[] Clone(float[] a)
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

	/// <summary>Copy the values from one mat4 to another
	/// Returns {mat4} out</summary>
	/// <param name="output">{mat4} out the receiving matrix</param>
	/// <param name="a">{mat4} a the source matrix</param>
	public static float[] Copy(float[] output, float[] a)
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

	/// <summary>Creates a new identity mat4
	/// Returns {mat4} a new 4x4 matrix</summary>
	public static float[] Create()
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

	/// <summary>Calculates the determinant of a mat4
	/// @param {mat4} a the source matrix
	/// @returns {Number} determinant of a</summary>
	public static float Determinant(float[] a)
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

	/// <summary>Set a mat4 to the identity matrix
	/// Returns {mat4} out</summary>
	/// <param name="output">{mat4} out the receiving matrix</param>
	public static float[] Identity(float[] output)
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

	/// <summary>Inverts a mat4</summary>
	public static float[] Invert(float[] output, float[] a)
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

	/// <summary>Transpose the values of a mat4
	/// @returns {mat4} out</summary>
	/// <param name="output">@param {mat4} out the receiving matrix</param>
	/// <param name="a">@param {mat4} a the source matrix</param>
	public static float[] Transpose(float[] output, float[] a)
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

	/// <summary>**
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
	/// **</summary>
	void f()
	{
	}
}

public class Math
{

	public static float PI()
	{
		float a = 3141592;
		return a / 1000000;
	}

	public static float max(float a, float b)
	{
		if (a > b) {
			return a;
		}
		else {
			return b;
		}
	}

	public static float min(float a, float b)
	{
		if (a < b) {
			return a;
		}
		else {
			return b;
		}
	}
}

public class Platform
{

	public static float Cos(float r)
	{
		
            return (float)System.Math.Cos(r);
        return 0;
	}

	public static float Random()
	{
		return 0;
	}

	public static float Sin(float r)
	{
		
            return (float)System.Math.Sin(r);
        return 0;
	}

	public static float Sqrt(float a)
	{
		
            return (float)System.Math.Sqrt(a);
        return 0;
	}
}

public class Quat
{

	/// <summary>**
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
	/// **</summary>
	void f()
	{
	}
}

public class Vec2
{

	/// <summary>**
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
	/// **</summary>
	void f()
	{
	}
}

/// <summary>3 Dimensional Vector</summary>
public class Vec3
{

	/// <summary>Adds two vec3's
	/// @returns {vec3} out</summary>
	/// <param name="output">/@param {vec3} out the receiving vector</param>
	/// <param name="a">/@param {vec3} a the first operand</param>
	/// <param name="b">/@param {vec3} b the second operand</param>
	public static float[] Add(float[] output, float[] a, float[] b)
	{
		output[0] = a[0] + b[0];
		output[1] = a[1] + b[1];
		output[2] = a[2] + b[2];
		return output;
	}

	/// <summary>Creates a new vec3 initialized with values from an existing vector
	/// Returns {vec3} a new 3D vector</summary>
	/// <param name="a">a vector to clone</param>
	public static float[] Clone(float[] a)
	{
		float[] output = new float[3];
		output[0] = a[0];
		output[1] = a[1];
		output[2] = a[2];
		return output;
	}

	/// <summary>Copy the values from one vec3 to another
	/// @returns {vec3} out</summary>
	/// <param name="output">/@param {vec3} out the receiving vector</param>
	/// <param name="a">/@param {vec3} a the source vector</param>
	public static float[] Copy(float[] output, float[] a)
	{
		output[0] = a[0];
		output[1] = a[1];
		output[2] = a[2];
		return output;
	}

	/// <summary>Creates a new, empty vec3
	/// Returns {vec3} a new 3D vector.</summary>
	public static float[] Create()
	{
		float[] output = new float[3];
		output[0] = 0;
		output[1] = 0;
		output[2] = 0;
		return output;
	}

	/// <summary>Computes the cross product of two vec3's
	/// @returns {vec3} out</summary>
	/// <param name="output">/@param {vec3} out the receiving vector</param>
	/// <param name="a">/@param {vec3} a the first operand</param>
	/// <param name="b">/@param {vec3} b the second operand</param>
	public static float[] Cross(float[] output, float[] a, float[] b)
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

	/// <summary>Alias for {@link vec3.distance}</summary>
	public static float Dist(float[] a, float[] b)
	{
		return Vec3.Distance(a, b);
	}

	/// <summary>Calculates the euclidian distance between two vec3's
	/// @returns {Number} distance between a and b</summary>
	/// <param name="a">/@param {vec3} a the first operand</param>
	/// <param name="b">/@param {vec3} b the second operand</param>
	public static float Distance(float[] a, float[] b)
	{
		float x = b[0] - a[0];
		float y = b[1] - a[1];
		float z = b[2] - a[2];
		return Platform.Sqrt(x * x + y * y + z * z);
	}

	/// <summary>Alias for {@link vec3.divide}</summary>
	public static float[] Div(float[] output, float[] a, float[] b)
	{
		return Vec3.Divide(output, a, b);
	}

	/// <summary>Divides two vec3's
	/// @returns {vec3} out</summary>
	/// <param name="output">/@param {vec3} out the receiving vector</param>
	/// <param name="a">/@param {vec3} a the first operand</param>
	/// <param name="b">/@param {vec3} b the second operand</param>
	public static float[] Divide(float[] output, float[] a, float[] b)
	{
		output[0] = a[0] / b[0];
		output[1] = a[1] / b[1];
		output[2] = a[2] / b[2];
		return output;
	}

	/// <summary>Calculates the dot product of two vec3's
	/// @returns {Number} dot product of a and b</summary>
	/// <param name="a">/@param {vec3} a the first operand</param>
	/// <param name="b">/@param {vec3} b the second operand</param>
	public static float Dot(float[] a, float[] b)
	{
		return a[0] * b[0] + a[1] * b[1] + a[2] * b[2];
	}

	/// <summary>Creates a new vec3 initialized with the given values
	/// Returns {vec3} a new 3D vector</summary>
	/// <param name="x">X component</param>
	/// <param name="y">Y component</param>
	/// <param name="z">Z component</param>
	public static float[] FromValues(float x, float y, float z)
	{
		float[] output = new float[3];
		output[0] = x;
		output[1] = y;
		output[2] = z;
		return output;
	}

	/// <summary>Alias for {@link vec3.length}</summary>
	public static float Len(float[] a)
	{
		return Vec3.Length(a);
	}

	/// <summary>Calculates the length of a vec3
	/// @returns {Number} length of a</summary>
	/// <param name="a">/@param {vec3} a vector to calculate length of</param>
	public static float Length(float[] a)
	{
		float x = a[0];
		float y = a[1];
		float z = a[2];
		return Platform.Sqrt(x * x + y * y + z * z);
	}

	/// <summary>Performs a linear interpolation between two vec3's
	/// @returns {vec3} out</summary>
	/// <param name="output">/@param {vec3} out the receiving vector</param>
	/// <param name="a">/@param {vec3} a the first operand</param>
	/// <param name="b">/@param {vec3} b the second operand</param>
	/// <param name="t">/@param {Number} t interpolation amount between the two inputs</param>
	public static float[] Lerp(float[] output, float[] a, float[] b, float t)
	{
		float ax = a[0];
		float ay = a[1];
		float az = a[2];
		output[0] = ax + t * (b[0] - ax);
		output[1] = ay + t * (b[1] - ay);
		output[2] = az + t * (b[2] - az);
		return output;
	}

	/// <summary>Returns the maximum of two vec3's
	/// @returns {vec3} out</summary>
	/// <param name="output">/@param {vec3} out the receiving vector</param>
	/// <param name="a">/@param {vec3} a the first operand</param>
	/// <param name="b">/@param {vec3} b the second operand</param>
	public static float[] Max(float[] output, float[] a, float[] b)
	{
		output[0] = Math.max(a[0], b[0]);
		output[1] = Math.max(a[1], b[1]);
		output[2] = Math.max(a[2], b[2]);
		return output;
	}

	/// <summary>Returns the minimum of two vec3's
	/// @returns {vec3} out</summary>
	/// <param name="output">/@param {vec3} out the receiving vector</param>
	/// <param name="a">/@param {vec3} a the first operand</param>
	/// <param name="b">/@param {vec3} b the second operand</param>
	public static float[] Min(float[] output, float[] a, float[] b)
	{
		output[0] = Math.min(a[0], b[0]);
		output[1] = Math.min(a[1], b[1]);
		output[2] = Math.min(a[2], b[2]);
		return output;
	}

	/// <summary>Alias for {@link vec3.multiply}</summary>
	public static float[] Mul(float[] output, float[] a, float[] b)
	{
		return Vec3.Multiply(output, a, b);
	}

	/// <summary>Multiplies two vec3's
	/// @returns {vec3} out</summary>
	/// <param name="output">/@param {vec3} out the receiving vector</param>
	/// <param name="a">/@param {vec3} a the first operand</param>
	/// <param name="b">/@param {vec3} b the second operand</param>
	public static float[] Multiply(float[] output, float[] a, float[] b)
	{
		output[0] = a[0] * b[0];
		output[1] = a[1] * b[1];
		output[2] = a[2] * b[2];
		return output;
	}

	/// <summary>Negates the components of a vec3
	/// @returns {vec3} out</summary>
	/// <param name="output">/@param {vec3} out the receiving vector</param>
	/// <param name="a">/@param {vec3} a vector to negate</param>
	public static float[] Negate(float[] output, float[] a)
	{
		output[0] = 0 - a[0];
		output[1] = 0 - a[1];
		output[2] = 0 - a[2];
		return output;
	}

	/// <summary>Normalize a vec3
	/// @returns {vec3} out</summary>
	/// <param name="output">/@param {vec3} out the receiving vector</param>
	/// <param name="a">/@param {vec3} a vector to normalize</param>
	public static float[] Normalize(float[] output, float[] a)
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

	/// <summary>Generates a random vector with the given scale
	/// @returns {vec3} out</summary>
	/// <param name="output">/@param {vec3} out the receiving vector</param>
	/// <param name="scale">/@param {Number} [scale] Length of the resulting vector. If ommitted, a unit vector will be returned</param>
	public static float[] Random(float[] output, float scale)
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

	/// <summary>Scales a vec3 by a scalar number
	/// @returns {vec3} out</summary>
	/// <param name="output">/@param {vec3} out the receiving vector</param>
	/// <param name="a">/@param {vec3} a the vector to scale</param>
	/// <param name="b">/@param {Number} b amount to scale the vector by</param>
	public static float[] Scale(float[] output, float[] a, float b)
	{
		output[0] = a[0] * b;
		output[1] = a[1] * b;
		output[2] = a[2] * b;
		return output;
	}

	/// <summary>Adds two vec3's after scaling the second operand by a scalar value
	/// @returns {vec3} out</summary>
	/// <param name="output">/@param {vec3} out the receiving vector</param>
	/// <param name="a">/@param {vec3} a the first operand</param>
	/// <param name="b">/@param {vec3} b the second operand</param>
	/// <param name="scale">/@param {Number} scale the amount to scale b by before adding</param>
	public static float[] ScaleAndAdd(float[] output, float[] a, float[] b, float scale)
	{
		output[0] = a[0] + b[0] * scale;
		output[1] = a[1] + b[1] * scale;
		output[2] = a[2] + b[2] * scale;
		return output;
	}

	/// <summary>Set the components of a vec3 to the given values
	/// @returns {vec3} out</summary>
	/// <param name="output">/@param {vec3} out the receiving vector</param>
	/// <param name="x">/@param {Number} x X component</param>
	/// <param name="y">/@param {Number} y Y component</param>
	/// <param name="z">/@param {Number} z Z component</param>
	public static float[] Set(float[] output, float x, float y, float z)
	{
		output[0] = x;
		output[1] = y;
		output[2] = z;
		return output;
	}

	/// <summary>Alias for {@link vec3.squaredDistance}
	/// @function</summary>
	public static float SqrDist(float[] a, float[] b)
	{
		return Vec3.SquaredDistance(a, b);
	}

	/// <summary>Alias for {@link vec3.squaredLength}</summary>
	public static float SqrLen(float[] a)
	{
		return Vec3.SquaredLength(a);
	}

	/// <summary>Calculates the squared euclidian distance between two vec3's
	/// @returns {Number} squared distance between a and b</summary>
	/// <param name="a">/@param {vec3} a the first operand</param>
	/// <param name="b">/@param {vec3} b the second operand</param>
	public static float SquaredDistance(float[] a, float[] b)
	{
		float x = b[0] - a[0];
		float y = b[1] - a[1];
		float z = b[2] - a[2];
		return x * x + y * y + z * z;
	}

	/// <summary>Calculates the squared length of a vec3
	/// @returns {Number} squared length of a</summary>
	/// <param name="a">/@param {vec3} a vector to calculate squared length of</param>
	public static float SquaredLength(float[] a)
	{
		float x = a[0];
		float y = a[1];
		float z = a[2];
		return x * x + y * y + z * z;
	}

	/// <summary>Alias for {@link vec3.subtract}
	/// @function</summary>
	public static float[] Sub(float[] output, float[] a, float[] b)
	{
		return Vec3.Substract(output, a, b);
	}

	/// <summary>Subtracts vector b from vector a
	/// @returns {vec3} out</summary>
	/// <param name="output">/@param {vec3} out the receiving vector</param>
	/// <param name="a">/@param {vec3} a the first operand</param>
	/// <param name="b">/@param {vec3} b the second operand</param>
	public static float[] Substract(float[] output, float[] a, float[] b)
	{
		output[0] = a[0] - b[0];
		output[1] = a[1] - b[1];
		output[2] = a[2] - b[2];
		return output;
	}

	/// <summary>Transforms the vec3 with a mat3.</summary>
	/// <remarks>@returns {vec3} out</remarks>
	/// <param name="output">/@param {vec3} out the receiving vector</param>
	/// <param name="a">/@param {vec3} a the vector to transform</param>
	/// <param name="m">/@param {mat4} m the 3x3 matrix to transform with</param>
	public static float[] TransformMat3(float[] output, float[] a, float[] m)
	{
		float x = a[0];
		float y = a[1];
		float z = a[2];
		output[0] = x * m[0] + y * m[3] + z * m[6];
		output[1] = x * m[1] + y * m[4] + z * m[7];
		output[2] = x * m[2] + y * m[5] + z * m[8];
		return output;
	}

	/// <summary>/Transforms the vec3 with a mat4.</summary>
	/// <remarks>/4th vector component is implicitly '1'
	/// /@returns {vec3} out</remarks>
	/// <param name="output">/@param {vec3} out the receiving vector</param>
	/// <param name="a">/@param {vec3} a the vector to transform</param>
	/// <param name="m">/@param {mat4} m matrix to transform with</param>
	public float[] TransformMat4(float[] output, float[] a, float[] m)
	{
		float x = a[0];
		float y = a[1];
		float z = a[2];
		output[0] = m[0] * x + m[4] * y + m[8] * z + m[12];
		output[1] = m[1] * x + m[5] * y + m[9] * z + m[13];
		output[2] = m[2] * x + m[6] * y + m[10] * z + m[14];
		return output;
	}

	/// <summary>Transforms the vec3 with a quat
	/// @returns {vec3} out</summary>
	/// <param name="output">/@param {vec3} out the receiving vector</param>
	/// <param name="a">/@param {vec3} a the vector to transform</param>
	/// <param name="q">/@param {quat} q quaternion to transform with</param>
	public static float[] TransformQuat(float[] output, float[] a, float[] q)
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

	/// <summary>/Perform some operation over an array of vec3s.</summary>
	/// <remarks>/@param {Array} a the array of vectors to iterate over
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
	/// / @returns {String} string representation of the vector</remarks>
	public static string str(float[] a)
	{
		return "";
	}
}

public class Vec4
{

	/// <summary>**
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
	/// **</summary>
	void f()
	{
	}
}
