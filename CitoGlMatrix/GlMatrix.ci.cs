//glMatrix license:
//Copyright (c) 2013, Brandon Jones, Colin MacKenzie IV. All rights reserved.

//Redistribution and use in source and binary forms, with or without modification,
//are permitted provided that the following conditions are met:

//  * Redistributions of source code must retain the above copyright notice, this
//    list of conditions and the following disclaimer.
//  * Redistributions in binary form must reproduce the above copyright notice,
//    this list of conditions and the following disclaimer in the documentation 
//    and/or other materials provided with the distribution.

//THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
//ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
//WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE 
//DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
//ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
//(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
//LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
//ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
//(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
//SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

/// 3 Dimensional Vector
public class Vec3
{
    /// Creates a new, empty vec3
    /// Returns {vec3} a new 3D vector.
    public static float[] Create()
    {
        float[] output = new float[3];
        output[0] = 0;
        output[1] = 0;
        output[2] = 0;
        return output;
    }

    /// Creates a new vec3 initialized with values from an existing vector
    /// Returns {vec3} a new 3D vector
    public static float[] Clone(
        /// a vector to clone
        float[] a)
    {
        float[] output = new float[3];
        output[0] = a[0];
        output[1] = a[1];
        output[2] = a[2];
        return output;
    }

    /// Creates a new vec3 initialized with the given values
    /// Returns {vec3} a new 3D vector
    public static float[] FromValues(
        /// X component
        float x,
        /// Y component
        float y,
        /// Z component
        float z)
    {
        float[] output = new float[3];
        output[0] = x;
        output[1] = y;
        output[2] = z;
        return output;
    }

    /// Copy the values from one vec3 to another
    ///@returns {vec3} out
    public static float[] Copy(
        ////@param {vec3} out the receiving vector
        float[] output,
        ////@param {vec3} a the source vector
        float[] a)
    {
        output[0] = a[0];
        output[1] = a[1];
        output[2] = a[2];
        return output;
    }

    ///Set the components of a vec3 to the given values
    ///@returns {vec3} out
    public static float[] Set(
        ////@param {vec3} out the receiving vector
        float[] output,
        ////@param {Number} x X component
        float x,
        ////@param {Number} y Y component
        float y,
        ////@param {Number} z Z component
        float z)
    {
        output[0] = x;
        output[1] = y;
        output[2] = z;
        return output;
    }

    ///Adds two vec3's
    ///@returns {vec3} out
    public static float[] Add(
        ////@param {vec3} out the receiving vector
        float[] output,
        ////@param {vec3} a the first operand
        float[] a,
        ////@param {vec3} b the second operand
        float[] b)
    {
        output[0] = a[0] + b[0];
        output[1] = a[1] + b[1];
        output[2] = a[2] + b[2];
        return output;
    }

    ///Subtracts vector b from vector a
    ///@returns {vec3} out
    public static float[] Substract(
        ////@param {vec3} out the receiving vector
        float[] output,
        ////@param {vec3} a the first operand
        float[] a,
        ////@param {vec3} b the second operand
        float[] b)
    {
        output[0] = a[0] - b[0];
        output[1] = a[1] - b[1];
        output[2] = a[2] - b[2];
        return output;
    }

    ///Alias for {@link vec3.subtract}
    ///@function
    //vec3.sub = vec3.subtract;
    public static float[] Sub(float[] output, float[] a, float[] b)
    {
        return Substract(output, a, b);
    }

    ///Multiplies two vec3's
    ///@returns {vec3} out
    public static float[] Multiply(
        ////@param {vec3} out the receiving vector
        float[] output,
        ////@param {vec3} a the first operand
        float[] a,
        ////@param {vec3} b the second operand
        float[] b)
    {
        output[0] = a[0] * b[0];
        output[1] = a[1] * b[1];
        output[2] = a[2] * b[2];
        return output;
    }

    ///Alias for {@link vec3.multiply}
    public static float[] Mul(float[] output, float[] a, float[] b)
    {
        return Multiply(output, a, b);
    }

