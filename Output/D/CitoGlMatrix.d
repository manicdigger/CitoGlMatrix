// Generated automatically with "cito". Do not edit.
import std.utf;

class Math
{

	static float PI()
	{
		float a = 3141592;
		return a / 1000000;
	}

	static float max(float a, float b)
	{
		if (a > b) {
			return a;
		}
		else {
			return b;
		}
	}

	static float min(float a, float b)
	{
		if (a < b) {
			return a;
		}
		else {
			return b;
		}
	}
}

class Platform
{

	static float Cos(float r)
	{
		return 0;
	}

	static float Random()
	{
		return 0;
	}

	static float Sin(float r)
	{
		return 0;
	}

	static float Sqrt(float a)
	{
		return 0;
	}
}

/// 3 Dimensional Vector
class Vec3
{

	/// Adds two vec3's
	/// @returns {vec3} out
	/// Params:
	/// output = /@param {vec3} out the receiving vector
	/// a = /@param {vec3} a the first operand
	/// b = /@param {vec3} b the second operand
	static const(float)[] Add(float[] output, const(float)[] a, const(float)[] b)
	{
		output[0] = a[0] + b[0];
		output[1] = a[1] + b[1];
		output[2] = a[2] + b[2];
		return output;
	}

	/// Creates a new vec3 initialized with values from an existing vector
	/// Returns {vec3} a new 3D vector
	/// Params:
	/// a = a vector to clone
	static const(float)[] Clone(const(float)[] a)
	{
		float[] output = new float[3];
		output[0] = a[0];
		output[1] = a[1];
		output[2] = a[2];
		return output;
	}

	/// Copy the values from one vec3 to another
	/// @returns {vec3} out
	/// Params:
	/// output = /@param {vec3} out the receiving vector
	/// a = /@param {vec3} a the source vector
	static const(float)[] Copy(float[] output, const(float)[] a)
	{
		output[0] = a[0];
		output[1] = a[1];
		output[2] = a[2];
		return output;
	}

	/// Creates a new, empty vec3
	/// Returns {vec3} a new 3D vector.
	static const(float)[] Create()
	{
		float[] output = new float[3];
		output[0] = 0;
		output[1] = 0;
		output[2] = 0;
		return output;
	}

	/// Computes the cross product of two vec3's
	/// @returns {vec3} out
	/// Params:
	/// output = /@param {vec3} out the receiving vector
	/// a = /@param {vec3} a the first operand
	/// b = /@param {vec3} b the second operand
	static const(float)[] Cross(float[] output, const(float)[] a, const(float)[] b)
	{
		float ax = a[0];
		float ay = a[1];
		float az = a[2];
		float bx = b[0];
		float by = b[1];
		float bz = b[2];
		output[0] = ay * bz - az * by;
		output[1] = az * bx - ax * bz;
		output[2] = ax * by - ay * bx;
		return output;
	}

	/// Alias for {@link vec3.distance}
	static float Dist(const(float)[] a, const(float)[] b)
	{
		return Vec3.Distance(a, b);
	}

	/// Calculates the euclidian distance between two vec3's
	/// @returns {Number} distance between a and b
	/// Params:
	/// a = /@param {vec3} a the first operand
	/// b = /@param {vec3} b the second operand
	static float Distance(const(float)[] a, const(float)[] b)
	{
		float x = b[0] - a[0];
		float y = b[1] - a[1];
		float z = b[2] - a[2];
		return Platform.Sqrt(x * x + y * y + z * z);
	}

	/// Alias for {@link vec3.divide}
	static const(float)[] Div(float[] output, const(float)[] a, const(float)[] b)
	{
		return Vec3.Divide(output, a, b);
	}

	/// Divides two vec3's
	/// @returns {vec3} out
	/// Params:
	/// output = /@param {vec3} out the receiving vector
	/// a = /@param {vec3} a the first operand
	/// b = /@param {vec3} b the second operand
	static const(float)[] Divide(float[] output, const(float)[] a, const(float)[] b)
	{
		output[0] = a[0] / b[0];
		output[1] = a[1] / b[1];
		output[2] = a[2] / b[2];
		return output;
	}

