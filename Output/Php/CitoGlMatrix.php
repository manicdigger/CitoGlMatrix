<?php
// Generated automatically with "cito". Do not edit.

class Mat2
{

	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	private function f()
	{
	}
}

class Mat2d
{

	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	private function f()
	{
	}
}

class Mat3
{

	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	private function f()
	{
	}
}

// 4x4 Matrix
class Mat4
{

	// Calculates the adjugate of a mat4
	// @returns {mat4} out
	/// <param name="output">@param {mat4} out the receiving matrix</param>
	/// <param name="a">@param {mat4} a the source matrix</param>
	static function Adjoint(&$output, &$a)
	{
		$a00 = $a[0];
		$a01 = $a[1];
		$a02 = $a[2];
		$a03 = $a[3];
		$a10 = $a[4];
		$a11 = $a[5];
		$a12 = $a[6];
		$a13 = $a[7];
		$a20 = $a[8];
		$a21 = $a[9];
		$a22 = $a[10];
		$a23 = $a[11];
		$a30 = $a[12];
		$a31 = $a[13];
		$a32 = $a[14];
		$a33 = $a[15];
		$output[0] = $a11 * ($a22 * $a33 - $a23 * $a32) - $a21 * ($a12 * $a33 - $a13 * $a32) + $a31 * ($a12 * $a23 - $a13 * $a22);
		$output[1] = -($a01 * ($a22 * $a33 - $a23 * $a32) - $a21 * ($a02 * $a33 - $a03 * $a32) + $a31 * ($a02 * $a23 - $a03 * $a22));
		$output[2] = $a01 * ($a12 * $a33 - $a13 * $a32) - $a11 * ($a02 * $a33 - $a03 * $a32) + $a31 * ($a02 * $a13 - $a03 * $a12);
		$output[3] = -($a01 * ($a12 * $a23 - $a13 * $a22) - $a11 * ($a02 * $a23 - $a03 * $a22) + $a21 * ($a02 * $a13 - $a03 * $a12));
		$output[4] = -($a10 * ($a22 * $a33 - $a23 * $a32) - $a20 * ($a12 * $a33 - $a13 * $a32) + $a30 * ($a12 * $a23 - $a13 * $a22));
		$output[5] = $a00 * ($a22 * $a33 - $a23 * $a32) - $a20 * ($a02 * $a33 - $a03 * $a32) + $a30 * ($a02 * $a23 - $a03 * $a22);
		$output[6] = -($a00 * ($a12 * $a33 - $a13 * $a32) - $a10 * ($a02 * $a33 - $a03 * $a32) + $a30 * ($a02 * $a13 - $a03 * $a12));
		$output[7] = $a00 * ($a12 * $a23 - $a13 * $a22) - $a10 * ($a02 * $a23 - $a03 * $a22) + $a20 * ($a02 * $a13 - $a03 * $a12);
		$output[8] = $a10 * ($a21 * $a33 - $a23 * $a31) - $a20 * ($a11 * $a33 - $a13 * $a31) + $a30 * ($a11 * $a23 - $a13 * $a21);
		$output[9] = -($a00 * ($a21 * $a33 - $a23 * $a31) - $a20 * ($a01 * $a33 - $a03 * $a31) + $a30 * ($a01 * $a23 - $a03 * $a21));
		$output[10] = $a00 * ($a11 * $a33 - $a13 * $a31) - $a10 * ($a01 * $a33 - $a03 * $a31) + $a30 * ($a01 * $a13 - $a03 * $a11);
		$output[11] = -($a00 * ($a11 * $a23 - $a13 * $a21) - $a10 * ($a01 * $a23 - $a03 * $a21) + $a20 * ($a01 * $a13 - $a03 * $a11));
		$output[12] = -($a10 * ($a21 * $a32 - $a22 * $a31) - $a20 * ($a11 * $a32 - $a12 * $a31) + $a30 * ($a11 * $a22 - $a12 * $a21));
		$output[13] = $a00 * ($a21 * $a32 - $a22 * $a31) - $a20 * ($a01 * $a32 - $a02 * $a31) + $a30 * ($a01 * $a22 - $a02 * $a21);
		$output[14] = -($a00 * ($a11 * $a32 - $a12 * $a31) - $a10 * ($a01 * $a32 - $a02 * $a31) + $a30 * ($a01 * $a12 - $a02 * $a11));
		$output[15] = $a00 * ($a11 * $a22 - $a12 * $a21) - $a10 * ($a01 * $a22 - $a02 * $a21) + $a20 * ($a01 * $a12 - $a02 * $a11);
		return $output;
	}