    ///Divides two vec3's
    ///@returns {vec3} out
    public static float[] Divide(
        ////@param {vec3} out the receiving vector
        float[] output,
        ////@param {vec3} a the first operand
        float[] a,
        ////@param {vec3} b the second operand
        float[] b)
    {
        output[0] = a[0] / b[0];
        output[1] = a[1] / b[1];
        output[2] = a[2] / b[2];
        return output;
    }

    ///Alias for {@link vec3.divide}
    public static float[] Div(float[] output, float[] a, float[] b)
    {
        return Divide(output, a, b);
    }

    ///Returns the minimum of two vec3's
    ///@returns {vec3} out
    public static float[] Min(
        ////@param {vec3} out the receiving vector
        float[] output,
        ////@param {vec3} a the first operand
        float[] a,
        ////@param {vec3} b the second operand
        float[] b)
    {
        output[0] = Math.min(a[0], b[0]);
        output[1] = Math.min(a[1], b[1]);
        output[2] = Math.min(a[2], b[2]);
        return output;
    }

    ///Returns the maximum of two vec3's
    ///@returns {vec3} out
    public static float[] Max(
        ////@param {vec3} out the receiving vector
        float[] output,
        ////@param {vec3} a the first operand
        float[] a,
        ////@param {vec3} b the second operand
        float[] b)
    {
        output[0] = Math.max(a[0], b[0]);
        output[1] = Math.max(a[1], b[1]);
        output[2] = Math.max(a[2], b[2]);
        return output;
    }

    ///Scales a vec3 by a scalar number
    ///@returns {vec3} out
    public static float[] Scale(
        ////@param {vec3} out the receiving vector
        float[] output,
        ////@param {vec3} a the vector to scale
        float[] a,
        ////@param {Number} b amount to scale the vector by
        float b)
    {
        output[0] = a[0] * b;
        output[1] = a[1] * b;
        output[2] = a[2] * b;
        return output;
    }

    ///Adds two vec3's after scaling the second operand by a scalar value
    ///@returns {vec3} out
    public static float[] ScaleAndAdd(
        ////@param {vec3} out the receiving vector
        float[] output,
        ////@param {vec3} a the first operand
        float[] a,
        ////@param {vec3} b the second operand
        float[] b,
        ////@param {Number} scale the amount to scale b by before adding
        float scale)
    {
        output[0] = a[0] + (b[0] * scale);
        output[1] = a[1] + (b[1] * scale);
        output[2] = a[2] + (b[2] * scale);
        return output;
    }

    ///Calculates the euclidian distance between two vec3's
    ///@returns {Number} distance between a and b
    public static float Distance(
        ////@param {vec3} a the first operand
        float[] a,
        ////@param {vec3} b the second operand
        float[] b)
    {
        float x = b[0] - a[0];
        float y = b[1] - a[1];
        float z = b[2] - a[2];
        return Platform.Sqrt(x * x + y * y + z * z);
    }

    ///Alias for {@link vec3.distance}
    public static float Dist(float[] a, float[] b)
    {
        return Distance(a, b);
    }

    ///Calculates the squared euclidian distance between two vec3's
    ///@returns {Number} squared distance between a and b
    public static float SquaredDistance(
        ////@param {vec3} a the first operand
        float[] a,
        ////@param {vec3} b the second operand
        float[] b)
    {
        float x = b[0] - a[0];
        float y = b[1] - a[1];
        float z = b[2] - a[2];
        return x * x + y * y + z * z;
    }

    ///Alias for {@link vec3.squaredDistance}
    ///@function
    //vec3.sqrDist = vec3.squaredDistance;
    public static float SqrDist(float[] a, float[] b)
    {
        return SquaredDistance(a, b);
    }

    ///Calculates the length of a vec3
    ///@returns {Number} length of a
    public static float Length(
        ////@param {vec3} a vector to calculate length of
        float[] a)
    {
        float x = a[0];
        float y = a[1];
        float z = a[2];
        return Platform.Sqrt(x * x + y * y + z * z);
    }

    ///Alias for {@link vec3.length}
    public static float Len(float[] a)
    {
        return Length(a);
    }

    ///Calculates the squared length of a vec3
    ///@returns {Number} squared length of a
    public static float SquaredLength(
        ////@param {vec3} a vector to calculate squared length of
        float[] a)
    {
        float x = a[0];
        float y = a[1];
        float z = a[2];
        return x * x + y * y + z * z;
    }