	/// Calculates the dot product of two vec3's
	/// @returns {Number} dot product of a and b
	/// Params:
	/// a = /@param {vec3} a the first operand
	/// b = /@param {vec3} b the second operand
	static float Dot(const(float)[] a, const(float)[] b)
	{
		return a[0] * b[0] + a[1] * b[1] + a[2] * b[2];
	}

	/// Creates a new vec3 initialized with the given values
	/// Returns {vec3} a new 3D vector
	/// Params:
	/// x = X component
	/// y = Y component
	/// z = Z component
	static const(float)[] FromValues(float x, float y, float z)
	{
		float[] output = new float[3];
		output[0] = x;
		output[1] = y;
		output[2] = z;
		return output;
	}

	/// Alias for {@link vec3.length}
	static float Len(const(float)[] a)
	{
		return Vec3.Length(a);
	}

	/// Calculates the length of a vec3
	/// @returns {Number} length of a
	/// Params:
	/// a = /@param {vec3} a vector to calculate length of
	static float Length(const(float)[] a)
	{
		float x = a[0];
		float y = a[1];
		float z = a[2];
		return Platform.Sqrt(x * x + y * y + z * z);
	}

	/// Performs a linear interpolation between two vec3's
	/// @returns {vec3} out
	/// Params:
	/// output = /@param {vec3} out the receiving vector
	/// a = /@param {vec3} a the first operand
	/// b = /@param {vec3} b the second operand
	/// t = /@param {Number} t interpolation amount between the two inputs
	static const(float)[] Lerp(float[] output, const(float)[] a, const(float)[] b, float t)
	{
		float ax = a[0];
		float ay = a[1];
		float az = a[2];
		output[0] = ax + t * (b[0] - ax);
		output[1] = ay + t * (b[1] - ay);
		output[2] = az + t * (b[2] - az);
		return output;
	}

	/// Returns the maximum of two vec3's
	/// @returns {vec3} out
	/// Params:
	/// output = /@param {vec3} out the receiving vector
	/// a = /@param {vec3} a the first operand
	/// b = /@param {vec3} b the second operand
	static const(float)[] Max(float[] output, const(float)[] a, const(float)[] b)
	{
		output[0] = Math.max(a[0], b[0]);
		output[1] = Math.max(a[1], b[1]);
		output[2] = Math.max(a[2], b[2]);
		return output;
	}

	/// Returns the minimum of two vec3's
	/// @returns {vec3} out
	/// Params:
	/// output = /@param {vec3} out the receiving vector
	/// a = /@param {vec3} a the first operand
	/// b = /@param {vec3} b the second operand
	static const(float)[] Min(float[] output, const(float)[] a, const(float)[] b)
	{
		output[0] = Math.min(a[0], b[0]);
		output[1] = Math.min(a[1], b[1]);
		output[2] = Math.min(a[2], b[2]);
		return output;
	}

	/// Alias for {@link vec3.multiply}
	static const(float)[] Mul(float[] output, const(float)[] a, const(float)[] b)
	{
		return Vec3.Multiply(output, a, b);
	}

	/// Multiplies two vec3's
	/// @returns {vec3} out
	/// Params:
	/// output = /@param {vec3} out the receiving vector
	/// a = /@param {vec3} a the first operand
	/// b = /@param {vec3} b the second operand
	static const(float)[] Multiply(float[] output, const(float)[] a, const(float)[] b)
	{
		output[0] = a[0] * b[0];
		output[1] = a[1] * b[1];
		output[2] = a[2] * b[2];
		return output;
	}

	/// Negates the components of a vec3
	/// @returns {vec3} out
	/// Params:
	/// output = /@param {vec3} out the receiving vector
	/// a = /@param {vec3} a vector to negate
	static const(float)[] Negate(float[] output, const(float)[] a)
	{
		output[0] = 0 - a[0];
		output[1] = 0 - a[1];
		output[2] = 0 - a[2];
		return output;
	}