	// Creates a new mat4 initialized with values from an existing matrix
	// Returns {mat4} a new 4x4 matrix
	/// <param name="a">{mat4} a matrix to clone</param>
	static function Clone(&$a)
	{
		$output = array();
		$output[0] = $a[0];
		$output[1] = $a[1];
		$output[2] = $a[2];
		$output[3] = $a[3];
		$output[4] = $a[4];
		$output[5] = $a[5];
		$output[6] = $a[6];
		$output[7] = $a[7];
		$output[8] = $a[8];
		$output[9] = $a[9];
		$output[10] = $a[10];
		$output[11] = $a[11];
		$output[12] = $a[12];
		$output[13] = $a[13];
		$output[14] = $a[14];
		$output[15] = $a[15];
		return $output;
	}

	// Copy the values from one mat4 to another
	// Returns {mat4} out
	/// <param name="output">{mat4} out the receiving matrix</param>
	/// <param name="a">{mat4} a the source matrix</param>
	static function Copy(&$output, &$a)
	{
		$output[0] = $a[0];
		$output[1] = $a[1];
		$output[2] = $a[2];
		$output[3] = $a[3];
		$output[4] = $a[4];
		$output[5] = $a[5];
		$output[6] = $a[6];
		$output[7] = $a[7];
		$output[8] = $a[8];
		$output[9] = $a[9];
		$output[10] = $a[10];
		$output[11] = $a[11];
		$output[12] = $a[12];
		$output[13] = $a[13];
		$output[14] = $a[14];
		$output[15] = $a[15];
		return $output;
	}

	// Creates a new identity mat4
	// Returns {mat4} a new 4x4 matrix
	static function Create()
	{
		$output = array();
		$output[0] = 1;
		$output[1] = 0;
		$output[2] = 0;
		$output[3] = 0;
		$output[4] = 0;
		$output[5] = 1;
		$output[6] = 0;
		$output[7] = 0;
		$output[8] = 0;
		$output[9] = 0;
		$output[10] = 1;
		$output[11] = 0;
		$output[12] = 0;
		$output[13] = 0;
		$output[14] = 0;
		$output[15] = 1;
		return $output;
	}

	// Calculates the determinant of a mat4
	// @param {mat4} a the source matrix
	// @returns {Number} determinant of a
	static function Determinant(&$a)
	{
		$a00 = $a[0];
		$a01 = $a[1];
		$a02 = $a[2];
		$a03 = $a[3];
		$a10 = $a[4];
		$a11 = $a[5];
		$a12 = $a[6];
		$a13 = $a[7];
		$a20 = $a[8];
		$a21 = $a[9];
		$a22 = $a[10];
		$a23 = $a[11];
		$a30 = $a[12];
		$a31 = $a[13];
		$a32 = $a[14];
		$a33 = $a[15];
		$b00 = $a00 * $a11 - $a01 * $a10;
		$b01 = $a00 * $a12 - $a02 * $a10;
		$b02 = $a00 * $a13 - $a03 * $a10;
		$b03 = $a01 * $a12 - $a02 * $a11;
		$b04 = $a01 * $a13 - $a03 * $a11;
		$b05 = $a02 * $a13 - $a03 * $a12;
		$b06 = $a20 * $a31 - $a21 * $a30;
		$b07 = $a20 * $a32 - $a22 * $a30;
		$b08 = $a20 * $a33 - $a23 * $a30;
		$b09 = $a21 * $a32 - $a22 * $a31;
		$b10 = $a21 * $a33 - $a23 * $a31;
		$b11 = $a22 * $a33 - $a23 * $a32;
		return $b00 * $b11 - $b01 * $b10 + $b02 * $b09 + $b03 * $b08 - $b04 * $b07 + $b05 * $b06;
	}