    ///Alias for {@link vec3.squaredLength}
    public static float SqrLen(float[] a)
    {
        return SquaredLength(a);
    }

    ///Negates the components of a vec3
    ///@returns {vec3} out
    public static float[] Negate(
        ////@param {vec3} out the receiving vector
        float[] output,
        ////@param {vec3} a vector to negate
        float[] a)
    {
        output[0] = 0 - a[0];
        output[1] = 0 - a[1];
        output[2] = 0 - a[2];
        return output;
    }

    ///Normalize a vec3
    ///@returns {vec3} out
    public static float[] Normalize(
        ////@param {vec3} out the receiving vector
        float[] output,
        ////@param {vec3} a vector to normalize
        float[] a)
    {
        float x = a[0];
        float y = a[1];
        float z = a[2];
        float len = x * x + y * y + z * z;
        if (len > 0)
        {
            //TODO: evaluate use of glm_invsqrt here?
            float one = 1;
            len = one / Platform.Sqrt(len);
            output[0] = a[0] * len;
            output[1] = a[1] * len;
            output[2] = a[2] * len;
        }
        return output;
    }

    ///Calculates the dot product of two vec3's
    ///@returns {Number} dot product of a and b
    public static float Dot(
        ////@param {vec3} a the first operand
        float[] a,
        ////@param {vec3} b the second operand
        float[] b)
    {
        return a[0] * b[0] + a[1] * b[1] + a[2] * b[2];
    }

    ///Computes the cross product of two vec3's
    ///@returns {vec3} out
    public static float[] Cross(
        ////@param {vec3} out the receiving vector
        float[] output,
        ////@param {vec3} a the first operand
        float[] a,
        ////@param {vec3} b the second operand
        float[] b)
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

    ///Performs a linear interpolation between two vec3's
    ///@returns {vec3} out
    public static float[] Lerp(
        ////@param {vec3} out the receiving vector
        float[] output,
        ////@param {vec3} a the first operand
        float[] a,
        ////@param {vec3} b the second operand
        float[] b,
        ////@param {Number} t interpolation amount between the two inputs
        float t)
    {
        float ax = a[0];
        float ay = a[1];
        float az = a[2];
        output[0] = ax + t * (b[0] - ax);
        output[1] = ay + t * (b[1] - ay);
        output[2] = az + t * (b[2] - az);
        return output;
    }

    ///Generates a random vector with the given scale
    ///@returns {vec3} out
    public static float[] Random(
        ////@param {vec3} out the receiving vector
        float[] output,
        ////@param {Number} [scale] Length of the resulting vector. If ommitted, a unit vector will be returned
        float scale)
    {
        //float scale = scale || 1.0;
        float one = 1;
        float two = 2;

        float r = Platform.Random() * two * Math.PI();
        float z = (Platform.Random() * two) - one;
        float zScale = Platform.Sqrt(one - z * z) * scale;

        output[0] = Platform.Cos(r) * zScale;
        output[1] = Platform.Sin(r) * zScale;
        output[2] = z * scale;
        return output;
    }

    ////Transforms the vec3 with a mat4.
    ////4th vector component is implicitly '1'
    ////@returns {vec3} out
    public float[] TransformMat4(
        ////@param {vec3} out the receiving vector
        float[] output,
        ////@param {vec3} a the vector to transform
        float[] a,
        ////@param {mat4} m matrix to transform with
        float[] m)
    {
        float x = a[0];
        float y = a[1];
        float z = a[2];
        output[0] = m[0] * x + m[4] * y + m[8] * z + m[12];
        output[1] = m[1] * x + m[5] * y + m[9] * z + m[13];
        output[2] = m[2] * x + m[6] * y + m[10] * z + m[14];
        return output;
    }

    ///Transforms the vec3 with a mat3.
    ///@returns {vec3} out
    public static float[] TransformMat3(
        ////@param {vec3} out the receiving vector
        float[] output,
        ////@param {vec3} a the vector to transform
        float[] a,
        ////@param {mat4} m the 3x3 matrix to transform with
        float[] m)
    {
        float x = a[0];
        float y = a[1];
        float z = a[2];
        output[0] = x * m[0] + y * m[3] + z * m[6];
        output[1] = x * m[1] + y * m[4] + z * m[7];
        output[2] = x * m[2] + y * m[5] + z * m[8];
        return output;
    }

