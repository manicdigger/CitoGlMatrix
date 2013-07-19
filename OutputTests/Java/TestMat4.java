// Generated automatically with "cito". Do not edit.
package CitoGlMatrix.lib;

public class TestMat4
{

	private void adjoint()
	{
		this.adjointWithASeparateOutputMatrix();
		this.adjointWhenMatAIsTheOutputMatrix();
	}

	private void adjointWhenMatAIsTheOutputMatrix()
	{
	}

	private void adjointWithASeparateOutputMatrix()
	{
	}

	private float[] arr16(int p, int p_2, int p_3, int p_4, int p_5, int p_6, int p_7, int p_8, int p_9, int p_10, int p_11, int p_12, int p_13, int p_14, int p_15, int p_16)
	{
		return this.citoassert.arr16(p, p_2, p_3, p_4, p_5, p_6, p_7, p_8, p_9, p_10, p_11, p_12, p_13, p_14, p_15, p_16);
	}

	private final float[] arr3(int p, int p_2, int p_3)
	{
		return this.citoassert.arr3(p, p_2, p_3);
	}

	private final float[] arr9(int p, int p_2, int p_3, int p_4, int p_5, int p_6, int p_7, int p_8, int p_9)
	{
		return this.citoassert.arr9(p, p_2, p_3, p_4, p_5, p_6, p_7, p_8, p_9);
	}

	private void assertArrayEqual(float[] actual, float[] expected, int length, String msg)
	{
		this.citoassert.assertArrayEqual(actual, expected, length, msg);
	}

	private final void assertCloseTo(float actual, float expected, String msg)
	{
		this.citoassert.assertCloseTo(actual, expected, msg);
	}

	private final void assertEqual(float actual, float expected, String msg)
	{
		this.citoassert.assertEqual(actual, expected, msg);
	}

	private void clone()
	{
		float[] result = Mat4.clone(this.matA);
		this.assertArrayEqual(result, this.matA, 16, "Clone should return a 16 element array initialized to the values in matA");
	}

	private void copy()
	{
		float[] result = Mat4.copy(this.output, this.matA);
		this.assertArrayEqual(this.output, this.matA, 16, "Copy should place values into out");
		this.assertArrayEqual(result, this.output, 16, "Copy should return out");
	}

	private void create()
	{
		float[] result = Mat4.create();
		this.assertArrayEqual(result, this.identity, 16, "Create should return a 16 element array initialized to a 4x4 identity matrix");
	}

	private void determinant()
	{
	}

	private void frustum()
	{
	}

	private void identity()
	{
		float[] result = Mat4.identity(this.output);
		this.assertArrayEqual(this.output, this.identity, 16, "Copy should place values into out");
		this.assertArrayEqual(result, this.output, 16, "Copy should return out");
	}

	private void invert()
	{
		this.invertWithASeparateOutputMatrix();
		this.invertWhenMatAIsTheOutputMatrix();
	}

	private void invertWhenMatAIsTheOutputMatrix()
	{
	}

	private void invertWithASeparateOutputMatrix()
	{
	}

	private void lookAt()
	{
		this.lookAtLookingDown();
		this.lookAt74();
		this.lookAt3();
	}

	private void lookAt3()
	{
	}

	private void lookAt74()
	{
	}

	private void lookAtLookingDown()
	{
	}

	private void multiply()
	{
		this.multiplyWithASeparateOutputMatrix();
		this.multiplyWhenMatAIsTheOutputMatrix();
		this.multiplyWhenMatBIsTheOutputMatrix();
	}

	private void multiplyWhenMatAIsTheOutputMatrix()
	{
	}

	private void multiplyWhenMatBIsTheOutputMatrix()
	{
	}

	private void multiplyWithASeparateOutputMatrix()
	{
	}

	private void ortho()
	{
	}

	private void perspective()
	{
		this.perspective1();
		this.perspectiveWithNonzeroNear45degFovyAndRealisticAspectRatio();
	}

	private void perspective1()
	{
	}

	private void perspectiveWithNonzeroNear45degFovyAndRealisticAspectRatio()
	{
	}

	private void resetTests()
	{
		this.matA = this.arr16(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 2, 3, 1);
		this.matB = this.arr16(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 4, 5, 6, 1);
		this.output = this.arr16(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
		this.identity = this.arr16(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
	}

	private void rotate()
	{
		this.rotateWithASeparateOutputMatrix();
		this.rotateWhenMatAIsTheOutputMatrix();
	}

	private void rotateWhenMatAIsTheOutputMatrix()
	{
	}

	private void rotateWithASeparateOutputMatrix()
	{
	}

	private void rotateX()
	{
		this.rotateXWithASeparateOutputMatrix();
		this.rotateXWhenMatAIsTheOutputMatrix();
	}

	private void rotateXWhenMatAIsTheOutputMatrix()
	{
	}

	private void rotateXWithASeparateOutputMatrix()
	{
	}

	private void rotateY()
	{
		this.rotateYWithASeparateOutputMatrix();
		this.rotateYWhenMatAIsTheOutputMatrix();
	}

	private void rotateYWhenMatAIsTheOutputMatrix()
	{
	}

	private void rotateYWithASeparateOutputMatrix()
	{
	}

	private void rotateZ()
	{
		this.rotateZWithASeparateOutputMatrix();
		this.rotateZWhenMatAIsTheOutputMatrix();
	}

	private void rotateZWhenMatAIsTheOutputMatrix()
	{
	}

	private void rotateZWithASeparateOutputMatrix()
	{
	}

	private void scale()
	{
		this.scaleWithASeparateOutputMatrix();
		this.scaleWhenMatAIsTheOutputMatrix();
	}

	private void scaleWhenMatAIsTheOutputMatrix()
	{
	}

	private void scaleWithASeparateOutputMatrix()
	{
	}

	private void str()
	{
	}

	public final void test()
	{
		this.citoassert = new CitoAssert();
		this.resetTests();
		this.create();
		this.resetTests();
		this.clone();
		this.resetTests();
		this.copy();
		this.resetTests();
		this.identity();
		this.resetTests();
		this.transpose();
		this.resetTests();
		this.invert();
		this.resetTests();
		this.adjoint();
		this.resetTests();
		this.determinant();
		this.resetTests();
		this.multiply();
		this.resetTests();
		this.translate();
		this.resetTests();
		this.scale();
		this.resetTests();
		this.rotate();
		this.resetTests();
		this.rotateX();
		this.resetTests();
		this.rotateY();
		this.resetTests();
		this.rotateZ();
		this.resetTests();
		this.frustum();
		this.resetTests();
		this.perspective();
		this.resetTests();
		this.ortho();
		this.resetTests();
		this.lookAt();
		this.resetTests();
		this.str();
		this.resetTests();
	}

	private void translate()
	{
		this.translateWithASeparateOutputMatrix();
		this.translateWhenMatAIsTheOutputMatrix();
	}

	private void translateWhenMatAIsTheOutputMatrix()
	{
	}

	private void translateWithASeparateOutputMatrix()
	{
	}

	private void transpose()
	{
		this.transposeWithASeparateOutputMatrix();
		this.transposeWhenMatAIsTheOutputMatrix();
	}

	private void transposeWhenMatAIsTheOutputMatrix()
	{
	}

	private void transposeWithASeparateOutputMatrix()
	{
	}
	private CitoAssert citoassert;
	private float[] identity;
	private float[] matA;
	private float[] matB;
	private float[] output;
}