	// Set a mat4 to the identity matrix
	// Returns {mat4} out
	/// <param name="output">{mat4} out the receiving matrix</param>
	static function Identity(&$output)
	{
		$output[0] = 1;
		$output[1] = 0;
		$output[2] = 0;
		$output[3] = 0;
		$output[4] = 0;
		$output[5] = 1;
		$output[6] = 0;
		$output[7] = 0;
		$output[8] = 0;
		$output[9] = 0;
		$output[10] = 1;
		$output[11] = 0;
		$output[12] = 0;
		$output[13] = 0;
		$output[14] = 0;
		$output[15] = 1;
		return $output;
	}

	// Inverts a mat4
	static function Invert(&$output, &$a)
	{
		$a00 = $a[0];
		$a01 = $a[1];
		$a02 = $a[2];
		$a03 = $a[3];
		$a10 = $a[4];
		$a11 = $a[5];
		$a12 = $a[6];
		$a13 = $a[7];
		$a20 = $a[8];
		$a21 = $a[9];
		$a22 = $a[10];
		$a23 = $a[11];
		$a30 = $a[12];
		$a31 = $a[13];
		$a32 = $a[14];
		$a33 = $a[15];
		$b00 = $a00 * $a11 - $a01 * $a10;
		$b01 = $a00 * $a12 - $a02 * $a10;
		$b02 = $a00 * $a13 - $a03 * $a10;
		$b03 = $a01 * $a12 - $a02 * $a11;
		$b04 = $a01 * $a13 - $a03 * $a11;
		$b05 = $a02 * $a13 - $a03 * $a12;
		$b06 = $a20 * $a31 - $a21 * $a30;
		$b07 = $a20 * $a32 - $a22 * $a30;
		$b08 = $a20 * $a33 - $a23 * $a30;
		$b09 = $a21 * $a32 - $a22 * $a31;
		$b10 = $a21 * $a33 - $a23 * $a31;
		$b11 = $a22 * $a33 - $a23 * $a32;
		$det = $b00 * $b11 - $b01 * $b10 + $b02 * $b09 + $b03 * $b08 - $b04 * $b07 + $b05 * $b06;
		if ($det == 0) {
			return null;
		}
		$one = 1;
		$det = $one / $det;
		$output[0] = ($a11 * $b11 - $a12 * $b10 + $a13 * $b09) * $det;
		$output[1] = ($a02 * $b10 - $a01 * $b11 - $a03 * $b09) * $det;
		$output[2] = ($a31 * $b05 - $a32 * $b04 + $a33 * $b03) * $det;
		$output[3] = ($a22 * $b04 - $a21 * $b05 - $a23 * $b03) * $det;
		$output[4] = ($a12 * $b08 - $a10 * $b11 - $a13 * $b07) * $det;
		$output[5] = ($a00 * $b11 - $a02 * $b08 + $a03 * $b07) * $det;
		$output[6] = ($a32 * $b02 - $a30 * $b05 - $a33 * $b01) * $det;
		$output[7] = ($a20 * $b05 - $a22 * $b02 + $a23 * $b01) * $det;
		$output[8] = ($a10 * $b10 - $a11 * $b08 + $a13 * $b06) * $det;
		$output[9] = ($a01 * $b08 - $a00 * $b10 - $a03 * $b06) * $det;
		$output[10] = ($a30 * $b04 - $a31 * $b02 + $a33 * $b00) * $det;
		$output[11] = ($a21 * $b02 - $a20 * $b04 - $a23 * $b00) * $det;
		$output[12] = ($a11 * $b07 - $a10 * $b09 - $a12 * $b06) * $det;
		$output[13] = ($a00 * $b09 - $a01 * $b07 + $a02 * $b06) * $det;
		$output[14] = ($a31 * $b01 - $a30 * $b03 - $a32 * $b00) * $det;
		$output[15] = ($a20 * $b03 - $a21 * $b01 + $a22 * $b00) * $det;
		return $output;
	}

