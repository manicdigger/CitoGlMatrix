// Generated automatically with "cito". Do not edit.
package
{
	import flash.utils.ByteArray;

	public class Vec4
	{

		/**
		 * **
		 */
		public static function add(output : Array, a : Array, b : Array) : Array
		{
			output[0] = a[0] + b[0];
			output[1] = a[1] + b[1];
			output[2] = a[2] + b[2];
			output[3] = a[3] + b[3];
			return output;
		}

		/**
		 * **
		 */
		public static function clone(a : Array) : Array
		{
			var output : Array = new Array(4);
			output[0] = a[0];
			output[1] = a[1];
			output[2] = a[2];
			output[3] = a[3];
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
			return output;
		}

		/**
		 * **
		 */
		public static function create() : Array
		{
			var output : Array = new Array(4);
			output[0] = 0;
			output[1] = 0;
			output[2] = 0;
			output[3] = 0;
			return output;
		}

		/**
		 * **
		 */
		public static function dist(a : Array, b : Array) : float
		{
			return Vec4.distance(a, b);
		}

		/**
		 * **
		 */
		public static function distance(a : Array, b : Array) : float
		{
			var x : float = b[0] - a[0];
			var y : float = b[1] - a[1];
			var z : float = b[2] - a[2];
			var w : float = b[3] - a[3];
			return Platform.sqrt(x * x + y * y + z * z + w * w);
		}

		/**
		 * **
		 */
		public static function div(output : Array, a : Array, b : Array) : Array
		{
			return Vec4.divide(output, a, b);
		}

		/**
		 * **
		 */
		public static function divide(output : Array, a : Array, b : Array) : Array
		{
			output[0] = a[0] / (b[0]);
			output[1] = a[1] / (b[1]);
			output[2] = a[2] / (b[2]);
			output[3] = a[3] / (b[3]);
			return output;
		}

		/**
		 * **
		 */
		public static function dot(a : Array, b : Array) : float
		{
			return a[0] * b[0] + a[1] * b[1] + a[2] * b[2] + a[3] * b[3];
		}

		/**
		 * **
		 */
		public static function fromValues(x : float, y : float, z : float, w : float) : Array
		{
			var output : Array = new Array(4);
			output[0] = x;
			output[1] = y;
			output[2] = z;
			output[3] = w;
			return output;
		}

		/**
		 * **
		 */
		public static function len(a : Array) : float
		{
			return Vec4.length(a);
		}

		/**
		 * **
		 */
		public static function length(a : Array) : float
		{
			var x : float = a[0];
			var y : float = a[1];
			var z : float = a[2];
			var w : float = a[3];
			return Platform.sqrt(x * x + y * y + z * z + w * w);
		}

		/**
		 * **
		 */
		public static function lerp(output : Array, a : Array, b : Array, t : float) : Array
		{
			var ax : float = a[0];
			var ay : float = a[1];
			var az : float = a[2];
			var aw : float = a[3];
			output[0] = ax + t * (b[0] - ax);
			output[1] = ay + t * (b[1] - ay);
			output[2] = az + t * (b[2] - az);
			output[3] = aw + t * (b[3] - aw);
			return output;
		}

		/**
		 * **
		 */
		public static function max(output : Array, a : Array, b : Array) : Array
		{
			output[0] = Math.max(a[0], b[0]);
			output[1] = Math.max(a[1], b[1]);
			output[2] = Math.max(a[2], b[2]);
			output[3] = Math.max(a[3], b[3]);
			return output;
		}

		/**
		 * **
		 */
		public static function min(output : Array, a : Array, b : Array) : Array
		{
			output[0] = Math.min(a[0], b[0]);
			output[1] = Math.min(a[1], b[1]);
			output[2] = Math.min(a[2], b[2]);
			output[3] = Math.min(a[3], b[3]);
			return output;
		}

		/**
		 * **
		 */
		public static function mul(output : Array, a : Array, b : Array) : Array
		{
			return Vec4.multiply(output, a, b);
		}

		/**
		 * **
		 */
		public static function multiply(output : Array, a : Array, b : Array) : Array
		{
			output[0] = a[0] * b[0];
			output[1] = a[1] * b[1];
			output[2] = a[2] * b[2];
			output[3] = a[3] * b[3];
			return output;
		}

		/**
		 * **
		 */
		public static function negate(output : Array, a : Array) : Array
		{
			output[0] = -a[0];
			output[1] = -a[1];
			output[2] = -a[2];
			output[3] = -a[3];
			return output;
		}

		/**
		 * **
		 */
		public static function normalize(output : Array, a : Array) : Array
		{
			var x : float = a[0];
			var y : float = a[1];
			var z : float = a[2];
			var w : float = a[3];
			var len : float = x * x + y * y + z * z + w * w;
			if (len > 0) {
				var one : float = 1;
				len = one / (Platform.sqrt(len));
				output[0] = a[0] * len;
				output[1] = a[1] * len;
				output[2] = a[2] * len;
				output[3] = a[3] * len;
			}
			return output;
		}

		/**
		 * **
		 */
		public static function random(output : Array, scale : float) : Array
		{
			output[0] = Platform.random();
			output[1] = Platform.random();
			output[2] = Platform.random();
			output[3] = Platform.random();
			Vec4.normalize(output, output);
			Vec4.scale(output, output, scale);
			return output;
		}

		/**
		 * **
		 */
		public static function scale(output : Array, a : Array, b : float) : Array
		{
			output[0] = a[0] * b;
			output[1] = a[1] * b;
			output[2] = a[2] * b;
			output[3] = a[3] * b;
			return output;
		}

		/**
		 * **
		 */
		public static function scaleAndAdd(output : Array, a : Array, b : Array, scale : float) : Array
		{
			output[0] = a[0] + b[0] * scale;
			output[1] = a[1] + b[1] * scale;
			output[2] = a[2] + b[2] * scale;
			output[3] = a[3] + b[3] * scale;
			return output;
		}

		/**
		 * **
		 */
		public static function set(output : Array, x : float, y : float, z : float, w : float) : Array
		{
			output[0] = x;
			output[1] = y;
			output[2] = z;
			output[3] = w;
			return output;
		}

		/**
		 * **
		 */
		public static function sqrDist(a : Array, b : Array) : float
		{
			return Vec4.squaredDistance(a, b);
		}

		/**
		 * **
		 */
		public static function sqrLen(a : Array) : float
		{
			return Vec4.squaredLength(a);
		}

		/**
		 * **
		 */
		public static function squaredDistance(a : Array, b : Array) : float
		{
			var x : float = b[0] - a[0];
			var y : float = b[1] - a[1];
			var z : float = b[2] - a[2];
			var w : float = b[3] - a[3];
			return x * x + y * y + z * z + w * w;
		}

		/**
		 * **
		 */
		public static function squaredLength(a : Array) : float
		{
			var x : float = a[0];
			var y : float = a[1];
			var z : float = a[2];
			var w : float = a[3];
			return x * x + y * y + z * z + w * w;
		}

		/**
		 * **
		 */
		public static function sub(output : Array, a : Array, b : Array) : Array
		{
			return Vec4.subtract(output, a, b);
		}

		/**
		 * **
		 */
		public static function subtract(output : Array, a : Array, b : Array) : Array
		{
			output[0] = a[0] - b[0];
			output[1] = a[1] - b[1];
			output[2] = a[2] - b[2];
			output[3] = a[3] - b[3];
			return output;
		}

		/**
		 * **
		 */
		public static function transformMat4(output : Array, a : Array, m : Array) : Array
		{
			var x : float = a[0];
			var y : float = a[1];
			var z : float = a[2];
			var w : float = a[3];
			output[0] = m[0] * x + m[4] * y + m[8] * z + m[12] * w;
			output[1] = m[1] * x + m[5] * y + m[9] * z + m[13] * w;
			output[2] = m[2] * x + m[6] * y + m[10] * z + m[14] * w;
			output[3] = m[3] * x + m[7] * y + m[11] * z + m[15] * w;
			return output;
		}

		/**
		 * **
		 * **
		 */
		private final function f() : void
		{
		}

		/**
		 * **
		 */
		public static function transformQuat(output : Array, a : Array, q : Array) : Array
		{
			var x : float = a[0];
			var y : float = a[1];
			var z : float = a[2];
			var qx : float = q[0];
			var qy : float = q[1];
			var qz : float = q[2];
			var qw : float = q[3];
			var ix : float = qw * x + qy * z - qz * y;
			var iy : float = qw * y + qz * x - qx * z;
			var iz : float = qw * z + qx * y - qy * x;
			var iw : float = -qx * x - qy * y - qz * z;
			output[0] = ix * qw + iw * -qx + iy * -qz - iz * -qy;
			output[1] = iy * qw + iw * -qy + iz * -qx - ix * -qz;
			output[2] = iz * qw + iw * -qz + ix * -qy - iy * -qx;
			return output;
		}
	}
}
