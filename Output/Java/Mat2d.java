// Generated automatically with "cito". Do not edit.
package CitoGlMatrix.lib;

public class Mat2d
{

	/**
	 * **
	 */
	public static float[] cloneIt(float[] a)
	{
		float[] output = new float[6];
		output[0] = a[0];
		output[1] = a[1];
		output[2] = a[2];
		output[3] = a[3];
		output[4] = a[4];
		output[5] = a[5];
		return output;
	}

	/**
	 * **
	 */
	public static float[] copy(float[] output, float[] a)
	{
		output[0] = a[0];
		output[1] = a[1];
		output[2] = a[2];
		output[3] = a[3];
		output[4] = a[4];
		output[5] = a[5];
		return output;
	}

	/**
	 * **
	 */
	public static float[] create()
	{
		float[] output = new float[6];
		output[0] = 1;
		output[1] = 0;
		output[2] = 0;
		output[3] = 1;
		output[4] = 0;
		output[5] = 0;
		return output;
	}

	/**
	 * **
	 */
	public static float determinant(float[] a)
	{
		return a[0] * a[3] - a[1] * a[2];
	}

	/**
	 * **
	 */
	public static float[] identity_(float[] output)
	{
		output[0] = 1;
		output[1] = 0;
		output[2] = 0;
		output[3] = 1;
		output[4] = 0;
		output[5] = 0;
		return output;
	}

	/**
	 * **
	 */
	public static float[] invert(float[] output, float[] a)
	{
		float aa = a[0];
		float ab = a[1];
		float ac = a[2];
		float ad = a[3];
		float atx = a[4];
		float aty = a[5];
		float det = aa * ad - ab * ac;
		if (det == 0) {
			return null;
		}
		float one = 1;
		det = one / det;
		output[0] = ad * det;
		output[1] = -ab * det;
		output[2] = -ac * det;
		output[3] = aa * det;
		output[4] = (ac * aty - ad * atx) * det;
		output[5] = (ab * atx - aa * aty) * det;
		return output;
	}

	/**
	 * **
	 */
	public static float[] mul(float[] output, float[] a, float[] b)
	{
		return Mat2d.multiply(output, a, b);
	}

	/**
	 * **
	 */
	public static float[] multiply(float[] output, float[] a, float[] b)
	{
		float aa = a[0];
		float ab = a[1];
		float ac = a[2];
		float ad = a[3];
		float atx = a[4];
		float aty = a[5];
		float ba = b[0];
		float bb = b[1];
		float bc = b[2];
		float bd = b[3];
		float btx = b[4];
		float bty = b[5];
		output[0] = aa * ba + ab * bc;
		output[1] = aa * bb + ab * bd;
		output[2] = ac * ba + ad * bc;
		output[3] = ac * bb + ad * bd;
		output[4] = ba * atx + bc * aty + btx;
		output[5] = bb * atx + bd * aty + bty;
		return output;
	}

	/**
	 * **
	 */
	public static float[] rotate(float[] output, float[] a, float rad)
	{
		float aa = a[0];
		float ab = a[1];
		float ac = a[2];
		float ad = a[3];
		float atx = a[4];
		float aty = a[5];
		float st = Platform.sin(rad);
		float ct = Platform.cos(rad);
		output[0] = aa * ct + ab * st;
		output[1] = -aa * st + ab * ct;
		output[2] = ac * ct + ad * st;
		output[3] = -ac * st + ct * ad;
		output[4] = ct * atx + st * aty;
		output[5] = ct * aty - st * atx;
		return output;
	}

	/**
	 * **
	 */
	public static float[] scale(float[] output, float[] a, float[] v)
	{
		float vx = v[0];
		float vy = v[1];
		output[0] = a[0] * vx;
		output[1] = a[1] * vy;
		output[2] = a[2] * vx;
		output[3] = a[3] * vy;
		output[4] = a[4] * vx;
		output[5] = a[5] * vy;
		return output;
	}

	/**
	 * **
	 */
	public static float[] translate(float[] output, float[] a, float[] v)
	{
		output[0] = a[0];
		output[1] = a[1];
		output[2] = a[2];
		output[3] = a[3];
		output[4] = a[4] + v[0];
		output[5] = a[5] + v[1];
		return output;
	}

	/**
	 * **
	 */
	private final void f()
	{
	}
}
