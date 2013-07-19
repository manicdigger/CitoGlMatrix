<?php
// Generated automatically with "cito". Do not edit.

class CitoAssert
{
	function __construct(){
		$this->errors = array();
		$this->errorsCount = 0;
	}

	function Arr16($p, $p_2, $p_3, $p_4, $p_5, $p_6, $p_7, $p_8, $p_9, $p_10, $p_11, $p_12, $p_13, $p_14, $p_15, $p_16)
	{
		$arr = array();
		$arr[0] = $p;
		$arr[1] = $p_2;
		$arr[2] = $p_3;
		$arr[3] = $p_4;
		$arr[4] = $p_5;
		$arr[5] = $p_6;
		$arr[6] = $p_7;
		$arr[7] = $p_8;
		$arr[8] = $p_9;
		$arr[9] = $p_10;
		$arr[10] = $p_11;
		$arr[11] = $p_12;
		$arr[12] = $p_13;
		$arr[13] = $p_14;
		$arr[14] = $p_15;
		$arr[15] = $p_16;
		return $arr;
	}

	function Arr3($p, $p_2, $p_3)
	{
		$arr = array();
		$arr[0] = $p;
		$arr[1] = $p_2;
		$arr[2] = $p_3;
		return $arr;
	}

	function Arr9($p, $p_2, $p_3, $p_4, $p_5, $p_6, $p_7, $p_8, $p_9)
	{
		$arr = array();
		$arr[0] = $p;
		$arr[1] = $p_2;
		$arr[2] = $p_3;
		$arr[3] = $p_4;
		$arr[4] = $p_5;
		$arr[5] = $p_6;
		$arr[6] = $p_7;
		$arr[7] = $p_8;
		$arr[8] = $p_9;
		return $arr;
	}

	function AssertArrayEqual(&$actual, &$expected, $length, $msg)
	{
		for ($i = 0; $i < $length; $i++) {
			if ($actual[$i] != $expected[$i]) {
				$this->errors[$this->errorsCount++] = $msg;
			}
		}
	}

	function AssertCloseTo($actual, $expected, $msg)
	{
		if (GlMatrixMath::Abs($actual - $expected) > GlMatrixMath::GLMAT_EPSILON()) {
			$this->errors[$this->errorsCount++] = $msg;
		}
	}

	function AssertEqual($actual, $expected, $msg)
	{
		if ($actual != $expected) {
			$this->errors[$this->errorsCount++] = $msg;
		}
	}
	private $errors;
	private $errorsCount;
}

class GlMatrixMath
{

	static function Abs($len)
	{
		if ($len < 0) {
			return -$len;
		}
		else {
			return $len;
		}
	}

	static function GLMAT_EPSILON()
	{
		$one = 1;
		return $one / 1000000;
	}

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

// 2x2 Matrix
class Mat2
{

	// Calculates the adjugate of a mat2
	static function Adjoint(&$output, &$a)
	{
		$a0 = $a[0];
		$output[0] = $a[3];
		$output[1] = -$a[1];
		$output[2] = -$a[2];
		$output[3] = $a0;
		return $output;
	}

	// Creates a new mat2 initialized with values from an existing matrix
	// @returns {mat2} a new 2x2 matrix
	/// <param name="a">@param {mat2} a matrix to clone</param>
	static function Clone(&$a)
	{
		$output = array();
		$output[0] = $a[0];
		$output[1] = $a[1];
		$output[2] = $a[2];
		$output[3] = $a[3];
		return $output;
	}

	// Copy the values from one mat2 to another
	// @param {mat2} output the receiving matrix
	// @param {mat2} a the source matrix
	// @returns {mat2} output
	static function Copy(&$output, &$a)
	{
		$output[0] = $a[0];
		$output[1] = $a[1];
		$output[2] = $a[2];
		$output[3] = $a[3];
		return $output;
	}

	// Creates a new identity mat2
	// @returns {mat2} a new 2x2 matrix
	static function Create()
	{
		$output = array();
		$output[0] = 1;
		$output[1] = 0;
		$output[2] = 0;
		$output[3] = 1;
		return $output;
	}

	static function Determinant(&$a)
	{
		return $a[0] * $a[3] - $a[2] * $a[1];
	}

	// Set a mat2 to the identity matrix
	// @param {mat2} output the receiving matrix
	// @returns {mat2} output
	static function Identity(&$output)
	{
		$output[0] = 1;
		$output[1] = 0;
		$output[2] = 0;
		$output[3] = 1;
		return $output;
	}

	// Inverts a mat2
	static function Invert(&$output, &$a)
	{
		$a0 = $a[0];
		$a1 = $a[1];
		$a2 = $a[2];
		$a3 = $a[3];
		$det = $a0 * $a3 - $a2 * $a1;
		if ($det == 0) {
			return null;
		}
		$one = 1;
		$det = $one / $det;
		$output[0] = $a3 * $det;
		$output[1] = -$a1 * $det;
		$output[2] = -$a2 * $det;
		$output[3] = $a0 * $det;
		return $output;
	}

	// Alias for {@link mat2.multiply}
	static function Mul(&$output, &$a, &$b)
	{
		return Mat2::Multiply($output, $a, $b);
	}

	static function Multiply(&$output, &$a, &$b)
	{
		$a0 = $a[0];
		$a1 = $a[1];
		$a2 = $a[2];
		$a3 = $a[3];
		$b0 = $b[0];
		$b1 = $b[1];
		$b2 = $b[2];
		$b3 = $b[3];
		$output[0] = $a0 * $b0 + $a1 * $b2;
		$output[1] = $a0 * $b1 + $a1 * $b3;
		$output[2] = $a2 * $b0 + $a3 * $b2;
		$output[3] = $a2 * $b1 + $a3 * $b3;
		return $output;
	}

	// **
	static function Rotate(&$output, &$a, $rad)
	{
		$a0 = $a[0];
		$a1 = $a[1];
		$a2 = $a[2];
		$a3 = $a[3];
		$s = Platform::Sin($rad);
		$c = Platform::Cos($rad);
		$output[0] = $a0 * $c + $a1 * $s;
		$output[1] = $a0 * -$s + $a1 * $c;
		$output[2] = $a2 * $c + $a3 * $s;
		$output[3] = $a2 * -$s + $a3 * $c;
		return $output;
	}

	// **
	static function Scale(&$output, &$a, &$v)
	{
		$a0 = $a[0];
		$a1 = $a[1];
		$a2 = $a[2];
		$a3 = $a[3];
		$v0 = $v[0];
		$v1 = $v[1];
		$output[0] = $a0 * $v0;
		$output[1] = $a1 * $v1;
		$output[2] = $a2 * $v0;
		$output[3] = $a3 * $v1;
		return $output;
	}

	// Transpose the values of a mat2
	// @param {mat2} output the receiving matrix
	// @param {mat2} a the source matrix
	// @returns {mat2} output
	static function Transpose(&$output, &$a)
	{
		$output[0] = $a[0];
		$output[1] = $a[2];
		$output[2] = $a[1];
		$output[3] = $a[3];
		return $output;
	}

	// **
	private function f()
	{
	}
}

class Mat2d
{

	// **
	static function Clone(&$a)
	{
		$output = array();
		$output[0] = $a[0];
		$output[1] = $a[1];
		$output[2] = $a[2];
		$output[3] = $a[3];
		$output[4] = $a[4];
		$output[5] = $a[5];
		return $output;
	}

	// **
	static function Copy(&$output, &$a)
	{
		$output[0] = $a[0];
		$output[1] = $a[1];
		$output[2] = $a[2];
		$output[3] = $a[3];
		$output[4] = $a[4];
		$output[5] = $a[5];
		return $output;
	}

	// **
	static function Create()
	{
		$output = array();
		$output[0] = 1;
		$output[1] = 0;
		$output[2] = 0;
		$output[3] = 1;
		$output[4] = 0;
		$output[5] = 0;
		return $output;
	}

	// **
	static function Determinant(&$a)
	{
		return $a[0] * $a[3] - $a[1] * $a[2];
	}

	// **
	static function Identity(&$output)
	{
		$output[0] = 1;
		$output[1] = 0;
		$output[2] = 0;
		$output[3] = 1;
		$output[4] = 0;
		$output[5] = 0;
		return $output;
	}

	// **
	static function Invert(&$output, &$a)
	{
		$aa = $a[0];
		$ab = $a[1];
		$ac = $a[2];
		$ad = $a[3];
		$atx = $a[4];
		$aty = $a[5];
		$det = $aa * $ad - $ab * $ac;
		if ($det == 0) {
			return null;
		}
		$one = 1;
		$det = $one / $det;
		$output[0] = $ad * $det;
		$output[1] = -$ab * $det;
		$output[2] = -$ac * $det;
		$output[3] = $aa * $det;
		$output[4] = ($ac * $aty - $ad * $atx) * $det;
		$output[5] = ($ab * $atx - $aa * $aty) * $det;
		return $output;
	}

	// **
	static function Mul(&$output, &$a, &$b)
	{
		return Mat2d::Multiply($output, $a, $b);
	}

	// **
	static function Multiply(&$output, &$a, &$b)
	{
		$aa = $a[0];
		$ab = $a[1];
		$ac = $a[2];
		$ad = $a[3];
		$atx = $a[4];
		$aty = $a[5];
		$ba = $b[0];
		$bb = $b[1];
		$bc = $b[2];
		$bd = $b[3];
		$btx = $b[4];
		$bty = $b[5];
		$output[0] = $aa * $ba + $ab * $bc;
		$output[1] = $aa * $bb + $ab * $bd;
		$output[2] = $ac * $ba + $ad * $bc;
		$output[3] = $ac * $bb + $ad * $bd;
		$output[4] = $ba * $atx + $bc * $aty + $btx;
		$output[5] = $bb * $atx + $bd * $aty + $bty;
		return $output;
	}

	// **
	static function Rotate(&$output, &$a, $rad)
	{
		$aa = $a[0];
		$ab = $a[1];
		$ac = $a[2];
		$ad = $a[3];
		$atx = $a[4];
		$aty = $a[5];
		$st = Platform::Sin($rad);
		$ct = Platform::Cos($rad);
		$output[0] = $aa * $ct + $ab * $st;
		$output[1] = -$aa * $st + $ab * $ct;
		$output[2] = $ac * $ct + $ad * $st;
		$output[3] = -$ac * $st + $ct * $ad;
		$output[4] = $ct * $atx + $st * $aty;
		$output[5] = $ct * $aty - $st * $atx;
		return $output;
	}

	// **
	static function Scale(&$output, &$a, &$v)
	{
		$vx = $v[0];
		$vy = $v[1];
		$output[0] = $a[0] * $vx;
		$output[1] = $a[1] * $vy;
		$output[2] = $a[2] * $vx;
		$output[3] = $a[3] * $vy;
		$output[4] = $a[4] * $vx;
		$output[5] = $a[5] * $vy;
		return $output;
	}

	// **
	static function Translate(&$output, &$a, &$v)
	{
		$output[0] = $a[0];
		$output[1] = $a[1];
		$output[2] = $a[2];
		$output[3] = $a[3];
		$output[4] = $a[4] + $v[0];
		$output[5] = $a[5] + $v[1];
		return $output;
	}

	// **
	private function f()
	{
	}
}

class Mat3
{

	// **
	static function Adjoint(&$output, &$a)
	{
		$a00 = $a[0];
		$a01 = $a[1];
		$a02 = $a[2];
		$a10 = $a[3];
		$a11 = $a[4];
		$a12 = $a[5];
		$a20 = $a[6];
		$a21 = $a[7];
		$a22 = $a[8];
		$output[0] = $a11 * $a22 - $a12 * $a21;
		$output[1] = $a02 * $a21 - $a01 * $a22;
		$output[2] = $a01 * $a12 - $a02 * $a11;
		$output[3] = $a12 * $a20 - $a10 * $a22;
		$output[4] = $a00 * $a22 - $a02 * $a20;
		$output[5] = $a02 * $a10 - $a00 * $a12;
		$output[6] = $a10 * $a21 - $a11 * $a20;
		$output[7] = $a01 * $a20 - $a00 * $a21;
		$output[8] = $a00 * $a11 - $a01 * $a10;
		return $output;
	}

