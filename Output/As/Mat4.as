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
		 * @returns {Number} determinant of a
		 * @param a @param {mat4} a the source matrix
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
		 * Calculates a 4x4 matrix from the given quaternion
		 * @returns {mat4} out
		 * @param output {mat4} out mat4 receiving operation result
		 * @param q {quat} q Quaternion to create matrix from
		 */
		public static function fromQuat(output : Array, q : Array) : Array
		{
			var x : float = q[0];
			var y : float = q[1];
			var z : float = q[2];
			var w : float = q[3];
			var x2 : float = x + x;
			var y2 : float = y + y;
			var z2 : float = z + z;
			var xx : float = x * x2;
			var xy : float = x * y2;
			var xz : float = x * z2;
			var yy : float = y * y2;
			var yz : float = y * z2;
			var zz : float = z * z2;
			var wx : float = w * x2;
			var wy : float = w * y2;
			var wz : float = w * z2;
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

		/**
		 * Creates a matrix from a quaternion rotation and vector translation
		 * This is equivalent to (but much faster than):
		 * mat4.identity(dest);
		 * mat4.translate(dest, vec);
		 * var quatMat = mat4.create();
		 * quat4.toMat4(quat, quatMat);
		 * mat4.multiply(dest, quatMat);
		 * @returns {mat4} out
		 * @param output {mat4} out mat4 receiving operation result
		 * @param q {quat4} q Rotation quaternion
		 * @param v {vec3} v Translation vector
		 */
		public static function fromRotationTranslation(output : Array, q : Array, v : Array) : Array
		{
			var x : float = q[0];
			var y : float = q[1];
			var z : float = q[2];
			var w : float = q[3];
			var x2 : float = x + x;
			var y2 : float = y + y;
			var z2 : float = z + z;
			var xx : float = x * x2;
			var xy : float = x * y2;
			var xz : float = x * z2;
			var yy : float = y * y2;
			var yz : float = y * z2;
			var zz : float = z * z2;
			var wx : float = w * x2;
			var wy : float = w * y2;
			var wz : float = w * z2;
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

		/**
		 * Generates a frustum matrix with the given bounds
		 * @returns {mat4} out
		 * @param output {mat4} out mat4 frustum matrix will be written into
		 * @param left {Number} left Left bound of the frustum
		 * @param right {Number} right Right bound of the frustum
		 * @param bottom {Number} bottom Bottom bound of the frustum
		 * @param top {Number} top Top bound of the frustum
		 * @param near {Number} near Near bound of the frustum
		 * @param far {Number} far Far bound of the frustum
		 */
		public static function frustum(output : Array, left : float, right : float, bottom : float, top : float, near : float, far : float) : Array
		{
			var rl : float = 1 / (right - left);
			var tb : float = 1 / (top - bottom);
			var nf : float = 1 / (near - far);
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
		 * @returns {mat4} out
		 * @param output {mat4} out the receiving matrix
		 * @param a {mat4} a the source matrix
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
		 * Generates a look-at matrix with the given eye position, focal point, and up axis
		 * @returns {mat4} out
		 * @param output {mat4} out mat4 frustum matrix will be written into
		 * @param eye {vec3} eye Position of the viewer
		 * @param center {vec3} center Point the viewer is looking at
		 * @param up {vec3} up vec3 pointing up
		 */
		public static function lookAt(output : Array, eye : Array, center : Array, up : Array) : Array
		{
			var x0 : float;
			var x1 : float;
			var x2 : float;
			var y0 : float;
			var y1 : float;
			var y2 : float;
			var z0 : float;
			var z1 : float;
			var z2 : float;
			var len : float;
			var eyex : float = eye[0];
			var eyey : float = eye[1];
			var eyez : float = eye[2];
			var upx : float = up[0];
			var upy : float = up[1];
			var upz : float = up[2];
			var centerx : float = center[0];
			var centery : float = center[1];
			var centerz : float = center[2];
			if (Math.abs(eyex - centerx) < Math.gLMAT_EPSILON() && Math.abs(eyey - centery) < Math.gLMAT_EPSILON() && Math.abs(eyez - centerz) < Math.gLMAT_EPSILON()) {
				return Mat4.identity(output);
			}
			z0 = eyex - centerx;
			z1 = eyey - centery;
			z2 = eyez - centerz;
			len = 1 / (Platform.sqrt(z0 * z0 + z1 * z1 + z2 * z2));
			z0 *= len;
			z1 *= len;
			z2 *= len;
			x0 = upy * z2 - upz * z1;
			x1 = upz * z0 - upx * z2;
			x2 = upx * z1 - upy * z0;
			len = Platform.sqrt(x0 * x0 + x1 * x1 + x2 * x2);
			if (len == 0) {
				x0 = 0;
				x1 = 0;
				x2 = 0;
			}
			else {
				len = 1 / (len);
				x0 *= len;
				x1 *= len;
				x2 *= len;
			}
			y0 = z1 * x2 - z2 * x1;
			y1 = z2 * x0 - z0 * x2;
			y2 = z0 * x1 - z1 * x0;
			len = Platform.sqrt(y0 * y0 + y1 * y1 + y2 * y2);
			if (len == 0) {
				y0 = 0;
				y1 = 0;
				y2 = 0;
			}
			else {
				len = 1 / (len);
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

		/**
		 * Alias for {@link mat4.multiply}
		 */
		public static function mul(output : Array, a : Array, b : Array) : Array
		{
			return Mat4.multiply(output, a, b);
		}

		/**
		 * Multiplies two mat4's
		 * @returns {mat4} out
		 * @param output @param {mat4} out the receiving matrix
		 * @param a @param {mat4} a the first operand
		 * @param b @param {mat4} b the second operand
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
		 * Generates a orthogonal projection matrix with the given bounds
		 * @returns {mat4} out
		 * @param output {mat4} out mat4 frustum matrix will be written into
		 * @param left {number} left Left bound of the frustum
		 * @param right {number} right Right bound of the frustum
		 * @param bottom {number} bottom Bottom bound of the frustum
		 * @param top {number} top Top bound of the frustum
		 * @param near {number} near Near bound of the frustum
		 * @param far {number} far Far bound of the frustum
		 */
		public static function ortho(output : Array, left : float, right : float, bottom : float, top : float, near : float, far : float) : Array
		{
			var lr : float = 1 / (left - right);
			var bt : float = 1 / (bottom - top);
			var nf : float = 1 / (near - far);
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

		/**
		 * Generates a perspective projection matrix with the given bounds
		 * @returns {mat4} out
		 * @param output {mat4} out mat4 frustum matrix will be written into
		 * @param fovy {number} fovy Vertical field of view in radians
		 * @param aspect {number} aspect Aspect ratio. typically viewport width/height
		 * @param near {number} near Near bound of the frustum
		 * @param far {number} far Far bound of the frustum
		 */
		public static function perspective(output : Array, fovy : float, aspect : float, near : float, far : float) : Array
		{
			var one : float = 1;
			var f : float = one / (Platform.tan(fovy / (2)));
			var nf : float = 1 / (near - far);
			output[0] = f / (aspect);
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

		/**
		 * Rotates a mat4 by the given angle
		 * @returns {mat4} out
		 * @param output {mat4} out the receiving matrix
		 * @param a {mat4} a the matrix to rotate
		 * @param rad {Number} rad the angle to rotate the matrix by
		 * @param axis {vec3} axis the axis to rotate around
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
		 * Rotates a matrix by the given angle around the X axis
		 * @returns {mat4} out
		 * @param output {mat4} out the receiving matrix
		 * @param a {mat4} a the matrix to rotate
		 * @param rad {Number} rad the angle to rotate the matrix by
		 */
		public static function rotateX(output : Array, a : Array, rad : float) : Array
		{
			var s : float = Platform.sin(rad);
			var c : float = Platform.cos(rad);
			var a10 : float = a[4];
			var a11 : float = a[5];
			var a12 : float = a[6];
			var a13 : float = a[7];
			var a20 : float = a[8];
			var a21 : float = a[9];
			var a22 : float = a[10];
			var a23 : float = a[11];
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

		/**
		 * Rotates a matrix by the given angle around the Y axis
		 * @returns {mat4} out
		 * @param output {mat4} out the receiving matrix
		 * @param a {mat4} a the matrix to rotate
		 * @param rad {Number} rad the angle to rotate the matrix by
		 */
		public static function rotateY(output : Array, a : Array, rad : float) : Array
		{
			var s : float = Platform.sin(rad);
			var c : float = Platform.cos(rad);
			var a00 : float = a[0];
			var a01 : float = a[1];
			var a02 : float = a[2];
			var a03 : float = a[3];
			var a20 : float = a[8];
			var a21 : float = a[9];
			var a22 : float = a[10];
			var a23 : float = a[11];
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

		/**
		 * Rotates a matrix by the given angle around the Z axis
		 * @returns {mat4} out
		 * @param output {mat4} out the receiving matrix
		 * @param a {mat4} a the matrix to rotate
		 * @param rad {Number} rad the angle to rotate the matrix by
		 */
		public static function rotateZ(output : Array, a : Array, rad : float) : Array
		{
			var s : float = Platform.sin(rad);
			var c : float = Platform.cos(rad);
			var a00 : float = a[0];
			var a01 : float = a[1];
			var a02 : float = a[2];
			var a03 : float = a[3];
			var a10 : float = a[4];
			var a11 : float = a[5];
			var a12 : float = a[6];
			var a13 : float = a[7];
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

		/**
		 * Scales the mat4 by the dimensions in the given vec3
		 * @returns {mat4} out
		 * @param output {mat4} out the receiving matrix
		 * @param a {mat4} a the matrix to scale
		 * @param v {vec3} v the vec3 to scale the matrix by
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
		 * @returns {mat4} out
		 * @param output {mat4} out the receiving matrix
		 * @param a {mat4} a the matrix to translate
		 * @param v {vec3} v vector to translate by
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
		 */
		private final function f() : void
		{
		}
	}
}