	// Transpose the values of a mat4
	// @returns {mat4} out
	/// <param name="output">@param {mat4} out the receiving matrix</param>
	/// <param name="a">@param {mat4} a the source matrix</param>
	static function Transpose(&$output, &$a)
	{
		$output[0] = $a[0];
		$output[1] = $a[4];
		$output[2] = $a[8];
		$output[3] = $a[12];
		$output[4] = $a[1];
		$output[5] = $a[5];
		$output[6] = $a[9];
		$output[7] = $a[13];
		$output[8] = $a[2];
		$output[9] = $a[6];
		$output[10] = $a[10];
		$output[11] = $a[14];
		$output[12] = $a[3];
		$output[13] = $a[7];
		$output[14] = $a[11];
		$output[15] = $a[15];
		return $output;
	}

	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	private function f()
	{
	}
}

class Math
{

	static function PI()
	{
		$a = 3141592;
		return $a / 1000000;
	}

	static function max($a, $b)
	{
		if ($a > $b) {
			return $a;
		}
		else {
			return $b;
		}
	}

	static function min($a, $b)
	{
		if ($a < $b) {
			return $a;
		}
		else {
			return $b;
		}
	}
}

class Platform
{

	static function Cos($r)
	{
		return 0;
	}

	static function Random()
	{
		return 0;
	}

	static function Sin($r)
	{
		return 0;
	}

	static function Sqrt($a)
	{
		return 0;
	}
}

class Quat
{

	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	private function f()
	{
	}
}

class Vec2
{

	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	private function f()
	{
	}
}

// 3 Dimensional Vector
class Vec3
{

	// Adds two vec3's
	// @returns {vec3} out
	/// <param name="output">/@param {vec3} out the receiving vector</param>
	/// <param name="a">/@param {vec3} a the first operand</param>
	/// <param name="b">/@param {vec3} b the second operand</param>
	static function Add(&$output, &$a, &$b)
	{
		$output[0] = $a[0] + $b[0];
		$output[1] = $a[1] + $b[1];
		$output[2] = $a[2] + $b[2];
		return $output;
	}

	// Creates a new vec3 initialized with values from an existing vector
	// Returns {vec3} a new 3D vector
	/// <param name="a">a vector to clone</param>
	static function Clone(&$a)
	{
		$output = array();
		$output[0] = $a[0];
		$output[1] = $a[1];
		$output[2] = $a[2];
		return $output;
	}

	// Copy the values from one vec3 to another
	// @returns {vec3} out
	/// <param name="output">/@param {vec3} out the receiving vector</param>
	/// <param name="a">/@param {vec3} a the source vector</param>
	static function Copy(&$output, &$a)
	{
		$output[0] = $a[0];
		$output[1] = $a[1];
		$output[2] = $a[2];
		return $output;
	}

	// Creates a new, empty vec3
	// Returns {vec3} a new 3D vector.
	static function Create()
	{
		$output = array();
		$output[0] = 0;
		$output[1] = 0;
		$output[2] = 0;
		return $output;
	}

	// Computes the cross product of two vec3's
	// @returns {vec3} out
	/// <param name="output">/@param {vec3} out the receiving vector</param>
	/// <param name="a">/@param {vec3} a the first operand</param>
	/// <param name="b">/@param {vec3} b the second operand</param>
	static function Cross(&$output, &$a, &$b)
	{
		$ax = $a[0];
		$ay = $a[1];
		$az = $a[2];
		$bx = $b[0];
		$by = $b[1];
		$bz = $b[2];
		$output[0] = $ay * $bz - $az * $by;
		$output[1] = $az * $bx - $ax * $bz;
		$output[2] = $ax * $by - $ay * $bx;
		return $output;
	}

	// Alias for {@link vec3.distance}
	static function Dist(&$a, &$b)
	{
		return Vec3::Distance($a, $b);
	}

	// Calculates the euclidian distance between two vec3's
	// @returns {Number} distance between a and b
	/// <param name="a">/@param {vec3} a the first operand</param>
	/// <param name="b">/@param {vec3} b the second operand</param>
	static function Distance(&$a, &$b)
	{
		$x = $b[0] - $a[0];
		$y = $b[1] - $a[1];
		$z = $b[2] - $a[2];
		return Platform::Sqrt($x * $x + $y * $y + $z * $z);
	}

