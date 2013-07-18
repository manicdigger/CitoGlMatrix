// Generated automatically with "cito". Do not edit.
package
{
	import flash.utils.ByteArray;

	public class Quat
	{

		/**
		 * **
		 */
		public static function calculateW(output : Array, a : Array) : Array
		{
			var x : float = a[0];
			var y : float = a[1];
			var z : float = a[2];
			output[0] = x;
			output[1] = y;
			output[2] = z;
			var one : float = 1;
			output[3] = -Platform.sqrt(Math.abs(one - x * x - y * y - z * z));
			return output;
		}

		/**
		 * **
		 */
		public final function conjugate(output : Array, a : Array) : Array
		{
			output[0] = -a[0];
			output[1] = -a[1];
			output[2] = -a[2];
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
			output[3] = 1;
			return output;
		}

		/**
		 * **
		 */
		public static function fromMat3(output : Array, m : Array) : Array
		{
			var fTrace : float = m[0] + m[4] + m[8];
			var fRoot : float;
			var zero : float = 0;
			var one : float = 1;
			var half : float = one / (2);
			if (fTrace > zero) {
				fRoot = Platform.sqrt(fTrace + one);
				output[3] = half * fRoot;
				fRoot = half / (fRoot);
				output[0] = (m[7] - m[5]) * fRoot;
				output[1] = (m[2] - m[6]) * fRoot;
				output[2] = (m[3] - m[1]) * fRoot;
			}
			else {
				var i : int = 0;
				if (m[4] > m[0])
					i = 1;
				if (m[8] > m[i * 3 + i])
					i = 2;
				var j : int = (i + 1) % 3;
				var k : int = (i + 2) % 3;
				fRoot = Platform.sqrt(m[i * 3 + i] - m[j * 3 + j] - m[k * 3 + k] + one);
				output[i] = half * fRoot;
				fRoot = half / (fRoot);
				output[3] = (m[k * 3 + j] - m[j * 3 + k]) * fRoot;
				output[j] = (m[j * 3 + i] + m[i * 3 + j]) * fRoot;
				output[k] = (m[k * 3 + i] + m[i * 3 + k]) * fRoot;
			}
			return output;
		}

		/**
		 * **
		 */
		public static function identity(output : Array) : Array
		{
			output[0] = 0;
			output[1] = 0;
			output[2] = 0;
			output[3] = 1;
			return output;
		}

		/**
		 * **
		 * **
		 * **
		 * **
		 */
		public final function invert(output : Array, a : Array) : Array
		{
			var a0 : float = a[0];
			var a1 : float = a[1];
			var a2 : float = a[2];
			var a3 : float = a[3];
			var dot : float = a0 * a0 + a1 * a1 + a2 * a2 + a3 * a3;
			var one : float = 1;
			var invDot : float = dot != 0 ? one / (dot) : 0;
			output[0] = -a0 * invDot;
			output[1] = -a1 * invDot;
			output[2] = -a2 * invDot;
			output[3] = a3 * invDot;
			return output;
		}

		/**
		 * **
		 * **
		 */
		public static function multiply(output : Array, a : Array, b : Array) : Array
		{
			var ax : float = a[0];
			var ay : float = a[1];
			var az : float = a[2];
			var aw : float = a[3];
			var bx : float = b[0];
			var by : float = b[1];
			var bz : float = b[2];
			var bw : float = b[3];
			output[0] = ax * bw + aw * bx + ay * bz - az * by;
			output[1] = ay * bw + aw * by + az * bx - ax * bz;
			output[2] = az * bw + aw * bz + ax * by - ay * bx;
			output[3] = aw * bw - ax * bx - ay * by - az * bz;
			return output;
		}

		/**
		 * **
		 * **
		 * **
		 * **
		 * **
		 */
		public static function normalize(output : Array, a : Array) : Array
		{
			return Vec4.normalize(output, a);
		}

		/**
		 * **
		 * **
		 * **
		 */
		public static function rotateX(output : Array, a : Array, rad : float) : Array
		{
			rad /= 2;
			var ax : float = a[0];
			var ay : float = a[1];
			var az : float = a[2];
			var aw : float = a[3];
			var bx : float = Platform.sin(rad);
			var bw : float = Platform.cos(rad);
			output[0] = ax * bw + aw * bx;
			output[1] = ay * bw + az * bx;
			output[2] = az * bw - ay * bx;
			output[3] = aw * bw - ax * bx;
			return output;
		}

		/**
		 * **
		 */
		public static function rotateY(output : Array, a : Array, rad : float) : Array
		{
			rad /= 2;
			var ax : float = a[0];
			var ay : float = a[1];
			var az : float = a[2];
			var aw : float = a[3];
			var by : float = Platform.sin(rad);
			var bw : float = Platform.cos(rad);
			output[0] = ax * bw - az * by;
			output[1] = ay * bw + aw * by;
			output[2] = az * bw + ax * by;
			output[3] = aw * bw - ay * by;
			return output;
		}

		/**
		 * **
		 */
		public static function rotateZ(output : Array, a : Array, rad : float) : Array
		{
			rad /= 2;
			var ax : float = a[0];
			var ay : float = a[1];
			var az : float = a[2];
			var aw : float = a[3];
			var bz : float = Platform.sin(rad);
			var bw : float = Platform.cos(rad);
			output[0] = ax * bw + ay * bz;
			output[1] = ay * bw - ax * bz;
			output[2] = az * bw + aw * bz;
			output[3] = aw * bw - az * bz;
			return output;
		}

		/**
		 * **
		 */
		public static function rotationTo(output : Array, a : Array, b : Array) : Array
		{
			var tmpvec3 : Array = Vec3.create();
			var xUnitVec3 : Array = Vec3.fromValues(1, 0, 0);
			var yUnitVec3 : Array = Vec3.fromValues(0, 1, 0);
			var dot : float = Vec3.dot(a, b);
			var nines : float = 999999;
			nines /= 1000000;
			var epsilon : float = 1;
			epsilon /= 1000000;
			if (dot < -nines) {
				Vec3.cross(tmpvec3, xUnitVec3, a);
				if (Vec3.length(tmpvec3) < epsilon)
					Vec3.cross(tmpvec3, yUnitVec3, a);
				Vec3.normalize(tmpvec3, tmpvec3);
				Quat.setAxisAngle(output, tmpvec3, Math.pI());
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
				Vec3.cross(tmpvec3, a, b);
				output[0] = tmpvec3[0];
				output[1] = tmpvec3[1];
				output[2] = tmpvec3[2];
				output[3] = 1 + dot;
				return Quat.normalize(output, output);
			}
		}

		/**
		 * **
		 * **
		 * **
		 * **
		 */
		public static function set(output : Array, x : float, y : float, z : float, w : float) : Array
		{
			return Vec4.set(output, x, y, z, w);
		}

		/**
		 * **
		 */
		public static function setAxes(output : Array, view : Array, right : Array, up : Array) : Array
		{
			var matr : Array = Mat3.create();
			matr[0] = right[0];
			matr[3] = right[1];
			matr[6] = right[2];
			matr[1] = up[0];
			matr[4] = up[1];
			matr[7] = up[2];
			matr[2] = view[0];
			matr[5] = view[1];
			matr[8] = view[2];
			return Quat.normalize(output, Quat.fromMat3(output, matr));
		}

		/**
		 * **
		 */
		public static function setAxisAngle(output : Array, axis : Array, rad : float) : Array
		{
			rad = rad / (2);
			var s : float = Platform.sin(rad);
			output[0] = s * axis[0];
			output[1] = s * axis[1];
			output[2] = s * axis[2];
			output[3] = Platform.cos(rad);
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
