// Generated automatically with "cito". Do not edit.
package CitoGlMatrix.lib;

public class TestVec3
{

	private void add()
	{
		this.addWithASeparateOutputVector();
		this.addWhenVecAIsTheOutputVector();
		this.addWhenVecBIsTheOutputVector();
	}

	private void addWhenVecAIsTheOutputVector()
	{
	}

	private void addWhenVecBIsTheOutputVector()
	{
	}

	private void addWithASeparateOutputVector()
	{
		float[] result = Vec3.add(this.output, this.vecA, this.vecB);
		this.assertArrayEqual(this.output, this.arr3(5, 7, 9), 3, "Add should place values into out");
		this.assertArrayEqual(result, this.output, 3, "Add should return out");
		this.assertArrayEqual(this.vecA, this.arr3(1, 2, 3), 3, "Add should not modify vecA");
		this.assertArrayEqual(this.vecB, this.arr3(4, 5, 6), 3, "Add should not modify vecB");
	}

	private float[] arr16(int p, int p_2, int p_3, int p_4, int p_5, int p_6, int p_7, int p_8, int p_9, int p_10, int p_11, int p_12, int p_13, int p_14, int p_15, int p_16)
	{
		float[] arr = new float[16];
		arr[0] = p;
		arr[1] = p_2;
		arr[2] = p_3;
		arr[3] = p_4;
		arr[4] = p_5;
		arr[5] = p_6;
		arr[6] = p_7;
		arr[7] = p_8;
		arr[8] = p_9;
		arr[9] = p_10;
		arr[10] = p_11;
		arr[11] = p_12;
		arr[12] = p_13;
		arr[13] = p_14;
		arr[14] = p_15;
		arr[15] = p_16;
		return arr;
	}

	private float[] arr3(int p, int p_2, int p_3)
	{
		float[] arr = new float[3];
		arr[0] = p;
		arr[1] = p_2;
		arr[2] = p_3;
		return arr;
	}

	private float[] arr9(int p, int p_2, int p_3, int p_4, int p_5, int p_6, int p_7, int p_8, int p_9)
	{
		float[] arr = new float[16];
		arr[0] = p;
		arr[1] = p_2;
		arr[2] = p_3;
		arr[3] = p_4;
		arr[4] = p_5;
		arr[5] = p_6;
		arr[6] = p_7;
		arr[7] = p_8;
		arr[8] = p_9;
		return arr;
	}

	private void assertArrayEqual(float[] actual, float[] expected, int length, String msg)
	{
		for (int i = 0; i < length; i++) {
			if (actual[i] != expected[i]) {
				this.errors[this.errorsCount++] = msg;
			}
		}
	}

	private void assertCloseTo(float actual, float expected, String msg)
	{
		if (GlMatrixMath.abs(actual - expected) > GlMatrixMath.gLMAT_EPSILON()) {
			this.errors[this.errorsCount++] = msg;
		}
	}

	private void assertEqual(float actual, float expected, String msg)
	{
		if (actual != expected) {
			this.errors[this.errorsCount++] = msg;
		}
	}

	private void clone()
	{
		float[] result = Vec3.clone(this.vecA);
		this.assertArrayEqual(result, this.vecA, 3, "Clone should return a 3 element array initialized to the values in vecA");
	}

	private void copy()
	{
		float[] result = Vec3.copy(this.output, this.vecA);
		this.assertArrayEqual(this.output, this.arr3(1, 2, 3), 3, "Copy should place values into out");
		this.assertArrayEqual(result, this.output, 3, "Copy should return output");
	}

	private void create()
	{
		float[] result = Vec3.create();
		this.assertArrayEqual(result, this.arr3(0, 0, 0), 3, "Create should return a 3 element array initialized to 0s");
	}

	private void cross()
	{
	}

	private void distance()
	{
		float result = Vec3.distance(this.vecA, this.vecB);
		float r = 5196152;
		r /= 1000000;
		this.assertCloseTo(result, r, "Distance should return the distance");
	}

	private void divide()
	{
	}

	private void dot()
	{
		float result = Vec3.dot(this.vecA, this.vecB);
		this.assertEqual(result, 32, "Dot should return the dot product");
		this.assertArrayEqual(this.vecA, this.arr3(1, 2, 3), 3, "Dot should not modify vecA");
		this.assertArrayEqual(this.vecB, this.arr3(4, 5, 6), 3, "Dot should not modify vecB");
	}

	private void forEach()
	{
	}

	private void fromValues()
	{
		float[] result = Vec3.fromValues(1, 2, 3);
		this.assertArrayEqual(result, this.arr3(1, 2, 3), 3, "FromValues should return a 3 element array initialized to the values passed");
	}

	private void length()
	{
		float result = Vec3.length(this.vecA);
		float r = 3741657;
		r /= 1000000;
		this.assertCloseTo(result, r, "Length should return the length");
	}

	private void lerp()
	{
	}

	private void max()
	{
	}

	private void min()
	{
	}

	private void multiply()
	{
	}

	private void negate()
	{
	}

	private void normalize()
	{
	}

	private void random()
	{
	}

	private void scale()
	{
	}

	private void scaleAndAdd()
	{
	}

	private void set()
	{
		float[] result = Vec3.set(this.output, 1, 2, 3);
		this.assertArrayEqual(this.output, this.arr3(1, 2, 3), 3, "Set should place values into output");
		this.assertArrayEqual(result, this.output, 3, "Set should return output");
	}

