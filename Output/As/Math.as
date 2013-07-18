// Generated automatically with "cito". Do not edit.
package
{
	import flash.utils.ByteArray;

	public class Math
	{

		public static function abs(len : float) : float
		{
			if (len < 0) {
				return -len;
			}
			else {
				return len;
			}
		}

		public static function gLMAT_EPSILON() : float
		{
			var one : float = 1;
			return one / (1000000);
		}

		public static function pI() : float
		{
			var a : float = 3141592;
			return a / (1000000);
		}

		public static function max(a : float, b : float) : float
		{
			if (a > b) {
				return a;
			}
			else {
				return b;
			}
		}

		public static function min(a : float, b : float) : float
		{
			if (a < b) {
				return a;
			}
			else {
				return b;
			}
		}
	}
}