	// Alias for {@link vec3.divide}
	static function Div(&$output, &$a, &$b)
	{
		return Vec3::Divide($output, $a, $b);
	}

	// Divides two vec3's
	// @returns {vec3} out
	/// <param name="output">/@param {vec3} out the receiving vector</param>
	/// <param name="a">/@param {vec3} a the first operand</param>
	/// <param name="b">/@param {vec3} b the second operand</param>
	static function Divide(&$output, &$a, &$b)
	{
		$output[0] = $a[0] / $b[0];
		$output[1] = $a[1] / $b[1];
		$output[2] = $a[2] / $b[2];
		return $output;
	}

	// Calculates the dot product of two vec3's
	// @returns {Number} dot product of a and b
	/// <param name="a">/@param {vec3} a the first operand</param>
	/// <param name="b">/@param {vec3} b the second operand</param>
	static function Dot(&$a, &$b)
	{
		return $a[0] * $b[0] + $a[1] * $b[1] + $a[2] * $b[2];
	}

	// Creates a new vec3 initialized with the given values
	// Returns {vec3} a new 3D vector
	/// <param name="x">X component</param>
	/// <param name="y">Y component</param>
	/// <param name="z">Z component</param>
	static function FromValues($x, $y, $z)
	{
		$output = array();
		$output[0] = $x;
		$output[1] = $y;
		$output[2] = $z;
		return $output;
	}

	// Alias for {@link vec3.length}
	static function Len(&$a)
	{
		return Vec3::Length($a);
	}

	// Calculates the length of a vec3
	// @returns {Number} length of a
	/// <param name="a">/@param {vec3} a vector to calculate length of</param>
	static function Length(&$a)
	{
		$x = $a[0];
		$y = $a[1];
		$z = $a[2];
		return Platform::Sqrt($x * $x + $y * $y + $z * $z);
	}

	// Performs a linear interpolation between two vec3's
	// @returns {vec3} out
	/// <param name="output">/@param {vec3} out the receiving vector</param>
	/// <param name="a">/@param {vec3} a the first operand</param>
	/// <param name="b">/@param {vec3} b the second operand</param>
	/// <param name="t">/@param {Number} t interpolation amount between the two inputs</param>
	static function Lerp(&$output, &$a, &$b, $t)
	{
		$ax = $a[0];
		$ay = $a[1];
		$az = $a[2];
		$output[0] = $ax + $t * ($b[0] - $ax);
		$output[1] = $ay + $t * ($b[1] - $ay);
		$output[2] = $az + $t * ($b[2] - $az);
		return $output;
	}

	// Returns the maximum of two vec3's
	// @returns {vec3} out
	/// <param name="output">/@param {vec3} out the receiving vector</param>
	/// <param name="a">/@param {vec3} a the first operand</param>
	/// <param name="b">/@param {vec3} b the second operand</param>
	static function Max(&$output, &$a, &$b)
	{
		$output[0] = Math::max($a[0], $b[0]);
		$output[1] = Math::max($a[1], $b[1]);
		$output[2] = Math::max($a[2], $b[2]);
		return $output;
	}

	// Returns the minimum of two vec3's
	// @returns {vec3} out
	/// <param name="output">/@param {vec3} out the receiving vector</param>
	/// <param name="a">/@param {vec3} a the first operand</param>
	/// <param name="b">/@param {vec3} b the second operand</param>
	static function Min(&$output, &$a, &$b)
	{
		$output[0] = Math::min($a[0], $b[0]);
		$output[1] = Math::min($a[1], $b[1]);
		$output[2] = Math::min($a[2], $b[2]);
		return $output;
	}

	// Alias for {@link vec3.multiply}
	static function Mul(&$output, &$a, &$b)
	{
		return Vec3::Multiply($output, $a, $b);
	}

	// Multiplies two vec3's
	// @returns {vec3} out
	/// <param name="output">/@param {vec3} out the receiving vector</param>
	/// <param name="a">/@param {vec3} a the first operand</param>
	/// <param name="b">/@param {vec3} b the second operand</param>
	static function Multiply(&$output, &$a, &$b)
	{
		$output[0] = $a[0] * $b[0];
		$output[1] = $a[1] * $b[1];
		$output[2] = $a[2] * $b[2];
		return $output;
	}