	// **
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
		return $output;
	}

	// **
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
		return $output;
	}

	// **
	static function Create()
	{
		$output = array();
		$output[0] = 1;
		$output[1] = 0;
		$output[2] = 0;
		$output[3] = 0;
		$output[4] = 1;
		$output[5] = 0;
		$output[6] = 0;
		$output[7] = 0;
		$output[8] = 1;
		return $output;
	}

	// **
	static function Determinant(&$a)
	{
		$a00 = $a[0];
		$a01 = $a[1];
		$a02 = $a[2];
		$a10 = $a[3];
		$a11 = $a[4];
		$a12 = $a[5];
		$a20 = $a[6];
		$a21 = $a[7];
		$a22 = $a[8];
		return $a00 * ($a22 * $a11 - $a12 * $a21) + $a01 * (-$a22 * $a10 + $a12 * $a20) + $a02 * ($a21 * $a10 - $a11 * $a20);
	}

	// **
	static function FromMat2d(&$output, &$a)
	{
		$output[0] = $a[0];
		$output[1] = $a[1];
		$output[2] = 0;
		$output[3] = $a[2];
		$output[4] = $a[3];
		$output[5] = 0;
		$output[6] = $a[4];
		$output[7] = $a[5];
		$output[8] = 1;
		return $output;
	}

	// **
	static function FromMat4(&$output, &$a)
	{
		$output[0] = $a[0];
		$output[1] = $a[1];
		$output[2] = $a[2];
		$output[3] = $a[4];
		$output[4] = $a[5];
		$output[5] = $a[6];
		$output[6] = $a[8];
		$output[7] = $a[9];
		$output[8] = $a[10];
		return $output;
	}

	// **
	static function FromQuat(&$output, &$q)
	{
		$x = $q[0];
		$y = $q[1];
		$z = $q[2];
		$w = $q[3];
		$x2 = $x + $x;
		$y2 = $y + $y;
		$z2 = $z + $z;
		$xx = $x * $x2;
		$xy = $x * $y2;
		$xz = $x * $z2;
		$yy = $y * $y2;
		$yz = $y * $z2;
		$zz = $z * $z2;
		$wx = $w * $x2;
		$wy = $w * $y2;
		$wz = $w * $z2;
		$output[0] = 1 - ($yy + $zz);
		$output[3] = $xy + $wz;
		$output[6] = $xz - $wy;
		$output[1] = $xy - $wz;
		$output[4] = 1 - ($xx + $zz);
		$output[7] = $yz + $wx;
		$output[2] = $xz + $wy;
		$output[5] = $yz - $wx;
		$output[8] = 1 - ($xx + $yy);
		return $output;
	}

	// **
	static function Identity(&$output)
	{
		$output[0] = 1;
		$output[1] = 0;
		$output[2] = 0;
		$output[3] = 0;
		$output[4] = 1;
		$output[5] = 0;
		$output[6] = 0;
		$output[7] = 0;
		$output[8] = 1;
		return $output;
	}

	// **
	static function Invert(&$output, &$a)
	{
		$a00 = $a[0];
		$a01 = $a[1];
		$a02 = $a[2];
		$a10 = $a[3];
		$a11 = $a[4];
		$a12 = $a[5];
		$a20 = $a[6];
		$a21 = $a[7];
		$a22 = $a[8];
		$b01 = $a22 * $a11 - $a12 * $a21;
		$b11 = -$a22 * $a10 + $a12 * $a20;
		$b21 = $a21 * $a10 - $a11 * $a20;
		$det = $a00 * $b01 + $a01 * $b11 + $a02 * $b21;
		if ($det == 0) {
			return null;
		}
		$one = 1;
		$det = $one / $det;
		$output[0] = $b01 * $det;
		$output[1] = (-$a22 * $a01 + $a02 * $a21) * $det;
		$output[2] = ($a12 * $a01 - $a02 * $a11) * $det;
		$output[3] = $b11 * $det;
		$output[4] = ($a22 * $a00 - $a02 * $a20) * $det;
		$output[5] = (-$a12 * $a00 + $a02 * $a10) * $det;
		$output[6] = $b21 * $det;
		$output[7] = (-$a21 * $a00 + $a01 * $a20) * $det;
		$output[8] = ($a11 * $a00 - $a01 * $a10) * $det;
		return $output;
	}

	// **
	static function Mul(&$output, &$a, &$b)
	{
		return Mat3::Multiply($output, $a, $b);
	}

	// **
	static function Multiply(&$output, &$a, &$b)
	{
		$a00 = $a[0];
		$a01 = $a[1];
		$a02 = $a[2];
		$a10 = $a[3];
		$a11 = $a[4];
		$a12 = $a[5];
		$a20 = $a[6];
		$a21 = $a[7];
		$a22 = $a[8];
		$b00 = $b[0];
		$b01 = $b[1];
		$b02 = $b[2];
		$b10 = $b[3];
		$b11 = $b[4];
		$b12 = $b[5];
		$b20 = $b[6];
		$b21 = $b[7];
		$b22 = $b[8];
		$output[0] = $b00 * $a00 + $b01 * $a10 + $b02 * $a20;
		$output[1] = $b00 * $a01 + $b01 * $a11 + $b02 * $a21;
		$output[2] = $b00 * $a02 + $b01 * $a12 + $b02 * $a22;
		$output[3] = $b10 * $a00 + $b11 * $a10 + $b12 * $a20;
		$output[4] = $b10 * $a01 + $b11 * $a11 + $b12 * $a21;
		$output[5] = $b10 * $a02 + $b11 * $a12 + $b12 * $a22;
		$output[6] = $b20 * $a00 + $b21 * $a10 + $b22 * $a20;
		$output[7] = $b20 * $a01 + $b21 * $a11 + $b22 * $a21;
		$output[8] = $b20 * $a02 + $b21 * $a12 + $b22 * $a22;
		return $output;
	}

	// **
	static function NormalFromMat4(&$output, &$a)
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
		$output[1] = ($a12 * $b08 - $a10 * $b11 - $a13 * $b07) * $det;
		$output[2] = ($a10 * $b10 - $a11 * $b08 + $a13 * $b06) * $det;
		$output[3] = ($a02 * $b10 - $a01 * $b11 - $a03 * $b09) * $det;
		$output[4] = ($a00 * $b11 - $a02 * $b08 + $a03 * $b07) * $det;
		$output[5] = ($a01 * $b08 - $a00 * $b10 - $a03 * $b06) * $det;
		$output[6] = ($a31 * $b05 - $a32 * $b04 + $a33 * $b03) * $det;
		$output[7] = ($a32 * $b02 - $a30 * $b05 - $a33 * $b01) * $det;
		$output[8] = ($a30 * $b04 - $a31 * $b02 + $a33 * $b00) * $det;
		return $output;
	}

	// **
	static function Rotate(&$output, &$a, $rad)
	{
		$a00 = $a[0];
		$a01 = $a[1];
		$a02 = $a[2];
		$a10 = $a[3];
		$a11 = $a[4];
		$a12 = $a[5];
		$a20 = $a[6];
		$a21 = $a[7];
		$a22 = $a[8];
		$s = Platform::Sin($rad);
		$c = Platform::Cos($rad);
		$output[0] = $c * $a00 + $s * $a10;
		$output[1] = $c * $a01 + $s * $a11;
		$output[2] = $c * $a02 + $s * $a12;
		$output[3] = $c * $a10 - $s * $a00;
		$output[4] = $c * $a11 - $s * $a01;
		$output[5] = $c * $a12 - $s * $a02;
		$output[6] = $a20;
		$output[7] = $a21;
		$output[8] = $a22;
		return $output;
	}

	// **
	static function Scale(&$output, &$a, &$v)
	{
		$x = $v[0];
		$y = $v[1];
		$output[0] = $x * $a[0];
		$output[1] = $x * $a[1];
		$output[2] = $x * $a[2];
		$output[3] = $y * $a[3];
		$output[4] = $y * $a[4];
		$output[5] = $y * $a[5];
		$output[6] = $a[6];
		$output[7] = $a[7];
		$output[8] = $a[8];
		return $output;
	}

	// **
	static function Translate(&$output, &$a, &$v)
	{
		$a00 = $a[0];
		$a01 = $a[1];
		$a02 = $a[2];
		$a10 = $a[3];
		$a11 = $a[4];
		$a12 = $a[5];
		$a20 = $a[6];
		$a21 = $a[7];
		$a22 = $a[8];
		$x = $v[0];
		$y = $v[1];
		$output[0] = $a00;
		$output[1] = $a01;
		$output[2] = $a02;
		$output[3] = $a10;
		$output[4] = $a11;
		$output[5] = $a12;
		$output[6] = $x * $a00 + $y * $a10 + $a20;
		$output[7] = $x * $a01 + $y * $a11 + $a21;
		$output[8] = $x * $a02 + $y * $a12 + $a22;
		return $output;
	}

	// **
	static function Transpose(&$output, &$a)
	{
		$output[0] = $a[0];
		$output[1] = $a[3];
		$output[2] = $a[6];
		$output[3] = $a[1];
		$output[4] = $a[4];
		$output[5] = $a[7];
		$output[6] = $a[2];
		$output[7] = $a[5];
		$output[8] = $a[8];
		return $output;
	}

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
	// @returns {Number} determinant of a
	/// <param name="a">@param {mat4} a the source matrix</param>
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

	// Calculates a 4x4 matrix from the given quaternion
	// @returns {mat4} out
	/// <param name="output">{mat4} out mat4 receiving operation result</param>
	/// <param name="q">{quat} q Quaternion to create matrix from</param>
	static function FromQuat(&$output, &$q)
	{
		$x = $q[0];
		$y = $q[1];
		$z = $q[2];
		$w = $q[3];
		$x2 = $x + $x;
		$y2 = $y + $y;
		$z2 = $z + $z;
		$xx = $x * $x2;
		$xy = $x * $y2;
		$xz = $x * $z2;
		$yy = $y * $y2;
		$yz = $y * $z2;
		$zz = $z * $z2;
		$wx = $w * $x2;
		$wy = $w * $y2;
		$wz = $w * $z2;
		$output[0] = 1 - ($yy + $zz);
		$output[1] = $xy + $wz;
		$output[2] = $xz - $wy;
		$output[3] = 0;
		$output[4] = $xy - $wz;
		$output[5] = 1 - ($xx + $zz);
		$output[6] = $yz + $wx;
		$output[7] = 0;
		$output[8] = $xz + $wy;
		$output[9] = $yz - $wx;
		$output[10] = 1 - ($xx + $yy);
		$output[11] = 0;
		$output[12] = 0;
		$output[13] = 0;
		$output[14] = 0;
		$output[15] = 1;
		return $output;
	}

	// Creates a matrix from a quaternion rotation and vector translation
	// This is equivalent to (but much faster than):
	// mat4.identity(dest);
	// mat4.translate(dest, vec);
	// var quatMat = mat4.create();
	// quat4.toMat4(quat, quatMat);
	// mat4.multiply(dest, quatMat);
	// @returns {mat4} out
	/// <param name="output">{mat4} out mat4 receiving operation result</param>
	/// <param name="q">{quat4} q Rotation quaternion</param>
	/// <param name="v">{vec3} v Translation vector</param>
	static function FromRotationTranslation(&$output, &$q, &$v)
	{
		$x = $q[0];
		$y = $q[1];
		$z = $q[2];
		$w = $q[3];
		$x2 = $x + $x;
		$y2 = $y + $y;
		$z2 = $z + $z;
		$xx = $x * $x2;
		$xy = $x * $y2;
		$xz = $x * $z2;
		$yy = $y * $y2;
		$yz = $y * $z2;
		$zz = $z * $z2;
		$wx = $w * $x2;
		$wy = $w * $y2;
		$wz = $w * $z2;
		$output[0] = 1 - ($yy + $zz);
		$output[1] = $xy + $wz;
		$output[2] = $xz - $wy;
		$output[3] = 0;
		$output[4] = $xy - $wz;
		$output[5] = 1 - ($xx + $zz);
		$output[6] = $yz + $wx;
		$output[7] = 0;
		$output[8] = $xz + $wy;
		$output[9] = $yz - $wx;
		$output[10] = 1 - ($xx + $yy);
		$output[11] = 0;
		$output[12] = $v[0];
		$output[13] = $v[1];
		$output[14] = $v[2];
		$output[15] = 1;
		return $output;
	}

	// Generates a frustum matrix with the given bounds
	// @returns {mat4} out
	/// <param name="output">{mat4} out mat4 frustum matrix will be written into</param>
	/// <param name="left">{Number} left Left bound of the frustum</param>
	/// <param name="right">{Number} right Right bound of the frustum</param>
	/// <param name="bottom">{Number} bottom Bottom bound of the frustum</param>
	/// <param name="top">{Number} top Top bound of the frustum</param>
	/// <param name="near">{Number} near Near bound of the frustum</param>
	/// <param name="far">{Number} far Far bound of the frustum</param>
	static function Frustum(&$output, $left, $right, $bottom, $top, $near, $far)
	{
		$rl = 1 / ($right - $left);
		$tb = 1 / ($top - $bottom);
		$nf = 1 / ($near - $far);
		$output[0] = $near * 2 * $rl;
		$output[1] = 0;
		$output[2] = 0;
		$output[3] = 0;
		$output[4] = 0;
		$output[5] = $near * 2 * $tb;
		$output[6] = 0;
		$output[7] = 0;
		$output[8] = ($right + $left) * $rl;
		$output[9] = ($top + $bottom) * $tb;
		$output[10] = ($far + $near) * $nf;
		$output[11] = -1;
		$output[12] = 0;
		$output[13] = 0;
		$output[14] = $far * $near * 2 * $nf;
		$output[15] = 0;
		return $output;
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
	// @returns {mat4} out
	/// <param name="output">{mat4} out the receiving matrix</param>
	/// <param name="a">{mat4} a the source matrix</param>
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

	// Generates a look-at matrix with the given eye position, focal point, and up axis
	// @returns {mat4} out
	/// <param name="output">{mat4} out mat4 frustum matrix will be written into</param>
	/// <param name="eye">{vec3} eye Position of the viewer</param>
	/// <param name="center">{vec3} center Point the viewer is looking at</param>
	/// <param name="up">{vec3} up vec3 pointing up</param>
	static function LookAt(&$output, &$eye, &$center, &$up)
	{
		$x0;
		$x1;
		$x2;
		$y0;
		$y1;
		$y2;
		$z0;
		$z1;
		$z2;
		$len;
		$eyex = $eye[0];
		$eyey = $eye[1];
		$eyez = $eye[2];
		$upx = $up[0];
		$upy = $up[1];
		$upz = $up[2];
		$centerx = $center[0];
		$centery = $center[1];
		$centerz = $center[2];
		if (GlMatrixMath::Abs($eyex - $centerx) < GlMatrixMath::GLMAT_EPSILON() && GlMatrixMath::Abs($eyey - $centery) < GlMatrixMath::GLMAT_EPSILON() && GlMatrixMath::Abs($eyez - $centerz) < GlMatrixMath::GLMAT_EPSILON()) {
			return Mat4::Identity($output);
		}
		$z0 = $eyex - $centerx;
		$z1 = $eyey - $centery;
		$z2 = $eyez - $centerz;
		$len = 1 / Platform::Sqrt($z0 * $z0 + $z1 * $z1 + $z2 * $z2);
		$z0 *= $len;
		$z1 *= $len;
		$z2 *= $len;
		$x0 = $upy * $z2 - $upz * $z1;
		$x1 = $upz * $z0 - $upx * $z2;
		$x2 = $upx * $z1 - $upy * $z0;
		$len = Platform::Sqrt($x0 * $x0 + $x1 * $x1 + $x2 * $x2);
		if ($len == 0) {
			$x0 = 0;
			$x1 = 0;
			$x2 = 0;
		}
		else {
			$len = 1 / $len;
			$x0 *= $len;
			$x1 *= $len;
			$x2 *= $len;
		}
		$y0 = $z1 * $x2 - $z2 * $x1;
		$y1 = $z2 * $x0 - $z0 * $x2;
		$y2 = $z0 * $x1 - $z1 * $x0;
		$len = Platform::Sqrt($y0 * $y0 + $y1 * $y1 + $y2 * $y2);
		if ($len == 0) {
			$y0 = 0;
			$y1 = 0;
			$y2 = 0;
		}
		else {
			$len = 1 / $len;
			$y0 *= $len;
			$y1 *= $len;
			$y2 *= $len;
		}
		$output[0] = $x0;
		$output[1] = $y0;
		$output[2] = $z0;
		$output[3] = 0;
		$output[4] = $x1;
		$output[5] = $y1;
		$output[6] = $z1;
		$output[7] = 0;
		$output[8] = $x2;
		$output[9] = $y2;
		$output[10] = $z2;
		$output[11] = 0;
		$output[12] = -($x0 * $eyex + $x1 * $eyey + $x2 * $eyez);
		$output[13] = -($y0 * $eyex + $y1 * $eyey + $y2 * $eyez);
		$output[14] = -($z0 * $eyex + $z1 * $eyey + $z2 * $eyez);
		$output[15] = 1;
		return $output;
	}

	// Alias for {@link mat4.multiply}
	static function Mul(&$output, &$a, &$b)
	{
		return Mat4::Multiply($output, $a, $b);
	}

	// Multiplies two mat4's
	// @returns {mat4} out
	/// <param name="output">@param {mat4} out the receiving matrix</param>
	/// <param name="a">@param {mat4} a the first operand</param>
	/// <param name="b">@param {mat4} b the second operand</param>
	static function Multiply(&$output, &$a, &$b)
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
		$b0 = $b[0];
		$b1 = $b[1];
		$b2 = $b[2];
		$b3 = $b[3];
		$output[0] = $b0 * $a00 + $b1 * $a10 + $b2 * $a20 + $b3 * $a30;
		$output[1] = $b0 * $a01 + $b1 * $a11 + $b2 * $a21 + $b3 * $a31;
		$output[2] = $b0 * $a02 + $b1 * $a12 + $b2 * $a22 + $b3 * $a32;
		$output[3] = $b0 * $a03 + $b1 * $a13 + $b2 * $a23 + $b3 * $a33;
		$b0 = $b[4];
		$b1 = $b[5];
		$b2 = $b[6];
		$b3 = $b[7];
		$output[4] = $b0 * $a00 + $b1 * $a10 + $b2 * $a20 + $b3 * $a30;
		$output[5] = $b0 * $a01 + $b1 * $a11 + $b2 * $a21 + $b3 * $a31;
		$output[6] = $b0 * $a02 + $b1 * $a12 + $b2 * $a22 + $b3 * $a32;
		$output[7] = $b0 * $a03 + $b1 * $a13 + $b2 * $a23 + $b3 * $a33;
		$b0 = $b[8];
		$b1 = $b[9];
		$b2 = $b[10];
		$b3 = $b[11];
		$output[8] = $b0 * $a00 + $b1 * $a10 + $b2 * $a20 + $b3 * $a30;
		$output[9] = $b0 * $a01 + $b1 * $a11 + $b2 * $a21 + $b3 * $a31;
		$output[10] = $b0 * $a02 + $b1 * $a12 + $b2 * $a22 + $b3 * $a32;
		$output[11] = $b0 * $a03 + $b1 * $a13 + $b2 * $a23 + $b3 * $a33;
		$b0 = $b[12];
		$b1 = $b[13];
		$b2 = $b[14];
		$b3 = $b[15];
		$output[12] = $b0 * $a00 + $b1 * $a10 + $b2 * $a20 + $b3 * $a30;
		$output[13] = $b0 * $a01 + $b1 * $a11 + $b2 * $a21 + $b3 * $a31;
		$output[14] = $b0 * $a02 + $b1 * $a12 + $b2 * $a22 + $b3 * $a32;
		$output[15] = $b0 * $a03 + $b1 * $a13 + $b2 * $a23 + $b3 * $a33;
		return $output;
	}

	// Generates a orthogonal projection matrix with the given bounds
	// @returns {mat4} out
	/// <param name="output">{mat4} out mat4 frustum matrix will be written into</param>
	/// <param name="left">{number} left Left bound of the frustum</param>
	/// <param name="right">{number} right Right bound of the frustum</param>
	/// <param name="bottom">{number} bottom Bottom bound of the frustum</param>
	/// <param name="top">{number} top Top bound of the frustum</param>
	/// <param name="near">{number} near Near bound of the frustum</param>
	/// <param name="far">{number} far Far bound of the frustum</param>
	static function Ortho(&$output, $left, $right, $bottom, $top, $near, $far)
	{
		$lr = 1 / ($left - $right);
		$bt = 1 / ($bottom - $top);
		$nf = 1 / ($near - $far);
		$output[0] = -2 * $lr;
		$output[1] = 0;
		$output[2] = 0;
		$output[3] = 0;
		$output[4] = 0;
		$output[5] = -2 * $bt;
		$output[6] = 0;
		$output[7] = 0;
		$output[8] = 0;
		$output[9] = 0;
		$output[10] = 2 * $nf;
		$output[11] = 0;
		$output[12] = ($left + $right) * $lr;
		$output[13] = ($top + $bottom) * $bt;
		$output[14] = ($far + $near) * $nf;
		$output[15] = 1;
		return $output;
	}

	// Generates a perspective projection matrix with the given bounds
	// @returns {mat4} out
	/// <param name="output">{mat4} out mat4 frustum matrix will be written into</param>
	/// <param name="fovy">{number} fovy Vertical field of view in radians</param>
	/// <param name="aspect">{number} aspect Aspect ratio. typically viewport width/height</param>
	/// <param name="near">{number} near Near bound of the frustum</param>
	/// <param name="far">{number} far Far bound of the frustum</param>
	static function Perspective(&$output, $fovy, $aspect, $near, $far)
	{
		$one = 1;
		$f = $one / Platform::Tan($fovy / 2);
		$nf = 1 / ($near - $far);
		$output[0] = $f / $aspect;
		$output[1] = 0;
		$output[2] = 0;
		$output[3] = 0;
		$output[4] = 0;
		$output[5] = $f;
		$output[6] = 0;
		$output[7] = 0;
		$output[8] = 0;
		$output[9] = 0;
		$output[10] = ($far + $near) * $nf;
		$output[11] = -1;
		$output[12] = 0;
		$output[13] = 0;
		$output[14] = 2 * $far * $near * $nf;
		$output[15] = 0;
		return $output;
	}

	// Rotates a mat4 by the given angle
	// @returns {mat4} out
	/// <param name="output">{mat4} out the receiving matrix</param>
	/// <param name="a">{mat4} a the matrix to rotate</param>
	/// <param name="rad">{Number} rad the angle to rotate the matrix by</param>
	/// <param name="axis">{vec3} axis the axis to rotate around</param>
	static function Rotate(&$output, &$a, $rad, &$axis)
	{
		$x = $axis[0];
		$y = $axis[1];
		$z = $axis[2];
		$len = Platform::Sqrt($x * $x + $y * $y + $z * $z);
		$s;
		$c;
		$t;
		$a00;
		$a01;
		$a02;
		$a03;
		$a10;
		$a11;
		$a12;
		$a13;
		$a20;
		$a21;
		$a22;
		$a23;
		$b00;
		$b01;
		$b02;
		$b10;
		$b11;
		$b12;
		$b20;
		$b21;
		$b22;
		if (GlMatrixMath::Abs($len) < GlMatrixMath::GLMAT_EPSILON()) {
			return null;
		}
		$len = 1 / $len;
		$x *= $len;
		$y *= $len;
		$z *= $len;
		$s = Platform::Sin($rad);
		$c = Platform::Cos($rad);
		$t = 1 - $c;
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
		$b00 = $x * $x * $t + $c;
		$b01 = $y * $x * $t + $z * $s;
		$b02 = $z * $x * $t - $y * $s;
		$b10 = $x * $y * $t - $z * $s;
		$b11 = $y * $y * $t + $c;
		$b12 = $z * $y * $t + $x * $s;
		$b20 = $x * $z * $t + $y * $s;
		$b21 = $y * $z * $t - $x * $s;
		$b22 = $z * $z * $t + $c;
		$output[0] = $a00 * $b00 + $a10 * $b01 + $a20 * $b02;
		$output[1] = $a01 * $b00 + $a11 * $b01 + $a21 * $b02;
		$output[2] = $a02 * $b00 + $a12 * $b01 + $a22 * $b02;
		$output[3] = $a03 * $b00 + $a13 * $b01 + $a23 * $b02;
		$output[4] = $a00 * $b10 + $a10 * $b11 + $a20 * $b12;
		$output[5] = $a01 * $b10 + $a11 * $b11 + $a21 * $b12;
		$output[6] = $a02 * $b10 + $a12 * $b11 + $a22 * $b12;
		$output[7] = $a03 * $b10 + $a13 * $b11 + $a23 * $b12;
		$output[8] = $a00 * $b20 + $a10 * $b21 + $a20 * $b22;
		$output[9] = $a01 * $b20 + $a11 * $b21 + $a21 * $b22;
		$output[10] = $a02 * $b20 + $a12 * $b21 + $a22 * $b22;
		$output[11] = $a03 * $b20 + $a13 * $b21 + $a23 * $b22;
		$output[12] = $a[12];
		$output[13] = $a[13];
		$output[14] = $a[14];
		$output[15] = $a[15];
		return $output;
	}

	// Rotates a matrix by the given angle around the X axis
	// @returns {mat4} out
	/// <param name="output">{mat4} out the receiving matrix</param>
	/// <param name="a">{mat4} a the matrix to rotate</param>
	/// <param name="rad">{Number} rad the angle to rotate the matrix by</param>
	static function RotateX(&$output, &$a, $rad)
	{
		$s = Platform::Sin($rad);
		$c = Platform::Cos($rad);
		$a10 = $a[4];
		$a11 = $a[5];
		$a12 = $a[6];
		$a13 = $a[7];
		$a20 = $a[8];
		$a21 = $a[9];
		$a22 = $a[10];
		$a23 = $a[11];
		$output[0] = $a[0];
		$output[1] = $a[1];
		$output[2] = $a[2];
		$output[3] = $a[3];
		$output[12] = $a[12];
		$output[13] = $a[13];
		$output[14] = $a[14];
		$output[15] = $a[15];
		$output[4] = $a10 * $c + $a20 * $s;
		$output[5] = $a11 * $c + $a21 * $s;
		$output[6] = $a12 * $c + $a22 * $s;
		$output[7] = $a13 * $c + $a23 * $s;
		$output[8] = $a20 * $c - $a10 * $s;
		$output[9] = $a21 * $c - $a11 * $s;
		$output[10] = $a22 * $c - $a12 * $s;
		$output[11] = $a23 * $c - $a13 * $s;
		return $output;
	}

	// Rotates a matrix by the given angle around the Y axis
	// @returns {mat4} out
	/// <param name="output">{mat4} out the receiving matrix</param>
	/// <param name="a">{mat4} a the matrix to rotate</param>
	/// <param name="rad">{Number} rad the angle to rotate the matrix by</param>
	static function RotateY(&$output, &$a, $rad)
	{
		$s = Platform::Sin($rad);
		$c = Platform::Cos($rad);
		$a00 = $a[0];
		$a01 = $a[1];
		$a02 = $a[2];
		$a03 = $a[3];
		$a20 = $a[8];
		$a21 = $a[9];
		$a22 = $a[10];
		$a23 = $a[11];
		$output[4] = $a[4];
		$output[5] = $a[5];
		$output[6] = $a[6];
		$output[7] = $a[7];
		$output[12] = $a[12];
		$output[13] = $a[13];
		$output[14] = $a[14];
		$output[15] = $a[15];
		$output[0] = $a00 * $c - $a20 * $s;
		$output[1] = $a01 * $c - $a21 * $s;
		$output[2] = $a02 * $c - $a22 * $s;
		$output[3] = $a03 * $c - $a23 * $s;
		$output[8] = $a00 * $s + $a20 * $c;
		$output[9] = $a01 * $s + $a21 * $c;
		$output[10] = $a02 * $s + $a22 * $c;
		$output[11] = $a03 * $s + $a23 * $c;
		return $output;
	}

	// Rotates a matrix by the given angle around the Z axis
	// @returns {mat4} out
	/// <param name="output">{mat4} out the receiving matrix</param>
	/// <param name="a">{mat4} a the matrix to rotate</param>
	/// <param name="rad">{Number} rad the angle to rotate the matrix by</param>
	static function RotateZ(&$output, &$a, $rad)
	{
		$s = Platform::Sin($rad);
		$c = Platform::Cos($rad);
		$a00 = $a[0];
		$a01 = $a[1];
		$a02 = $a[2];
		$a03 = $a[3];
		$a10 = $a[4];
		$a11 = $a[5];
		$a12 = $a[6];
		$a13 = $a[7];
		$output[8] = $a[8];
		$output[9] = $a[9];
		$output[10] = $a[10];
		$output[11] = $a[11];
		$output[12] = $a[12];
		$output[13] = $a[13];
		$output[14] = $a[14];
		$output[15] = $a[15];
		$output[0] = $a00 * $c + $a10 * $s;
		$output[1] = $a01 * $c + $a11 * $s;
		$output[2] = $a02 * $c + $a12 * $s;
		$output[3] = $a03 * $c + $a13 * $s;
		$output[4] = $a10 * $c - $a00 * $s;
		$output[5] = $a11 * $c - $a01 * $s;
		$output[6] = $a12 * $c - $a02 * $s;
		$output[7] = $a13 * $c - $a03 * $s;
		return $output;
	}

	// Scales the mat4 by the dimensions in the given vec3
	// @returns {mat4} out
	/// <param name="output">{mat4} out the receiving matrix</param>
	/// <param name="a">{mat4} a the matrix to scale</param>
	/// <param name="v">{vec3} v the vec3 to scale the matrix by</param>
	static function Scale(&$output, &$a, &$v)
	{
		$x = $v[0];
		$y = $v[1];
		$z = $v[2];
		$output[0] = $a[0] * $x;
		$output[1] = $a[1] * $x;
		$output[2] = $a[2] * $x;
		$output[3] = $a[3] * $x;
		$output[4] = $a[4] * $y;
		$output[5] = $a[5] * $y;
		$output[6] = $a[6] * $y;
		$output[7] = $a[7] * $y;
		$output[8] = $a[8] * $z;
		$output[9] = $a[9] * $z;
		$output[10] = $a[10] * $z;
		$output[11] = $a[11] * $z;
		$output[12] = $a[12];
		$output[13] = $a[13];
		$output[14] = $a[14];
		$output[15] = $a[15];
		return $output;
	}

	// Translate a mat4 by the given vector
	// @returns {mat4} out
	/// <param name="output">{mat4} out the receiving matrix</param>
	/// <param name="a">{mat4} a the matrix to translate</param>
	/// <param name="v">{vec3} v vector to translate by</param>
	static function Translate(&$output, &$a, &$v)
	{
		$x = $v[0];
		$y = $v[1];
		$z = $v[2];
		$a00;
		$a01;
		$a02;
		$a03;
		$a10;
		$a11;
		$a12;
		$a13;
		$a20;
		$a21;
		$a22;
		$a23;
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
		$output[0] = $a00;
		$output[1] = $a01;
		$output[2] = $a02;
		$output[3] = $a03;
		$output[4] = $a10;
		$output[5] = $a11;
		$output[6] = $a12;
		$output[7] = $a13;
		$output[8] = $a20;
		$output[9] = $a21;
		$output[10] = $a22;
		$output[11] = $a23;
		$output[12] = $a00 * $x + $a10 * $y + $a20 * $z + $a[12];
		$output[13] = $a01 * $x + $a11 * $y + $a21 * $z + $a[13];
		$output[14] = $a02 * $x + $a12 * $y + $a22 * $z + $a[14];
		$output[15] = $a03 * $x + $a13 * $y + $a23 * $z + $a[15];
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
	private function f()
	{
	}
}