	private void squaredDistance()
	{
		float result = Vec3.squaredDistance(this.vecA, this.vecB);
		this.assertEqual(result, 27, "SquaredDistance should return the squared distance");
	}

	private void squaredLength()
	{
		float result = Vec3.squaredLength(this.vecA);
		this.assertEqual(result, 14, "SquaredLength should return the squared length");
	}

	private void str()
	{
	}

	private void subtract()
	{
		this.subtractShouldHaveAnAliasCalledSub();
		this.subtractWithASeparateOutputVector();
		this.subtractWhenVecAIsTheOutputVector();
		this.subtractWhenVecBIsTheOutputVector();
	}

	private void subtractShouldHaveAnAliasCalledSub()
	{
	}

	private void subtractWhenVecAIsTheOutputVector()
	{
	}

	private void subtractWhenVecBIsTheOutputVector()
	{
	}

	private void subtractWithASeparateOutputVector()
	{
	}

	public final void test()
	{
		this.errors = new String[1024];
		this.errorsCount = 0;
		this.vecA = this.arr3(1, 2, 3);
		this.vecB = this.arr3(4, 5, 6);
		this.output = this.arr3(0, 0, 0);
		this.transformMat4();
		this.create();
		this.clone();
		this.fromValues();
		this.copy();
		this.set();
		this.add();
		this.subtract();
		this.multiply();
		this.divide();
		this.min();
		this.max();
		this.scale();
		this.scaleAndAdd();
		this.distance();
		this.squaredDistance();
		this.length();
		this.squaredLength();
		this.negate();
		this.normalize();
		this.dot();
		this.cross();
		this.lerp();
		this.random();
		this.forEach();
		this.str();
	}

	private void transformMat3With90DegAboutX()
	{
		float[] result = Vec3.transformMat3(this.output, this.arr3(0, 1, 0), this.arr9(1, 0, 0, 0, 0, 1, 0, -1, 0));
		this.assertArrayEqual(this.output, this.arr3(0, 0, 1), 3, "TransformMat3With90DegAboutX should produce correct output");
	}

	private void transformMat3With90DegAboutY()
	{
		float[] result = Vec3.transformMat3(this.output, this.arr3(1, 0, 0), this.arr9(0, 0, -1, 0, 1, 0, 1, 0, 0));
		this.assertArrayEqual(this.output, this.arr3(0, 0, -1), 3, "TransformMat3With90DegAboutU should produce correct output");
	}

	private void transformMat3With90DegAboutZ()
	{
		float[] result = Vec3.transformMat3(this.output, this.arr3(1, 0, 0), this.arr9(0, 1, 0, -1, 0, 0, 0, 0, 1));
		this.assertArrayEqual(this.output, this.arr3(0, 1, 0), 3, "TransformMat3With90DegAboutZ should produce correct output");
	}

	private void transformMat3WithALookAtNormalMatrix()
	{
		float[] matr = Mat4.lookAt(Mat4.create(), this.arr3(5, 6, 7), this.arr3(2, 6, 7), this.arr3(0, 1, 0));
		float[] n = Mat3.create();
		matr = Mat3.transpose(n, Mat3.invert(n, Mat3.fromMat4(n, matr)));
		float[] result = Vec3.transformMat3(this.output, this.arr3(1, 0, 0), matr);
		this.assertArrayEqual(this.output, this.arr3(0, 0, 1), 3, "TransformMat3WithALookAtNormalMatrix should rotate the input");
		this.assertArrayEqual(result, this.output, 3, "TransformMat3WithALookAtNormalMatrix should return output");
	}

	private void transformMat3WithAnIdentity()
	{
		float[] matr = this.arr9(1, 0, 0, 0, 1, 0, 0, 0, 1);
		float[] result = Vec3.transformMat3(this.output, this.vecA, matr);
		this.assertArrayEqual(this.output, this.arr3(1, 2, 3), 3, "TransformMat3WithAnIdentity should produce the input");
		this.assertArrayEqual(result, this.output, 3, "TransformMat3WithAnIdentity should return output");
	}

	private void transformMat4()
	{
		this.transformMat4WithAnIdentity();
		this.transformMat4WithALookAt();
		this.transformMat3WithAnIdentity();
		this.transformMat3With90DegAboutX();
		this.transformMat3With90DegAboutY();
		this.transformMat3With90DegAboutZ();
		this.transformMat3WithALookAtNormalMatrix();
	}

	private void transformMat4WithALookAt()
	{
		float[] matr = Mat4.lookAt(Mat4.create(), this.arr3(5, 6, 7), this.arr3(2, 6, 7), this.arr3(0, 1, 0));
		float[] result = Vec3.transformMat4(this.output, this.vecA, matr);
		this.assertArrayEqual(this.output, this.arr3(4, -4, -4), 3, "TransformMat4WithALookAt should rotate and translate the input");
		this.assertArrayEqual(result, this.output, 3, "TransformMat4WithALookAt should return out");
	}

	private void transformMat4WithAnIdentity()
	{
		float[] matr = this.arr16(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		float[] result = Vec3.transformMat4(this.output, this.vecA, matr);
		this.assertArrayEqual(this.output, this.arr3(1, 2, 3), 3, "TransformMat4WithAnIdentity should produce the input");
		this.assertArrayEqual(result, this.output, 3, "TransformMat4WithAnIdentity should return output");
	}
	private String[] errors;
	private int errorsCount;
	private float[] output;
	private float[] vecA;
	private float[] vecB;
}
