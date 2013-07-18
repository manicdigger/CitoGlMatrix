// Generated automatically with "cito". Do not edit.
package
{
	import flash.utils.ByteArray;

	/**
	 * 4x4 Matrix
	 */
	public class Mat4
	{

		/**
		 * Calculates the adjugate of a mat4
		 * @returns {mat4} out
		 * @param output @param {mat4} out the receiving matrix
		 * @param a @param {mat4} a the source matrix
		 */
		public static function adjoint(output : Array, a : Array) : Array
		{
			var a00 : float = a[0];
			var a01 : float = a[1];
			var a02 : float = a[2];
			var a03 : float = a[3];
			var a10 : float = a[4];
			var a11 : float = a[5];
			var a12 : float = a[6];
			var a13 : float = a[7];
			var a20 : float = a[8];
			var a21 : float = a[9];
			var a22 : float = a[10];
			var a23 : float = a[11];
			var a30 : float = a[12];
			var a31 : float = a[13];
			var a32 : float = a[14];
			var a33 : float = a[15];
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

		/**
		 * Creates a new mat4 initialized with values from an existing matrix
		 * Returns {mat4} a new 4x4 matrix
		 * @param a {mat4} a matrix to clone
		 */
		public static function clone(a : Array) : Array
		{
			var output : Array = new Array(16);
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

		/**
		 * Copy the values from one mat4 to another
		 * Returns {mat4} out
		 * @param output {mat4} out the receiving matrix
		 * @param a {mat4} a the source matrix
		 */
		public static function copy(output : Array, a : Array) : Array
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

		/**
		 * Creates a new identity mat4
		 * Returns {mat4} a new 4x4 matrix
		 */
		public static function create() : Array
		{
			var output : Array = new Array(16);
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

		/**
		 * Calculates the determinant of a mat4
		 * @param {mat4} a the source matrix
		 * @returns {Number} determinant of a
		 */
		public static function determinant(a : Array) : float
		{
			var a00 : float = a[0];
			var a01 : float = a[1];
			var a02 : float = a[2];
			var a03 : float = a[3];
			var a10 : float = a[4];
			var a11 : float = a[5];
			var a12 : float = a[6];
			var a13 : float = a[7];
			var a20 : float = a[8];
			var a21 : float = a[9];
			var a22 : float = a[10];
			var a23 : float = a[11];
			var a30 : float = a[12];
			var a31 : float = a[13];
			var a32 : float = a[14];
			var a33 : float = a[15];
			var b00 : float = a00 * a11 - a01 * a10;
			var b01 : float = a00 * a12 - a02 * a10;
			var b02 : float = a00 * a13 - a03 * a10;
			var b03 : float = a01 * a12 - a02 * a11;
			var b04 : float = a01 * a13 - a03 * a11;
			var b05 : float = a02 * a13 - a03 * a12;
			var b06 : float = a20 * a31 - a21 * a30;
			var b07 : float = a20 * a32 - a22 * a30;
			var b08 : float = a20 * a33 - a23 * a30;
			var b09 : float = a21 * a32 - a22 * a31;
			var b10 : float = a21 * a33 - a23 * a31;
			var b11 : float = a22 * a33 - a23 * a32;
			return b00 * b11 - b01 * b10 + b02 * b09 + b03 * b08 - b04 * b07 + b05 * b06;
		}

		/**
		 * Set a mat4 to the identity matrix
		 * Returns {mat4} out
		 * @param output {mat4} out the receiving matrix
		 */
		public static function identity(output : Array) : Array
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

		/**
		 * Inverts a mat4
		 */
		public static function invert(output : Array, a : Array) : Array
		{
			var a00 : float = a[0];
			var a01 : float = a[1];
			var a02 : float = a[2];
			var a03 : float = a[3];
			var a10 : float = a[4];
			var a11 : float = a[5];
			var a12 : float = a[6];
			var a13 : float = a[7];
			var a20 : float = a[8];
			var a21 : float = a[9];
			var a22 : float = a[10];
			var a23 : float = a[11];
			var a30 : float = a[12];
			var a31 : float = a[13];
			var a32 : float = a[14];
			var a33 : float = a[15];
			var b00 : float = a00 * a11 - a01 * a10;
			var b01 : float = a00 * a12 - a02 * a10;
			var b02 : float = a00 * a13 - a03 * a10;
			var b03 : float = a01 * a12 - a02 * a11;
			var b04 : float = a01 * a13 - a03 * a11;
			var b05 : float = a02 * a13 - a03 * a12;
			var b06 : float = a20 * a31 - a21 * a30;
			var b07 : float = a20 * a32 - a22 * a30;
			var b08 : float = a20 * a33 - a23 * a30;
			var b09 : float = a21 * a32 - a22 * a31;
			var b10 : float = a21 * a33 - a23 * a31;
			var b11 : float = a22 * a33 - a23 * a32;
			var det : float = b00 * b11 - b01 * b10 + b02 * b09 + b03 * b08 - b04 * b07 + b05 * b06;
			if (det == 0) {
				return null;
			}
			var one : float = 1;
			det = one / (det);
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

		/**
		 * Alias for {@link mat4.multiply}
		 */
		public static function mul(output : Array, a : Array, b : Array) : Array
		{
			return Mat4.multiply(output, a, b);
		}

		/**
		 * Multiplies two mat4's
		 * @param {mat4} out the receiving matrix
		 * @param {mat4} a the first operand
		 * @param {mat4} b the second operand
		 * @returns {mat4} out
		 */
		public static function multiply(output : Array, a : Array, b : Array) : Array
		{
			var a00 : float = a[0];
			var a01 : float = a[1];
			var a02 : float = a[2];
			var a03 : float = a[3];
			var a10 : float = a[4];
			var a11 : float = a[5];
			var a12 : float = a[6];
			var a13 : float = a[7];
			var a20 : float = a[8];
			var a21 : float = a[9];
			var a22 : float = a[10];
			var a23 : float = a[11];
			var a30 : float = a[12];
			var a31 : float = a[13];
			var a32 : float = a[14];
			var a33 : float = a[15];
			var b0 : float = b[0];
			var b1 : float = b[1];
			var b2 : float = b[2];
			var b3 : float = b[3];
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

		/**
		 * Rotates a mat4 by the given angle
		 * @returns {mat4} out
		 * @param output @param {mat4} out the receiving matrix
		 * @param a @param {mat4} a the matrix to rotate
		 * @param rad @param {Number} rad the angle to rotate the matrix by
		 * @param axis @param {vec3} axis the axis to rotate around
		 */
		public static function rotate(output : Array, a : Array, rad : float, axis : Array) : Array
		{
			var x : float = axis[0];
			var y : float = axis[1];
			var z : float = axis[2];
			var len : float = Platform.sqrt(x * x + y * y + z * z);
			var s : float;
			var c : float;
			var t : float;
			var a00 : float;
			var a01 : float;
			var a02 : float;
			var a03 : float;
			var a10 : float;
			var a11 : float;
			var a12 : float;
			var a13 : float;
			var a20 : float;
			var a21 : float;
			var a22 : float;
			var a23 : float;
			var b00 : float;
			var b01 : float;
			var b02 : float;
			var b10 : float;
			var b11 : float;
			var b12 : float;
			var b20 : float;
			var b21 : float;
			var b22 : float;
			if (Math.abs(len) < Math.gLMAT_EPSILON()) {
				return null;
			}
			len = 1 / (len);
			x *= len;
			y *= len;
			z *= len;
			s = Platform.sin(rad);
			c = Platform.cos(rad);
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

		/**
		 * Scales the mat4 by the dimensions in the given vec3
		 * @param {mat4} out the receiving matrix
		 * @param {mat4} a the matrix to scale
		 * @param {vec3} v the vec3 to scale the matrix by
		 * @returns {mat4} out
		 */
		public static function scale(output : Array, a : Array, v : Array) : Array
		{
			var x : float = v[0];
			var y : float = v[1];
			var z : float = v[2];
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

		/**
		 * Translate a mat4 by the given vector
		 * @param {mat4} out the receiving matrix
		 * @param {mat4} a the matrix to translate
		 * @param {vec3} v vector to translate by
		 * @returns {mat4} out
		 */
		public static function translate(output : Array, a : Array, v : Array) : Array
		{
			var x : float = v[0];
			var y : float = v[1];
			var z : float = v[2];
			var a00 : float;
			var a01 : float;
			var a02 : float;
			var a03 : float;
			var a10 : float;
			var a11 : float;
			var a12 : float;
			var a13 : float;
			var a20 : float;
			var a21 : float;
			var a22 : float;
			var a23 : float;
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

		/**
		 * Transpose the values of a mat4
		 * @returns {mat4} out
		 * @param output @param {mat4} out the receiving matrix
		 * @param a @param {mat4} a the source matrix
		 */
		public static function transpose(output : Array, a : Array) : Array
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

		/**
		 * **
		 * **
		 * **
		 * **
		 * **
		 * **
		 * **
		 * **
		 * **
		 * **
		 */
		private final function f() : void
		{
		}
	}
}