class Platform
{

	static function Acos($a)
	{
		return 0;
	}

	static function Cos($a)
	{
		return 0;
	}

	static function Random()
	{
		return 0;
	}

	static function Sin($a)
	{
		return 0;
	}

	static function Sqrt($a)
	{
		return 0;
	}

	static function Tan($a)
	{
		return 0;
	}
}

class Quat
{

	// **
	static function Add(&$output, &$a, &$b)
	{
		return Vec4::Add($output, $a, $b);
	}

	// **
	static function CalculateW(&$output, &$a)
	{
		$x = $a[0];
		$y = $a[1];
		$z = $a[2];
		$output[0] = $x;
		$output[1] = $y;
		$output[2] = $z;
		$one = 1;
		$output[3] = -Platform::Sqrt(GlMatrixMath::Abs($one - $x * $x - $y * $y - $z * $z));
		return $output;
	}

	// **
	static function Clone(&$a)
	{
		return Vec4::Clone($a);
	}

	// **
	function Conjugate(&$output, &$a)
	{
		$output[0] = -$a[0];
		$output[1] = -$a[1];
		$output[2] = -$a[2];
		$output[3] = $a[3];
		return $output;
	}

	// **
	static function Copy(&$output, &$a)
	{
		return Vec4::Copy($output, $a);
	}