    ///Transforms the vec3 with a quat
    ///@returns {vec3} out
    //    // benchmarks: http://jsperf.com/quaternion-transform-vec3-implementations
    public static float[] TransformQuat(
        ////@param {vec3} out the receiving vector
        float[] output,
        ////@param {vec3} a the vector to transform
        float[] a,
        ////@param {quat} q quaternion to transform with
        float[] q)
    {
        float x = a[0];
        float y = a[1];
        float z = a[2];

        float qx = q[0];
        float qy = q[1];
        float qz = q[2];
        float qw = q[3];

        // calculate quat * vec
        float ix = qw * x + qy * z - qz * y;
        float iy = qw * y + qz * x - qx * z;
        float iz = qw * z + qx * y - qy * x;
        float iw = (0 - qx) * x - qy * y - qz * z;

        // calculate result * inverse quat
        output[0] = ix * qw + iw * (0 - qx) + iy * (0 - qz) - iz * (0 - qy);
        output[1] = iy * qw + iw * (0 - qy) + iz * (0 - qx) - ix * (0 - qz);
        output[2] = iz * qw + iw * (0 - qz) + ix * (0 - qy) - iy * (0 - qx);
        return output;
    }

    ////Perform some operation over an array of vec3s.
    ////@param {Array} a the array of vectors to iterate over
    ////@param {Number} stride Number of elements between the start of each vec3. If 0 assumes tightly packed
    ////@param {Number} offset Number of elements to skip at the beginning of the array
    ////@param {Number} count Number of vec3s to iterate over. If 0 iterates over entire array
    ////@param {Function} fn Function to call for each vector in the array
    ////@param {Object} [arg] additional argument to pass to fn
    ////@returns {Array} a
    //vec3.forEach = (function() {
    //    var vec = vec3.create();

    //    return function(a, stride, offset, count, fn, arg) {
    //        var i, l;
    //        if(!stride) {
    //            stride = 3;
    //        }

    //        if(!offset) {
    //            offset = 0;
    //        }

    //        if(count) {
    //            l = Math.min((count * stride) + offset, a.length);
    //        } else {
    //            l = a.length;
    //        }

    //        for(i = offset; i < l; i += stride) {
    //            vec[0] = a[i]; vec[1] = a[i+1]; vec[2] = a[i+2];
    //            fn(vec, vec, arg);
    //            a[i] = vec[0]; a[i+1] = vec[1]; a[i+2] = vec[2];
    //        }

    //        return a;
    //    };
    //})();

    ////
    //// Returns a string representation of a vector
    ////
    //// @param {vec3} vec vector to represent as a string
    //// @returns {String} string representation of the vector
    //vec3.str = function (a) {
    //    return 'vec3(' + a[0] + ', ' + a[1] + ', ' + a[2] + ')';
    //};
    public static string str(float[] a)
    {
        return "";
    }

    //if(typeof(exports) !== 'undefined') {
    //    exports.vec3 = vec3;
    //}
}

public class Math
{
    public static float min(float a, float b)
    {
        if (a < b)
        {
            return a;
        }
        else
        {
            return b;
        }
    }

    public static float max(float a, float b)
    {
        if (a > b)
        {
            return a;
        }
        else
        {
            return b;
        }
    }

    public static float PI()
    {
        float a = 3141592;
        return a / 1000000;
    }
}

public class Platform
{
    public static float Sqrt(float a)
    {
#if CS
        native
        {
            return (float)System.Math.Sqrt(a);
        }
        return 0;
#else
        return 0;
#endif
    }

    public static float Cos(float r)
    {
#if CS
        native
        {
            return (float)System.Math.Cos(r);
        }
        return 0;
#else
        return 0;
#endif
    }

    public static float Sin(float r)
    {
#if CS
        native
        {
            return (float)System.Math.Sin(r);
        }
        return 0;
#else
        return 0;
#endif
    }
    public static float Random()
    {
        return 0;
    }
}