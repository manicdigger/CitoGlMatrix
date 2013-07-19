// Generated automatically with "cito". Do not edit.
package
{
	import flash.utils.ByteArray;

	public class TestVec3
	{

		private function add() : void
		{
		}

		private function arr16(p : int, p_2 : int, p_3 : int, p_4 : int, p_5 : int, p_6 : int, p_7 : int, p_8 : int, p_9 : int, p_10 : int, p_11 : int, p_12 : int, p_13 : int, p_14 : int, p_15 : int, p_16 : int) : Array
		{
			var arr : Array = new Array(16);
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

		private function arr3(p : int, p_2 : int, p_3 : int) : Array
		{
			var arr : Array = new Array(3);
			arr[0] = p;
			arr[1] = p_2;
			arr[2] = p_3;
			return arr;
		}

		private function arr9(p : int, p_2 : int, p_3 : int, p_4 : int, p_5 : int, p_6 : int, p_7 : int, p_8 : int, p_9 : int) : Array
		{
			var arr : Array = new Array(16);
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

		private function assertArrayEqual(actual : Array, expected : Array, length : int, msg : String) : void
		{
			for (var i : int = 0; i < length; i++) {
				if (actual[i] != expected[i]) {
					this.errors[this.errorsCount++] = msg;
				}
			}
		}

		private function clone() : void
		{
			var result : Array = Vec3.clone(this.vecA);
			this.assertArrayEqual(result, this.vecA, 3, "Clone should return a 3 element array initialized to the values in vecA");
		}

		private function copy() : void
		{
			var result : Array = Vec3.copy(this.output, this.vecA);
			this.assertArrayEqual(this.output, this.arr3(1, 2, 3), 3, "Copy should place values into out");
			this.assertArrayEqual(result, this.output, 3, "Copy should return output");
		}

		private function create() : void
		{
			var result : Array = Vec3.create();
			this.assertArrayEqual(result, this.arr3(0, 0, 0), 3, "Create should return a 3 element array initialized to 0s");
		}

		private function cross() : void
		{
		}

		private function distance() : void
		{
		}

		private function divide() : void
		{
		}

		private function dot() : void
		{
		}

		private function forEach() : void
		{
		}

		private function fromValues() : void
		{
			var result : Array = Vec3.fromValues(1, 2, 3);
			this.assertArrayEqual(result, this.arr3(1, 2, 3), 3, "FromValues should return a 3 element array initialized to the values passed");
		}

		private function length() : void
		{
		}

		private function lerp() : void
		{
		}

		private function max() : void
		{
		}

		private function min() : void
		{
		}

		private function multiply() : void
		{
		}

		private function negate() : void
		{
		}

		private function normalize() : void
		{
		}

		private function random() : void
		{
		}

		private function scale() : void
		{
		}

		private function scaleAndAdd() : void
		{
		}

		private function set() : void
		{
			var result : Array = Vec3.set(this.output, 1, 2, 3);
			this.assertArrayEqual(this.output, this.arr3(1, 2, 3), 3, "Set should place values into output");
			this.assertArrayEqual(result, this.output, 3, "Set should return output");
		}

		private function squaredDistance() : void
		{
		}

		private function squaredLength() : void
		{
		}

		private function str() : void
		{
		}

		private function subtract() : void
		{
		}

		public final function test() : void
		{
			this.errors = new Array(1024);
			this.errorsCount = 0;
			this.vecA = this.arr3(1, 2, 3);
			this.vecB = this.arr3(4, 5, 6);
			this.output = this.arr3(0, 0, 0);
			this.transformMat4WithAnIdentity();
			this.transformMat4WithALookAt();
			this.transformMat3WithAnIdentity();
			this.transformMat3With90DegAboutX();
			this.transformMat3With90DegAboutY();
			this.transformMat3With90DegAboutZ();
			this.transformMat3WithALookAtNormalMatrix();
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

		private function transformMat3With90DegAboutX() : void
		{
			var result : Array = Vec3.transformMat3(this.output, this.arr3(0, 1, 0), this.arr9(1, 0, 0, 0, 0, 1, 0, -1, 0));
			this.assertArrayEqual(this.output, this.arr3(0, 0, 1), 3, "TransformMat3With90DegAboutX should produce correct output");
		}

		private function transformMat3With90DegAboutY() : void
		{
			var result : Array = Vec3.transformMat3(this.output, this.arr3(1, 0, 0), this.arr9(0, 0, -1, 0, 1, 0, 1, 0, 0));
			this.assertArrayEqual(this.output, this.arr3(0, 0, -1), 3, "TransformMat3With90DegAboutU should produce correct output");
		}

		private function transformMat3With90DegAboutZ() : void
		{
			var result : Array = Vec3.transformMat3(this.output, this.arr3(1, 0, 0), this.arr9(0, 1, 0, -1, 0, 0, 0, 0, 1));
			this.assertArrayEqual(this.output, this.arr3(0, 1, 0), 3, "TransformMat3With90DegAboutZ should produce correct output");
		}

		private function transformMat3WithALookAtNormalMatrix() : void
		{
			var matr : Array = Mat4.lookAt(Mat4.create(), this.arr3(5, 6, 7), this.arr3(2, 6, 7), this.arr3(0, 1, 0));
			var n : Array = Mat3.create();
			matr = Mat3.transpose(n, Mat3.invert(n, Mat3.fromMat4(n, matr)));
			var result : Array = Vec3.transformMat3(this.output, this.arr3(1, 0, 0), matr);
			this.assertArrayEqual(this.output, this.arr3(0, 0, 1), 3, "TransformMat3WithALookAtNormalMatrix should rotate the input");
			this.assertArrayEqual(result, this.output, 3, "TransformMat3WithALookAtNormalMatrix should return output");
		}

		private function transformMat3WithAnIdentity() : void
		{
			var matr : Array = this.arr9(1, 0, 0, 0, 1, 0, 0, 0, 1);
			var result : Array = Vec3.transformMat3(this.output, this.vecA, matr);
			this.assertArrayEqual(this.output, this.arr3(1, 2, 3), 3, "TransformMat3WithAnIdentity should produce the input");
			this.assertArrayEqual(result, this.output, 3, "TransformMat3WithAnIdentity should return output");
		}

		private function transformMat4WithALookAt() : void
		{
			var matr : Array = Mat4.lookAt(Mat4.create(), this.arr3(5, 6, 7), this.arr3(2, 6, 7), this.arr3(0, 1, 0));
			var result : Array = Vec3.transformMat4(this.output, this.vecA, matr);
			this.assertArrayEqual(this.output, this.arr3(4, -4, -4), 3, "TransformMat4WithALookAt should rotate and translate the input");
			this.assertArrayEqual(result, this.output, 3, "TransformMat4WithALookAt should return out");
		}

		private function transformMat4WithAnIdentity() : void
		{
			var matr : Array = this.arr16(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
			var result : Array = Vec3.transformMat4(this.output, this.vecA, matr);
			this.assertArrayEqual(this.output, this.arr3(1, 2, 3), 3, "TransformMat4WithAnIdentity should produce the input");
			this.assertArrayEqual(result, this.output, 3, "TransformMat4WithAnIdentity should return output");
		}
		private var errors : Array;
		private var errorsCount : int;
		private var output : Array;
		private var vecA : Array;
		private var vecB : Array;
	}
}