	// **
	static function Create()
	{
		$output = array();
		$output[0] = 0;
		$output[1] = 0;
		$output[2] = 0;
		$output[3] = 1;
		return $output;
	}

	// **
	static function Dot(&$a, &$b)
	{
		return Vec4::Dot($a, $b);
	}

	// **
	static function FromMat3(&$output, &$m)
	{
		$fTrace = $m[0] + $m[4] + $m[8];
		$fRoot;
		$zero = 0;
		$one = 1;
		$half = $one / 2;
		if ($fTrace > $zero) {
			$fRoot = Platform::Sqrt($fTrace + $one);
			$output[3] = $half * $fRoot;
			$fRoot = $half / $fRoot;
			$output[0] = ($m[7] - $m[5]) * $fRoot;
			$output[1] = ($m[2] - $m[6]) * $fRoot;
			$output[2] = ($m[3] - $m[1]) * $fRoot;
		}
		else {
			$i = 0;
			if ($m[4] > $m[0])
				$i = 1;
			if ($m[8] > $m[$i * 3 + $i])
				$i = 2;
			$j = ($i + 1) % 3;
			$k = ($i + 2) % 3;
			$fRoot = Platform::Sqrt($m[$i * 3 + $i] - $m[$j * 3 + $j] - $m[$k * 3 + $k] + $one);
			$output[$i] = $half * $fRoot;
			$fRoot = $half / $fRoot;
			$output[3] = ($m[$k * 3 + $j] - $m[$j * 3 + $k]) * $fRoot;
			$output[$j] = ($m[$j * 3 + $i] + $m[$i * 3 + $j]) * $fRoot;
			$output[$k] = ($m[$k * 3 + $i] + $m[$i * 3 + $k]) * $fRoot;
		}
		return $output;
	}