	// Negates the components of a vec3
	// @returns {vec3} out
	/// <param name="output">/@param {vec3} out the receiving vector</param>
	/// <param name="a">/@param {vec3} a vector to negate</param>
	static function Negate(&$output, &$a)
	{
		$output[0] = 0 - $a[0];
		$output[1] = 0 - $a[1];
		$output[2] = 0 - $a[2];
		return $output;
	}

	// Normalize a vec3
	// @returns {vec3} out
	/// <param name="output">/@param {vec3} out the receiving vector</param>
	/// <param name="a">/@param {vec3} a vector to normalize</param>
	static function Normalize(&$output, &$a)
	{
		$x = $a[0];
		$y = $a[1];
		$z = $a[2];
		$len = $x * $x + $y * $y + $z * $z;
		if ($len > 0) {
			$one = 1;
			$len = $one / Platform::Sqrt($len);
			$output[0] = $a[0] * $len;
			$output[1] = $a[1] * $len;
			$output[2] = $a[2] * $len;
		}
		return $output;
	}

	// Generates a random vector with the given scale
	// @returns {vec3} out
	/// <param name="output">/@param {vec3} out the receiving vector</param>
	/// <param name="scale">/@param {Number} [scale] Length of the resulting vector. If ommitted, a unit vector will be returned</param>
	static function Random(&$output, $scale)
	{
		$one = 1;
		$two = 2;
		$r = Platform::Random() * $two * Math::PI();
		$z = Platform::Random() * $two - $one;
		$zScale = Platform::Sqrt($one - $z * $z) * $scale;
		$output[0] = Platform::Cos($r) * $zScale;
		$output[1] = Platform::Sin($r) * $zScale;
		$output[2] = $z * $scale;
		return $output;
	}

	// Scales a vec3 by a scalar number
	// @returns {vec3} out
	/// <param name="output">/@param {vec3} out the receiving vector</param>
	/// <param name="a">/@param {vec3} a the vector to scale</param>
	/// <param name="b">/@param {Number} b amount to scale the vector by</param>
	static function Scale(&$output, &$a, $b)
	{
		$output[0] = $a[0] * $b;
		$output[1] = $a[1] * $b;
		$output[2] = $a[2] * $b;
		return $output;
	}

	// Adds two vec3's after scaling the second operand by a scalar value
	// @returns {vec3} out
	/// <param name="output">/@param {vec3} out the receiving vector</param>
	/// <param name="a">/@param {vec3} a the first operand</param>
	/// <param name="b">/@param {vec3} b the second operand</param>
	/// <param name="scale">/@param {Number} scale the amount to scale b by before adding</param>
	static function ScaleAndAdd(&$output, &$a, &$b, $scale)
	{
		$output[0] = $a[0] + $b[0] * $scale;
		$output[1] = $a[1] + $b[1] * $scale;
		$output[2] = $a[2] + $b[2] * $scale;
		return $output;
	}

	// Set the components of a vec3 to the given values
	// @returns {vec3} out
	/// <param name="output">/@param {vec3} out the receiving vector</param>
	/// <param name="x">/@param {Number} x X component</param>
	/// <param name="y">/@param {Number} y Y component</param>
	/// <param name="z">/@param {Number} z Z component</param>
	static function Set(&$output, $x, $y, $z)
	{
		$output[0] = $x;
		$output[1] = $y;
		$output[2] = $z;
		return $output;
	}

	// Alias for {@link vec3.squaredDistance}
	// @function
	static function SqrDist(&$a, &$b)
	{
		return Vec3::SquaredDistance($a, $b);
	}

	// Alias for {@link vec3.squaredLength}
	static function SqrLen(&$a)
	{
		return Vec3::SquaredLength($a);
	}

