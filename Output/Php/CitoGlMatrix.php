<?php
// Generated automatically with "cito". Do not edit.

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
?>
