// Generated automatically with "cito". Do not edit.
#ifndef _CITOGLMATRIX_H_
#define _CITOGLMATRIX_H_
#include <stdbool.h>
#ifdef __cplusplus
extern "C" {
#endif
typedef struct Mat2 Mat2;
typedef struct Mat2d Mat2d;
typedef struct Mat3 Mat3;
typedef struct Mat4 Mat4;
typedef struct Quat Quat;
typedef struct Vec2 Vec2;
typedef struct Vec3 Vec3;
typedef struct Vec4 Vec4;

float Math_PI(void);

float Math_max(float a, float b);

float Math_min(float a, float b);

float Platform_Cos(float r);

float Platform_Random(void);

float Platform_Sin(float r);

float Platform_Sqrt(float a);

/**
 * Adds two vec3's
 * @returns {vec3} out
 * @param output /@param {vec3} out the receiving vector
 * @param a /@param {vec3} a the first operand
 * @param b /@param {vec3} b the second operand
 */
float const *Vec3_Add(float *output, float const *a, float const *b);

/**
 * Creates a new vec3 initialized with values from an existing vector
 * Returns {vec3} a new 3D vector
 * @param a a vector to clone
 */
float const *Vec3_Clone(float const *a);

/**
 * Copy the values from one vec3 to another
 * @returns {vec3} out
 * @param output /@param {vec3} out the receiving vector
 * @param a /@param {vec3} a the source vector
 */
float const *Vec3_Copy(float *output, float const *a);

/**
 * Creates a new, empty vec3
 * Returns {vec3} a new 3D vector.
 */
float const *Vec3_Create(void);

/**
 * Computes the cross product of two vec3's
 * @returns {vec3} out
 * @param output /@param {vec3} out the receiving vector
 * @param a /@param {vec3} a the first operand
 * @param b /@param {vec3} b the second operand
 */
float const *Vec3_Cross(float *output, float const *a, float const *b);

/**
 * Alias for {@link vec3.distance}
 */
float Vec3_Dist(float const *a, float const *b);

/**
 * Calculates the euclidian distance between two vec3's
 * @returns {Number} distance between a and b
 * @param a /@param {vec3} a the first operand
 * @param b /@param {vec3} b the second operand
 */
float Vec3_Distance(float const *a, float const *b);

/**
 * Alias for {@link vec3.divide}
 */
float const *Vec3_Div(float *output, float const *a, float const *b);

/**
 * Divides two vec3's
 * @returns {vec3} out
 * @param output /@param {vec3} out the receiving vector
 * @param a /@param {vec3} a the first operand
 * @param b /@param {vec3} b the second operand
 */
float const *Vec3_Divide(float *output, float const *a, float const *b);

/**
 * Calculates the dot product of two vec3's
 * @returns {Number} dot product of a and b
 * @param a /@param {vec3} a the first operand
 * @param b /@param {vec3} b the second operand
 */
float Vec3_Dot(float const *a, float const *b);

/**
 * Creates a new vec3 initialized with the given values
 * Returns {vec3} a new 3D vector
 * @param x X component
 * @param y Y component
 * @param z Z component
 */
float const *Vec3_FromValues(float x, float y, float z);

/**
 * Alias for {@link vec3.length}
 */
float Vec3_Len(float const *a);

/**
 * Calculates the length of a vec3
 * @returns {Number} length of a
 * @param a /@param {vec3} a vector to calculate length of
 */
float Vec3_Length(float const *a);

/**
 * Performs a linear interpolation between two vec3's
 * @returns {vec3} out
 * @param output /@param {vec3} out the receiving vector
 * @param a /@param {vec3} a the first operand
 * @param b /@param {vec3} b the second operand
 * @param t /@param {Number} t interpolation amount between the two inputs
 */
float const *Vec3_Lerp(float *output, float const *a, float const *b, float t);

/**
 * Returns the maximum of two vec3's
 * @returns {vec3} out
 * @param output /@param {vec3} out the receiving vector
 * @param a /@param {vec3} a the first operand
 * @param b /@param {vec3} b the second operand
 */
float const *Vec3_Max(float *output, float const *a, float const *b);

/**
 * Returns the minimum of two vec3's
 * @returns {vec3} out
 * @param output /@param {vec3} out the receiving vector
 * @param a /@param {vec3} a the first operand
 * @param b /@param {vec3} b the second operand
 */
float const *Vec3_Min(float *output, float const *a, float const *b);

/**
 * Alias for {@link vec3.multiply}
 */
float const *Vec3_Mul(float *output, float const *a, float const *b);

/**
 * Multiplies two vec3's
 * @returns {vec3} out
 * @param output /@param {vec3} out the receiving vector
 * @param a /@param {vec3} a the first operand
 * @param b /@param {vec3} b the second operand
 */
float const *Vec3_Multiply(float *output, float const *a, float const *b);

/**
 * Negates the components of a vec3
 * @returns {vec3} out
 * @param output /@param {vec3} out the receiving vector
 * @param a /@param {vec3} a vector to negate
 */
float const *Vec3_Negate(float *output, float const *a);

/**
 * Normalize a vec3
 * @returns {vec3} out
 * @param output /@param {vec3} out the receiving vector
 * @param a /@param {vec3} a vector to normalize
 */
float const *Vec3_Normalize(float *output, float const *a);

/**
 * Generates a random vector with the given scale
 * @returns {vec3} out
 * @param output /@param {vec3} out the receiving vector
 * @param scale /@param {Number} [scale] Length of the resulting vector. If ommitted, a unit vector will be returned
 */
float const *Vec3_Random(float *output, float scale);

/**
 * Scales a vec3 by a scalar number
 * @returns {vec3} out
 * @param output /@param {vec3} out the receiving vector
 * @param a /@param {vec3} a the vector to scale
 * @param b /@param {Number} b amount to scale the vector by
 */
float const *Vec3_Scale(float *output, float const *a, float b);

/**
 * Adds two vec3's after scaling the second operand by a scalar value
 * @returns {vec3} out
 * @param output /@param {vec3} out the receiving vector
 * @param a /@param {vec3} a the first operand
 * @param b /@param {vec3} b the second operand
 * @param scale /@param {Number} scale the amount to scale b by before adding
 */
float const *Vec3_ScaleAndAdd(float *output, float const *a, float const *b, float scale);

/**
 * Set the components of a vec3 to the given values
 * @returns {vec3} out
 * @param output /@param {vec3} out the receiving vector
 * @param x /@param {Number} x X component
 * @param y /@param {Number} y Y component
 * @param z /@param {Number} z Z component
 */
float const *Vec3_Set(float *output, float x, float y, float z);

/**
 * Alias for {@link vec3.squaredDistance}
 * @function
 */
float Vec3_SqrDist(float const *a, float const *b);

/**
 * Alias for {@link vec3.squaredLength}
 */
float Vec3_SqrLen(float const *a);

/**
 * Calculates the squared euclidian distance between two vec3's
 * @returns {Number} squared distance between a and b
 * @param a /@param {vec3} a the first operand
 * @param b /@param {vec3} b the second operand
 */
float Vec3_SquaredDistance(float const *a, float const *b);

/**
 * Calculates the squared length of a vec3
 * @returns {Number} squared length of a
 * @param a /@param {vec3} a vector to calculate squared length of
 */
float Vec3_SquaredLength(float const *a);

/**
 * Alias for {@link vec3.subtract}
 * @function
 */
float const *Vec3_Sub(float *output, float const *a, float const *b);

/**
 * Subtracts vector b from vector a
 * @returns {vec3} out
 * @param output /@param {vec3} out the receiving vector
 * @param a /@param {vec3} a the first operand
 * @param b /@param {vec3} b the second operand
 */
float const *Vec3_Substract(float *output, float const *a, float const *b);

/**
 * Transforms the vec3 with a mat3.
 * @returns {vec3} out
 * @param output /@param {vec3} out the receiving vector
 * @param a /@param {vec3} a the vector to transform
 * @param m /@param {mat4} m the 3x3 matrix to transform with
 */
float const *Vec3_TransformMat3(float *output, float const *a, float const *m);

/**
 * /Transforms the vec3 with a mat4.
 * /4th vector component is implicitly '1'
 * /@returns {vec3} out
 * @param output /@param {vec3} out the receiving vector
 * @param a /@param {vec3} a the vector to transform
 * @param m /@param {mat4} m matrix to transform with
 */
float const *Vec3_TransformMat4(Vec3 const *self, float *output, float const *a, float const *m);

/**
 * Transforms the vec3 with a quat
 * @returns {vec3} out
 * @param output /@param {vec3} out the receiving vector
 * @param a /@param {vec3} a the vector to transform
 * @param q /@param {quat} q quaternion to transform with
 */
float const *Vec3_TransformQuat(float *output, float const *a, float const *q);

/**
 * /Perform some operation over an array of vec3s.
 * /@param {Array} a the array of vectors to iterate over
 * /@param {Number} stride Number of elements between the start of each vec3. If 0 assumes tightly packed
 * /@param {Number} offset Number of elements to skip at the beginning of the array
 * /@param {Number} count Number of vec3s to iterate over. If 0 iterates over entire array
 * /@param {Function} fn Function to call for each vector in the array
 * /@param {Object} [arg] additional argument to pass to fn
 * /@returns {Array} a
 * /
 * / Returns a string representation of a vector
 * /
 * / @param {vec3} vec vector to represent as a string
 * / @returns {String} string representation of the vector
 */
const char *Vec3_str(float const *a);

#ifdef __cplusplus
}
#endif
#endif