	// Calculates the squared euclidian distance between two vec3's
	// @returns {Number} squared distance between a and b
	/// <param name="a">/@param {vec3} a the first operand</param>
	/// <param name="b">/@param {vec3} b the second operand</param>
	static function SquaredDistance(&$a, &$b)
	{
		$x = $b[0] - $a[0];
		$y = $b[1] - $a[1];
		$z = $b[2] - $a[2];
		return $x * $x + $y * $y + $z * $z;
	}

	// Calculates the squared length of a vec3
	// @returns {Number} squared length of a
	/// <param name="a">/@param {vec3} a vector to calculate squared length of</param>
	static function SquaredLength(&$a)
	{
		$x = $a[0];
		$y = $a[1];
		$z = $a[2];
		return $x * $x + $y * $y + $z * $z;
	}

	// Alias for {@link vec3.subtract}
	// @function
	static function Sub(&$output, &$a, &$b)
	{
		return Vec3::Substract($output, $a, $b);
	}

	// Subtracts vector b from vector a
	// @returns {vec3} out
	/// <param name="output">/@param {vec3} out the receiving vector</param>
	/// <param name="a">/@param {vec3} a the first operand</param>
	/// <param name="b">/@param {vec3} b the second operand</param>
	static function Substract(&$output, &$a, &$b)
	{
		$output[0] = $a[0] - $b[0];
		$output[1] = $a[1] - $b[1];
		$output[2] = $a[2] - $b[2];
		return $output;
	}

	// Transforms the vec3 with a mat3.
	/// <param name="output">/@param {vec3} out the receiving vector</param>
	/// <param name="a">/@param {vec3} a the vector to transform</param>
	/// <param name="m">/@param {mat4} m the 3x3 matrix to transform with</param>
	static function TransformMat3(&$output, &$a, &$m)
	{
		$x = $a[0];
		$y = $a[1];
		$z = $a[2];
		$output[0] = $x * $m[0] + $y * $m[3] + $z * $m[6];
		$output[1] = $x * $m[1] + $y * $m[4] + $z * $m[7];
		$output[2] = $x * $m[2] + $y * $m[5] + $z * $m[8];
		return $output;
	}

	// /Transforms the vec3 with a mat4.
	/// <param name="output">/@param {vec3} out the receiving vector</param>
	/// <param name="a">/@param {vec3} a the vector to transform</param>
	/// <param name="m">/@param {mat4} m matrix to transform with</param>
	function TransformMat4(&$output, &$a, &$m)
	{
		$x = $a[0];
		$y = $a[1];
		$z = $a[2];
		$output[0] = $m[0] * $x + $m[4] * $y + $m[8] * $z + $m[12];
		$output[1] = $m[1] * $x + $m[5] * $y + $m[9] * $z + $m[13];
		$output[2] = $m[2] * $x + $m[6] * $y + $m[10] * $z + $m[14];
		return $output;
	}

	// Transforms the vec3 with a quat
	// @returns {vec3} out
	/// <param name="output">/@param {vec3} out the receiving vector</param>
	/// <param name="a">/@param {vec3} a the vector to transform</param>
	/// <param name="q">/@param {quat} q quaternion to transform with</param>
	static function TransformQuat(&$output, &$a, &$q)
	{
		$x = $a[0];
		$y = $a[1];
		$z = $a[2];
		$qx = $q[0];
		$qy = $q[1];
		$qz = $q[2];
		$qw = $q[3];
		$ix = $qw * $x + $qy * $z - $qz * $y;
		$iy = $qw * $y + $qz * $x - $qx * $z;
		$iz = $qw * $z + $qx * $y - $qy * $x;
		$iw = (0 - $qx) * $x - $qy * $y - $qz * $z;
		$output[0] = $ix * $qw + $iw * (0 - $qx) + $iy * (0 - $qz) - $iz * (0 - $qy);
		$output[1] = $iy * $qw + $iw * (0 - $qy) + $iz * (0 - $qx) - $ix * (0 - $qz);
		$output[2] = $iz * $qw + $iw * (0 - $qz) + $ix * (0 - $qy) - $iy * (0 - $qx);
		return $output;
	}

	// /Perform some operation over an array of vec3s.
	static function str(&$a)
	{
		return "";
	}
}

class Vec4
{

	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	// **
	private function f()
	{
	}
}
?>