	/// Normalize a vec3
	/// @returns {vec3} out
	/// Params:
	/// output = /@param {vec3} out the receiving vector
	/// a = /@param {vec3} a vector to normalize
	static const(float)[] Normalize(float[] output, const(float)[] a)
	{
		float x = a[0];
		float y = a[1];
		float z = a[2];
		float len = x * x + y * y + z * z;
		if (len > 0) {
			float one = 1;
			len = one / Platform.Sqrt(len);
			output[0] = a[0] * len;
			output[1] = a[1] * len;
			output[2] = a[2] * len;
		}
		return output;
	}

	/// Generates a random vector with the given scale
	/// @returns {vec3} out
	/// Params:
	/// output = /@param {vec3} out the receiving vector
	/// scale = /@param {Number} [scale] Length of the resulting vector. If ommitted, a unit vector will be returned
	static const(float)[] Random(float[] output, float scale)
	{
		float one = 1;
		float two = 2;
		float r = Platform.Random() * two * Math.PI();
		float z = Platform.Random() * two - one;
		float zScale = Platform.Sqrt(one - z * z) * scale;
		output[0] = Platform.Cos(r) * zScale;
		output[1] = Platform.Sin(r) * zScale;
		output[2] = z * scale;
		return output;
	}

	/// Scales a vec3 by a scalar number
	/// @returns {vec3} out
	/// Params:
	/// output = /@param {vec3} out the receiving vector
	/// a = /@param {vec3} a the vector to scale
	/// b = /@param {Number} b amount to scale the vector by
	static const(float)[] Scale(float[] output, const(float)[] a, float b)
	{
		output[0] = a[0] * b;
		output[1] = a[1] * b;
		output[2] = a[2] * b;
		return output;
	}

	/// Adds two vec3's after scaling the second operand by a scalar value
	/// @returns {vec3} out
	/// Params:
	/// output = /@param {vec3} out the receiving vector
	/// a = /@param {vec3} a the first operand
	/// b = /@param {vec3} b the second operand
	/// scale = /@param {Number} scale the amount to scale b by before adding
	static const(float)[] ScaleAndAdd(float[] output, const(float)[] a, const(float)[] b, float scale)
	{
		output[0] = a[0] + b[0] * scale;
		output[1] = a[1] + b[1] * scale;
		output[2] = a[2] + b[2] * scale;
		return output;
	}

	/// Set the components of a vec3 to the given values
	/// @returns {vec3} out
	/// Params:
	/// output = /@param {vec3} out the receiving vector
	/// x = /@param {Number} x X component
	/// y = /@param {Number} y Y component
	/// z = /@param {Number} z Z component
	static const(float)[] Set(float[] output, float x, float y, float z)
	{
		output[0] = x;
		output[1] = y;
		output[2] = z;
		return output;
	}

	/// Alias for {@link vec3.squaredDistance}
	/// @function
	static float SqrDist(const(float)[] a, const(float)[] b)
	{
		return Vec3.SquaredDistance(a, b);
	}

	/// Alias for {@link vec3.squaredLength}
	static float SqrLen(const(float)[] a)
	{
		return Vec3.SquaredLength(a);
	}

	/// Calculates the squared euclidian distance between two vec3's
	/// @returns {Number} squared distance between a and b
	/// Params:
	/// a = /@param {vec3} a the first operand
	/// b = /@param {vec3} b the second operand
	static float SquaredDistance(const(float)[] a, const(float)[] b)
	{
		float x = b[0] - a[0];
		float y = b[1] - a[1];
		float z = b[2] - a[2];
		return x * x + y * y + z * z;
	}

	/// Calculates the squared length of a vec3
	/// @returns {Number} squared length of a
	/// Params:
	/// a = /@param {vec3} a vector to calculate squared length of
	static float SquaredLength(const(float)[] a)
	{
		float x = a[0];
		float y = a[1];
		float z = a[2];
		return x * x + y * y + z * z;
	}

