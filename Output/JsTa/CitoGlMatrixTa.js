// Generated automatically with "cito". Do not edit.

function Mat2()
{
}

Mat2.prototype.f = function() {
}

function Mat2d()
{
}

Mat2d.prototype.f = function() {
}

function Mat3()
{
}

Mat3.prototype.f = function() {
}

function Mat4()
{
}

Mat4.clone = function(a) {
	var output = new Array(16);
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

Mat4.copy = function(output, a) {
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

Mat4.create = function() {
	var output = new Array(16);
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

Mat4.identity = function(output) {
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

Mat4.invert = function(output, a) {
	var a00 = a[0];
	var a01 = a[1];
	var a02 = a[2];
	var a03 = a[3];
	var a10 = a[4];
	var a11 = a[5];
	var a12 = a[6];
	var a13 = a[7];
	var a20 = a[8];
	var a21 = a[9];
	var a22 = a[10];
	var a23 = a[11];
	var a30 = a[12];
	var a31 = a[13];
	var a32 = a[14];
	var a33 = a[15];
	var b00 = a00 * a11 - a01 * a10;
	var b01 = a00 * a12 - a02 * a10;
	var b02 = a00 * a13 - a03 * a10;
	var b03 = a01 * a12 - a02 * a11;
	var b04 = a01 * a13 - a03 * a11;
	var b05 = a02 * a13 - a03 * a12;
	var b06 = a20 * a31 - a21 * a30;
	var b07 = a20 * a32 - a22 * a30;
	var b08 = a20 * a33 - a23 * a30;
	var b09 = a21 * a32 - a22 * a31;
	var b10 = a21 * a33 - a23 * a31;
	var b11 = a22 * a33 - a23 * a32;
	var det = b00 * b11 - b01 * b10 + b02 * b09 + b03 * b08 - b04 * b07 + b05 * b06;
	if (det == 0) {
		return null;
	}
	var one = 1;
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

Mat4.transpose = function(output, a) {
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

Mat4.prototype.f = function() {
}

function Math()
{
}

Math.pI = function() {
	var a = 3141592;
	return a / (1000000);
}

Math.max = function(a, b) {
	if (a > b) {
		return a;
	}
	else {
		return b;
	}
}

Math.min = function(a, b) {
	if (a < b) {
		return a;
	}
	else {
		return b;
	}
}

function Platform()
{
}

Platform.cos = function(r) {
	return 0;
}

Platform.random = function() {
	return 0;
}

Platform.sin = function(r) {
	return 0;
}

Platform.sqrt = function(a) {
	return 0;
}

function Quat()
{
}

Quat.prototype.f = function() {
}

function Vec2()
{
}

Vec2.prototype.f = function() {
}

function Vec3()
{
}

Vec3.add = function(output, a, b) {
	output[0] = a[0] + b[0];
	output[1] = a[1] + b[1];
	output[2] = a[2] + b[2];
	return output;
}

Vec3.clone = function(a) {
	var output = new Array(3);
	output[0] = a[0];
	output[1] = a[1];
	output[2] = a[2];
	return output;
}

Vec3.copy = function(output, a) {
	output[0] = a[0];
	output[1] = a[1];
	output[2] = a[2];
	return output;
}

Vec3.create = function() {
	var output = new Array(3);
	output[0] = 0;
	output[1] = 0;
	output[2] = 0;
	return output;
}

Vec3.cross = function(output, a, b) {
	var ax = a[0];
	var ay = a[1];
	var az = a[2];
	var bx = b[0];
	var by = b[1];
	var bz = b[2];
	output[0] = ay * bz - az * by;
	output[1] = az * bx - ax * bz;
	output[2] = ax * by - ay * bx;
	return output;
}

Vec3.dist = function(a, b) {
	return Vec3.distance(a, b);
}

Vec3.distance = function(a, b) {
	var x = b[0] - a[0];
	var y = b[1] - a[1];
	var z = b[2] - a[2];
	return Platform.sqrt(x * x + y * y + z * z);
}

Vec3.div = function(output, a, b) {
	return Vec3.divide(output, a, b);
}

Vec3.divide = function(output, a, b) {
	output[0] = a[0] / (b[0]);
	output[1] = a[1] / (b[1]);
	output[2] = a[2] / (b[2]);
	return output;
}

Vec3.dot = function(a, b) {
	return a[0] * b[0] + a[1] * b[1] + a[2] * b[2];
}

Vec3.fromValues = function(x, y, z) {
	var output = new Array(3);
	output[0] = x;
	output[1] = y;
	output[2] = z;
	return output;
}

Vec3.len = function(a) {
	return Vec3.length(a);
}

Vec3.length = function(a) {
	var x = a[0];
	var y = a[1];
	var z = a[2];
	return Platform.sqrt(x * x + y * y + z * z);
}

Vec3.lerp = function(output, a, b, t) {
	var ax = a[0];
	var ay = a[1];
	var az = a[2];
	output[0] = ax + t * (b[0] - ax);
	output[1] = ay + t * (b[1] - ay);
	output[2] = az + t * (b[2] - az);
	return output;
}

Vec3.max = function(output, a, b) {
	output[0] = Math.max(a[0], b[0]);
	output[1] = Math.max(a[1], b[1]);
	output[2] = Math.max(a[2], b[2]);
	return output;
}

Vec3.min = function(output, a, b) {
	output[0] = Math.min(a[0], b[0]);
	output[1] = Math.min(a[1], b[1]);
	output[2] = Math.min(a[2], b[2]);
	return output;
}

Vec3.mul = function(output, a, b) {
	return Vec3.multiply(output, a, b);
}

Vec3.multiply = function(output, a, b) {
	output[0] = a[0] * b[0];
	output[1] = a[1] * b[1];
	output[2] = a[2] * b[2];
	return output;
}

Vec3.negate = function(output, a) {
	output[0] = 0 - a[0];
	output[1] = 0 - a[1];
	output[2] = 0 - a[2];
	return output;
}

Vec3.normalize = function(output, a) {
	var x = a[0];
	var y = a[1];
	var z = a[2];
	var len = x * x + y * y + z * z;
	if (len > 0) {
		var one = 1;
		len = one / (Platform.sqrt(len));
		output[0] = a[0] * len;
		output[1] = a[1] * len;
		output[2] = a[2] * len;
	}
	return output;
}

Vec3.random = function(output, scale) {
	var one = 1;
	var two = 2;
	var r = Platform.random() * two * Math.pI();
	var z = Platform.random() * two - one;
	var zScale = Platform.sqrt(one - z * z) * scale;
	output[0] = Platform.cos(r) * zScale;
	output[1] = Platform.sin(r) * zScale;
	output[2] = z * scale;
	return output;
}

Vec3.scale = function(output, a, b) {
	output[0] = a[0] * b;
	output[1] = a[1] * b;
	output[2] = a[2] * b;
	return output;
}

Vec3.scaleAndAdd = function(output, a, b, scale) {
	output[0] = a[0] + b[0] * scale;
	output[1] = a[1] + b[1] * scale;
	output[2] = a[2] + b[2] * scale;
	return output;
}

Vec3.set = function(output, x, y, z) {
	output[0] = x;
	output[1] = y;
	output[2] = z;
	return output;
}

Vec3.sqrDist = function(a, b) {
	return Vec3.squaredDistance(a, b);
}

Vec3.sqrLen = function(a) {
	return Vec3.squaredLength(a);
}

Vec3.squaredDistance = function(a, b) {
	var x = b[0] - a[0];
	var y = b[1] - a[1];
	var z = b[2] - a[2];
	return x * x + y * y + z * z;
}

Vec3.squaredLength = function(a) {
	var x = a[0];
	var y = a[1];
	var z = a[2];
	return x * x + y * y + z * z;
}

Vec3.sub = function(output, a, b) {
	return Vec3.substract(output, a, b);
}

Vec3.substract = function(output, a, b) {
	output[0] = a[0] - b[0];
	output[1] = a[1] - b[1];
	output[2] = a[2] - b[2];
	return output;
}

Vec3.transformMat3 = function(output, a, m) {
	var x = a[0];
	var y = a[1];
	var z = a[2];
	output[0] = x * m[0] + y * m[3] + z * m[6];
	output[1] = x * m[1] + y * m[4] + z * m[7];
	output[2] = x * m[2] + y * m[5] + z * m[8];
	return output;
}

Vec3.prototype.transformMat4 = function(output, a, m) {
	var x = a[0];
	var y = a[1];
	var z = a[2];
	output[0] = m[0] * x + m[4] * y + m[8] * z + m[12];
	output[1] = m[1] * x + m[5] * y + m[9] * z + m[13];
	output[2] = m[2] * x + m[6] * y + m[10] * z + m[14];
	return output;
}

Vec3.transformQuat = function(output, a, q) {
	var x = a[0];
	var y = a[1];
	var z = a[2];
	var qx = q[0];
	var qy = q[1];
	var qz = q[2];
	var qw = q[3];
	var ix = qw * x + qy * z - qz * y;
	var iy = qw * y + qz * x - qx * z;
	var iz = qw * z + qx * y - qy * x;
	var iw = (0 - qx) * x - qy * y - qz * z;
	output[0] = ix * qw + iw * (0 - qx) + iy * (0 - qz) - iz * (0 - qy);
	output[1] = iy * qw + iw * (0 - qy) + iz * (0 - qx) - ix * (0 - qz);
	output[2] = iz * qw + iw * (0 - qz) + ix * (0 - qy) - iy * (0 - qx);
	return output;
}

Vec3.str = function(a) {
	return "";
}

function Vec4()
{
}

Vec4.prototype.f = function() {
}