	// **
	static function FromValues($x, $y, $z, $w)
	{
		return Vec4::FromValues($x, $y, $z, $w);
	}

	// **
	static function Identity(&$output)
	{
		$output[0] = 0;
		$output[1] = 0;
		$output[2] = 0;
		$output[3] = 1;
		return $output;
	}

	// **
	function Invert(&$output, &$a)
	{
		$a0 = $a[0];
		$a1 = $a[1];
		$a2 = $a[2];
		$a3 = $a[3];
		$dot = $a0 * $a0 + $a1 * $a1 + $a2 * $a2 + $a3 * $a3;
		$one = 1;
		$invDot = $dot != 0 ? $one / $dot : 0;
		$output[0] = -$a0 * $invDot;
		$output[1] = -$a1 * $invDot;
		$output[2] = -$a2 * $invDot;
		$output[3] = $a3 * $invDot;
		return $output;
	}

	// **
	static function Len(&$a)
	{
		return Quat::Length($a);
	}

	// **
	static function Length(&$a)
	{
		return Vec4::Length($a);
	}

	// **
	static function Lerp(&$output, &$a, &$b, $t)
	{
		return Vec4::Lerp($output, $a, $b, $t);
	}

	// **
	static function Mul(&$output, &$a, &$b)
	{
		return Quat::Multiply($output, $a, $b);
	}

	// **
	static function Multiply(&$output, &$a, &$b)
	{
		$ax = $a[0];
		$ay = $a[1];
		$az = $a[2];
		$aw = $a[3];
		$bx = $b[0];
		$by = $b[1];
		$bz = $b[2];
		$bw = $b[3];
		$output[0] = $ax * $bw + $aw * $bx + $ay * $bz - $az * $by;
		$output[1] = $ay * $bw + $aw * $by + $az * $bx - $ax * $bz;
		$output[2] = $az * $bw + $aw * $bz + $ax * $by - $ay * $bx;
		$output[3] = $aw * $bw - $ax * $bx - $ay * $by - $az * $bz;
		return $output;
	}

	// **
	static function Normalize(&$output, &$a)
	{
		return Vec4::Normalize($output, $a);
	}

	// **
	static function RotateX(&$output, &$a, $rad)
	{
		$rad /= 2;
		$ax = $a[0];
		$ay = $a[1];
		$az = $a[2];
		$aw = $a[3];
		$bx = Platform::Sin($rad);
		$bw = Platform::Cos($rad);
		$output[0] = $ax * $bw + $aw * $bx;
		$output[1] = $ay * $bw + $az * $bx;
		$output[2] = $az * $bw - $ay * $bx;
		$output[3] = $aw * $bw - $ax * $bx;
		return $output;
	}

	// **
	static function RotateY(&$output, &$a, $rad)
	{
		$rad /= 2;
		$ax = $a[0];
		$ay = $a[1];
		$az = $a[2];
		$aw = $a[3];
		$by = Platform::Sin($rad);
		$bw = Platform::Cos($rad);
		$output[0] = $ax * $bw - $az * $by;
		$output[1] = $ay * $bw + $aw * $by;
		$output[2] = $az * $bw + $ax * $by;
		$output[3] = $aw * $bw - $ay * $by;
		return $output;
	}

	// **
	static function RotateZ(&$output, &$a, $rad)
	{
		$rad /= 2;
		$ax = $a[0];
		$ay = $a[1];
		$az = $a[2];
		$aw = $a[3];
		$bz = Platform::Sin($rad);
		$bw = Platform::Cos($rad);
		$output[0] = $ax * $bw + $ay * $bz;
		$output[1] = $ay * $bw - $ax * $bz;
		$output[2] = $az * $bw + $aw * $bz;
		$output[3] = $aw * $bw - $az * $bz;
		return $output;
	}

	// **
	static function RotationTo(&$output, &$a, &$b)
	{
		$tmpvec3 = Vec3::Create();
		$xUnitVec3 = Vec3::FromValues(1, 0, 0);
		$yUnitVec3 = Vec3::FromValues(0, 1, 0);
		$dot = Vec3::Dot($a, $b);
		$nines = 999999;
		$nines /= 1000000;
		$epsilon = 1;
		$epsilon /= 1000000;
		if ($dot < -$nines) {
			Vec3::Cross($tmpvec3, $xUnitVec3, $a);
			if (Vec3::Length($tmpvec3) < $epsilon)
				Vec3::Cross($tmpvec3, $yUnitVec3, $a);
			Vec3::Normalize($tmpvec3, $tmpvec3);
			Quat::SetAxisAngle($output, $tmpvec3, GlMatrixMath::PI());
			return $output;
		}
		else if ($dot > $nines) {
			$output[0] = 0;
			$output[1] = 0;
			$output[2] = 0;
			$output[3] = 1;
			return $output;
		}
		else {
			Vec3::Cross($tmpvec3, $a, $b);
			$output[0] = $tmpvec3[0];
			$output[1] = $tmpvec3[1];
			$output[2] = $tmpvec3[2];
			$output[3] = 1 + $dot;
			return Quat::Normalize($output, $output);
		}
	}

	// **
	static function Scale(&$output, &$a, $b)
	{
		return Vec4::Scale($output, $a, $b);
	}

	// **
	static function Set(&$output, $x, $y, $z, $w)
	{
		return Vec4::Set($output, $x, $y, $z, $w);
	}

	// **
	static function SetAxes(&$output, &$view, &$right, &$up)
	{
		$matr = Mat3::Create();
		$matr[0] = $right[0];
		$matr[3] = $right[1];
		$matr[6] = $right[2];
		$matr[1] = $up[0];
		$matr[4] = $up[1];
		$matr[7] = $up[2];
		$matr[2] = $view[0];
		$matr[5] = $view[1];
		$matr[8] = $view[2];
		return Quat::Normalize($output, Quat::FromMat3($output, $matr));
	}

	// **
	static function SetAxisAngle(&$output, &$axis, $rad)
	{
		$rad = $rad / 2;
		$s = Platform::Sin($rad);
		$output[0] = $s * $axis[0];
		$output[1] = $s * $axis[1];
		$output[2] = $s * $axis[2];
		$output[3] = Platform::Cos($rad);
		return $output;
	}

	// **
	static function Slerp(&$output, &$a, &$b, $t)
	{
		$ax = $a[0];
		$ay = $a[1];
		$az = $a[2];
		$aw = $a[3];
		$bx = $b[0];
		$by = $b[1];
		$bz = $b[2];
		$bw = $b[3];
		$omega;
		$cosom;
		$sinom;
		$scale0;
		$scale1;
		$cosom = $ax * $bx + $ay * $by + $az * $bz + $aw * $bw;
		if ($cosom < 0) {
			$cosom = -$cosom;
			$bx = -$bx;
			$by = -$by;
			$bz = -$bz;
			$bw = -$bw;
		}
		$one = 1;
		$epsilon = $one / 1000000;
		if ($one - $cosom > $epsilon) {
			$omega = Platform::Acos($cosom);
			$sinom = Platform::Sin($omega);
			$scale0 = Platform::Sin(($one - $t) * $omega) / $sinom;
			$scale1 = Platform::Sin($t * $omega) / $sinom;
		}
		else {
			$scale0 = $one - $t;
			$scale1 = $t;
		}
		$output[0] = $scale0 * $ax + $scale1 * $bx;
		$output[1] = $scale0 * $ay + $scale1 * $by;
		$output[2] = $scale0 * $az + $scale1 * $bz;
		$output[3] = $scale0 * $aw + $scale1 * $bw;
		return $output;
	}

	// **
	static function SqrLen(&$a)
	{
		return Quat::SquaredLength($a);
	}

	// **
	static function SquaredLength(&$a)
	{
		return Vec4::SquaredLength($a);
	}

	// **
	private function f()
	{
	}
}

class TestMat4
{

	private function Adjoint()
	{
		$this->AdjointWithASeparateOutputMatrix();
		$this->AdjointWhenMatAIsTheOutputMatrix();
	}

	private function AdjointWhenMatAIsTheOutputMatrix()
	{
	}

	private function AdjointWithASeparateOutputMatrix()
	{
	}

	private function Arr16($p, $p_2, $p_3, $p_4, $p_5, $p_6, $p_7, $p_8, $p_9, $p_10, $p_11, $p_12, $p_13, $p_14, $p_15, $p_16)
	{
		return $this->citoassert->Arr16($p, $p_2, $p_3, $p_4, $p_5, $p_6, $p_7, $p_8, $p_9, $p_10, $p_11, $p_12, $p_13, $p_14, $p_15, $p_16);
	}

	private function Arr3($p, $p_2, $p_3)
	{
		return $this->citoassert->Arr3($p, $p_2, $p_3);
	}

	private function Arr9($p, $p_2, $p_3, $p_4, $p_5, $p_6, $p_7, $p_8, $p_9)
	{
		return $this->citoassert->Arr9($p, $p_2, $p_3, $p_4, $p_5, $p_6, $p_7, $p_8, $p_9);
	}

	private function AssertArrayEqual(&$actual, &$expected, $length, $msg)
	{
		$this->citoassert->AssertArrayEqual($actual, $expected, $length, $msg);
	}

	private function AssertCloseTo($actual, $expected, $msg)
	{
		$this->citoassert->AssertCloseTo($actual, $expected, $msg);
	}

	private function AssertEqual($actual, $expected, $msg)
	{
		$this->citoassert->AssertEqual($actual, $expected, $msg);
	}

	private function Clone()
	{
		$result = Mat4::Clone($this->matA);
		$this->AssertArrayEqual($result, $this->matA, 16, "Clone should return a 16 element array initialized to the values in matA");
	}

	private function Copy()
	{
		$result = Mat4::Copy($this->output, $this->matA);
		$this->AssertArrayEqual($this->output, $this->matA, 16, "Copy should place values into out");
		$this->AssertArrayEqual($result, $this->output, 16, "Copy should return out");
	}

	private function Create()
	{
		$result = Mat4::Create();
		$this->AssertArrayEqual($result, $this->identity, 16, "Create should return a 16 element array initialized to a 4x4 identity matrix");
	}

	private function Determinant()
	{
	}

	private function Frustum()
	{
	}

	private function Identity()
	{
		$result = Mat4::Identity($this->output);
		$this->AssertArrayEqual($this->output, $this->identity, 16, "Copy should place values into out");
		$this->AssertArrayEqual($result, $this->output, 16, "Copy should return out");
	}

	private function Invert()
	{
		$this->InvertWithASeparateOutputMatrix();
		$this->InvertWhenMatAIsTheOutputMatrix();
	}

	private function InvertWhenMatAIsTheOutputMatrix()
	{
	}

	private function InvertWithASeparateOutputMatrix()
	{
	}

	private function LookAt()
	{
		$this->LookAtLookingDown();
		$this->LookAt74();
		$this->LookAt3();
	}

	private function LookAt3()
	{
	}

	private function LookAt74()
	{
	}

	private function LookAtLookingDown()
	{
	}

	private function Multiply()
	{
		$this->MultiplyWithASeparateOutputMatrix();
		$this->MultiplyWhenMatAIsTheOutputMatrix();
		$this->MultiplyWhenMatBIsTheOutputMatrix();
	}

	private function MultiplyWhenMatAIsTheOutputMatrix()
	{
	}

	private function MultiplyWhenMatBIsTheOutputMatrix()
	{
	}

	private function MultiplyWithASeparateOutputMatrix()
	{
	}

	private function Ortho()
	{
	}

	private function Perspective()
	{
		$this->Perspective1();
		$this->PerspectiveWithNonzeroNear45degFovyAndRealisticAspectRatio();
	}

	private function Perspective1()
	{
	}

	private function PerspectiveWithNonzeroNear45degFovyAndRealisticAspectRatio()
	{
	}