	/// Alias for {@link vec3.subtract}
	/// @function
	static const(float)[] Sub(float[] output, const(float)[] a, const(float)[] b)
	{
		return Vec3.Substract(output, a, b);
	}

	/// Subtracts vector b from vector a
	/// @returns {vec3} out
	/// Params:
	/// output = /@param {vec3} out the receiving vector
	/// a = /@param {vec3} a the first operand
	/// b = /@param {vec3} b the second operand
	static const(float)[] Substract(float[] output, const(float)[] a, const(float)[] b)
	{
		output[0] = a[0] - b[0];
		output[1] = a[1] - b[1];
		output[2] = a[2] - b[2];
		return output;
	}

	/// Transforms the vec3 with a mat3.
	///
	/// @returns {vec3} out
	/// Params:
	/// output = /@param {vec3} out the receiving vector
	/// a = /@param {vec3} a the vector to transform
	/// m = /@param {mat4} m the 3x3 matrix to transform with
	static const(float)[] TransformMat3(float[] output, const(float)[] a, const(float)[] m)
	{
		float x = a[0];
		float y = a[1];
		float z = a[2];
		output[0] = x * m[0] + y * m[3] + z * m[6];
		output[1] = x * m[1] + y * m[4] + z * m[7];
		output[2] = x * m[2] + y * m[5] + z * m[8];
		return output;
	}

	/// /Transforms the vec3 with a mat4.
	///
	/// /4th vector component is implicitly '1'
	/// /@returns {vec3} out
	/// Params:
	/// output = /@param {vec3} out the receiving vector
	/// a = /@param {vec3} a the vector to transform
	/// m = /@param {mat4} m matrix to transform with
	final const(float)[] TransformMat4(float[] output, const(float)[] a, const(float)[] m)
	{
		float x = a[0];
		float y = a[1];
		float z = a[2];
		output[0] = m[0] * x + m[4] * y + m[8] * z + m[12];
		output[1] = m[1] * x + m[5] * y + m[9] * z + m[13];
		output[2] = m[2] * x + m[6] * y + m[10] * z + m[14];
		return output;
	}

	/// Transforms the vec3 with a quat
	/// @returns {vec3} out
	/// Params:
	/// output = /@param {vec3} out the receiving vector
	/// a = /@param {vec3} a the vector to transform
	/// q = /@param {quat} q quaternion to transform with
	static const(float)[] TransformQuat(float[] output, const(float)[] a, const(float)[] q)
	{
		float x = a[0];
		float y = a[1];
		float z = a[2];
		float qx = q[0];
		float qy = q[1];
		float qz = q[2];
		float qw = q[3];
		float ix = qw * x + qy * z - qz * y;
		float iy = qw * y + qz * x - qx * z;
		float iz = qw * z + qx * y - qy * x;
		float iw = (0 - qx) * x - qy * y - qz * z;
		output[0] = ix * qw + iw * (0 - qx) + iy * (0 - qz) - iz * (0 - qy);
		output[1] = iy * qw + iw * (0 - qy) + iz * (0 - qx) - ix * (0 - qz);
		output[2] = iz * qw + iw * (0 - qz) + ix * (0 - qy) - iy * (0 - qx);
		return output;
	}

	/// /Perform some operation over an array of vec3s.
	///
	/// /@param {Array} a the array of vectors to iterate over
	/// /@param {Number} stride Number of elements between the start of each vec3. If 0 assumes tightly packed
	/// /@param {Number} offset Number of elements to skip at the beginning of the array
	/// /@param {Number} count Number of vec3s to iterate over. If 0 iterates over entire array
	/// /@param {Function} fn Function to call for each vector in the array
	/// /@param {Object} [arg] additional argument to pass to fn
	/// /@returns {Array} a
	/// /
	/// / Returns a string representation of a vector
	/// /
	/// / @param {vec3} vec vector to represent as a string
	/// / @returns {String} string representation of the vector
	static string str(const(float)[] a)
	{
		return "";
	}
}
