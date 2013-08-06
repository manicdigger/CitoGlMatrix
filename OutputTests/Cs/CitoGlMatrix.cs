// Generated automatically with "cito". Do not edit.

public class CitoAssert
{
	public CitoAssert()
	{
		this.errors = new string[1024];
		this.errorsCount = 0;
		this.testI = 0;
	}

	public float[] Arr16(int p, int p_2, int p_3, int p_4, int p_5, int p_6, int p_7, int p_8, int p_9, int p_10, int p_11, int p_12, int p_13, int p_14, int p_15, int p_16)
	{
		float[] arr = new float[16];
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

	public float[] Arr3(float p, float p_2, float p_3)
	{
		float[] arr = new float[3];
		arr[0] = p;
		arr[1] = p_2;
		arr[2] = p_3;
		return arr;
	}

	public float[] Arr9(int p, int p_2, int p_3, int p_4, int p_5, int p_6, int p_7, int p_8, int p_9)
	{
		float[] arr = new float[16];
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

	public void AssertArrayEqual(float[] actual, float[] expected, int length, string msg)
	{
		Platform.WriteString("Test ");
		Platform.WriteInt(this.testI);
		bool isequal = true;
		for (int i = 0; i < length; i++) {
			if (actual[i] != expected[i]) {
				isequal = false;
			}
		}
		if (!isequal) {
			this.errors[this.errorsCount++] = msg;
			Platform.WriteString(" error: ");
			Platform.WriteString(msg);
		}
		else {
			Platform.WriteString(" ok");
		}
		Platform.WriteString("\n");
		this.testI++;
	}

	public void AssertCloseTo(float actual, float expected, string msg)
	{
		Platform.WriteString("Test ");
		Platform.WriteInt(this.testI);
		if (GlMatrixMath.Abs(actual - expected) > GlMatrixMath.GLMAT_EPSILON()) {
			this.errors[this.errorsCount++] = msg;
			Platform.WriteString(" error: ");
			Platform.WriteString(msg);
		}
		else {
			Platform.WriteString(" ok");
		}
		Platform.WriteString("\n");
		this.testI++;
	}

	public void AssertEqual(float actual, float expected, string msg)
	{
		Platform.WriteString("Test ");
		Platform.WriteInt(this.testI);
		if (actual != expected) {
			this.errors[this.errorsCount++] = msg;
			Platform.WriteString(" error: ");
			Platform.WriteString(msg);
		}
		else {
			Platform.WriteString(" ok");
		}
		Platform.WriteString("\n");
		this.testI++;
	}
	string[] errors;
	int errorsCount;
	int testI;
}

public class GlMatrixMath
{

	public static float Abs(float len)
	{
		if (len < 0) {
			return -len;
		}
		else {
			return len;
		}
	}

	public static float GLMAT_EPSILON()
	{
		float one = 1;
		return one / 1000000;
	}

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

/// <summary>2x2 Matrix</summary>
public class Mat2
{

	/// <summary>Calculates the adjugate of a mat2
	/// Returns output</summary>
	/// <param name="output">the receiving matrix</param>
	/// <param name="a">the source matrix</param>
	public static float[] Adjoint(float[] output, float[] a)
	{
		float a0 = a[0];
		output[0] = a[3];
		output[1] = -a[1];
		output[2] = -a[2];
		output[3] = a0;
		return output;
	}

	/// <summary>Creates a new mat2 initialized with values from an existing matrix
	/// Returns a new 2x2 matrix</summary>
	/// <param name="a">matrix to clone</param>
	public static float[] CloneIt(float[] a)
	{
		float[] output = new float[4];
		output[0] = a[0];
		output[1] = a[1];
		output[2] = a[2];
		output[3] = a[3];
		return output;
	}

	/// <summary>Copy the values from one mat2 to another
	/// Returns output</summary>
	/// <param name="output">the receiving matrix</param>
	/// <param name="a">the source matrix</param>
	public static float[] Copy(float[] output, float[] a)
	{
		output[0] = a[0];
		output[1] = a[1];
		output[2] = a[2];
		output[3] = a[3];
		return output;
	}

	/// <summary>Creates a new identity mat2
	/// Returns a new 2x2 matrix</summary>
	public static float[] Create()
	{
		float[] output = new float[4];
		output[0] = 1;
		output[1] = 0;
		output[2] = 0;
		output[3] = 1;
		return output;
	}

	/// <summary>Calculates the determinant of a mat2
	/// Returns determinant of a</summary>
	/// <param name="a">the source matrix</param>
	public static float Determinant(float[] a)
	{
		return a[0] * a[3] - a[2] * a[1];
	}

	/// <summary>Set a mat2 to the identity matrix
	/// Returns output</summary>
	/// <param name="output">the receiving matrix</param>
	public static float[] Identity_(float[] output)
	{
		output[0] = 1;
		output[1] = 0;
		output[2] = 0;
		output[3] = 1;
		return output;
	}

	/// <summary>Inverts a mat2
	/// Returns output</summary>
	/// <param name="output">the receiving matrix</param>
	/// <param name="a">the source matrix</param>
	public static float[] Invert(float[] output, float[] a)
	{
		float a0 = a[0];
		float a1 = a[1];
		float a2 = a[2];
		float a3 = a[3];
		float det = a0 * a3 - a2 * a1;
		if (det == 0) {
			return null;
		}
		float one = 1;
		det = one / det;
		output[0] = a3 * det;
		output[1] = -a1 * det;
		output[2] = -a2 * det;
		output[3] = a0 * det;
		return output;
	}

	/// <summary>Alias for {@link mat2.multiply}</summary>
	public static float[] Mul(float[] output, float[] a, float[] b)
	{
		return Mat2.Multiply(output, a, b);
	}

	/// <summary>Multiplies two mat2's
	/// Returns output</summary>
	/// <param name="output">the receiving matrix</param>
	/// <param name="a">the first operand</param>
	/// <param name="b">the second operand</param>
	public static float[] Multiply(float[] output, float[] a, float[] b)
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

	/// <summary>Rotates a mat2 by the given angle
	/// Returns output</summary>
	/// <param name="output">the receiving matrix</param>
	/// <param name="a">the matrix to rotate</param>
	/// <param name="rad">the angle to rotate the matrix by</param>
	public static float[] Rotate(float[] output, float[] a, float rad)
	{
		float a0 = a[0];
		float a1 = a[1];
		float a2 = a[2];
		float a3 = a[3];
		float s = Platform.Sin(rad);
		float c = Platform.Cos(rad);
		output[0] = a0 * c + a1 * s;
		output[1] = a0 * -s + a1 * c;
		output[2] = a2 * c + a3 * s;
		output[3] = a2 * -s + a3 * c;
		return output;
	}

	/// <summary>Scales the mat2 by the dimensions in the given vec2
	/// Returns output</summary>
	/// <param name="output">the receiving matrix</param>
	/// <param name="a">the matrix to rotate</param>
	/// <param name="v">the vec2 to scale the matrix by</param>
	public static float[] Scale(float[] output, float[] a, float[] v)
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

	/// <summary>Transpose the values of a mat2
	/// Returns output</summary>
	/// <param name="output">the receiving matrix</param>
	/// <param name="a">the source matrix</param>
	public static float[] Transpose(float[] output, float[] a)
	{
		output[0] = a[0];
		output[1] = a[2];
		output[2] = a[1];
		output[3] = a[3];
		return output;
	}

	/// <summary>**</summary>
	void f()
	{
	}
}

public class Mat2d
{

	/// <summary>Creates a new mat2d initialized with values from an existing matrix
	/// Returns a new 2x3 matrix</summary>
	/// <param name="a">matrix to clone</param>
	public static float[] CloneIt(float[] a)
	{
		float[] output = new float[6];
		output[0] = a[0];
		output[1] = a[1];
		output[2] = a[2];
		output[3] = a[3];
		output[4] = a[4];
		output[5] = a[5];
		return output;
	}

	/// <summary>Copy the values from one mat2d to another
	/// Returns output</summary>
	/// <param name="output">the receiving matrix</param>
	/// <param name="a">the source matrix</param>
	public static float[] Copy(float[] output, float[] a)
	{
		output[0] = a[0];
		output[1] = a[1];
		output[2] = a[2];
		output[3] = a[3];
		output[4] = a[4];
		output[5] = a[5];
		return output;
	}

	/// <summary>Creates a new identity mat2d
	/// Returns a new 2x3 matrix</summary>
	public static float[] Create()
	{
		float[] output = new float[6];
		output[0] = 1;
		output[1] = 0;
		output[2] = 0;
		output[3] = 1;
		output[4] = 0;
		output[5] = 0;
		return output;
	}

	/// <summary>Calculates the determinant of a mat2d
	/// Returns determinant of a</summary>
	/// <param name="a">the source matrix</param>
	public static float Determinant(float[] a)
	{
		return a[0] * a[3] - a[1] * a[2];
	}

	/// <summary>Set a mat2d to the identity matrix
	/// Returns output</summary>
	/// <param name="output">the receiving matrix</param>
	public static float[] Identity_(float[] output)
	{
		output[0] = 1;
		output[1] = 0;
		output[2] = 0;
		output[3] = 1;
		output[4] = 0;
		output[5] = 0;
		return output;
	}

	/// <summary>Inverts a mat2d
	/// Returns output</summary>
	/// <param name="output">the receiving matrix</param>
	/// <param name="a">the source matrix</param>
	public static float[] Invert(float[] output, float[] a)
	{
		float aa = a[0];
		float ab = a[1];
		float ac = a[2];
		float ad = a[3];
		float atx = a[4];
		float aty = a[5];
		float det = aa * ad - ab * ac;
		if (det == 0) {
			return null;
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

	/// <summary>Alias for {@link mat2d.multiply} @function</summary>
	public static float[] Mul(float[] output, float[] a, float[] b)
	{
		return Mat2d.Multiply(output, a, b);
	}

	/// <summary>Multiplies two mat2d's
	/// Returns output</summary>
	/// <param name="output">the receiving matrix</param>
	/// <param name="a">the first operand</param>
	/// <param name="b">the second operand</param>
	public static float[] Multiply(float[] output, float[] a, float[] b)
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

	/// <summary>Rotates a mat2d by the given angle
	/// Returns output</summary>
	/// <param name="output">the receiving matrix</param>
	/// <param name="a">the matrix to rotate</param>
	/// <param name="rad">the angle to rotate the matrix by</param>
	public static float[] Rotate(float[] output, float[] a, float rad)
	{
		float aa = a[0];
		float ab = a[1];
		float ac = a[2];
		float ad = a[3];
		float atx = a[4];
		float aty = a[5];
		float st = Platform.Sin(rad);
		float ct = Platform.Cos(rad);
		output[0] = aa * ct + ab * st;
		output[1] = -aa * st + ab * ct;
		output[2] = ac * ct + ad * st;
		output[3] = -ac * st + ct * ad;
		output[4] = ct * atx + st * aty;
		output[5] = ct * aty - st * atx;
		return output;
	}

	/// <summary>Scales the mat2d by the dimensions in the given vec2
	/// Returns output</summary>
	/// <param name="output">the receiving matrix</param>
	/// <param name="a">the matrix to translate</param>
	/// <param name="v">the vec2 to scale the matrix by</param>
	public static float[] Scale(float[] output, float[] a, float[] v)
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

	/// <summary>Translates the mat2d by the dimensions in the given vec2
	/// Returns output</summary>
	/// <param name="output">the receiving matrix</param>
	/// <param name="a">the matrix to translate</param>
	/// <param name="v">the vec2 to translate the matrix by</param>
	public static float[] Translate(float[] output, float[] a, float[] v)
	{
		output[0] = a[0];
		output[1] = a[1];
		output[2] = a[2];
		output[3] = a[3];
		output[4] = a[4] + v[0];
		output[5] = a[5] + v[1];
		return output;
	}

	/// <summary>**</summary>
	void f()
	{
	}
}

public class Mat3
{

	/// <summary>**</summary>
	public static float[] Adjoint(float[] output, float[] a)
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

	/// <summary>**</summary>
	public static float[] CloneIt(float[] a)
	{
		float[] output = new float[9];
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

	/// <summary>**</summary>
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
		return output;
	}

	/// <summary>**</summary>
	public static float[] Create()
	{
		float[] output = new float[9];
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

	/// <summary>**</summary>
	public static float Determinant(float[] a)
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

	/// <summary>**</summary>
	public static float[] FromMat2d(float[] output, float[] a)
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

	/// <summary>**</summary>
	public static float[] FromMat4(float[] output, float[] a)
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

	/// <summary>**</summary>
	public static float[] FromQuat(float[] output, float[] q)
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

	/// <summary>**</summary>
	public static float[] Identity_(float[] output)
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

	/// <summary>**</summary>
	public static float[] Invert(float[] output, float[] a)
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
			return null;
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

	/// <summary>**</summary>
	public static float[] Mul(float[] output, float[] a, float[] b)
	{
		return Mat3.Multiply(output, a, b);
	}

	/// <summary>**</summary>
	public static float[] Multiply(float[] output, float[] a, float[] b)
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

	/// <summary>**</summary>
	public static float[] NormalFromMat4(float[] output, float[] a)
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

	/// <summary>**</summary>
	public static float[] Rotate(float[] output, float[] a, float rad)
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
		float s = Platform.Sin(rad);
		float c = Platform.Cos(rad);
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

	/// <summary>**</summary>
	public static float[] Scale(float[] output, float[] a, float[] v)
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

	/// <summary>**</summary>
	public static float[] Translate(float[] output, float[] a, float[] v)
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

	/// <summary>**</summary>
	public static float[] Transpose(float[] output, float[] a)
	{
		if (output == a) {
			float a01 = a[1];
			float a02 = a[2];
			float a12 = a[5];
			output[1] = a[3];
			output[2] = a[6];
			output[3] = a01;
			output[5] = a[7];
			output[6] = a02;
			output[7] = a12;
		}
		else {
			output[0] = a[0];
			output[1] = a[3];
			output[2] = a[6];
			output[3] = a[1];
			output[4] = a[4];
			output[5] = a[7];
			output[6] = a[2];
			output[7] = a[5];
			output[8] = a[8];
		}
		return output;
	}

	/// <summary>**</summary>
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
	public static float[] CloneIt(float[] a)
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
	/// @returns {Number} determinant of a</summary>
	/// <param name="a">@param {mat4} a the source matrix</param>
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

	/// <summary>Calculates a 4x4 matrix from the given quaternion
	/// @returns {mat4} out</summary>
	/// <param name="output">{mat4} out mat4 receiving operation result</param>
	/// <param name="q">{quat} q Quaternion to create matrix from</param>
	public static float[] FromQuat(float[] output, float[] q)
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

	/// <summary>Creates a matrix from a quaternion rotation and vector translation
	/// This is equivalent to (but much faster than):
	/// mat4.identity(dest);
	/// mat4.translate(dest, vec);
	/// var quatMat = mat4.create();
	/// quat4.toMat4(quat, quatMat);
	/// mat4.multiply(dest, quatMat);
	/// @returns {mat4} out</summary>
	/// <param name="output">{mat4} out mat4 receiving operation result</param>
	/// <param name="q">{quat4} q Rotation quaternion</param>
	/// <param name="v">{vec3} v Translation vector</param>
	public static float[] FromRotationTranslation(float[] output, float[] q, float[] v)
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

	/// <summary>Generates a frustum matrix with the given bounds
	/// @returns {mat4} out</summary>
	/// <param name="output">{mat4} out mat4 frustum matrix will be written into</param>
	/// <param name="left">{Number} left Left bound of the frustum</param>
	/// <param name="right">{Number} right Right bound of the frustum</param>
	/// <param name="bottom">{Number} bottom Bottom bound of the frustum</param>
	/// <param name="top">{Number} top Top bound of the frustum</param>
	/// <param name="near">{Number} near Near bound of the frustum</param>
	/// <param name="far">{Number} far Far bound of the frustum</param>
	public static float[] Frustum(float[] output, float left, float right, float bottom, float top, float near, float far)
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

	/// <summary>Set a mat4 to the identity matrix
	/// Returns {mat4} out</summary>
	/// <param name="output">{mat4} out the receiving matrix</param>
	public static float[] Identity_(float[] output)
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

	/// <summary>Inverts a mat4
	/// @returns {mat4} out</summary>
	/// <param name="output">{mat4} out the receiving matrix</param>
	/// <param name="a">{mat4} a the source matrix</param>
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

	/// <summary>Generates a look-at matrix with the given eye position, focal point, and up axis
	/// @returns {mat4} out</summary>
	/// <param name="output">{mat4} out mat4 frustum matrix will be written into</param>
	/// <param name="eye">{vec3} eye Position of the viewer</param>
	/// <param name="center">{vec3} center Point the viewer is looking at</param>
	/// <param name="up">{vec3} up vec3 pointing up</param>
	public static float[] LookAt(float[] output, float[] eye, float[] center, float[] up)
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
		if (GlMatrixMath.Abs(eyex - centerx) < GlMatrixMath.GLMAT_EPSILON() && GlMatrixMath.Abs(eyey - centery) < GlMatrixMath.GLMAT_EPSILON() && GlMatrixMath.Abs(eyez - centerz) < GlMatrixMath.GLMAT_EPSILON()) {
			return Mat4.Identity_(output);
		}
		z0 = eyex - centerx;
		z1 = eyey - centery;
		z2 = eyez - centerz;
		len = 1 / Platform.Sqrt(z0 * z0 + z1 * z1 + z2 * z2);
		z0 *= len;
		z1 *= len;
		z2 *= len;
		x0 = upy * z2 - upz * z1;
		x1 = upz * z0 - upx * z2;
		x2 = upx * z1 - upy * z0;
		len = Platform.Sqrt(x0 * x0 + x1 * x1 + x2 * x2);
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
		len = Platform.Sqrt(y0 * y0 + y1 * y1 + y2 * y2);
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

	/// <summary>Alias for {@link mat4.multiply}</summary>
	public static float[] Mul(float[] output, float[] a, float[] b)
	{
		return Mat4.Multiply(output, a, b);
	}

	/// <summary>Multiplies two mat4's
	/// @returns {mat4} out</summary>
	/// <param name="output">@param {mat4} out the receiving matrix</param>
	/// <param name="a">@param {mat4} a the first operand</param>
	/// <param name="b">@param {mat4} b the second operand</param>
	public static float[] Multiply(float[] output, float[] a, float[] b)
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

	/// <summary>Generates a orthogonal projection matrix with the given bounds
	/// @returns {mat4} out</summary>
	/// <param name="output">{mat4} out mat4 frustum matrix will be written into</param>
	/// <param name="left">{number} left Left bound of the frustum</param>
	/// <param name="right">{number} right Right bound of the frustum</param>
	/// <param name="bottom">{number} bottom Bottom bound of the frustum</param>
	/// <param name="top">{number} top Top bound of the frustum</param>
	/// <param name="near">{number} near Near bound of the frustum</param>
	/// <param name="far">{number} far Far bound of the frustum</param>
	public static float[] Ortho(float[] output, float left, float right, float bottom, float top, float near, float far)
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

	/// <summary>Generates a perspective projection matrix with the given bounds
	/// @returns {mat4} out</summary>
	/// <param name="output">{mat4} out mat4 frustum matrix will be written into</param>
	/// <param name="fovy">{number} fovy Vertical field of view in radians</param>
	/// <param name="aspect">{number} aspect Aspect ratio. typically viewport width/height</param>
	/// <param name="near">{number} near Near bound of the frustum</param>
	/// <param name="far">{number} far Far bound of the frustum</param>
	public static float[] Perspective(float[] output, float fovy, float aspect, float near, float far)
	{
		float one = 1;
		float f = one / Platform.Tan(fovy / 2);
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

	/// <summary>Rotates a mat4 by the given angle
	/// @returns {mat4} out</summary>
	/// <param name="output">{mat4} out the receiving matrix</param>
	/// <param name="a">{mat4} a the matrix to rotate</param>
	/// <param name="rad">{Number} rad the angle to rotate the matrix by</param>
	/// <param name="axis">{vec3} axis the axis to rotate around</param>
	public static float[] Rotate(float[] output, float[] a, float rad, float[] axis)
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
		if (GlMatrixMath.Abs(len) < GlMatrixMath.GLMAT_EPSILON()) {
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
		if (a != output) {
			output[12] = a[12];
			output[13] = a[13];
			output[14] = a[14];
			output[15] = a[15];
		}
		return output;
	}

	/// <summary>Rotates a matrix by the given angle around the X axis
	/// @returns {mat4} out</summary>
	/// <param name="output">{mat4} out the receiving matrix</param>
	/// <param name="a">{mat4} a the matrix to rotate</param>
	/// <param name="rad">{Number} rad the angle to rotate the matrix by</param>
	public static float[] RotateX(float[] output, float[] a, float rad)
	{
		float s = Platform.Sin(rad);
		float c = Platform.Cos(rad);
		float a10 = a[4];
		float a11 = a[5];
		float a12 = a[6];
		float a13 = a[7];
		float a20 = a[8];
		float a21 = a[9];
		float a22 = a[10];
		float a23 = a[11];
		if (a != output) {
			output[0] = a[0];
			output[1] = a[1];
			output[2] = a[2];
			output[3] = a[3];
			output[12] = a[12];
			output[13] = a[13];
			output[14] = a[14];
			output[15] = a[15];
		}
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

	/// <summary>Rotates a matrix by the given angle around the Y axis
	/// @returns {mat4} out</summary>
	/// <param name="output">{mat4} out the receiving matrix</param>
	/// <param name="a">{mat4} a the matrix to rotate</param>
	/// <param name="rad">{Number} rad the angle to rotate the matrix by</param>
	public static float[] RotateY(float[] output, float[] a, float rad)
	{
		float s = Platform.Sin(rad);
		float c = Platform.Cos(rad);
		float a00 = a[0];
		float a01 = a[1];
		float a02 = a[2];
		float a03 = a[3];
		float a20 = a[8];
		float a21 = a[9];
		float a22 = a[10];
		float a23 = a[11];
		if (a != output) {
			output[4] = a[4];
			output[5] = a[5];
			output[6] = a[6];
			output[7] = a[7];
			output[12] = a[12];
			output[13] = a[13];
			output[14] = a[14];
			output[15] = a[15];
		}
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

	/// <summary>Rotates a matrix by the given angle around the Z axis
	/// @returns {mat4} out</summary>
	/// <param name="output">{mat4} out the receiving matrix</param>
	/// <param name="a">{mat4} a the matrix to rotate</param>
	/// <param name="rad">{Number} rad the angle to rotate the matrix by</param>
	public static float[] RotateZ(float[] output, float[] a, float rad)
	{
		float s = Platform.Sin(rad);
		float c = Platform.Cos(rad);
		float a00 = a[0];
		float a01 = a[1];
		float a02 = a[2];
		float a03 = a[3];
		float a10 = a[4];
		float a11 = a[5];
		float a12 = a[6];
		float a13 = a[7];
		if (a != output) {
			output[8] = a[8];
			output[9] = a[9];
			output[10] = a[10];
			output[11] = a[11];
			output[12] = a[12];
			output[13] = a[13];
			output[14] = a[14];
			output[15] = a[15];
		}
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

	/// <summary>Scales the mat4 by the dimensions in the given vec3
	/// @returns {mat4} out</summary>
	/// <param name="output">{mat4} out the receiving matrix</param>
	/// <param name="a">{mat4} a the matrix to scale</param>
	/// <param name="v">{vec3} v the vec3 to scale the matrix by</param>
	public static float[] Scale(float[] output, float[] a, float[] v)
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

	/// <summary>Translate a mat4 by the given vector
	/// @returns {mat4} out</summary>
	/// <param name="output">{mat4} out the receiving matrix</param>
	/// <param name="a">{mat4} a the matrix to translate</param>
	/// <param name="v">{vec3} v vector to translate by</param>
	public static float[] Translate(float[] output, float[] a, float[] v)
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
		if (a == output) {
			output[12] = a[0] * x + a[4] * y + a[8] * z + a[12];
			output[13] = a[1] * x + a[5] * y + a[9] * z + a[13];
			output[14] = a[2] * x + a[6] * y + a[10] * z + a[14];
			output[15] = a[3] * x + a[7] * y + a[11] * z + a[15];
		}
		else {
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
		}
		return output;
	}

	/// <summary>Transpose the values of a mat4
	/// @returns {mat4} out</summary>
	/// <param name="output">@param {mat4} out the receiving matrix</param>
	/// <param name="a">@param {mat4} a the source matrix</param>
	public static float[] Transpose(float[] output, float[] a)
	{
		if (output == a) {
			float a01 = a[1];
			float a02 = a[2];
			float a03 = a[3];
			float a12 = a[6];
			float a13 = a[7];
			float a23 = a[11];
			output[1] = a[4];
			output[2] = a[8];
			output[3] = a[12];
			output[4] = a01;
			output[6] = a[9];
			output[7] = a[13];
			output[8] = a02;
			output[9] = a12;
			output[11] = a[14];
			output[12] = a03;
			output[13] = a13;
			output[14] = a23;
		}
		else {
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
		}
		return output;
	}

	/// <summary>**</summary>
	void f()
	{
	}
}

public class Platform
{

	public static float Acos(float a)
	{
		
            return (float)System.Math.Acos(a);
        return 0;
	}

	public static float Cos(float a)
	{
		
            return (float)System.Math.Cos(a);
        return 0;
	}

	public static float Sin(float a)
	{
		
            return (float)System.Math.Sin(a);
        return 0;
	}

	public static float Sqrt(float a)
	{
		
            return (float)System.Math.Sqrt(a);
        return 0;
	}

	public static float Tan(float a)
	{
		
            return (float)System.Math.Tan(a);
        return 0;
	}

	public static void WriteInt(int a)
	{
		
            System.Console.Write(a);
        }

	public static void WriteString(string a)
	{
		
            System.Console.Write(a);
        }
}

public class Quat
{

	/// <summary>**</summary>
	public static float[] Add(float[] output, float[] a, float[] b)
	{
		return Vec4.Add(output, a, b);
	}

	/// <summary>**</summary>
	public static float[] CalculateW(float[] output, float[] a)
	{
		float x = a[0];
		float y = a[1];
		float z = a[2];
		output[0] = x;
		output[1] = y;
		output[2] = z;
		float one = 1;
		output[3] = -Platform.Sqrt(GlMatrixMath.Abs(one - x * x - y * y - z * z));
		return output;
	}

	/// <summary>**</summary>
	public static float[] CloneIt(float[] a)
	{
		return Vec4.CloneIt(a);
	}

	/// <summary>**</summary>
	public float[] Conjugate(float[] output, float[] a)
	{
		output[0] = -a[0];
		output[1] = -a[1];
		output[2] = -a[2];
		output[3] = a[3];
		return output;
	}

	/// <summary>**</summary>
	public static float[] Copy(float[] output, float[] a)
	{
		return Vec4.Copy(output, a);
	}

	/// <summary>**</summary>
	public static float[] Create()
	{
		float[] output = new float[4];
		output[0] = 0;
		output[1] = 0;
		output[2] = 0;
		output[3] = 1;
		return output;
	}

	/// <summary>**</summary>
	public static float Dot(float[] a, float[] b)
	{
		return Vec4.Dot(a, b);
	}

	/// <summary>**</summary>
	public static float[] FromMat3(float[] output, float[] m)
	{
		float fTrace = m[0] + m[4] + m[8];
		float fRoot;
		float zero = 0;
		float one = 1;
		float half = one / 2;
		if (fTrace > zero) {
			fRoot = Platform.Sqrt(fTrace + one);
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
			fRoot = Platform.Sqrt(m[i * 3 + i] - m[j * 3 + j] - m[k * 3 + k] + one);
			output[i] = half * fRoot;
			fRoot = half / fRoot;
			output[3] = (m[k * 3 + j] - m[j * 3 + k]) * fRoot;
			output[j] = (m[j * 3 + i] + m[i * 3 + j]) * fRoot;
			output[k] = (m[k * 3 + i] + m[i * 3 + k]) * fRoot;
		}
		return output;
	}

	/// <summary>**</summary>
	public static float[] FromValues(float x, float y, float z, float w)
	{
		return Vec4.FromValues(x, y, z, w);
	}

	/// <summary>**</summary>
	public static float[] Identity_(float[] output)
	{
		output[0] = 0;
		output[1] = 0;
		output[2] = 0;
		output[3] = 1;
		return output;
	}

	/// <summary>**</summary>
	public float[] Invert(float[] output, float[] a)
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

	/// <summary>**</summary>
	public static float Len(float[] a)
	{
		return Quat.Length_(a);
	}

	/// <summary>**</summary>
	public static float Length_(float[] a)
	{
		return Vec4.Length_(a);
	}

	/// <summary>**</summary>
	public static float[] Lerp(float[] output, float[] a, float[] b, float t)
	{
		return Vec4.Lerp(output, a, b, t);
	}

	/// <summary>**</summary>
	public static float[] Mul(float[] output, float[] a, float[] b)
	{
		return Quat.Multiply(output, a, b);
	}

	/// <summary>**</summary>
	public static float[] Multiply(float[] output, float[] a, float[] b)
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

	/// <summary>**</summary>
	public static float[] Normalize(float[] output, float[] a)
	{
		return Vec4.Normalize(output, a);
	}

	/// <summary>**</summary>
	public static float[] RotateX(float[] output, float[] a, float rad)
	{
		rad /= 2;
		float ax = a[0];
		float ay = a[1];
		float az = a[2];
		float aw = a[3];
		float bx = Platform.Sin(rad);
		float bw = Platform.Cos(rad);
		output[0] = ax * bw + aw * bx;
		output[1] = ay * bw + az * bx;
		output[2] = az * bw - ay * bx;
		output[3] = aw * bw - ax * bx;
		return output;
	}

	/// <summary>**</summary>
	public static float[] RotateY(float[] output, float[] a, float rad)
	{
		rad /= 2;
		float ax = a[0];
		float ay = a[1];
		float az = a[2];
		float aw = a[3];
		float by = Platform.Sin(rad);
		float bw = Platform.Cos(rad);
		output[0] = ax * bw - az * by;
		output[1] = ay * bw + aw * by;
		output[2] = az * bw + ax * by;
		output[3] = aw * bw - ay * by;
		return output;
	}

	/// <summary>**</summary>
	public static float[] RotateZ(float[] output, float[] a, float rad)
	{
		rad /= 2;
		float ax = a[0];
		float ay = a[1];
		float az = a[2];
		float aw = a[3];
		float bz = Platform.Sin(rad);
		float bw = Platform.Cos(rad);
		output[0] = ax * bw + ay * bz;
		output[1] = ay * bw - ax * bz;
		output[2] = az * bw + aw * bz;
		output[3] = aw * bw - az * bz;
		return output;
	}

	/// <summary>**</summary>
	public static float[] RotationTo(float[] output, float[] a, float[] b)
	{
		float[] tmpvec3 = Vec3.Create();
		float[] xUnitVec3 = Vec3.FromValues(1, 0, 0);
		float[] yUnitVec3 = Vec3.FromValues(0, 1, 0);
		float dot = Vec3.Dot(a, b);
		float nines = 999999;
		nines /= 1000000;
		float epsilon = 1;
		epsilon /= 1000000;
		if (dot < -nines) {
			Vec3.Cross(tmpvec3, xUnitVec3, a);
			if (Vec3.Length_(tmpvec3) < epsilon)
				Vec3.Cross(tmpvec3, yUnitVec3, a);
			Vec3.Normalize(tmpvec3, tmpvec3);
			Quat.SetAxisAngle(output, tmpvec3, GlMatrixMath.PI());
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
			Vec3.Cross(tmpvec3, a, b);
			output[0] = tmpvec3[0];
			output[1] = tmpvec3[1];
			output[2] = tmpvec3[2];
			output[3] = 1 + dot;
			return Quat.Normalize(output, output);
		}
	}

	/// <summary>**</summary>
	public static float[] Scale(float[] output, float[] a, float b)
	{
		return Vec4.Scale(output, a, b);
	}

	/// <summary>**</summary>
	public static float[] Set(float[] output, float x, float y, float z, float w)
	{
		return Vec4.Set(output, x, y, z, w);
	}

	/// <summary>**</summary>
	public static float[] SetAxes(float[] output, float[] view, float[] right, float[] up)
	{
		float[] matr = Mat3.Create();
		matr[0] = right[0];
		matr[3] = right[1];
		matr[6] = right[2];
		matr[1] = up[0];
		matr[4] = up[1];
		matr[7] = up[2];
		matr[2] = view[0];
		matr[5] = view[1];
		matr[8] = view[2];
		return Quat.Normalize(output, Quat.FromMat3(output, matr));
	}

	/// <summary>**</summary>
	public static float[] SetAxisAngle(float[] output, float[] axis, float rad)
	{
		rad = rad / 2;
		float s = Platform.Sin(rad);
		output[0] = s * axis[0];
		output[1] = s * axis[1];
		output[2] = s * axis[2];
		output[3] = Platform.Cos(rad);
		return output;
	}

	/// <summary>**</summary>
	public static float[] Slerp(float[] output, float[] a, float[] b, float t)
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
			omega = Platform.Acos(cosom);
			sinom = Platform.Sin(omega);
			scale0 = Platform.Sin((one - t) * omega) / sinom;
			scale1 = Platform.Sin(t * omega) / sinom;
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

	/// <summary>**</summary>
	public static float SqrLen(float[] a)
	{
		return Quat.SquaredLength(a);
	}

	/// <summary>**</summary>
	public static float SquaredLength(float[] a)
	{
		return Vec4.SquaredLength(a);
	}

	/// <summary>**</summary>
	void f()
	{
	}
}

public class TestMat4
{

	void Adjoint()
	{
		this.AdjointWithASeparateOutputMatrix();
		this.AdjointWhenMatAIsTheOutputMatrix();
	}

	void AdjointWhenMatAIsTheOutputMatrix()
	{
	}

	void AdjointWithASeparateOutputMatrix()
	{
	}

	float[] Arr16(int p, int p_2, int p_3, int p_4, int p_5, int p_6, int p_7, int p_8, int p_9, int p_10, int p_11, int p_12, int p_13, int p_14, int p_15, int p_16)
	{
		float[] arr = this.citoassert.Arr16(p, p_2, p_3, p_4, p_5, p_6, p_7, p_8, p_9, p_10, p_11, p_12, p_13, p_14, p_15, p_16);
		arr[0] = arr[0];
		return arr;
	}

	float[] Arr3(float p, float p_2, float p_3)
	{
		float[] arr = this.citoassert.Arr3(p, p_2, p_3);
		arr[0] = arr[0];
		return arr;
	}

	float[] Arr9(int p, int p_2, int p_3, int p_4, int p_5, int p_6, int p_7, int p_8, int p_9)
	{
		return this.citoassert.Arr9(p, p_2, p_3, p_4, p_5, p_6, p_7, p_8, p_9);
	}

	void AssertArrayEqual(float[] actual, float[] expected, int length, string msg)
	{
		this.citoassert.AssertArrayEqual(actual, expected, length, msg);
	}

	void AssertCloseTo(float actual, float expected, string msg)
	{
		this.citoassert.AssertCloseTo(actual, expected, msg);
	}

	void AssertEqual(float actual, float expected, string msg)
	{
		this.citoassert.AssertEqual(actual, expected, msg);
	}

	void CloneIt()
	{
		float[] result = Mat4.CloneIt(this.matA);
		this.AssertArrayEqual(result, this.matA, 16, "Clone should return a 16 element array initialized to the values in matA");
	}

	void Copy()
	{
		float[] result = Mat4.Copy(this.output, this.matA);
		this.AssertArrayEqual(this.output, this.matA, 16, "Copy should place values into out");
		this.AssertArrayEqual(result, this.output, 16, "Copy should return out");
	}

	void Create()
	{
		float[] result = Mat4.Create();
		this.AssertArrayEqual(result, this.identity, 16, "Create should return a 16 element array initialized to a 4x4 identity matrix");
	}

	void Determinant()
	{
	}

	void Frustum()
	{
		float[] result = Mat4.Frustum(this.output, -1, 1, -1, 1, -1, 1);
		this.AssertArrayEqual(result, this.Arr16(-1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, -1, 0, 0, 1, 0), 16, "Frustum should place values into out");
		this.AssertArrayEqual(result, this.output, 16, "Frustum should return out");
	}

	void Identity_()
	{
		float[] result = Mat4.Identity_(this.output);
		this.AssertArrayEqual(this.output, this.identity, 16, "Copy should place values into out");
		this.AssertArrayEqual(result, this.output, 16, "Copy should return out");
	}

	void Invert()
	{
		this.InvertWithASeparateOutputMatrix();
		this.InvertWhenMatAIsTheOutputMatrix();
	}

	void InvertWhenMatAIsTheOutputMatrix()
	{
	}

	void InvertWithASeparateOutputMatrix()
	{
	}

	void LookAt()
	{
		this.eye = this.Arr3(0, 0, 1);
		this.center = this.Arr3(0, 0, -1);
		this.up = this.Arr3(0, 1, 0);
		this.LookAtLookingDown();
		this.LookAt74();
		this.LookAt3();
	}

	void LookAt3()
	{
	}

	void LookAt74()
	{
		float six = 6;
		Mat4.LookAt(this.output, this.Arr3(0, 2, 0), this.Arr3(0, six / 10, 0), this.Arr3(0, 0, -1));
		float[] result = Vec3.TransformMat4(Vec3.Create(), this.Arr3(0, 2, -1), this.output);
		this.AssertArrayEqual(result, this.Arr3(0, 1, 0), 3, "LookAt74 should transform a point 'above' into local +Y");
		result = Vec3.TransformMat4(Vec3.Create(), this.Arr3(1, 2, 0), this.output);
		this.AssertArrayEqual(result, this.Arr3(1, 0, 0), 3, "LookAt74 should transform a point 'right of' into local +X");
		result = Vec3.TransformMat4(Vec3.Create(), this.Arr3(0, 1, 0), this.output);
		this.AssertArrayEqual(result, this.Arr3(0, 0, -1), 3, "LookAt74 should transform a point 'in front of' into local -Z");
	}

	void LookAtLookingDown()
	{
		this.view = this.Arr3(0, -1, 0);
		this.up = this.Arr3(0, 0, -1);
		this.right = this.Arr3(1, 0, 0);
		float[] result = Mat4.LookAt(this.output, this.Arr3(0, 0, 0), this.view, this.up);
		result = Vec3.TransformMat4(Vec3.Create(), this.view, this.output);
		this.AssertArrayEqual(result, this.Arr3(0, 0, -1), 3, "LookAtLookingDown should transform view into local -Z");
		result = Vec3.TransformMat4(Vec3.Create(), this.up, this.output);
		this.AssertArrayEqual(result, this.Arr3(0, 1, 0), 3, "LookAtLookingDownshould transform up into local +Y");
		result = Vec3.TransformMat4(Vec3.Create(), this.right, this.output);
		this.AssertArrayEqual(result, this.Arr3(1, 0, 0), 3, "LookAtLookingDownshould transform right into local +X");
		this.AssertArrayEqual(result, this.output, 3, "LookAtLookingDown should return out");
	}

	void Multiply()
	{
		this.MultiplyWithASeparateOutputMatrix();
		this.MultiplyWhenMatAIsTheOutputMatrix();
		this.MultiplyWhenMatBIsTheOutputMatrix();
	}

	void MultiplyWhenMatAIsTheOutputMatrix()
	{
	}

	void MultiplyWhenMatBIsTheOutputMatrix()
	{
	}

	void MultiplyWithASeparateOutputMatrix()
	{
	}

	void Ortho()
	{
		float[] result = Mat4.Ortho(this.output, -1, 1, -1, 1, -1, 1);
		this.AssertArrayEqual(result, this.Arr16(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 1), 16, "Ortho should place values into out");
		this.AssertArrayEqual(result, this.output, 16, "Ortho should return out");
	}

	void Perspective()
	{
		this.Perspective1();
		this.PerspectiveWithNonzeroNear45degFovyAndRealisticAspectRatio();
	}

	void Perspective1()
	{
	}

	void PerspectiveWithNonzeroNear45degFovyAndRealisticAspectRatio()
	{
	}

	void ResetTests()
	{
		this.matA = this.Arr16(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 2, 3, 1);
		this.matB = this.Arr16(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 4, 5, 6, 1);
		this.output = this.Arr16(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
		this.identity = this.Arr16(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
	}

	void Rotate()
	{
		this.RotateWithASeparateOutputMatrix();
		this.RotateWhenMatAIsTheOutputMatrix();
	}

	void RotateWhenMatAIsTheOutputMatrix()
	{
	}

	void RotateWithASeparateOutputMatrix()
	{
	}

	void RotateX()
	{
		this.RotateXWithASeparateOutputMatrix();
		this.RotateXWhenMatAIsTheOutputMatrix();
	}

	void RotateXWhenMatAIsTheOutputMatrix()
	{
	}

	void RotateXWithASeparateOutputMatrix()
	{
	}

	void RotateY()
	{
		this.RotateYWithASeparateOutputMatrix();
		this.RotateYWhenMatAIsTheOutputMatrix();
	}

	void RotateYWhenMatAIsTheOutputMatrix()
	{
	}

	void RotateYWithASeparateOutputMatrix()
	{
	}

	void RotateZ()
	{
		this.RotateZWithASeparateOutputMatrix();
		this.RotateZWhenMatAIsTheOutputMatrix();
	}

	void RotateZWhenMatAIsTheOutputMatrix()
	{
	}

	void RotateZWithASeparateOutputMatrix()
	{
	}

	void Scale()
	{
		this.ScaleWithASeparateOutputMatrix();
		this.ScaleWhenMatAIsTheOutputMatrix();
	}

	void ScaleWhenMatAIsTheOutputMatrix()
	{
	}

	void ScaleWithASeparateOutputMatrix()
	{
	}

	void Str()
	{
	}

	public void Test()
	{
		this.citoassert = new CitoAssert();
		this.ResetTests();
		this.Create();
		this.ResetTests();
		this.CloneIt();
		this.ResetTests();
		this.Copy();
		this.ResetTests();
		this.Identity_();
		this.ResetTests();
		this.Transpose();
		this.ResetTests();
		this.Invert();
		this.ResetTests();
		this.Adjoint();
		this.ResetTests();
		this.Determinant();
		this.ResetTests();
		this.Multiply();
		this.ResetTests();
		this.Translate();
		this.ResetTests();
		this.Scale();
		this.ResetTests();
		this.Rotate();
		this.ResetTests();
		this.RotateX();
		this.ResetTests();
		this.RotateY();
		this.ResetTests();
		this.RotateZ();
		this.ResetTests();
		this.Frustum();
		this.ResetTests();
		this.Perspective();
		this.ResetTests();
		this.Ortho();
		this.ResetTests();
		this.LookAt();
		this.ResetTests();
		this.Str();
		this.ResetTests();
	}

	void Translate()
	{
		this.TranslateWithASeparateOutputMatrix();
		this.TranslateWhenMatAIsTheOutputMatrix();
	}

	void TranslateWhenMatAIsTheOutputMatrix()
	{
	}

	void TranslateWithASeparateOutputMatrix()
	{
	}

	void Transpose()
	{
		this.TransposeWithASeparateOutputMatrix();
		this.TransposeWhenMatAIsTheOutputMatrix();
	}

	void TransposeWhenMatAIsTheOutputMatrix()
	{
	}

	void TransposeWithASeparateOutputMatrix()
	{
	}
	float[] center;
	CitoAssert citoassert;
	float[] eye;
	float[] identity;
	float[] matA;
	float[] matB;
	float[] output;
	float[] right;
	float[] up;
	float[] view;
}

public class TestVec3
{

	void Add()
	{
		this.AddWithASeparateOutputVector();
		this.AddWhenVecAIsTheOutputVector();
		this.AddWhenVecBIsTheOutputVector();
	}

	void AddWhenVecAIsTheOutputVector()
	{
	}

	void AddWhenVecBIsTheOutputVector()
	{
	}

	void AddWithASeparateOutputVector()
	{
		float[] result = Vec3.Add(this.output, this.vecA, this.vecB);
		this.AssertArrayEqual(this.output, this.Arr3(5, 7, 9), 3, "Add should place values into out");
		this.AssertArrayEqual(result, this.output, 3, "Add should return out");
		this.AssertArrayEqual(this.vecA, this.Arr3(1, 2, 3), 3, "Add should not modify vecA");
		this.AssertArrayEqual(this.vecB, this.Arr3(4, 5, 6), 3, "Add should not modify vecB");
	}

	float[] Arr16(int p, int p_2, int p_3, int p_4, int p_5, int p_6, int p_7, int p_8, int p_9, int p_10, int p_11, int p_12, int p_13, int p_14, int p_15, int p_16)
	{
		return this.citoassert.Arr16(p, p_2, p_3, p_4, p_5, p_6, p_7, p_8, p_9, p_10, p_11, p_12, p_13, p_14, p_15, p_16);
	}

	float[] Arr3(float p, float p_2, float p_3)
	{
		return this.citoassert.Arr3(p, p_2, p_3);
	}

	float[] Arr9(int p, int p_2, int p_3, int p_4, int p_5, int p_6, int p_7, int p_8, int p_9)
	{
		return this.citoassert.Arr9(p, p_2, p_3, p_4, p_5, p_6, p_7, p_8, p_9);
	}

	void AssertArrayEqual(float[] actual, float[] expected, int length, string msg)
	{
		this.citoassert.AssertArrayEqual(actual, expected, length, msg);
	}

	void AssertCloseTo(float actual, float expected, string msg)
	{
		this.citoassert.AssertCloseTo(actual, expected, msg);
	}

	void AssertEqual(float actual, float expected, string msg)
	{
		this.citoassert.AssertEqual(actual, expected, msg);
	}

	void CloneIt()
	{
		float[] result = Vec3.CloneIt(this.vecA);
		this.AssertArrayEqual(result, this.vecA, 3, "Clone should return a 3 element array initialized to the values in vecA");
	}

	void Copy()
	{
		float[] result = Vec3.Copy(this.output, this.vecA);
		this.AssertArrayEqual(this.output, this.Arr3(1, 2, 3), 3, "Copy should place values into out");
		this.AssertArrayEqual(result, this.output, 3, "Copy should return output");
	}

	void Create()
	{
		float[] result = Vec3.Create();
		this.AssertArrayEqual(result, this.Arr3(0, 0, 0), 3, "Create should return a 3 element array initialized to 0s");
	}

	void Cross()
	{
		this.CrossWithASeparateOutputVector();
		this.CrossWhenVecAIsTheOutputVector();
		this.CrossWhenVecBIsTheOutputVector();
	}

	void CrossWhenVecAIsTheOutputVector()
	{
	}

	void CrossWhenVecBIsTheOutputVector()
	{
	}

	void CrossWithASeparateOutputVector()
	{
	}

	void Distance()
	{
		float result = Vec3.Distance(this.vecA, this.vecB);
		float r = 5196152;
		r /= 1000000;
		this.AssertCloseTo(result, r, "Distance should return the distance");
	}

	void Divide()
	{
		this.DivideWithASeparateOutputVector();
		this.DivideWhenVecAIsTheOutputVector();
		this.DivideWhenVecBIsTheOutputVector();
	}

	void DivideWhenVecAIsTheOutputVector()
	{
	}

	void DivideWhenVecBIsTheOutputVector()
	{
	}

	void DivideWithASeparateOutputVector()
	{
	}

	void Dot()
	{
		float result = Vec3.Dot(this.vecA, this.vecB);
		this.AssertEqual(result, 32, "Dot should return the dot product");
		this.AssertArrayEqual(this.vecA, this.Arr3(1, 2, 3), 3, "Dot should not modify vecA");
		this.AssertArrayEqual(this.vecB, this.Arr3(4, 5, 6), 3, "Dot should not modify vecB");
	}

	void ForEachDo()
	{
	}

	void FromValues()
	{
		float[] result = Vec3.FromValues(1, 2, 3);
		this.AssertArrayEqual(result, this.Arr3(1, 2, 3), 3, "FromValues should return a 3 element array initialized to the values passed");
	}

	void Length_()
	{
		float result = Vec3.Length_(this.vecA);
		float r = 3741657;
		r /= 1000000;
		this.AssertCloseTo(result, r, "Length should return the length");
	}

	void Lerp()
	{
		this.LerpWithASeparateOutputVector();
		this.LerpWhenVecAIsTheOutputVector();
		this.LerpWhenVecBIsTheOutputVector();
	}

	void LerpWhenVecAIsTheOutputVector()
	{
	}

	void LerpWhenVecBIsTheOutputVector()
	{
	}

	void LerpWithASeparateOutputVector()
	{
	}

	void Max()
	{
		this.MaxWithASeparateOutputVector();
		this.MaxWhenVecAIsTheOutputVector();
		this.MaxWhenVecBIsTheOutputVector();
	}

	void MaxWhenVecAIsTheOutputVector()
	{
	}

	void MaxWhenVecBIsTheOutputVector()
	{
	}

	void MaxWithASeparateOutputVector()
	{
	}

	void Min()
	{
		this.MinWithASeparateOutputVector();
		this.MinWhenVecAIsTheOutputVector();
		this.MinWhenVecBIsTheOutputVector();
	}

	void MinWhenVecAIsTheOutputVector()
	{
	}

	void MinWhenVecBIsTheOutputVector()
	{
	}

	void MinWithASeparateOutputVector()
	{
	}

	void Multiply()
	{
		this.MultiplyWithASeparateOutputVector();
		this.MultiplyWhenVecAIsTheOutputVector();
		this.MultiplyWhenVecBIsTheOutputVector();
	}

	void MultiplyWhenVecAIsTheOutputVector()
	{
	}

	void MultiplyWhenVecBIsTheOutputVector()
	{
	}

	void MultiplyWithASeparateOutputVector()
	{
	}

	void Negate()
	{
		this.NegateWithASeparateOutputVector();
		this.NegateWhenVecAIsTheOutputVector();
	}

	void NegateWhenVecAIsTheOutputVector()
	{
		float[] result = Vec3.Negate(this.vecA, this.vecA);
		this.AssertArrayEqual(this.vecA, this.Arr3(-1, -2, -3), 3, "NegateWhenVecAIsTheOutputVector should place values into vecA");
		this.AssertArrayEqual(result, this.vecA, 3, "NegateWhenVecAIsTheOutputVector should return vecA");
	}

	void NegateWithASeparateOutputVector()
	{
		float[] result = Vec3.Negate(this.output, this.vecA);
		this.AssertArrayEqual(this.output, this.Arr3(-1, -2, -3), 3, "NegateWithASeparateOutputVector should place values into out");
		this.AssertArrayEqual(result, this.output, 3, "NegateWithASeparateOutputVector should should return out");
		this.AssertArrayEqual(this.vecA, this.Arr3(1, 2, 3), 3, "NegateWithASeparateOutputVector should not modify vecA");
	}

	void Normalize()
	{
		this.NormalizeWithASeparateOutputVector();
		this.NormalizeWhenVecAIsTheOutputVector();
	}

	void NormalizeWhenVecAIsTheOutputVector()
	{
		float[] vecA1 = this.Arr3(5, 0, 0);
		float[] result = Vec3.Normalize(this.vecA, this.vecA);
		this.AssertArrayEqual(this.vecA, this.Arr3(1, 0, 0), 3, "NormalizeWhenVecAIsTheOutputVector should place values into vecA");
		this.AssertArrayEqual(result, this.vecA, 3, "NormalizeWhenVecAIsTheOutputVector should return vecA");
	}

	void NormalizeWithASeparateOutputVector()
	{
		this.vecA = this.Arr3(5, 0, 0);
		float[] result = Vec3.Normalize(this.output, this.vecA);
		this.AssertArrayEqual(this.output, this.Arr3(1, 0, 0), 3, "NormalizeWithASeparateOutputVector should place values into out");
		this.AssertArrayEqual(result, this.output, 3, "NormalizeWithASeparateOutputVector should return out");
		this.AssertArrayEqual(this.vecA, this.Arr3(5, 0, 0), 3, "NormalizeWithASeparateOutputVector should not modify vecA");
	}

	void ResetTests()
	{
		this.vecA = this.Arr3(1, 2, 3);
		this.vecB = this.Arr3(4, 5, 6);
		this.output = this.Arr3(0, 0, 0);
	}

	void Scale()
	{
		this.ScaleWithASeparateOutputVector();
		this.ScaleWhenVecAIsTheOutputVector();
	}

	void ScaleAndAdd()
	{
		this.ScaleAndAddWithASeparateOutputVector();
		this.ScaleAndAddWhenVecAIsTheOutputVector();
		this.ScaleAndAddWhenVecBIsTheOutputVector();
	}

	void ScaleAndAddWhenVecAIsTheOutputVector()
	{
	}

	void ScaleAndAddWhenVecBIsTheOutputVector()
	{
	}

	void ScaleAndAddWithASeparateOutputVector()
	{
	}

	void ScaleWhenVecAIsTheOutputVector()
	{
	}

	void ScaleWithASeparateOutputVector()
	{
	}

	void Set()
	{
		float[] result = Vec3.Set(this.output, 1, 2, 3);
		this.AssertArrayEqual(this.output, this.Arr3(1, 2, 3), 3, "Set should place values into output");
		this.AssertArrayEqual(result, this.output, 3, "Set should return output");
	}

	void SquaredDistance()
	{
		float result = Vec3.SquaredDistance(this.vecA, this.vecB);
		this.AssertEqual(result, 27, "SquaredDistance should return the squared distance");
	}

	void SquaredLength()
	{
		float result = Vec3.SquaredLength(this.vecA);
		this.AssertEqual(result, 14, "SquaredLength should return the squared length");
	}

	void Str()
	{
	}

	void Subtract()
	{
		this.SubtractShouldHaveAnAliasCalledSub();
		this.SubtractWithASeparateOutputVector();
		this.SubtractWhenVecAIsTheOutputVector();
		this.SubtractWhenVecBIsTheOutputVector();
	}

	void SubtractShouldHaveAnAliasCalledSub()
	{
	}

	void SubtractWhenVecAIsTheOutputVector()
	{
	}

	void SubtractWhenVecBIsTheOutputVector()
	{
	}

	void SubtractWithASeparateOutputVector()
	{
	}

	public void Test()
	{
		this.citoassert = new CitoAssert();
		this.ResetTests();
		this.TransformMat4();
		this.ResetTests();
		this.Create();
		this.ResetTests();
		this.CloneIt();
		this.ResetTests();
		this.FromValues();
		this.ResetTests();
		this.Copy();
		this.ResetTests();
		this.Set();
		this.ResetTests();
		this.Add();
		this.ResetTests();
		this.Subtract();
		this.ResetTests();
		this.Multiply();
		this.ResetTests();
		this.Divide();
		this.ResetTests();
		this.Min();
		this.ResetTests();
		this.Max();
		this.ResetTests();
		this.Scale();
		this.ResetTests();
		this.ScaleAndAdd();
		this.ResetTests();
		this.Distance();
		this.ResetTests();
		this.SquaredDistance();
		this.ResetTests();
		this.Length_();
		this.ResetTests();
		this.SquaredLength();
		this.ResetTests();
		this.Negate();
		this.ResetTests();
		this.Normalize();
		this.ResetTests();
		this.Dot();
		this.ResetTests();
		this.Cross();
		this.ResetTests();
		this.Lerp();
		this.ResetTests();
		this.ForEachDo();
		this.ResetTests();
		this.Str();
		this.ResetTests();
	}

	void TransformMat3With90DegAboutX()
	{
		float[] result = Vec3.TransformMat3(this.output, this.Arr3(0, 1, 0), this.Arr9(1, 0, 0, 0, 0, 1, 0, -1, 0));
		this.AssertArrayEqual(this.output, this.Arr3(0, 0, 1), 3, "TransformMat3With90DegAboutX should produce correct output");
	}

	void TransformMat3With90DegAboutY()
	{
		float[] result = Vec3.TransformMat3(this.output, this.Arr3(1, 0, 0), this.Arr9(0, 0, -1, 0, 1, 0, 1, 0, 0));
		this.AssertArrayEqual(this.output, this.Arr3(0, 0, -1), 3, "TransformMat3With90DegAboutU should produce correct output");
	}

	void TransformMat3With90DegAboutZ()
	{
		float[] result = Vec3.TransformMat3(this.output, this.Arr3(1, 0, 0), this.Arr9(0, 1, 0, -1, 0, 0, 0, 0, 1));
		this.AssertArrayEqual(this.output, this.Arr3(0, 1, 0), 3, "TransformMat3With90DegAboutZ should produce correct output");
	}

	void TransformMat3WithALookAtNormalMatrix()
	{
		float[] matr = Mat4.LookAt(Mat4.Create(), this.Arr3(5, 6, 7), this.Arr3(2, 6, 7), this.Arr3(0, 1, 0));
		float[] n = Mat3.Create();
		matr = Mat3.Transpose(n, Mat3.Invert(n, Mat3.FromMat4(n, matr)));
		float[] result = Vec3.TransformMat3(this.output, this.Arr3(1, 0, 0), matr);
		this.AssertArrayEqual(this.output, this.Arr3(0, 0, 1), 3, "TransformMat3WithALookAtNormalMatrix should rotate the input");
		this.AssertArrayEqual(result, this.output, 3, "TransformMat3WithALookAtNormalMatrix should return output");
	}

	void TransformMat3WithAnIdentity()
	{
		float[] matr = this.Arr9(1, 0, 0, 0, 1, 0, 0, 0, 1);
		float[] result = Vec3.TransformMat3(this.output, this.vecA, matr);
		this.AssertArrayEqual(this.output, this.Arr3(1, 2, 3), 3, "TransformMat3WithAnIdentity should produce the input");
		this.AssertArrayEqual(result, this.output, 3, "TransformMat3WithAnIdentity should return output");
	}

	void TransformMat4()
	{
		this.TransformMat4WithAnIdentity();
		this.TransformMat4WithALookAt();
		this.TransformMat3WithAnIdentity();
		this.TransformMat3With90DegAboutX();
		this.TransformMat3With90DegAboutY();
		this.TransformMat3With90DegAboutZ();
		this.TransformMat3WithALookAtNormalMatrix();
	}

	void TransformMat4WithALookAt()
	{
		float[] matr = Mat4.LookAt(Mat4.Create(), this.Arr3(5, 6, 7), this.Arr3(2, 6, 7), this.Arr3(0, 1, 0));
		float[] result = Vec3.TransformMat4(this.output, this.vecA, matr);
		this.AssertArrayEqual(this.output, this.Arr3(4, -4, -4), 3, "TransformMat4WithALookAt should rotate and translate the input");
		this.AssertArrayEqual(result, this.output, 3, "TransformMat4WithALookAt should return out");
	}

	void TransformMat4WithAnIdentity()
	{
		float[] matr = this.Arr16(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		float[] result = Vec3.TransformMat4(this.output, this.vecA, matr);
		this.AssertArrayEqual(this.output, this.Arr3(1, 2, 3), 3, "TransformMat4WithAnIdentity should produce the input");
		this.AssertArrayEqual(result, this.output, 3, "TransformMat4WithAnIdentity should return output");
	}
	CitoAssert citoassert;
	float[] output;
	float[] vecA;
	float[] vecB;
}

public class Tests
{

	public static void RunAll()
	{
		TestVec3 testvec3 = new TestVec3();
		testvec3.Test();
		TestMat4 testmat4 = new TestMat4();
		testmat4.Test();
	}
}

public class Vec2
{

	/// <summary>**</summary>
	public static float[] Add(float[] output, float[] a, float[] b)
	{
		output[0] = a[0] + b[0];
		output[1] = a[1] + b[1];
		return output;
	}

	/// <summary>**</summary>
	public static float[] CloneIt(float[] a)
	{
		float[] output = new float[2];
		output[0] = a[0];
		output[1] = a[1];
		return output;
	}

	/// <summary>**</summary>
	public static float[] Copy(float[] output, float[] a)
	{
		output[0] = a[0];
		output[1] = a[1];
		return output;
	}

	/// <summary>**</summary>
	public static float[] Create()
	{
		float[] output = new float[2];
		output[0] = 0;
		output[1] = 0;
		return output;
	}

	/// <summary>**</summary>
	public static float[] Cross(float[] output, float[] a, float[] b)
	{
		float z = a[0] * b[1] - a[1] * b[0];
		output[0] = output[1] = 0;
		output[2] = z;
		return output;
	}

	/// <summary>**</summary>
	public static float Dist(float[] a, float[] b)
	{
		return Vec2.Distance(a, b);
	}

	/// <summary>**</summary>
	public static float Distance(float[] a, float[] b)
	{
		float x = b[0] - a[0];
		float y = b[1] - a[1];
		return Platform.Sqrt(x * x + y * y);
	}

	/// <summary>**</summary>
	public static float[] Div(float[] output, float[] a, float[] b)
	{
		return Vec2.Divide(output, a, b);
	}

	/// <summary>**</summary>
	public static float[] Divide(float[] output, float[] a, float[] b)
	{
		output[0] = a[0] / b[0];
		output[1] = a[1] / b[1];
		return output;
	}

	/// <summary>**</summary>
	public static float Dot(float[] a, float[] b)
	{
		return a[0] * b[0] + a[1] * b[1];
	}

	/// <summary>**</summary>
	public static float[] FromValues(float x, float y)
	{
		float[] output = new float[2];
		output[0] = x;
		output[1] = y;
		return output;
	}

	/// <summary>**</summary>
	public static float Len(float[] a)
	{
		return Vec2.Length_(a);
	}

	/// <summary>**</summary>
	public static float Length_(float[] a)
	{
		float x = a[0];
		float y = a[1];
		return Platform.Sqrt(x * x + y * y);
	}

	/// <summary>**</summary>
	public static float[] Lerp(float[] output, float[] a, float[] b, float t)
	{
		float ax = a[0];
		float ay = a[1];
		output[0] = ax + t * (b[0] - ax);
		output[1] = ay + t * (b[1] - ay);
		return output;
	}

	/// <summary>**</summary>
	public static float[] Max(float[] output, float[] a, float[] b)
	{
		output[0] = GlMatrixMath.max(a[0], b[0]);
		output[1] = GlMatrixMath.max(a[1], b[1]);
		return output;
	}

	/// <summary>**</summary>
	public static float[] Min(float[] output, float[] a, float[] b)
	{
		output[0] = GlMatrixMath.min(a[0], b[0]);
		output[1] = GlMatrixMath.min(a[1], b[1]);
		return output;
	}

	/// <summary>**</summary>
	public static float[] Mul(float[] output, float[] a, float[] b)
	{
		return Vec2.Multiply(output, a, b);
	}

	/// <summary>**</summary>
	public static float[] Multiply(float[] output, float[] a, float[] b)
	{
		output[0] = a[0] * b[0];
		output[1] = a[1] * b[1];
		return output;
	}

	/// <summary>**</summary>
	public static float[] Negate(float[] output, float[] a)
	{
		output[0] = -a[0];
		output[1] = -a[1];
		return output;
	}

	/// <summary>**</summary>
	public static float[] Normalize(float[] output, float[] a)
	{
		float x = a[0];
		float y = a[1];
		float len = x * x + y * y;
		if (len > 0) {
			len = 1 / Platform.Sqrt(len);
			output[0] = a[0] * len;
			output[1] = a[1] * len;
		}
		return output;
	}

	/// <summary>**</summary>
	public static float[] Scale(float[] output, float[] a, float b)
	{
		output[0] = a[0] * b;
		output[1] = a[1] * b;
		return output;
	}

	/// <summary>**</summary>
	public static float[] ScaleAndAdd(float[] output, float[] a, float[] b, float scale)
	{
		output[0] = a[0] + b[0] * scale;
		output[1] = a[1] + b[1] * scale;
		return output;
	}

	/// <summary>**</summary>
	public static float[] Set(float[] output, float x, float y)
	{
		output[0] = x;
		output[1] = y;
		return output;
	}

	/// <summary>**</summary>
	public static float SqrDist(float[] a, float[] b)
	{
		return Vec2.SquaredDistance(a, b);
	}

	/// <summary>**</summary>
	public static float SqrLen(float[] a)
	{
		return Vec2.SquaredLength(a);
	}

	/// <summary>**</summary>
	public static float SquaredDistance(float[] a, float[] b)
	{
		float x = b[0] - a[0];
		float y = b[1] - a[1];
		return x * x + y * y;
	}

	/// <summary>**</summary>
	public static float SquaredLength(float[] a)
	{
		float x = a[0];
		float y = a[1];
		return x * x + y * y;
	}

	/// <summary>**</summary>
	public static float[] Sub(float[] output, float[] a, float[] b)
	{
		return Vec2.Subtract(output, a, b);
	}

	/// <summary>**</summary>
	public static float[] Subtract(float[] output, float[] a, float[] b)
	{
		output[0] = a[0] - b[0];
		output[1] = a[1] - b[1];
		return output;
	}

	/// <summary>**</summary>
	public static float[] TransformMat2(float[] output, float[] a, float[] m)
	{
		float x = a[0];
		float y = a[1];
		output[0] = m[0] * x + m[2] * y;
		output[1] = m[1] * x + m[3] * y;
		return output;
	}

	/// <summary>**</summary>
	public static float[] TransformMat2d(float[] output, float[] a, float[] m)
	{
		float x = a[0];
		float y = a[1];
		output[0] = m[0] * x + m[2] * y + m[4];
		output[1] = m[1] * x + m[3] * y + m[5];
		return output;
	}

	/// <summary>**</summary>
	public static float[] TransformMat3(float[] output, float[] a, float[] m)
	{
		float x = a[0];
		float y = a[1];
		output[0] = m[0] * x + m[3] * y + m[6];
		output[1] = m[1] * x + m[4] * y + m[7];
		return output;
	}

	/// <summary>**</summary>
	public static float[] TransformMat4(float[] output, float[] a, float[] m)
	{
		float x = a[0];
		float y = a[1];
		output[0] = m[0] * x + m[4] * y + m[12];
		output[1] = m[1] * x + m[5] * y + m[13];
		return output;
	}

	/// <summary>**
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
	public static float[] CloneIt(float[] a)
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
		return Vec3.Length_(a);
	}

	/// <summary>Calculates the length of a vec3
	/// @returns {Number} length of a</summary>
	/// <param name="a">/@param {vec3} a vector to calculate length of</param>
	public static float Length_(float[] a)
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
		output[0] = GlMatrixMath.max(a[0], b[0]);
		output[1] = GlMatrixMath.max(a[1], b[1]);
		output[2] = GlMatrixMath.max(a[2], b[2]);
		return output;
	}

	/// <summary>Returns the minimum of two vec3's
	/// @returns {vec3} out</summary>
	/// <param name="output">/@param {vec3} out the receiving vector</param>
	/// <param name="a">/@param {vec3} a the first operand</param>
	/// <param name="b">/@param {vec3} b the second operand</param>
	public static float[] Min(float[] output, float[] a, float[] b)
	{
		output[0] = GlMatrixMath.min(a[0], b[0]);
		output[1] = GlMatrixMath.min(a[1], b[1]);
		output[2] = GlMatrixMath.min(a[2], b[2]);
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
	public static float[] TransformMat4(float[] output, float[] a, float[] m)
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

	/// <summary>**</summary>
	public static float[] Add(float[] output, float[] a, float[] b)
	{
		output[0] = a[0] + b[0];
		output[1] = a[1] + b[1];
		output[2] = a[2] + b[2];
		output[3] = a[3] + b[3];
		return output;
	}

	/// <summary>**</summary>
	public static float[] CloneIt(float[] a)
	{
		float[] output = new float[4];
		output[0] = a[0];
		output[1] = a[1];
		output[2] = a[2];
		output[3] = a[3];
		return output;
	}

	/// <summary>**</summary>
	public static float[] Copy(float[] output, float[] a)
	{
		output[0] = a[0];
		output[1] = a[1];
		output[2] = a[2];
		output[3] = a[3];
		return output;
	}

	/// <summary>**</summary>
	public static float[] Create()
	{
		float[] output = new float[4];
		output[0] = 0;
		output[1] = 0;
		output[2] = 0;
		output[3] = 0;
		return output;
	}

	/// <summary>**</summary>
	public static float Dist(float[] a, float[] b)
	{
		return Vec4.Distance(a, b);
	}

	/// <summary>**</summary>
	public static float Distance(float[] a, float[] b)
	{
		float x = b[0] - a[0];
		float y = b[1] - a[1];
		float z = b[2] - a[2];
		float w = b[3] - a[3];
		return Platform.Sqrt(x * x + y * y + z * z + w * w);
	}

	/// <summary>**</summary>
	public static float[] Div(float[] output, float[] a, float[] b)
	{
		return Vec4.Divide(output, a, b);
	}

	/// <summary>**</summary>
	public static float[] Divide(float[] output, float[] a, float[] b)
	{
		output[0] = a[0] / b[0];
		output[1] = a[1] / b[1];
		output[2] = a[2] / b[2];
		output[3] = a[3] / b[3];
		return output;
	}

	/// <summary>**</summary>
	public static float Dot(float[] a, float[] b)
	{
		return a[0] * b[0] + a[1] * b[1] + a[2] * b[2] + a[3] * b[3];
	}

	/// <summary>**</summary>
	public static float[] FromValues(float x, float y, float z, float w)
	{
		float[] output = new float[4];
		output[0] = x;
		output[1] = y;
		output[2] = z;
		output[3] = w;
		return output;
	}

	/// <summary>**</summary>
	public static float Len(float[] a)
	{
		return Vec4.Length_(a);
	}

	/// <summary>**</summary>
	public static float Length_(float[] a)
	{
		float x = a[0];
		float y = a[1];
		float z = a[2];
		float w = a[3];
		return Platform.Sqrt(x * x + y * y + z * z + w * w);
	}

	/// <summary>**</summary>
	public static float[] Lerp(float[] output, float[] a, float[] b, float t)
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

	/// <summary>**</summary>
	public static float[] Max(float[] output, float[] a, float[] b)
	{
		output[0] = GlMatrixMath.max(a[0], b[0]);
		output[1] = GlMatrixMath.max(a[1], b[1]);
		output[2] = GlMatrixMath.max(a[2], b[2]);
		output[3] = GlMatrixMath.max(a[3], b[3]);
		return output;
	}

	/// <summary>**</summary>
	public static float[] Min(float[] output, float[] a, float[] b)
	{
		output[0] = GlMatrixMath.min(a[0], b[0]);
		output[1] = GlMatrixMath.min(a[1], b[1]);
		output[2] = GlMatrixMath.min(a[2], b[2]);
		output[3] = GlMatrixMath.min(a[3], b[3]);
		return output;
	}

	/// <summary>**</summary>
	public static float[] Mul(float[] output, float[] a, float[] b)
	{
		return Vec4.Multiply(output, a, b);
	}

	/// <summary>**</summary>
	public static float[] Multiply(float[] output, float[] a, float[] b)
	{
		output[0] = a[0] * b[0];
		output[1] = a[1] * b[1];
		output[2] = a[2] * b[2];
		output[3] = a[3] * b[3];
		return output;
	}

	/// <summary>**</summary>
	public static float[] Negate(float[] output, float[] a)
	{
		output[0] = -a[0];
		output[1] = -a[1];
		output[2] = -a[2];
		output[3] = -a[3];
		return output;
	}

	/// <summary>**</summary>
	public static float[] Normalize(float[] output, float[] a)
	{
		float x = a[0];
		float y = a[1];
		float z = a[2];
		float w = a[3];
		float len = x * x + y * y + z * z + w * w;
		if (len > 0) {
			float one = 1;
			len = one / Platform.Sqrt(len);
			output[0] = a[0] * len;
			output[1] = a[1] * len;
			output[2] = a[2] * len;
			output[3] = a[3] * len;
		}
		return output;
	}

	/// <summary>**</summary>
	public static float[] Scale(float[] output, float[] a, float b)
	{
		output[0] = a[0] * b;
		output[1] = a[1] * b;
		output[2] = a[2] * b;
		output[3] = a[3] * b;
		return output;
	}

	/// <summary>**</summary>
	public static float[] ScaleAndAdd(float[] output, float[] a, float[] b, float scale)
	{
		output[0] = a[0] + b[0] * scale;
		output[1] = a[1] + b[1] * scale;
		output[2] = a[2] + b[2] * scale;
		output[3] = a[3] + b[3] * scale;
		return output;
	}

	/// <summary>**</summary>
	public static float[] Set(float[] output, float x, float y, float z, float w)
	{
		output[0] = x;
		output[1] = y;
		output[2] = z;
		output[3] = w;
		return output;
	}

	/// <summary>**</summary>
	public static float SqrDist(float[] a, float[] b)
	{
		return Vec4.SquaredDistance(a, b);
	}

	/// <summary>**</summary>
	public static float SqrLen(float[] a)
	{
		return Vec4.SquaredLength(a);
	}

	/// <summary>**</summary>
	public static float SquaredDistance(float[] a, float[] b)
	{
		float x = b[0] - a[0];
		float y = b[1] - a[1];
		float z = b[2] - a[2];
		float w = b[3] - a[3];
		return x * x + y * y + z * z + w * w;
	}

	/// <summary>**</summary>
	public static float SquaredLength(float[] a)
	{
		float x = a[0];
		float y = a[1];
		float z = a[2];
		float w = a[3];
		return x * x + y * y + z * z + w * w;
	}

	/// <summary>**</summary>
	public static float[] Sub(float[] output, float[] a, float[] b)
	{
		return Vec4.Subtract(output, a, b);
	}

	/// <summary>**</summary>
	public static float[] Subtract(float[] output, float[] a, float[] b)
	{
		output[0] = a[0] - b[0];
		output[1] = a[1] - b[1];
		output[2] = a[2] - b[2];
		output[3] = a[3] - b[3];
		return output;
	}

	/// <summary>**</summary>
	public static float[] TransformMat4(float[] output, float[] a, float[] m)
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

	/// <summary>**
	/// **</summary>
	void f()
	{
	}

	/// <summary>**</summary>
	public static float[] transformQuat(float[] output, float[] a, float[] q)
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
}
