// Generated automatically with "cito". Do not edit.
package
{
	import flash.utils.ByteArray;

	/**
	 * 2x2 Matrix
	 */
	public class Mat2
	{

		/**
		 * Calculates the adjugate of a mat2
		 */
		public static function adjoint(output : Array, a : Array) : Array
		{
			var a0 : float = a[0];
			output[0] = a[3];
			output[1] = -a[1];
			output[2] = -a[2];
			output[3] = a0;
			return output;
		}

		/**
		 * Creates a new mat2 initialized with values from an existing matrix
		 * @returns {mat2} a new 2x2 matrix
		 * @param a @param {mat2} a matrix to clone
		 */
		public static function cloneIt(a : Array) : Array
		{
			var output : Array = new Array(4);
			output[0] = a[0];
			output[1] = a[1];
			output[2] = a[2];
			output[3] = a[3];
			return output;
		}

		/**
		 * Copy the values from one mat2 to another
		 * @param {mat2} output the receiving matrix
		 * @param {mat2} a the source matrix
		 * @returns {mat2} output
		 */
		public static function copy(output : Array, a : Array) : Array
		{
			output[0] = a[0];
			output[1] = a[1];
			output[2] = a[2];
			output[3] = a[3];
			return output;
		}

		/**
		 * Creates a new identity mat2
		 * @returns {mat2} a new 2x2 matrix
		 */
		public static function create() : Array
		{
			var output : Array = new Array(4);
			output[0] = 1;
			output[1] = 0;
			output[2] = 0;
			output[3] = 1;
			return output;
		}

		public static function determinant(a : Array) : float
		{
			return a[0] * a[3] - a[2] * a[1];
		}

		/**
		 * Set a mat2 to the identity matrix
		 * @param {mat2} output the receiving matrix
		 * @returns {mat2} output
		 */
		public static function identity(output : Array) : Array
		{
			output[0] = 1;
			output[1] = 0;
			output[2] = 0;
			output[3] = 1;
			return output;
		}

		/**
		 * Inverts a mat2
		 */
		public static function invert(output : Array, a : Array) : Array
		{
			var a0 : float = a[0];
			var a1 : float = a[1];
			var a2 : float = a[2];
			var a3 : float = a[3];
			var det : float = a0 * a3 - a2 * a1;
			if (det == 0) {
				return null;
			}
			var one : float = 1;
			det = one / (det);
			output[0] = a3 * det;
			output[1] = -a1 * det;
			output[2] = -a2 * det;
			output[3] = a0 * det;
			return output;
		}

		/**
		 * Alias for {@link mat2.multiply}
		 */
		public static function mul(output : Array, a : Array, b : Array) : Array
		{
			return Mat2.multiply(output, a, b);
		}

		public static function multiply(output : Array, a : Array, b : Array) : Array
		{
			var a0 : float = a[0];
			var a1 : float = a[1];
			var a2 : float = a[2];
			var a3 : float = a[3];
			var b0 : float = b[0];
			var b1 : float = b[1];
			var b2 : float = b[2];
			var b3 : float = b[3];
			output[0] = a0 * b0 + a1 * b2;
			output[1] = a0 * b1 + a1 * b3;
			output[2] = a2 * b0 + a3 * b2;
			output[3] = a2 * b1 + a3 * b3;
			return output;
		}

		/**
		 * **
		 */
		public static function rotate(output : Array, a : Array, rad : float) : Array
		{
			var a0 : float = a[0];
			var a1 : float = a[1];
			var a2 : float = a[2];
			var a3 : float = a[3];
			var s : float = Platform.sin(rad);
			var c : float = Platform.cos(rad);
			output[0] = a0 * c + a1 * s;
			output[1] = a0 * -s + a1 * c;
			output[2] = a2 * c + a3 * s;
			output[3] = a2 * -s + a3 * c;
			return output;
		}

		/**
		 * **
		 */
		public static function scale(output : Array, a : Array, v : Array) : Array
		{
			var a0 : float = a[0];
			var a1 : float = a[1];
			var a2 : float = a[2];
			var a3 : float = a[3];
			var v0 : float = v[0];
			var v1 : float = v[1];
			output[0] = a0 * v0;
			output[1] = a1 * v1;
			output[2] = a2 * v0;
			output[3] = a3 * v1;
			return output;
		}

		/**
		 * Transpose the values of a mat2
		 * @param {mat2} output the receiving matrix
		 * @param {mat2} a the source matrix
		 * @returns {mat2} output
		 */
		public static function transpose(output : Array, a : Array) : Array
		{
			output[0] = a[0];
			output[1] = a[2];
			output[2] = a[1];
			output[3] = a[3];
			return output;
		}

		/**
		 * **
		 */
		private final function f() : void
		{
		}
	}
}
