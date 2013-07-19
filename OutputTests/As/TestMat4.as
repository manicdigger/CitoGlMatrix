// Generated automatically with "cito". Do not edit.
package
{
	import flash.utils.ByteArray;

	public class TestMat4
	{

		private function adjoint() : void
		{
			this.adjointWithASeparateOutputMatrix();
			this.adjointWhenMatAIsTheOutputMatrix();
		}

		private function adjointWhenMatAIsTheOutputMatrix() : void
		{
		}

		private function adjointWithASeparateOutputMatrix() : void
		{
		}

		private function arr16(p : int, p_2 : int, p_3 : int, p_4 : int, p_5 : int, p_6 : int, p_7 : int, p_8 : int, p_9 : int, p_10 : int, p_11 : int, p_12 : int, p_13 : int, p_14 : int, p_15 : int, p_16 : int) : Array
		{
			return this.citoassert.arr16(p, p_2, p_3, p_4, p_5, p_6, p_7, p_8, p_9, p_10, p_11, p_12, p_13, p_14, p_15, p_16);
		}

		private final function arr3(p : int, p_2 : int, p_3 : int) : Array
		{
			return this.citoassert.arr3(p, p_2, p_3);
		}

		private final function arr9(p : int, p_2 : int, p_3 : int, p_4 : int, p_5 : int, p_6 : int, p_7 : int, p_8 : int, p_9 : int) : Array
		{
			return this.citoassert.arr9(p, p_2, p_3, p_4, p_5, p_6, p_7, p_8, p_9);
		}

		private function assertArrayEqual(actual : Array, expected : Array, length : int, msg : String) : void
		{
			this.citoassert.assertArrayEqual(actual, expected, length, msg);
		}

		private final function assertCloseTo(actual : float, expected : float, msg : String) : void
		{
			this.citoassert.assertCloseTo(actual, expected, msg);
		}

		private final function assertEqual(actual : float, expected : float, msg : String) : void
		{
			this.citoassert.assertEqual(actual, expected, msg);
		}

		private function clone() : void
		{
			var result : Array = Mat4.clone(this.matA);
			this.assertArrayEqual(result, this.matA, 16, "Clone should return a 16 element array initialized to the values in matA");
		}

		private function copy() : void
		{
			var result : Array = Mat4.copy(this.output, this.matA);
			this.assertArrayEqual(this.output, this.matA, 16, "Copy should place values into out");
			this.assertArrayEqual(result, this.output, 16, "Copy should return out");
		}

		private function create() : void
		{
			var result : Array = Mat4.create();
			this.assertArrayEqual(result, this.identity, 16, "Create should return a 16 element array initialized to a 4x4 identity matrix");
		}

		private function determinant() : void
		{
		}

		private function frustum() : void
		{
		}

		private function identity() : void
		{
			var result : Array = Mat4.identity(this.output);
			this.assertArrayEqual(this.output, this.identity, 16, "Copy should place values into out");
			this.assertArrayEqual(result, this.output, 16, "Copy should return out");
		}

		private function invert() : void
		{
			this.invertWithASeparateOutputMatrix();
			this.invertWhenMatAIsTheOutputMatrix();
		}

		private function invertWhenMatAIsTheOutputMatrix() : void
		{
		}

		private function invertWithASeparateOutputMatrix() : void
		{
		}

		private function lookAt() : void
		{
			this.lookAtLookingDown();
			this.lookAt74();
			this.lookAt3();
		}

		private function lookAt3() : void
		{
		}

		private function lookAt74() : void
		{
		}

		private function lookAtLookingDown() : void
		{
		}

		private function multiply() : void
		{
			this.multiplyWithASeparateOutputMatrix();
			this.multiplyWhenMatAIsTheOutputMatrix();
			this.multiplyWhenMatBIsTheOutputMatrix();
		}

		private function multiplyWhenMatAIsTheOutputMatrix() : void
		{
		}

		private function multiplyWhenMatBIsTheOutputMatrix() : void
		{
		}

		private function multiplyWithASeparateOutputMatrix() : void
		{
		}

		private function ortho() : void
		{
		}

		private function perspective() : void
		{
			this.perspective1();
			this.perspectiveWithNonzeroNear45degFovyAndRealisticAspectRatio();
		}

		private function perspective1() : void
		{
		}

		private function perspectiveWithNonzeroNear45degFovyAndRealisticAspectRatio() : void
		{
		}

		private function resetTests() : void
		{
			this.matA = this.arr16(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 2, 3, 1);
			this.matB = this.arr16(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 4, 5, 6, 1);
			this.output = this.arr16(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
			this.identity = this.arr16(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
		}

		private function rotate() : void
		{
			this.rotateWithASeparateOutputMatrix();
			this.rotateWhenMatAIsTheOutputMatrix();
		}

		private function rotateWhenMatAIsTheOutputMatrix() : void
		{
		}

		private function rotateWithASeparateOutputMatrix() : void
		{
		}

		private function rotateX() : void
		{
			this.rotateXWithASeparateOutputMatrix();
			this.rotateXWhenMatAIsTheOutputMatrix();
		}

		private function rotateXWhenMatAIsTheOutputMatrix() : void
		{
		}

		private function rotateXWithASeparateOutputMatrix() : void
		{
		}

		private function rotateY() : void
		{
			this.rotateYWithASeparateOutputMatrix();
			this.rotateYWhenMatAIsTheOutputMatrix();
		}

		private function rotateYWhenMatAIsTheOutputMatrix() : void
		{
		}

		private function rotateYWithASeparateOutputMatrix() : void
		{
		}

		private function rotateZ() : void
		{
			this.rotateZWithASeparateOutputMatrix();
			this.rotateZWhenMatAIsTheOutputMatrix();
		}

		private function rotateZWhenMatAIsTheOutputMatrix() : void
		{
		}

		private function rotateZWithASeparateOutputMatrix() : void
		{
		}

		private function scale() : void
		{
			this.scaleWithASeparateOutputMatrix();
			this.scaleWhenMatAIsTheOutputMatrix();
		}

		private function scaleWhenMatAIsTheOutputMatrix() : void
		{
		}

		private function scaleWithASeparateOutputMatrix() : void
		{
		}

		private function str() : void
		{
		}

		public final function test() : void
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

		private function translate() : void
		{
			this.translateWithASeparateOutputMatrix();
			this.translateWhenMatAIsTheOutputMatrix();
		}

		private function translateWhenMatAIsTheOutputMatrix() : void
		{
		}

		private function translateWithASeparateOutputMatrix() : void
		{
		}

		private function transpose() : void
		{
			this.transposeWithASeparateOutputMatrix();
			this.transposeWhenMatAIsTheOutputMatrix();
		}

		private function transposeWhenMatAIsTheOutputMatrix() : void
		{
		}

		private function transposeWithASeparateOutputMatrix() : void
		{
		}
		private var citoassert : CitoAssert;
		private var identity : Array;
		private var matA : Array;
		private var matB : Array;
		private var output : Array;
	}
}