	private function ResetTests()
	{
		$this->matA = $this->Arr16(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 2, 3, 1);
		$this->matB = $this->Arr16(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 4, 5, 6, 1);
		$this->output = $this->Arr16(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
		$this->identity = $this->Arr16(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
	}

	private function Rotate()
	{
		$this->RotateWithASeparateOutputMatrix();
		$this->RotateWhenMatAIsTheOutputMatrix();
	}

	private function RotateWhenMatAIsTheOutputMatrix()
	{
	}

	private function RotateWithASeparateOutputMatrix()
	{
	}

	private function RotateX()
	{
		$this->RotateXWithASeparateOutputMatrix();
		$this->RotateXWhenMatAIsTheOutputMatrix();
	}

	private function RotateXWhenMatAIsTheOutputMatrix()
	{
	}

	private function RotateXWithASeparateOutputMatrix()
	{
	}

	private function RotateY()
	{
		$this->RotateYWithASeparateOutputMatrix();
		$this->RotateYWhenMatAIsTheOutputMatrix();
	}

	private function RotateYWhenMatAIsTheOutputMatrix()
	{
	}

	private function RotateYWithASeparateOutputMatrix()
	{
	}

	private function RotateZ()
	{
		$this->RotateZWithASeparateOutputMatrix();
		$this->RotateZWhenMatAIsTheOutputMatrix();
	}

	private function RotateZWhenMatAIsTheOutputMatrix()
	{
	}

	private function RotateZWithASeparateOutputMatrix()
	{
	}

	private function Scale()
	{
		$this->ScaleWithASeparateOutputMatrix();
		$this->ScaleWhenMatAIsTheOutputMatrix();
	}

	private function ScaleWhenMatAIsTheOutputMatrix()
	{
	}

	private function ScaleWithASeparateOutputMatrix()
	{
	}

	private function Str()
	{
	}

	function Test()
	{
		$this->citoassert = new CitoAssert();
		$this->ResetTests();
		$this->Create();
		$this->ResetTests();
		$this->Clone();
		$this->ResetTests();
		$this->Copy();
		$this->ResetTests();
		$this->Identity();
		$this->ResetTests();
		$this->Transpose();
		$this->ResetTests();
		$this->Invert();
		$this->ResetTests();
		$this->Adjoint();
		$this->ResetTests();
		$this->Determinant();
		$this->ResetTests();
		$this->Multiply();
		$this->ResetTests();
		$this->Translate();
		$this->ResetTests();
		$this->Scale();
		$this->ResetTests();
		$this->Rotate();
		$this->ResetTests();
		$this->RotateX();
		$this->ResetTests();
		$this->RotateY();
		$this->ResetTests();
		$this->RotateZ();
		$this->ResetTests();
		$this->Frustum();
		$this->ResetTests();
		$this->Perspective();
		$this->ResetTests();
		$this->Ortho();
		$this->ResetTests();
		$this->LookAt();
		$this->ResetTests();
		$this->Str();
		$this->ResetTests();
	}

	private function Translate()
	{
		$this->TranslateWithASeparateOutputMatrix();
		$this->TranslateWhenMatAIsTheOutputMatrix();
	}

	private function TranslateWhenMatAIsTheOutputMatrix()
	{
	}

	private function TranslateWithASeparateOutputMatrix()
	{
	}

	private function Transpose()
	{
		$this->TransposeWithASeparateOutputMatrix();
		$this->TransposeWhenMatAIsTheOutputMatrix();
	}

	private function TransposeWhenMatAIsTheOutputMatrix()
	{
	}

	private function TransposeWithASeparateOutputMatrix()
	{
	}
	private $citoassert;
	private $identity;
	private $matA;
	private $matB;
	private $output;
}

class TestVec3
{

	private function Add()
	{
		$this->AddWithASeparateOutputVector();
		$this->AddWhenVecAIsTheOutputVector();
		$this->AddWhenVecBIsTheOutputVector();
	}

	private function AddWhenVecAIsTheOutputVector()
	{
	}

	private function AddWhenVecBIsTheOutputVector()
	{
	}

	private function AddWithASeparateOutputVector()
	{
		$result = Vec3::Add($this->output, $this->vecA, $this->vecB);
		$this->AssertArrayEqual($this->output, $this->Arr3(5, 7, 9), 3, "Add should place values into out");
		$this->AssertArrayEqual($result, $this->output, 3, "Add should return out");
		$this->AssertArrayEqual($this->vecA, $this->Arr3(1, 2, 3), 3, "Add should not modify vecA");
		$this->AssertArrayEqual($this->vecB, $this->Arr3(4, 5, 6), 3, "Add should not modify vecB");
	}

	private function Arr16($p, $p_2, $p_3, $p_4, $p_5, $p_6, $p_7, $p_8, $p_9, $p_10, $p_11, $p_12, $p_13, $p_14, $p_15, $p_16)
	{
		return $this->citoassert->Arr16($p, $p_2, $p_3, $p_4, $p_5, $p_6, $p_7, $p_8, $p_9, $p_10, $p_11, $p_12, $p_13, $p_14, $p_15, $p_16);
	}

	private function Arr3($p, $p_2, $p_3)
	{
		return $this->citoassert->Arr3($p, $p_2, $p_3);
	}

	private function Arr9($p, $p_2, $p_3, $p_4, $p_5, $p_6, $p_7, $p_8, $p_9)
	{
		return $this->citoassert->Arr9($p, $p_2, $p_3, $p_4, $p_5, $p_6, $p_7, $p_8, $p_9);
	}

	private function AssertArrayEqual(&$actual, &$expected, $length, $msg)
	{
		$this->citoassert->AssertArrayEqual($actual, $expected, $length, $msg);
	}

	private function AssertCloseTo($actual, $expected, $msg)
	{
		$this->citoassert->AssertCloseTo($actual, $expected, $msg);
	}

	private function AssertEqual($actual, $expected, $msg)
	{
		$this->citoassert->AssertEqual($actual, $expected, $msg);
	}

	private function Clone()
	{
		$result = Vec3::Clone($this->vecA);
		$this->AssertArrayEqual($result, $this->vecA, 3, "Clone should return a 3 element array initialized to the values in vecA");
	}

	private function Copy()
	{
		$result = Vec3::Copy($this->output, $this->vecA);
		$this->AssertArrayEqual($this->output, $this->Arr3(1, 2, 3), 3, "Copy should place values into out");
		$this->AssertArrayEqual($result, $this->output, 3, "Copy should return output");
	}

	private function Create()
	{
		$result = Vec3::Create();
		$this->AssertArrayEqual($result, $this->Arr3(0, 0, 0), 3, "Create should return a 3 element array initialized to 0s");
	}

	private function Cross()
	{
		$this->CrossWithASeparateOutputVector();
		$this->CrossWhenVecAIsTheOutputVector();
		$this->CrossWhenVecBIsTheOutputVector();
	}

	private function CrossWhenVecAIsTheOutputVector()
	{
	}

	private function CrossWhenVecBIsTheOutputVector()
	{
	}

	private function CrossWithASeparateOutputVector()
	{
	}

	private function Distance()
	{
		$result = Vec3::Distance($this->vecA, $this->vecB);
		$r = 5196152;
		$r /= 1000000;
		$this->AssertCloseTo($result, $r, "Distance should return the distance");
	}

	private function Divide()
	{
		$this->DivideWithASeparateOutputVector();
		$this->DivideWhenVecAIsTheOutputVector();
		$this->DivideWhenVecBIsTheOutputVector();
	}

	private function DivideWhenVecAIsTheOutputVector()
	{
	}

	private function DivideWhenVecBIsTheOutputVector()
	{
	}

	private function DivideWithASeparateOutputVector()
	{
	}

	private function Dot()
	{
		$result = Vec3::Dot($this->vecA, $this->vecB);
		$this->AssertEqual($result, 32, "Dot should return the dot product");
		$this->AssertArrayEqual($this->vecA, $this->Arr3(1, 2, 3), 3, "Dot should not modify vecA");
		$this->AssertArrayEqual($this->vecB, $this->Arr3(4, 5, 6), 3, "Dot should not modify vecB");
	}

	private function ForEach()
	{
	}

	private function FromValues()
	{
		$result = Vec3::FromValues(1, 2, 3);
		$this->AssertArrayEqual($result, $this->Arr3(1, 2, 3), 3, "FromValues should return a 3 element array initialized to the values passed");
	}

	private function Length()
	{
		$result = Vec3::Length($this->vecA);
		$r = 3741657;
		$r /= 1000000;
		$this->AssertCloseTo($result, $r, "Length should return the length");
	}

	private function Lerp()
	{
		$this->LerpWithASeparateOutputVector();
		$this->LerpWhenVecAIsTheOutputVector();
		$this->LerpWhenVecBIsTheOutputVector();
	}

	private function LerpWhenVecAIsTheOutputVector()
	{
	}

	private function LerpWhenVecBIsTheOutputVector()
	{
	}

	private function LerpWithASeparateOutputVector()
	{
	}

	private function Max()
	{
		$this->MaxWithASeparateOutputVector();
		$this->MaxWhenVecAIsTheOutputVector();
		$this->MaxWhenVecBIsTheOutputVector();
	}

	private function MaxWhenVecAIsTheOutputVector()
	{
	}

	private function MaxWhenVecBIsTheOutputVector()
	{
	}

	private function MaxWithASeparateOutputVector()
	{
	}

	private function Min()
	{
		$this->MinWithASeparateOutputVector();
		$this->MinWhenVecAIsTheOutputVector();
		$this->MinWhenVecBIsTheOutputVector();
	}

	private function MinWhenVecAIsTheOutputVector()
	{
	}

	private function MinWhenVecBIsTheOutputVector()
	{
	}

	private function MinWithASeparateOutputVector()
	{
	}

	private function Multiply()
	{
		$this->MultiplyWithASeparateOutputVector();
		$this->MultiplyWhenVecAIsTheOutputVector();
		$this->MultiplyWhenVecBIsTheOutputVector();
	}

	private function MultiplyWhenVecAIsTheOutputVector()
	{
	}

	private function MultiplyWhenVecBIsTheOutputVector()
	{
	}

	private function MultiplyWithASeparateOutputVector()
	{
	}

	private function Negate()
	{
		$this->NegateWithASeparateOutputVector();
		$this->NegateWhenVecAIsTheOutputVector();
	}

	private function NegateWhenVecAIsTheOutputVector()
	{
		$result = Vec3::Negate($this->vecA, $this->vecA);
		$this->AssertArrayEqual($this->vecA, $this->Arr3(-1, -2, -3), 3, "NegateWhenVecAIsTheOutputVector should place values into vecA");
		$this->AssertArrayEqual($result, $this->vecA, 3, "NegateWhenVecAIsTheOutputVector should return vecA");
	}

	private function NegateWithASeparateOutputVector()
	{
		$result = Vec3::Negate($this->output, $this->vecA);
		$this->AssertArrayEqual($this->output, $this->Arr3(-1, -2, -3), 3, "NegateWithASeparateOutputVector should place values into out");
		$this->AssertArrayEqual($result, $this->output, 3, "NegateWithASeparateOutputVector should should return out");
		$this->AssertArrayEqual($this->vecA, $this->Arr3(1, 2, 3), 3, "NegateWithASeparateOutputVector should not modify vecA");
	}

	private function Normalize()
	{
		$this->NormalizeWithASeparateOutputVector();
		$this->NormalizeWhenVecAIsTheOutputVector();
	}

	private function NormalizeWhenVecAIsTheOutputVector()
	{
		$vecA1 = $this->Arr3(5, 0, 0);
		$result = Vec3::Normalize($this->vecA, $this->vecA);
		$this->AssertArrayEqual($this->vecA, $this->Arr3(1, 0, 0), 3, "NormalizeWhenVecAIsTheOutputVector should place values into vecA");
		$this->AssertArrayEqual($result, $this->vecA, 3, "NormalizeWhenVecAIsTheOutputVector should return vecA");
	}

	private function NormalizeWithASeparateOutputVector()
	{
		$this->vecA = $this->Arr3(5, 0, 0);
		$result = Vec3::Normalize($this->output, $this->vecA);
		$this->AssertArrayEqual($this->output, $this->Arr3(1, 0, 0), 3, "NormalizeWithASeparateOutputVector should place values into out");
		$this->AssertArrayEqual($result, $this->output, 3, "NormalizeWithASeparateOutputVector should return out");
		$this->AssertArrayEqual($this->vecA, $this->Arr3(5, 0, 0), 3, "NormalizeWithASeparateOutputVector should not modify vecA");
	}

	private function Random()
	{
	}

	private function ResetTests()
	{
		$this->vecA = $this->Arr3(1, 2, 3);
		$this->vecB = $this->Arr3(4, 5, 6);
		$this->output = $this->Arr3(0, 0, 0);
	}

	private function Scale()
	{
		$this->ScaleWithASeparateOutputVector();
		$this->ScaleWhenVecAIsTheOutputVector();
	}

	private function ScaleAndAdd()
	{
		$this->ScaleAndAddWithASeparateOutputVector();
		$this->ScaleAndAddWhenVecAIsTheOutputVector();
		$this->ScaleAndAddWhenVecBIsTheOutputVector();
	}

	private function ScaleAndAddWhenVecAIsTheOutputVector()
	{
	}

	private function ScaleAndAddWhenVecBIsTheOutputVector()
	{
	}

	private function ScaleAndAddWithASeparateOutputVector()
	{
	}

	private function ScaleWhenVecAIsTheOutputVector()
	{
	}

	private function ScaleWithASeparateOutputVector()
	{
	}

	private function Set()
	{
		$result = Vec3::Set($this->output, 1, 2, 3);
		$this->AssertArrayEqual($this->output, $this->Arr3(1, 2, 3), 3, "Set should place values into output");
		$this->AssertArrayEqual($result, $this->output, 3, "Set should return output");
	}

	private function SquaredDistance()
	{
		$result = Vec3::SquaredDistance($this->vecA, $this->vecB);
		$this->AssertEqual($result, 27, "SquaredDistance should return the squared distance");
	}

	private function SquaredLength()
	{
		$result = Vec3::SquaredLength($this->vecA);
		$this->AssertEqual($result, 14, "SquaredLength should return the squared length");
	}

	private function Str()
	{
	}

	private function Subtract()
	{
		$this->SubtractShouldHaveAnAliasCalledSub();
		$this->SubtractWithASeparateOutputVector();
		$this->SubtractWhenVecAIsTheOutputVector();
		$this->SubtractWhenVecBIsTheOutputVector();
	}

	private function SubtractShouldHaveAnAliasCalledSub()
	{
	}

	private function SubtractWhenVecAIsTheOutputVector()
	{
	}

	private function SubtractWhenVecBIsTheOutputVector()
	{
	}

	private function SubtractWithASeparateOutputVector()
	{
	}

	function Test()
	{
		$this->citoassert = new CitoAssert();
		$this->ResetTests();
		$this->TransformMat4();
		$this->ResetTests();
		$this->Create();
		$this->ResetTests();
		$this->Clone();
		$this->ResetTests();
		$this->FromValues();
		$this->ResetTests();
		$this->Copy();
		$this->ResetTests();
		$this->Set();
		$this->ResetTests();
		$this->Add();
		$this->ResetTests();
		$this->Subtract();
		$this->ResetTests();
		$this->Multiply();
		$this->ResetTests();
		$this->Divide();
		$this->ResetTests();
		$this->Min();
		$this->ResetTests();
		$this->Max();
		$this->ResetTests();
		$this->Scale();
		$this->ResetTests();
		$this->ScaleAndAdd();
		$this->ResetTests();
		$this->Distance();
		$this->ResetTests();
		$this->SquaredDistance();
		$this->ResetTests();
		$this->Length();
		$this->ResetTests();
		$this->SquaredLength();
		$this->ResetTests();
		$this->Negate();
		$this->ResetTests();
		$this->Normalize();
		$this->ResetTests();
		$this->Dot();
		$this->ResetTests();
		$this->Cross();
		$this->ResetTests();
		$this->Lerp();
		$this->ResetTests();
		$this->Random();
		$this->ResetTests();
		$this->ForEach();
		$this->ResetTests();
		$this->Str();
		$this->ResetTests();
	}

	private function TransformMat3With90DegAboutX()
	{
		$result = Vec3::TransformMat3($this->output, $this->Arr3(0, 1, 0), $this->Arr9(1, 0, 0, 0, 0, 1, 0, -1, 0));
		$this->AssertArrayEqual($this->output, $this->Arr3(0, 0, 1), 3, "TransformMat3With90DegAboutX should produce correct output");
	}

	private function TransformMat3With90DegAboutY()
	{
		$result = Vec3::TransformMat3($this->output, $this->Arr3(1, 0, 0), $this->Arr9(0, 0, -1, 0, 1, 0, 1, 0, 0));
		$this->AssertArrayEqual($this->output, $this->Arr3(0, 0, -1), 3, "TransformMat3With90DegAboutU should produce correct output");
	}

	private function TransformMat3With90DegAboutZ()
	{
		$result = Vec3::TransformMat3($this->output, $this->Arr3(1, 0, 0), $this->Arr9(0, 1, 0, -1, 0, 0, 0, 0, 1));
		$this->AssertArrayEqual($this->output, $this->Arr3(0, 1, 0), 3, "TransformMat3With90DegAboutZ should produce correct output");
	}

	private function TransformMat3WithALookAtNormalMatrix()
	{
		$matr = Mat4::LookAt(Mat4::Create(), $this->Arr3(5, 6, 7), $this->Arr3(2, 6, 7), $this->Arr3(0, 1, 0));
		$n = Mat3::Create();
		$matr = Mat3::Transpose($n, Mat3::Invert($n, Mat3::FromMat4($n, $matr)));
		$result = Vec3::TransformMat3($this->output, $this->Arr3(1, 0, 0), $matr);
		$this->AssertArrayEqual($this->output, $this->Arr3(0, 0, 1), 3, "TransformMat3WithALookAtNormalMatrix should rotate the input");
		$this->AssertArrayEqual($result, $this->output, 3, "TransformMat3WithALookAtNormalMatrix should return output");
	}

	private function TransformMat3WithAnIdentity()
	{
		$matr = $this->Arr9(1, 0, 0, 0, 1, 0, 0, 0, 1);
		$result = Vec3::TransformMat3($this->output, $this->vecA, $matr);
		$this->AssertArrayEqual($this->output, $this->Arr3(1, 2, 3), 3, "TransformMat3WithAnIdentity should produce the input");
		$this->AssertArrayEqual($result, $this->output, 3, "TransformMat3WithAnIdentity should return output");
	}

	private function TransformMat4()
	{
		$this->TransformMat4WithAnIdentity();
		$this->TransformMat4WithALookAt();
		$this->TransformMat3WithAnIdentity();
		$this->TransformMat3With90DegAboutX();
		$this->TransformMat3With90DegAboutY();
		$this->TransformMat3With90DegAboutZ();
		$this->TransformMat3WithALookAtNormalMatrix();
	}

	private function TransformMat4WithALookAt()
	{
		$matr = Mat4::LookAt(Mat4::Create(), $this->Arr3(5, 6, 7), $this->Arr3(2, 6, 7), $this->Arr3(0, 1, 0));
		$result = Vec3::TransformMat4($this->output, $this->vecA, $matr);
		$this->AssertArrayEqual($this->output, $this->Arr3(4, -4, -4), 3, "TransformMat4WithALookAt should rotate and translate the input");
		$this->AssertArrayEqual($result, $this->output, 3, "TransformMat4WithALookAt should return out");
	}

	private function TransformMat4WithAnIdentity()
	{
		$matr = $this->Arr16(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		$result = Vec3::TransformMat4($this->output, $this->vecA, $matr);
		$this->AssertArrayEqual($this->output, $this->Arr3(1, 2, 3), 3, "TransformMat4WithAnIdentity should produce the input");
		$this->AssertArrayEqual($result, $this->output, 3, "TransformMat4WithAnIdentity should return output");
	}
	private $citoassert;
	private $output;
	private $vecA;
	private $vecB;
}

class Vec2
{

	// **
	static function Add(&$output, &$a, &$b)
	{
		$output[0] = $a[0] + $b[0];
		$output[1] = $a[1] + $b[1];
		return $output;
	}

	// **
	static function Clone(&$a)
	{
		$output = array();
		$output[0] = $a[0];
		$output[1] = $a[1];
		return $output;
	}

	// **
	static function Copy(&$output, &$a)
	{
		$output[0] = $a[0];
		$output[1] = $a[1];
		return $output;
	}

	// **
	static function Create()
	{
		$output = array();
		$output[0] = 0;
		$output[1] = 0;
		return $output;
	}

	// **
	static function Cross(&$output, &$a, &$b)
	{
		$z = $a[0] * $b[1] - $a[1] * $b[0];
		$output[0] = $output[1] = 0;
		$output[2] = $z;
		return $output;
	}

	// **
	static function Dist(&$a, &$b)
	{
		return Vec2::Distance($a, $b);
	}

	// **
	static function Distance(&$a, &$b)
	{
		$x = $b[0] - $a[0];
		$y = $b[1] - $a[1];
		return Platform::Sqrt($x * $x + $y * $y);
	}

	// **
	static function Div(&$output, &$a, &$b)
	{
		return Vec2::Divide($output, $a, $b);
	}

	// **
	static function Divide(&$output, &$a, &$b)
	{
		$output[0] = $a[0] / $b[0];
		$output[1] = $a[1] / $b[1];
		return $output;
	}

	// **
	static function Dot(&$a, &$b)
	{
		return $a[0] * $b[0] + $a[1] * $b[1];
	}

	// **
	static function FromValues($x, $y)
	{
		$output = array();
		$output[0] = $x;
		$output[1] = $y;
		return $output;
	}

	// **
	static function Len(&$a)
	{
		return Vec2::Length($a);
	}

	// **
	static function Length(&$a)
	{
		$x = $a[0];
		$y = $a[1];
		return Platform::Sqrt($x * $x + $y * $y);
	}

	// **
	static function Lerp(&$output, &$a, &$b, $t)
	{
		$ax = $a[0];
		$ay = $a[1];
		$output[0] = $ax + $t * ($b[0] - $ax);
		$output[1] = $ay + $t * ($b[1] - $ay);
		return $output;
	}

	// **
	static function Max(&$output, &$a, &$b)
	{
		$output[0] = GlMatrixMath::max($a[0], $b[0]);
		$output[1] = GlMatrixMath::max($a[1], $b[1]);
		return $output;
	}

	// **
	static function Min(&$output, &$a, &$b)
	{
		$output[0] = GlMatrixMath::min($a[0], $b[0]);
		$output[1] = GlMatrixMath::min($a[1], $b[1]);
		return $output;
	}

	// **
	static function Mul(&$output, &$a, &$b)
	{
		return Vec2::Multiply($output, $a, $b);
	}

	// **
	static function Multiply(&$output, &$a, &$b)
	{
		$output[0] = $a[0] * $b[0];
		$output[1] = $a[1] * $b[1];
		return $output;
	}

	// **
	static function Negate(&$output, &$a)
	{
		$output[0] = -$a[0];
		$output[1] = -$a[1];
		return $output;
	}

	// **
	static function Normalize(&$output, &$a)
	{
		$x = $a[0];
		$y = $a[1];
		$len = $x * $x + $y * $y;
		if ($len > 0) {
			$len = 1 / Platform::Sqrt($len);
			$output[0] = $a[0] * $len;
			$output[1] = $a[1] * $len;
		}
		return $output;
	}

	// **
	static function Random(&$output, $scale)
	{
		$r = Platform::Random() * 2 * GlMatrixMath::PI();
		$output[0] = Platform::Cos($r) * $scale;
		$output[1] = Platform::Sin($r) * $scale;
		return $output;
	}

	// **
	static function Scale(&$output, &$a, $b)
	{
		$output[0] = $a[0] * $b;
		$output[1] = $a[1] * $b;
		return $output;
	}

	// **
	static function ScaleAndAdd(&$output, &$a, &$b, $scale)
	{
		$output[0] = $a[0] + $b[0] * $scale;
		$output[1] = $a[1] + $b[1] * $scale;
		return $output;
	}

	// **
	static function Set(&$output, $x, $y)
	{
		$output[0] = $x;
		$output[1] = $y;
		return $output;
	}

	// **
	static function SqrDist(&$a, &$b)
	{
		return Vec2::SquaredDistance($a, $b);
	}

	// **
	static function SqrLen(&$a)
	{
		return Vec2::SquaredLength($a);
	}

	// **
	static function SquaredDistance(&$a, &$b)
	{
		$x = $b[0] - $a[0];
		$y = $b[1] - $a[1];
		return $x * $x + $y * $y;
	}

	// **
	static function SquaredLength(&$a)
	{
		$x = $a[0];
		$y = $a[1];
		return $x * $x + $y * $y;
	}

	// **
	static function Sub(&$output, &$a, &$b)
	{
		return Vec2::Subtract($output, $a, $b);
	}

	// **
	static function Subtract(&$output, &$a, &$b)
	{
		$output[0] = $a[0] - $b[0];
		$output[1] = $a[1] - $b[1];
		return $output;
	}

	// **
	static function TransformMat2(&$output, &$a, &$m)
	{
		$x = $a[0];
		$y = $a[1];
		$output[0] = $m[0] * $x + $m[2] * $y;
		$output[1] = $m[1] * $x + $m[3] * $y;
		return $output;
	}

	// **
	static function TransformMat2d(&$output, &$a, &$m)
	{
		$x = $a[0];
		$y = $a[1];
		$output[0] = $m[0] * $x + $m[2] * $y + $m[4];
		$output[1] = $m[1] * $x + $m[3] * $y + $m[5];
		return $output;
	}

	// **
	static function TransformMat3(&$output, &$a, &$m)
	{
		$x = $a[0];
		$y = $a[1];
		$output[0] = $m[0] * $x + $m[3] * $y + $m[6];
		$output[1] = $m[1] * $x + $m[4] * $y + $m[7];
		return $output;
	}

	// **
	static function TransformMat4(&$output, &$a, &$m)
	{
		$x = $a[0];
		$y = $a[1];
		$output[0] = $m[0] * $x + $m[4] * $y + $m[12];
		$output[1] = $m[1] * $x + $m[5] * $y + $m[13];
		return $output;
	}

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
		$output[0] = GlMatrixMath::max($a[0], $b[0]);
		$output[1] = GlMatrixMath::max($a[1], $b[1]);
		$output[2] = GlMatrixMath::max($a[2], $b[2]);
		return $output;
	}

	// Returns the minimum of two vec3's
	// @returns {vec3} out
	/// <param name="output">/@param {vec3} out the receiving vector</param>
	/// <param name="a">/@param {vec3} a the first operand</param>
	/// <param name="b">/@param {vec3} b the second operand</param>
	static function Min(&$output, &$a, &$b)
	{
		$output[0] = GlMatrixMath::min($a[0], $b[0]);
		$output[1] = GlMatrixMath::min($a[1], $b[1]);
		$output[2] = GlMatrixMath::min($a[2], $b[2]);
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
		$r = Platform::Random() * $two * GlMatrixMath::PI();
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
	static function TransformMat4(&$output, &$a, &$m)
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
	static function Add(&$output, &$a, &$b)
	{
		$output[0] = $a[0] + $b[0];
		$output[1] = $a[1] + $b[1];
		$output[2] = $a[2] + $b[2];
		$output[3] = $a[3] + $b[3];
		return $output;
	}

	// **
	static function Clone(&$a)
	{
		$output = array();
		$output[0] = $a[0];
		$output[1] = $a[1];
		$output[2] = $a[2];
		$output[3] = $a[3];
		return $output;
	}

	// **
	static function Copy(&$output, &$a)
	{
		$output[0] = $a[0];
		$output[1] = $a[1];
		$output[2] = $a[2];
		$output[3] = $a[3];
		return $output;
	}

	// **
	static function Create()
	{
		$output = array();
		$output[0] = 0;
		$output[1] = 0;
		$output[2] = 0;
		$output[3] = 0;
		return $output;
	}

	// **
	static function Dist(&$a, &$b)
	{
		return Vec4::Distance($a, $b);
	}

	// **
	static function Distance(&$a, &$b)
	{
		$x = $b[0] - $a[0];
		$y = $b[1] - $a[1];
		$z = $b[2] - $a[2];
		$w = $b[3] - $a[3];
		return Platform::Sqrt($x * $x + $y * $y + $z * $z + $w * $w);
	}

	// **
	static function Div(&$output, &$a, &$b)
	{
		return Vec4::Divide($output, $a, $b);
	}

	// **
	static function Divide(&$output, &$a, &$b)
	{
		$output[0] = $a[0] / $b[0];
		$output[1] = $a[1] / $b[1];
		$output[2] = $a[2] / $b[2];
		$output[3] = $a[3] / $b[3];
		return $output;
	}

	// **
	static function Dot(&$a, &$b)
	{
		return $a[0] * $b[0] + $a[1] * $b[1] + $a[2] * $b[2] + $a[3] * $b[3];
	}

	// **
	static function FromValues($x, $y, $z, $w)
	{
		$output = array();
		$output[0] = $x;
		$output[1] = $y;
		$output[2] = $z;
		$output[3] = $w;
		return $output;
	}

	// **
	static function Len(&$a)
	{
		return Vec4::Length($a);
	}

	// **
	static function Length(&$a)
	{
		$x = $a[0];
		$y = $a[1];
		$z = $a[2];
		$w = $a[3];
		return Platform::Sqrt($x * $x + $y * $y + $z * $z + $w * $w);
	}

	// **
	static function Lerp(&$output, &$a, &$b, $t)
	{
		$ax = $a[0];
		$ay = $a[1];
		$az = $a[2];
		$aw = $a[3];
		$output[0] = $ax + $t * ($b[0] - $ax);
		$output[1] = $ay + $t * ($b[1] - $ay);
		$output[2] = $az + $t * ($b[2] - $az);
		$output[3] = $aw + $t * ($b[3] - $aw);
		return $output;
	}

	// **
	static function Max(&$output, &$a, &$b)
	{
		$output[0] = GlMatrixMath::max($a[0], $b[0]);
		$output[1] = GlMatrixMath::max($a[1], $b[1]);
		$output[2] = GlMatrixMath::max($a[2], $b[2]);
		$output[3] = GlMatrixMath::max($a[3], $b[3]);
		return $output;
	}

	// **
	static function Min(&$output, &$a, &$b)
	{
		$output[0] = GlMatrixMath::min($a[0], $b[0]);
		$output[1] = GlMatrixMath::min($a[1], $b[1]);
		$output[2] = GlMatrixMath::min($a[2], $b[2]);
		$output[3] = GlMatrixMath::min($a[3], $b[3]);
		return $output;
	}

	// **
	static function Mul(&$output, &$a, &$b)
	{
		return Vec4::Multiply($output, $a, $b);
	}

	// **
	static function Multiply(&$output, &$a, &$b)
	{
		$output[0] = $a[0] * $b[0];
		$output[1] = $a[1] * $b[1];
		$output[2] = $a[2] * $b[2];
		$output[3] = $a[3] * $b[3];
		return $output;
	}

	// **
	static function Negate(&$output, &$a)
	{
		$output[0] = -$a[0];
		$output[1] = -$a[1];
		$output[2] = -$a[2];
		$output[3] = -$a[3];
		return $output;
	}

	// **
	static function Normalize(&$output, &$a)
	{
		$x = $a[0];
		$y = $a[1];
		$z = $a[2];
		$w = $a[3];
		$len = $x * $x + $y * $y + $z * $z + $w * $w;
		if ($len > 0) {
			$one = 1;
			$len = $one / Platform::Sqrt($len);
			$output[0] = $a[0] * $len;
			$output[1] = $a[1] * $len;
			$output[2] = $a[2] * $len;
			$output[3] = $a[3] * $len;
		}
		return $output;
	}

	// **
	static function Random(&$output, $scale)
	{
		$output[0] = Platform::Random();
		$output[1] = Platform::Random();
		$output[2] = Platform::Random();
		$output[3] = Platform::Random();
		Vec4::Normalize($output, $output);
		Vec4::Scale($output, $output, $scale);
		return $output;
	}

	// **
	static function Scale(&$output, &$a, $b)
	{
		$output[0] = $a[0] * $b;
		$output[1] = $a[1] * $b;
		$output[2] = $a[2] * $b;
		$output[3] = $a[3] * $b;
		return $output;
	}

	// **
	static function ScaleAndAdd(&$output, &$a, &$b, $scale)
	{
		$output[0] = $a[0] + $b[0] * $scale;
		$output[1] = $a[1] + $b[1] * $scale;
		$output[2] = $a[2] + $b[2] * $scale;
		$output[3] = $a[3] + $b[3] * $scale;
		return $output;
	}

	// **
	static function Set(&$output, $x, $y, $z, $w)
	{
		$output[0] = $x;
		$output[1] = $y;
		$output[2] = $z;
		$output[3] = $w;
		return $output;
	}

	// **
	static function SqrDist(&$a, &$b)
	{
		return Vec4::SquaredDistance($a, $b);
	}

	// **
	static function SqrLen(&$a)
	{
		return Vec4::SquaredLength($a);
	}

	// **
	static function SquaredDistance(&$a, &$b)
	{
		$x = $b[0] - $a[0];
		$y = $b[1] - $a[1];
		$z = $b[2] - $a[2];
		$w = $b[3] - $a[3];
		return $x * $x + $y * $y + $z * $z + $w * $w;
	}

	// **
	static function SquaredLength(&$a)
	{
		$x = $a[0];
		$y = $a[1];
		$z = $a[2];
		$w = $a[3];
		return $x * $x + $y * $y + $z * $z + $w * $w;
	}

	// **
	static function Sub(&$output, &$a, &$b)
	{
		return Vec4::Subtract($output, $a, $b);
	}

	// **
	static function Subtract(&$output, &$a, &$b)
	{
		$output[0] = $a[0] - $b[0];
		$output[1] = $a[1] - $b[1];
		$output[2] = $a[2] - $b[2];
		$output[3] = $a[3] - $b[3];
		return $output;
	}

	// **
	static function TransformMat4(&$output, &$a, &$m)
	{
		$x = $a[0];
		$y = $a[1];
		$z = $a[2];
		$w = $a[3];
		$output[0] = $m[0] * $x + $m[4] * $y + $m[8] * $z + $m[12] * $w;
		$output[1] = $m[1] * $x + $m[5] * $y + $m[9] * $z + $m[13] * $w;
		$output[2] = $m[2] * $x + $m[6] * $y + $m[10] * $z + $m[14] * $w;
		$output[3] = $m[3] * $x + $m[7] * $y + $m[11] * $z + $m[15] * $w;
		return $output;
	}

	// **
	// **
	private function f()
	{
	}

	// **
	static function transformQuat(&$output, &$a, &$q)
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
		$iw = -$qx * $x - $qy * $y - $qz * $z;
		$output[0] = $ix * $qw + $iw * -$qx + $iy * -$qz - $iz * -$qy;
		$output[1] = $iy * $qw + $iw * -$qy + $iz * -$qx - $ix * -$qz;
		$output[2] = $iz * $qw + $iw * -$qz + $ix * -$qy - $iy * -$qx;
		return $output;
	}
}
?>
