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
