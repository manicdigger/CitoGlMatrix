// Generated automatically with "cito". Do not edit.
package
{
	import flash.utils.ByteArray;

	public class Mat2d
	{

		/**
		 * **
		 */
		public static function clone(a : Array) : Array
		{
			var output : Array = new Array(6);
			output[0] = a[0];
			output[1] = a[1];
			output[2] = a[2];
			output[3] = a[3];
			output[4] = a[4];
			output[5] = a[5];
			return output;
		}

		/**
		 * **
		 */
		public static function copy(output : Array, a : Array) : Array
		{
			output[0] = a[0];
			output[1] = a[1];
			output[2] = a[2];
			output[3] = a[3];
			output[4] = a[4];
			output[5] = a[5];
			return output;
		}

		/**
		 * **
		 */
		public static function create() : Array
		{
			var output : Array = new Array(6);
			output[0] = 1;
			output[1] = 0;
			output[2] = 0;
			output[3] = 1;
			output[4] = 0;
			output[5] = 0;
			return output;
		}

		/**
		 * **
		 */
		public static function determinant(a : Array) : float
		{
			return a[0] * a[3] - a[1] * a[2];
		}

		/**
		 * **
		 */
		public static function identity(output : Array) : Array
		{
			output[0] = 1;
			output[1] = 0;
			output[2] = 0;
			output[3] = 1;
			output[4] = 0;
			output[5] = 0;
			return output;
		}

		/**
		 * **
		 */
		public static function invert(output : Array, a : Array) : Array
		{
			var aa : float = a[0];
			var ab : float = a[1];
			var ac : float = a[2];
			var ad : float = a[3];
			var atx : float = a[4];
			var aty : float = a[5];
			var det : float = aa * ad - ab * ac;
			if (det == 0) {
				return null;
			}
			var one : float = 1;
			det = one / (det);
			output[0] = ad * det;
			output[1] = -ab * det;
			output[2] = -ac * det;
			output[3] = aa * det;
			output[4] = (ac * aty - ad * atx) * det;
			output[5] = (ab * atx - aa * aty) * det;
			return output;
		}

		/**
		 * **
		 */
		public static function mul(output : Array, a : Array, b : Array) : Array
		{
			return Mat2d.multiply(output, a, b);
		}

		/**
		 * **
		 */
		public static function multiply(output : Array, a : Array, b : Array) : Array
		{
			var aa : float = a[0];
			var ab : float = a[1];
			var ac : float = a[2];
			var ad : float = a[3];
			var atx : float = a[4];
			var aty : float = a[5];
			var ba : float = b[0];
			var bb : float = b[1];
			var bc : float = b[2];
			var bd : float = b[3];
			var btx : float = b[4];
			var bty : float = b[5];
			output[0] = aa * ba + ab * bc;
			output[1] = aa * bb + ab * bd;
			output[2] = ac * ba + ad * bc;
			output[3] = ac * bb + ad * bd;
			output[4] = ba * atx + bc * aty + btx;
			output[5] = bb * atx + bd * aty + bty;
			return output;
		}

		/**
		 * **
		 */
		public static function rotate(output : Array, a : Array, rad : float) : Array
		{
			var aa : float = a[0];
			var ab : float = a[1];
			var ac : float = a[2];
			var ad : float = a[3];
			var atx : float = a[4];
			var aty : float = a[5];
			var st : float = Platform.sin(rad);
			var ct : float = Platform.cos(rad);
			output[0] = aa * ct + ab * st;
			output[1] = -aa * st + ab * ct;
			output[2] = ac * ct + ad * st;
			output[3] = -ac * st + ct * ad;
			output[4] = ct * atx + st * aty;
			output[5] = ct * aty - st * atx;
			return output;
		}

		/**
		 * **
		 */
		public static function scale(output : Array, a : Array, v : Array) : Array
		{
			var vx : float = v[0];
			var vy : float = v[1];
			output[0] = a[0] * vx;
			output[1] = a[1] * vy;
			output[2] = a[2] * vx;
			output[3] = a[3] * vy;
			output[4] = a[4] * vx;
			output[5] = a[5] * vy;
			return output;
		}

		/**
		 * **
		 */
		public static function translate(output : Array, a : Array, v : Array) : Array
		{
			output[0] = a[0];
			output[1] = a[1];
			output[2] = a[2];
			output[3] = a[3];
			output[4] = a[4] + v[0];
			output[5] = a[5] + v[1];
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
