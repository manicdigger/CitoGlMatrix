# Generated automatically with "cito". Do not edit.
use integer;
use strict;

=head1 Class Mat2

=cut

package Mat2;

=head2 C<$mat2 = Mat2-E<gt>new()>

=cut

sub new($) {
	my $self = bless {}, shift;
	return $self;
}

sub f($) {
	my ($self) = @_;
}

=head1 Class Mat2d

=cut

package Mat2d;

=head2 C<$mat2d = Mat2d-E<gt>new()>

=cut

sub new($) {
	my $self = bless {}, shift;
	return $self;
}

sub f($) {
	my ($self) = @_;
}

=head1 Class Mat3

=cut

package Mat3;

=head2 C<$mat3 = Mat3-E<gt>new()>

=cut

sub new($) {
	my $self = bless {}, shift;
	return $self;
}

sub f($) {
	my ($self) = @_;
}

=head1 Class Mat4

4x4 Matrix

=cut

package Mat4;

=head2 C<$mat4 = Mat4-E<gt>new()>

=cut

sub new($) {
	my $self = bless {}, shift;
	return $self;
}

=head2 C<Mat4::adjoint(\@output, \@a)>

Calculates the adjugate of a mat4
@returns {mat4} out

Parameters:

=over

=item \@output

@param {mat4} out the receiving matrix

=item \@a

@param {mat4} a the source matrix

=back

=cut

sub adjoint($$) {
	my ($output, $a) = @_;
	my $a00 = $a->[0];
	my $a01 = $a->[1];
	my $a02 = $a->[2];
	my $a03 = $a->[3];
	my $a10 = $a->[4];
	my $a11 = $a->[5];
	my $a12 = $a->[6];
	my $a13 = $a->[7];
	my $a20 = $a->[8];
	my $a21 = $a->[9];
	my $a22 = $a->[10];
	my $a23 = $a->[11];
	my $a30 = $a->[12];
	my $a31 = $a->[13];
	my $a32 = $a->[14];
	my $a33 = $a->[15];
	$output->[0] = $a11 * ($a22 * $a33 - $a23 * $a32) - $a21 * ($a12 * $a33 - $a13 * $a32) + $a31 * ($a12 * $a23 - $a13 * $a22);
	$output->[1] = -($a01 * ($a22 * $a33 - $a23 * $a32) - $a21 * ($a02 * $a33 - $a03 * $a32) + $a31 * ($a02 * $a23 - $a03 * $a22));
	$output->[2] = $a01 * ($a12 * $a33 - $a13 * $a32) - $a11 * ($a02 * $a33 - $a03 * $a32) + $a31 * ($a02 * $a13 - $a03 * $a12);
	$output->[3] = -($a01 * ($a12 * $a23 - $a13 * $a22) - $a11 * ($a02 * $a23 - $a03 * $a22) + $a21 * ($a02 * $a13 - $a03 * $a12));
	$output->[4] = -($a10 * ($a22 * $a33 - $a23 * $a32) - $a20 * ($a12 * $a33 - $a13 * $a32) + $a30 * ($a12 * $a23 - $a13 * $a22));
	$output->[5] = $a00 * ($a22 * $a33 - $a23 * $a32) - $a20 * ($a02 * $a33 - $a03 * $a32) + $a30 * ($a02 * $a23 - $a03 * $a22);
	$output->[6] = -($a00 * ($a12 * $a33 - $a13 * $a32) - $a10 * ($a02 * $a33 - $a03 * $a32) + $a30 * ($a02 * $a13 - $a03 * $a12));
	$output->[7] = $a00 * ($a12 * $a23 - $a13 * $a22) - $a10 * ($a02 * $a23 - $a03 * $a22) + $a20 * ($a02 * $a13 - $a03 * $a12);
	$output->[8] = $a10 * ($a21 * $a33 - $a23 * $a31) - $a20 * ($a11 * $a33 - $a13 * $a31) + $a30 * ($a11 * $a23 - $a13 * $a21);
	$output->[9] = -($a00 * ($a21 * $a33 - $a23 * $a31) - $a20 * ($a01 * $a33 - $a03 * $a31) + $a30 * ($a01 * $a23 - $a03 * $a21));
	$output->[10] = $a00 * ($a11 * $a33 - $a13 * $a31) - $a10 * ($a01 * $a33 - $a03 * $a31) + $a30 * ($a01 * $a13 - $a03 * $a11);
	$output->[11] = -($a00 * ($a11 * $a23 - $a13 * $a21) - $a10 * ($a01 * $a23 - $a03 * $a21) + $a20 * ($a01 * $a13 - $a03 * $a11));
	$output->[12] = -($a10 * ($a21 * $a32 - $a22 * $a31) - $a20 * ($a11 * $a32 - $a12 * $a31) + $a30 * ($a11 * $a22 - $a12 * $a21));
	$output->[13] = $a00 * ($a21 * $a32 - $a22 * $a31) - $a20 * ($a01 * $a32 - $a02 * $a31) + $a30 * ($a01 * $a22 - $a02 * $a21);
	$output->[14] = -($a00 * ($a11 * $a32 - $a12 * $a31) - $a10 * ($a01 * $a32 - $a02 * $a31) + $a30 * ($a01 * $a12 - $a02 * $a11));
	$output->[15] = $a00 * ($a11 * $a22 - $a12 * $a21) - $a10 * ($a01 * $a22 - $a02 * $a21) + $a20 * ($a01 * $a12 - $a02 * $a11);
	return $output;
}

=head2 C<Mat4::clone(\@a)>

Creates a new mat4 initialized with values from an existing matrix
Returns {mat4} a new 4x4 matrix

Parameters:

=over

=item \@a

{mat4} a matrix to clone

=back

=cut

sub clone($) {
	my ($a) = @_;
	my $output = [];
	$output->[0] = $a->[0];
	$output->[1] = $a->[1];
	$output->[2] = $a->[2];
	$output->[3] = $a->[3];
	$output->[4] = $a->[4];
	$output->[5] = $a->[5];
	$output->[6] = $a->[6];
	$output->[7] = $a->[7];
	$output->[8] = $a->[8];
	$output->[9] = $a->[9];
	$output->[10] = $a->[10];
	$output->[11] = $a->[11];
	$output->[12] = $a->[12];
	$output->[13] = $a->[13];
	$output->[14] = $a->[14];
	$output->[15] = $a->[15];
	return $output;
}

=head2 C<Mat4::copy(\@output, \@a)>

Copy the values from one mat4 to another
Returns {mat4} out

Parameters:

=over

=item \@output

{mat4} out the receiving matrix

=item \@a

{mat4} a the source matrix

=back

=cut

sub copy($$) {
	my ($output, $a) = @_;
	$output->[0] = $a->[0];
	$output->[1] = $a->[1];
	$output->[2] = $a->[2];
	$output->[3] = $a->[3];
	$output->[4] = $a->[4];
	$output->[5] = $a->[5];
	$output->[6] = $a->[6];
	$output->[7] = $a->[7];
	$output->[8] = $a->[8];
	$output->[9] = $a->[9];
	$output->[10] = $a->[10];
	$output->[11] = $a->[11];
	$output->[12] = $a->[12];
	$output->[13] = $a->[13];
	$output->[14] = $a->[14];
	$output->[15] = $a->[15];
	return $output;
}

=head2 C<Mat4::create()>

Creates a new identity mat4
Returns {mat4} a new 4x4 matrix

=cut

sub create() {
	my $output = [];
	$output->[0] = 1;
	$output->[1] = 0;
	$output->[2] = 0;
	$output->[3] = 0;
	$output->[4] = 0;
	$output->[5] = 1;
	$output->[6] = 0;
	$output->[7] = 0;
	$output->[8] = 0;
	$output->[9] = 0;
	$output->[10] = 1;
	$output->[11] = 0;
	$output->[12] = 0;
	$output->[13] = 0;
	$output->[14] = 0;
	$output->[15] = 1;
	return $output;
}

=head2 C<Mat4::determinant(\@a)>

Calculates the determinant of a mat4
@param {mat4} a the source matrix
@returns {Number} determinant of a

=cut

sub determinant($) {
	my ($a) = @_;
	my $a00 = $a->[0];
	my $a01 = $a->[1];
	my $a02 = $a->[2];
	my $a03 = $a->[3];
	my $a10 = $a->[4];
	my $a11 = $a->[5];
	my $a12 = $a->[6];
	my $a13 = $a->[7];
	my $a20 = $a->[8];
	my $a21 = $a->[9];
	my $a22 = $a->[10];
	my $a23 = $a->[11];
	my $a30 = $a->[12];
	my $a31 = $a->[13];
	my $a32 = $a->[14];
	my $a33 = $a->[15];
	my $b00 = $a00 * $a11 - $a01 * $a10;
	my $b01 = $a00 * $a12 - $a02 * $a10;
	my $b02 = $a00 * $a13 - $a03 * $a10;
	my $b03 = $a01 * $a12 - $a02 * $a11;
	my $b04 = $a01 * $a13 - $a03 * $a11;
	my $b05 = $a02 * $a13 - $a03 * $a12;
	my $b06 = $a20 * $a31 - $a21 * $a30;
	my $b07 = $a20 * $a32 - $a22 * $a30;
	my $b08 = $a20 * $a33 - $a23 * $a30;
	my $b09 = $a21 * $a32 - $a22 * $a31;
	my $b10 = $a21 * $a33 - $a23 * $a31;
	my $b11 = $a22 * $a33 - $a23 * $a32;
	return $b00 * $b11 - $b01 * $b10 + $b02 * $b09 + $b03 * $b08 - $b04 * $b07 + $b05 * $b06;
}

=head2 C<Mat4::from_quat(\@output, \@q)>

Calculates a 4x4 matrix from the given quaternion

=cut

sub from_quat($$) {
	my ($output, $q) = @_;
	my $x = $q->[0];
	my $y = $q->[1];
	my $z = $q->[2];
	my $w = $q->[3];
	my $x2 = $x + $x;
	my $y2 = $y + $y;
	my $z2 = $z + $z;
	my $xx = $x * $x2;
	my $xy = $x * $y2;
	my $xz = $x * $z2;
	my $yy = $y * $y2;
	my $yz = $y * $z2;
	my $zz = $z * $z2;
	my $wx = $w * $x2;
	my $wy = $w * $y2;
	my $wz = $w * $z2;
	$output->[0] = 1 - ($yy + $zz);
	$output->[1] = $xy + $wz;
	$output->[2] = $xz - $wy;
	$output->[3] = 0;
	$output->[4] = $xy - $wz;
	$output->[5] = 1 - ($xx + $zz);
	$output->[6] = $yz + $wx;
	$output->[7] = 0;
	$output->[8] = $xz + $wy;
	$output->[9] = $yz - $wx;
	$output->[10] = 1 - ($xx + $yy);
	$output->[11] = 0;
	$output->[12] = 0;
	$output->[13] = 0;
	$output->[14] = 0;
	$output->[15] = 1;
	return $output;
}

=head2 C<Mat4::from_rotation_translation(\@output, \@q, \@v)>

Creates a matrix from a quaternion rotation and vector translation

=cut

sub from_rotation_translation($$$) {
	my ($output, $q, $v) = @_;
	my $x = $q->[0];
	my $y = $q->[1];
	my $z = $q->[2];
	my $w = $q->[3];
	my $x2 = $x + $x;
	my $y2 = $y + $y;
	my $z2 = $z + $z;
	my $xx = $x * $x2;
	my $xy = $x * $y2;
	my $xz = $x * $z2;
	my $yy = $y * $y2;
	my $yz = $y * $z2;
	my $zz = $z * $z2;
	my $wx = $w * $x2;
	my $wy = $w * $y2;
	my $wz = $w * $z2;
	$output->[0] = 1 - ($yy + $zz);
	$output->[1] = $xy + $wz;
	$output->[2] = $xz - $wy;
	$output->[3] = 0;
	$output->[4] = $xy - $wz;
	$output->[5] = 1 - ($xx + $zz);
	$output->[6] = $yz + $wx;
	$output->[7] = 0;
	$output->[8] = $xz + $wy;
	$output->[9] = $yz - $wx;
	$output->[10] = 1 - ($xx + $yy);
	$output->[11] = 0;
	$output->[12] = $v->[0];
	$output->[13] = $v->[1];
	$output->[14] = $v->[2];
	$output->[15] = 1;
	return $output;
}

=head2 C<Mat4::frustum(\@output, $left, $right, $bottom, $top, $near, $far)>

Generates a frustum matrix with the given bounds

=cut

sub frustum($$$$$$$) {
	my ($output, $left, $right, $bottom, $top, $near, $far) = @_;
	my $rl = 1 / ($right - $left);
	my $tb = 1 / ($top - $bottom);
	my $nf = 1 / ($near - $far);
	$output->[0] = $near * 2 * $rl;
	$output->[1] = 0;
	$output->[2] = 0;
	$output->[3] = 0;
	$output->[4] = 0;
	$output->[5] = $near * 2 * $tb;
	$output->[6] = 0;
	$output->[7] = 0;
	$output->[8] = ($right + $left) * $rl;
	$output->[9] = ($top + $bottom) * $tb;
	$output->[10] = ($far + $near) * $nf;
	$output->[11] = -1;
	$output->[12] = 0;
	$output->[13] = 0;
	$output->[14] = $far * $near * 2 * $nf;
	$output->[15] = 0;
	return $output;
}

=head2 C<Mat4::identity(\@output)>

Set a mat4 to the identity matrix
Returns {mat4} out

Parameters:

=over

=item \@output

{mat4} out the receiving matrix

=back

=cut

sub identity($) {
	my ($output) = @_;
	$output->[0] = 1;
	$output->[1] = 0;
	$output->[2] = 0;
	$output->[3] = 0;
	$output->[4] = 0;
	$output->[5] = 1;
	$output->[6] = 0;
	$output->[7] = 0;
	$output->[8] = 0;
	$output->[9] = 0;
	$output->[10] = 1;
	$output->[11] = 0;
	$output->[12] = 0;
	$output->[13] = 0;
	$output->[14] = 0;
	$output->[15] = 1;
	return $output;
}

=head2 C<Mat4::invert(\@output, \@a)>

Inverts a mat4

=cut

sub invert($$) {
	my ($output, $a) = @_;
	my $a00 = $a->[0];
	my $a01 = $a->[1];
	my $a02 = $a->[2];
	my $a03 = $a->[3];
	my $a10 = $a->[4];
	my $a11 = $a->[5];
	my $a12 = $a->[6];
	my $a13 = $a->[7];
	my $a20 = $a->[8];
	my $a21 = $a->[9];
	my $a22 = $a->[10];
	my $a23 = $a->[11];
	my $a30 = $a->[12];
	my $a31 = $a->[13];
	my $a32 = $a->[14];
	my $a33 = $a->[15];
	my $b00 = $a00 * $a11 - $a01 * $a10;
	my $b01 = $a00 * $a12 - $a02 * $a10;
	my $b02 = $a00 * $a13 - $a03 * $a10;
	my $b03 = $a01 * $a12 - $a02 * $a11;
	my $b04 = $a01 * $a13 - $a03 * $a11;
	my $b05 = $a02 * $a13 - $a03 * $a12;
	my $b06 = $a20 * $a31 - $a21 * $a30;
	my $b07 = $a20 * $a32 - $a22 * $a30;
	my $b08 = $a20 * $a33 - $a23 * $a30;
	my $b09 = $a21 * $a32 - $a22 * $a31;
	my $b10 = $a21 * $a33 - $a23 * $a31;
	my $b11 = $a22 * $a33 - $a23 * $a32;
	my $det = $b00 * $b11 - $b01 * $b10 + $b02 * $b09 + $b03 * $b08 - $b04 * $b07 + $b05 * $b06;
	if ($det == 0) {
		return undef;
	}
	my $one = 1;
	$det = $one / $det;
	$output->[0] = ($a11 * $b11 - $a12 * $b10 + $a13 * $b09) * $det;
	$output->[1] = ($a02 * $b10 - $a01 * $b11 - $a03 * $b09) * $det;
	$output->[2] = ($a31 * $b05 - $a32 * $b04 + $a33 * $b03) * $det;
	$output->[3] = ($a22 * $b04 - $a21 * $b05 - $a23 * $b03) * $det;
	$output->[4] = ($a12 * $b08 - $a10 * $b11 - $a13 * $b07) * $det;
	$output->[5] = ($a00 * $b11 - $a02 * $b08 + $a03 * $b07) * $det;
	$output->[6] = ($a32 * $b02 - $a30 * $b05 - $a33 * $b01) * $det;
	$output->[7] = ($a20 * $b05 - $a22 * $b02 + $a23 * $b01) * $det;
	$output->[8] = ($a10 * $b10 - $a11 * $b08 + $a13 * $b06) * $det;
	$output->[9] = ($a01 * $b08 - $a00 * $b10 - $a03 * $b06) * $det;
	$output->[10] = ($a30 * $b04 - $a31 * $b02 + $a33 * $b00) * $det;
	$output->[11] = ($a21 * $b02 - $a20 * $b04 - $a23 * $b00) * $det;
	$output->[12] = ($a11 * $b07 - $a10 * $b09 - $a12 * $b06) * $det;
	$output->[13] = ($a00 * $b09 - $a01 * $b07 + $a02 * $b06) * $det;
	$output->[14] = ($a31 * $b01 - $a30 * $b03 - $a32 * $b00) * $det;
	$output->[15] = ($a20 * $b03 - $a21 * $b01 + $a22 * $b00) * $det;
	return $output;
}

=head2 C<Mat4::look_at(\@output, \@eye, \@center, \@up)>

Generates a look-at matrix with the given eye position, focal point, and up axis

=cut

sub look_at($$$$) {
	my ($output, $eye, $center, $up) = @_;
	my $x0;
	my $x1;
	my $x2;
	my $y0;
	my $y1;
	my $y2;
	my $z0;
	my $z1;
	my $z2;
	my $len;
	my $eyex = $eye->[0];
	my $eyey = $eye->[1];
	my $eyez = $eye->[2];
	my $upx = $up->[0];
	my $upy = $up->[1];
	my $upz = $up->[2];
	my $centerx = $center->[0];
	my $centery = $center->[1];
	my $centerz = $center->[2];
	if (Math::abs($eyex - $centerx) < Math::g_l_m_a_t__e_p_s_i_l_o_n() && Math::abs($eyey - $centery) < Math::g_l_m_a_t__e_p_s_i_l_o_n() && Math::abs($eyez - $centerz) < Math::g_l_m_a_t__e_p_s_i_l_o_n()) {
		return Mat4::identity($output);
	}
	$z0 = $eyex - $centerx;
	$z1 = $eyey - $centery;
	$z2 = $eyez - $centerz;
	$len = 1 / Platform::sqrt($z0 * $z0 + $z1 * $z1 + $z2 * $z2);
	$z0 *= $len;
	$z1 *= $len;
	$z2 *= $len;
	$x0 = $upy * $z2 - $upz * $z1;
	$x1 = $upz * $z0 - $upx * $z2;
	$x2 = $upx * $z1 - $upy * $z0;
	$len = Platform::sqrt($x0 * $x0 + $x1 * $x1 + $x2 * $x2);
	if ($len == 0) {
		$x0 = 0;
		$x1 = 0;
		$x2 = 0;
	}
	else {
		$len = 1 / $len;
		$x0 *= $len;
		$x1 *= $len;
		$x2 *= $len;
	}
	$y0 = $z1 * $x2 - $z2 * $x1;
	$y1 = $z2 * $x0 - $z0 * $x2;
	$y2 = $z0 * $x1 - $z1 * $x0;
	$len = Platform::sqrt($y0 * $y0 + $y1 * $y1 + $y2 * $y2);
	if ($len == 0) {
		$y0 = 0;
		$y1 = 0;
		$y2 = 0;
	}
	else {
		$len = 1 / $len;
		$y0 *= $len;
		$y1 *= $len;
		$y2 *= $len;
	}
	$output->[0] = $x0;
	$output->[1] = $y0;
	$output->[2] = $z0;
	$output->[3] = 0;
	$output->[4] = $x1;
	$output->[5] = $y1;
	$output->[6] = $z1;
	$output->[7] = 0;
	$output->[8] = $x2;
	$output->[9] = $y2;
	$output->[10] = $z2;
	$output->[11] = 0;
	$output->[12] = -($x0 * $eyex + $x1 * $eyey + $x2 * $eyez);
	$output->[13] = -($y0 * $eyex + $y1 * $eyey + $y2 * $eyez);
	$output->[14] = -($z0 * $eyex + $z1 * $eyey + $z2 * $eyez);
	$output->[15] = 1;
	return $output;
}

=head2 C<Mat4::mul(\@output, \@a, \@b)>

Alias for {@link mat4.multiply}

=cut

sub mul($$$) {
	my ($output, $a, $b) = @_;
	return Mat4::multiply($output, $a, $b);
}

=head2 C<Mat4::multiply(\@output, \@a, \@b)>

Multiplies two mat4's
@param {mat4} out the receiving matrix
@param {mat4} a the first operand
@param {mat4} b the second operand
@returns {mat4} out

=cut

sub multiply($$$) {
	my ($output, $a, $b) = @_;
	my $a00 = $a->[0];
	my $a01 = $a->[1];
	my $a02 = $a->[2];
	my $a03 = $a->[3];
	my $a10 = $a->[4];
	my $a11 = $a->[5];
	my $a12 = $a->[6];
	my $a13 = $a->[7];
	my $a20 = $a->[8];
	my $a21 = $a->[9];
	my $a22 = $a->[10];
	my $a23 = $a->[11];
	my $a30 = $a->[12];
	my $a31 = $a->[13];
	my $a32 = $a->[14];
	my $a33 = $a->[15];
	my $b0 = $b->[0];
	my $b1 = $b->[1];
	my $b2 = $b->[2];
	my $b3 = $b->[3];
	$output->[0] = $b0 * $a00 + $b1 * $a10 + $b2 * $a20 + $b3 * $a30;
	$output->[1] = $b0 * $a01 + $b1 * $a11 + $b2 * $a21 + $b3 * $a31;
	$output->[2] = $b0 * $a02 + $b1 * $a12 + $b2 * $a22 + $b3 * $a32;
	$output->[3] = $b0 * $a03 + $b1 * $a13 + $b2 * $a23 + $b3 * $a33;
	$b0 = $b->[4];
	$b1 = $b->[5];
	$b2 = $b->[6];
	$b3 = $b->[7];
	$output->[4] = $b0 * $a00 + $b1 * $a10 + $b2 * $a20 + $b3 * $a30;
	$output->[5] = $b0 * $a01 + $b1 * $a11 + $b2 * $a21 + $b3 * $a31;
	$output->[6] = $b0 * $a02 + $b1 * $a12 + $b2 * $a22 + $b3 * $a32;
	$output->[7] = $b0 * $a03 + $b1 * $a13 + $b2 * $a23 + $b3 * $a33;
	$b0 = $b->[8];
	$b1 = $b->[9];
	$b2 = $b->[10];
	$b3 = $b->[11];
	$output->[8] = $b0 * $a00 + $b1 * $a10 + $b2 * $a20 + $b3 * $a30;
	$output->[9] = $b0 * $a01 + $b1 * $a11 + $b2 * $a21 + $b3 * $a31;
	$output->[10] = $b0 * $a02 + $b1 * $a12 + $b2 * $a22 + $b3 * $a32;
	$output->[11] = $b0 * $a03 + $b1 * $a13 + $b2 * $a23 + $b3 * $a33;
	$b0 = $b->[12];
	$b1 = $b->[13];
	$b2 = $b->[14];
	$b3 = $b->[15];
	$output->[12] = $b0 * $a00 + $b1 * $a10 + $b2 * $a20 + $b3 * $a30;
	$output->[13] = $b0 * $a01 + $b1 * $a11 + $b2 * $a21 + $b3 * $a31;
	$output->[14] = $b0 * $a02 + $b1 * $a12 + $b2 * $a22 + $b3 * $a32;
	$output->[15] = $b0 * $a03 + $b1 * $a13 + $b2 * $a23 + $b3 * $a33;
	return $output;
}

=head2 C<Mat4::ortho(\@output, $left, $right, $bottom, $top, $near, $far)>

**

=cut

sub ortho($$$$$$$) {
	my ($output, $left, $right, $bottom, $top, $near, $far) = @_;
	my $lr = 1 / ($left - $right);
	my $bt = 1 / ($bottom - $top);
	my $nf = 1 / ($near - $far);
	$output->[0] = -2 * $lr;
	$output->[1] = 0;
	$output->[2] = 0;
	$output->[3] = 0;
	$output->[4] = 0;
	$output->[5] = -2 * $bt;
	$output->[6] = 0;
	$output->[7] = 0;
	$output->[8] = 0;
	$output->[9] = 0;
	$output->[10] = 2 * $nf;
	$output->[11] = 0;
	$output->[12] = ($left + $right) * $lr;
	$output->[13] = ($top + $bottom) * $bt;
	$output->[14] = ($far + $near) * $nf;
	$output->[15] = 1;
	return $output;
}

=head2 C<Mat4::perspective(\@output, $fovy, $aspect, $near, $far)>

**

=cut

sub perspective($$$$$) {
	my ($output, $fovy, $aspect, $near, $far) = @_;
	my $one = 1;
	my $f = $one / Platform::tan($fovy / 2);
	my $nf = 1 / ($near - $far);
	$output->[0] = $f / $aspect;
	$output->[1] = 0;
	$output->[2] = 0;
	$output->[3] = 0;
	$output->[4] = 0;
	$output->[5] = $f;
	$output->[6] = 0;
	$output->[7] = 0;
	$output->[8] = 0;
	$output->[9] = 0;
	$output->[10] = ($far + $near) * $nf;
	$output->[11] = -1;
	$output->[12] = 0;
	$output->[13] = 0;
	$output->[14] = 2 * $far * $near * $nf;
	$output->[15] = 0;
	return $output;
}

=head2 C<Mat4::rotate(\@output, \@a, $rad, \@axis)>

Rotates a mat4 by the given angle
@returns {mat4} out

Parameters:

=over

=item \@output

@param {mat4} out the receiving matrix

=item \@a

@param {mat4} a the matrix to rotate

=item $rad

@param {Number} rad the angle to rotate the matrix by

=item \@axis

@param {vec3} axis the axis to rotate around

=back

=cut

sub rotate($$$$) {
	my ($output, $a, $rad, $axis) = @_;
	my $x = $axis->[0];
	my $y = $axis->[1];
	my $z = $axis->[2];
	my $len = Platform::sqrt($x * $x + $y * $y + $z * $z);
	my $s;
	my $c;
	my $t;
	my $a00;
	my $a01;
	my $a02;
	my $a03;
	my $a10;
	my $a11;
	my $a12;
	my $a13;
	my $a20;
	my $a21;
	my $a22;
	my $a23;
	my $b00;
	my $b01;
	my $b02;
	my $b10;
	my $b11;
	my $b12;
	my $b20;
	my $b21;
	my $b22;
	if (Math::abs($len) < Math::g_l_m_a_t__e_p_s_i_l_o_n()) {
		return undef;
	}
	$len = 1 / $len;
	$x *= $len;
	$y *= $len;
	$z *= $len;
	$s = Platform::sin($rad);
	$c = Platform::cos($rad);
	$t = 1 - $c;
	$a00 = $a->[0];
	$a01 = $a->[1];
	$a02 = $a->[2];
	$a03 = $a->[3];
	$a10 = $a->[4];
	$a11 = $a->[5];
	$a12 = $a->[6];
	$a13 = $a->[7];
	$a20 = $a->[8];
	$a21 = $a->[9];
	$a22 = $a->[10];
	$a23 = $a->[11];
	$b00 = $x * $x * $t + $c;
	$b01 = $y * $x * $t + $z * $s;
	$b02 = $z * $x * $t - $y * $s;
	$b10 = $x * $y * $t - $z * $s;
	$b11 = $y * $y * $t + $c;
	$b12 = $z * $y * $t + $x * $s;
	$b20 = $x * $z * $t + $y * $s;
	$b21 = $y * $z * $t - $x * $s;
	$b22 = $z * $z * $t + $c;
	$output->[0] = $a00 * $b00 + $a10 * $b01 + $a20 * $b02;
	$output->[1] = $a01 * $b00 + $a11 * $b01 + $a21 * $b02;
	$output->[2] = $a02 * $b00 + $a12 * $b01 + $a22 * $b02;
	$output->[3] = $a03 * $b00 + $a13 * $b01 + $a23 * $b02;
	$output->[4] = $a00 * $b10 + $a10 * $b11 + $a20 * $b12;
	$output->[5] = $a01 * $b10 + $a11 * $b11 + $a21 * $b12;
	$output->[6] = $a02 * $b10 + $a12 * $b11 + $a22 * $b12;
	$output->[7] = $a03 * $b10 + $a13 * $b11 + $a23 * $b12;
	$output->[8] = $a00 * $b20 + $a10 * $b21 + $a20 * $b22;
	$output->[9] = $a01 * $b20 + $a11 * $b21 + $a21 * $b22;
	$output->[10] = $a02 * $b20 + $a12 * $b21 + $a22 * $b22;
	$output->[11] = $a03 * $b20 + $a13 * $b21 + $a23 * $b22;
	$output->[12] = $a->[12];
	$output->[13] = $a->[13];
	$output->[14] = $a->[14];
	$output->[15] = $a->[15];
	return $output;
}

=head2 C<Mat4::rotate_x(\@output, \@a, $rad)>

Rotates a matrix by the given angle around the X axis

=cut

sub rotate_x($$$) {
	my ($output, $a, $rad) = @_;
	my $s = Platform::sin($rad);
	my $c = Platform::cos($rad);
	my $a10 = $a->[4];
	my $a11 = $a->[5];
	my $a12 = $a->[6];
	my $a13 = $a->[7];
	my $a20 = $a->[8];
	my $a21 = $a->[9];
	my $a22 = $a->[10];
	my $a23 = $a->[11];
	$output->[0] = $a->[0];
	$output->[1] = $a->[1];
	$output->[2] = $a->[2];
	$output->[3] = $a->[3];
	$output->[12] = $a->[12];
	$output->[13] = $a->[13];
	$output->[14] = $a->[14];
	$output->[15] = $a->[15];
	$output->[4] = $a10 * $c + $a20 * $s;
	$output->[5] = $a11 * $c + $a21 * $s;
	$output->[6] = $a12 * $c + $a22 * $s;
	$output->[7] = $a13 * $c + $a23 * $s;
	$output->[8] = $a20 * $c - $a10 * $s;
	$output->[9] = $a21 * $c - $a11 * $s;
	$output->[10] = $a22 * $c - $a12 * $s;
	$output->[11] = $a23 * $c - $a13 * $s;
	return $output;
}

=head2 C<Mat4::rotate_y(\@output, \@a, $rad)>

Rotates a matrix by the given angle around the Y axis
@param {mat4} out the receiving matrix
@param {mat4} a the matrix to rotate
@param {Number} rad the angle to rotate the matrix by
@returns {mat4} out

=cut

sub rotate_y($$$) {
	my ($output, $a, $rad) = @_;
	my $s = Platform::sin($rad);
	my $c = Platform::cos($rad);
	my $a00 = $a->[0];
	my $a01 = $a->[1];
	my $a02 = $a->[2];
	my $a03 = $a->[3];
	my $a20 = $a->[8];
	my $a21 = $a->[9];
	my $a22 = $a->[10];
	my $a23 = $a->[11];
	$output->[4] = $a->[4];
	$output->[5] = $a->[5];
	$output->[6] = $a->[6];
	$output->[7] = $a->[7];
	$output->[12] = $a->[12];
	$output->[13] = $a->[13];
	$output->[14] = $a->[14];
	$output->[15] = $a->[15];
	$output->[0] = $a00 * $c - $a20 * $s;
	$output->[1] = $a01 * $c - $a21 * $s;
	$output->[2] = $a02 * $c - $a22 * $s;
	$output->[3] = $a03 * $c - $a23 * $s;
	$output->[8] = $a00 * $s + $a20 * $c;
	$output->[9] = $a01 * $s + $a21 * $c;
	$output->[10] = $a02 * $s + $a22 * $c;
	$output->[11] = $a03 * $s + $a23 * $c;
	return $output;
}

=head2 C<Mat4::rotate_z(\@output, \@a, $rad)>

Rotates a matrix by the given angle around the Z axis

=cut

sub rotate_z($$$) {
	my ($output, $a, $rad) = @_;
	my $s = Platform::sin($rad);
	my $c = Platform::cos($rad);
	my $a00 = $a->[0];
	my $a01 = $a->[1];
	my $a02 = $a->[2];
	my $a03 = $a->[3];
	my $a10 = $a->[4];
	my $a11 = $a->[5];
	my $a12 = $a->[6];
	my $a13 = $a->[7];
	$output->[8] = $a->[8];
	$output->[9] = $a->[9];
	$output->[10] = $a->[10];
	$output->[11] = $a->[11];
	$output->[12] = $a->[12];
	$output->[13] = $a->[13];
	$output->[14] = $a->[14];
	$output->[15] = $a->[15];
	$output->[0] = $a00 * $c + $a10 * $s;
	$output->[1] = $a01 * $c + $a11 * $s;
	$output->[2] = $a02 * $c + $a12 * $s;
	$output->[3] = $a03 * $c + $a13 * $s;
	$output->[4] = $a10 * $c - $a00 * $s;
	$output->[5] = $a11 * $c - $a01 * $s;
	$output->[6] = $a12 * $c - $a02 * $s;
	$output->[7] = $a13 * $c - $a03 * $s;
	return $output;
}

=head2 C<Mat4::scale(\@output, \@a, \@v)>

Scales the mat4 by the dimensions in the given vec3
@param {mat4} out the receiving matrix
@param {mat4} a the matrix to scale
@param {vec3} v the vec3 to scale the matrix by
@returns {mat4} out

=cut

sub scale($$$) {
	my ($output, $a, $v) = @_;
	my $x = $v->[0];
	my $y = $v->[1];
	my $z = $v->[2];
	$output->[0] = $a->[0] * $x;
	$output->[1] = $a->[1] * $x;
	$output->[2] = $a->[2] * $x;
	$output->[3] = $a->[3] * $x;
	$output->[4] = $a->[4] * $y;
	$output->[5] = $a->[5] * $y;
	$output->[6] = $a->[6] * $y;
	$output->[7] = $a->[7] * $y;
	$output->[8] = $a->[8] * $z;
	$output->[9] = $a->[9] * $z;
	$output->[10] = $a->[10] * $z;
	$output->[11] = $a->[11] * $z;
	$output->[12] = $a->[12];
	$output->[13] = $a->[13];
	$output->[14] = $a->[14];
	$output->[15] = $a->[15];
	return $output;
}

=head2 C<Mat4::translate(\@output, \@a, \@v)>

Translate a mat4 by the given vector
@param {mat4} out the receiving matrix
@param {mat4} a the matrix to translate
@param {vec3} v vector to translate by
@returns {mat4} out

=cut

sub translate($$$) {
	my ($output, $a, $v) = @_;
	my $x = $v->[0];
	my $y = $v->[1];
	my $z = $v->[2];
	my $a00;
	my $a01;
	my $a02;
	my $a03;
	my $a10;
	my $a11;
	my $a12;
	my $a13;
	my $a20;
	my $a21;
	my $a22;
	my $a23;
	$a00 = $a->[0];
	$a01 = $a->[1];
	$a02 = $a->[2];
	$a03 = $a->[3];
	$a10 = $a->[4];
	$a11 = $a->[5];
	$a12 = $a->[6];
	$a13 = $a->[7];
	$a20 = $a->[8];
	$a21 = $a->[9];
	$a22 = $a->[10];
	$a23 = $a->[11];
	$output->[0] = $a00;
	$output->[1] = $a01;
	$output->[2] = $a02;
	$output->[3] = $a03;
	$output->[4] = $a10;
	$output->[5] = $a11;
	$output->[6] = $a12;
	$output->[7] = $a13;
	$output->[8] = $a20;
	$output->[9] = $a21;
	$output->[10] = $a22;
	$output->[11] = $a23;
	$output->[12] = $a00 * $x + $a10 * $y + $a20 * $z + $a->[12];
	$output->[13] = $a01 * $x + $a11 * $y + $a21 * $z + $a->[13];
	$output->[14] = $a02 * $x + $a12 * $y + $a22 * $z + $a->[14];
	$output->[15] = $a03 * $x + $a13 * $y + $a23 * $z + $a->[15];
	return $output;
}

=head2 C<Mat4::transpose(\@output, \@a)>

Transpose the values of a mat4
@returns {mat4} out

Parameters:

=over

=item \@output

@param {mat4} out the receiving matrix

=item \@a

@param {mat4} a the source matrix

=back

=cut

sub transpose($$) {
	my ($output, $a) = @_;
	$output->[0] = $a->[0];
	$output->[1] = $a->[4];
	$output->[2] = $a->[8];
	$output->[3] = $a->[12];
	$output->[4] = $a->[1];
	$output->[5] = $a->[5];
	$output->[6] = $a->[9];
	$output->[7] = $a->[13];
	$output->[8] = $a->[2];
	$output->[9] = $a->[6];
	$output->[10] = $a->[10];
	$output->[11] = $a->[14];
	$output->[12] = $a->[3];
	$output->[13] = $a->[7];
	$output->[14] = $a->[11];
	$output->[15] = $a->[15];
	return $output;
}

sub f($) {
	my ($self) = @_;
}

=head1 Class Math

=cut

package Math;

=head2 C<$math = Math-E<gt>new()>

=cut

sub new($) {
	my $self = bless {}, shift;
	return $self;
}

=head2 C<Math::abs($len)>

=cut

sub abs($) {
	my ($len) = @_;
	if ($len < 0) {
		return -$len;
	}
	else {
		return $len;
	}
}

=head2 C<Math::g_l_m_a_t__e_p_s_i_l_o_n()>

=cut

sub g_l_m_a_t__e_p_s_i_l_o_n() {
	my $one = 1;
	return $one / 1000000;
}

=head2 C<Math::p_i()>

=cut

sub p_i() {
	my $a = 3141592;
	return $a / 1000000;
}

=head2 C<Math::max($a, $b)>

=cut

sub max($$) {
	my ($a, $b) = @_;
	if ($a > $b) {
		return $a;
	}
	else {
		return $b;
	}
}

=head2 C<Math::min($a, $b)>

=cut

sub min($$) {
	my ($a, $b) = @_;
	if ($a < $b) {
		return $a;
	}
	else {
		return $b;
	}
}

=head1 Class Platform

=cut

package Platform;

=head2 C<$platform = Platform-E<gt>new()>

=cut

sub new($) {
	my $self = bless {}, shift;
	return $self;
}

=head2 C<Platform::cos($r)>

=cut

sub cos($) {
	my ($r) = @_;
	return 0;
}

=head2 C<Platform::random()>

=cut

sub random() {
	return 0;
}

=head2 C<Platform::sin($r)>

=cut

sub sin($) {
	my ($r) = @_;
	return 0;
}

=head2 C<Platform::sqrt($a)>

=cut

sub sqrt($) {
	my ($a) = @_;
	return 0;
}

=head2 C<Platform::tan($p)>

=cut

sub tan($) {
	my ($p) = @_;
	return 0;
}

=head1 Class Quat

=cut

package Quat;

=head2 C<$quat = Quat-E<gt>new()>

=cut

sub new($) {
	my $self = bless {}, shift;
	return $self;
}

sub f($) {
	my ($self) = @_;
}

=head1 Class Vec2

=cut

package Vec2;

=head2 C<$vec2 = Vec2-E<gt>new()>

=cut

sub new($) {
	my $self = bless {}, shift;
	return $self;
}

sub f($) {
	my ($self) = @_;
}

=head1 Class Vec3

3 Dimensional Vector

=cut

package Vec3;

=head2 C<$vec3 = Vec3-E<gt>new()>

=cut

sub new($) {
	my $self = bless {}, shift;
	return $self;
}

=head2 C<Vec3::add(\@output, \@a, \@b)>

Adds two vec3's
@returns {vec3} out

Parameters:

=over

=item \@output

/@param {vec3} out the receiving vector

=item \@a

/@param {vec3} a the first operand

=item \@b

/@param {vec3} b the second operand

=back

=cut

sub add($$$) {
	my ($output, $a, $b) = @_;
	$output->[0] = $a->[0] + $b->[0];
	$output->[1] = $a->[1] + $b->[1];
	$output->[2] = $a->[2] + $b->[2];
	return $output;
}

=head2 C<Vec3::clone(\@a)>

Creates a new vec3 initialized with values from an existing vector
Returns {vec3} a new 3D vector

Parameters:

=over

=item \@a

a vector to clone

=back

=cut

sub clone($) {
	my ($a) = @_;
	my $output = [];
	$output->[0] = $a->[0];
	$output->[1] = $a->[1];
	$output->[2] = $a->[2];
	return $output;
}

=head2 C<Vec3::copy(\@output, \@a)>

Copy the values from one vec3 to another
@returns {vec3} out

Parameters:

=over

=item \@output

/@param {vec3} out the receiving vector

=item \@a

/@param {vec3} a the source vector

=back

=cut

sub copy($$) {
	my ($output, $a) = @_;
	$output->[0] = $a->[0];
	$output->[1] = $a->[1];
	$output->[2] = $a->[2];
	return $output;
}

=head2 C<Vec3::create()>

Creates a new, empty vec3
Returns {vec3} a new 3D vector.

=cut

sub create() {
	my $output = [];
	$output->[0] = 0;
	$output->[1] = 0;
	$output->[2] = 0;
	return $output;
}

=head2 C<Vec3::cross(\@output, \@a, \@b)>

Computes the cross product of two vec3's
@returns {vec3} out

Parameters:

=over

=item \@output

/@param {vec3} out the receiving vector

=item \@a

/@param {vec3} a the first operand

=item \@b

/@param {vec3} b the second operand

=back

=cut

sub cross($$$) {
	my ($output, $a, $b) = @_;
	my $ax = $a->[0];
	my $ay = $a->[1];
	my $az = $a->[2];
	my $bx = $b->[0];
	my $by = $b->[1];
	my $bz = $b->[2];
	$output->[0] = $ay * $bz - $az * $by;
	$output->[1] = $az * $bx - $ax * $bz;
	$output->[2] = $ax * $by - $ay * $bx;
	return $output;
}

=head2 C<Vec3::dist(\@a, \@b)>

Alias for {@link vec3.distance}

=cut

sub dist($$) {
	my ($a, $b) = @_;
	return Vec3::distance($a, $b);
}

=head2 C<Vec3::distance(\@a, \@b)>

Calculates the euclidian distance between two vec3's
@returns {Number} distance between a and b

Parameters:

=over

=item \@a

/@param {vec3} a the first operand

=item \@b

/@param {vec3} b the second operand

=back

=cut

sub distance($$) {
	my ($a, $b) = @_;
	my $x = $b->[0] - $a->[0];
	my $y = $b->[1] - $a->[1];
	my $z = $b->[2] - $a->[2];
	return Platform::sqrt($x * $x + $y * $y + $z * $z);
}

=head2 C<Vec3::div(\@output, \@a, \@b)>

Alias for {@link vec3.divide}

=cut

sub div($$$) {
	my ($output, $a, $b) = @_;
	return Vec3::divide($output, $a, $b);
}

=head2 C<Vec3::divide(\@output, \@a, \@b)>

Divides two vec3's
@returns {vec3} out

Parameters:

=over

=item \@output

/@param {vec3} out the receiving vector

=item \@a

/@param {vec3} a the first operand

=item \@b

/@param {vec3} b the second operand

=back

=cut

sub divide($$$) {
	my ($output, $a, $b) = @_;
	$output->[0] = $a->[0] / $b->[0];
	$output->[1] = $a->[1] / $b->[1];
	$output->[2] = $a->[2] / $b->[2];
	return $output;
}

=head2 C<Vec3::dot(\@a, \@b)>

Calculates the dot product of two vec3's
@returns {Number} dot product of a and b

Parameters:

=over

=item \@a

/@param {vec3} a the first operand

=item \@b

/@param {vec3} b the second operand

=back

=cut

sub dot($$) {
	my ($a, $b) = @_;
	return $a->[0] * $b->[0] + $a->[1] * $b->[1] + $a->[2] * $b->[2];
}

=head2 C<Vec3::from_values($x, $y, $z)>

Creates a new vec3 initialized with the given values
Returns {vec3} a new 3D vector

Parameters:

=over

=item $x

X component

=item $y

Y component

=item $z

Z component

=back

=cut

sub from_values($$$) {
	my ($x, $y, $z) = @_;
	my $output = [];
	$output->[0] = $x;
	$output->[1] = $y;
	$output->[2] = $z;
	return $output;
}

=head2 C<Vec3::len(\@a)>

Alias for {@link vec3.length}

=cut

sub len($) {
	my ($a) = @_;
	return Vec3::length($a);
}

=head2 C<Vec3::length(\@a)>

Calculates the length of a vec3
@returns {Number} length of a

Parameters:

=over

=item \@a

/@param {vec3} a vector to calculate length of

=back

=cut

sub length($) {
	my ($a) = @_;
	my $x = $a->[0];
	my $y = $a->[1];
	my $z = $a->[2];
	return Platform::sqrt($x * $x + $y * $y + $z * $z);
}

=head2 C<Vec3::lerp(\@output, \@a, \@b, $t)>

Performs a linear interpolation between two vec3's
@returns {vec3} out

Parameters:

=over

=item \@output

/@param {vec3} out the receiving vector

=item \@a

/@param {vec3} a the first operand

=item \@b

/@param {vec3} b the second operand

=item $t

/@param {Number} t interpolation amount between the two inputs

=back

=cut

sub lerp($$$$) {
	my ($output, $a, $b, $t) = @_;
	my $ax = $a->[0];
	my $ay = $a->[1];
	my $az = $a->[2];
	$output->[0] = $ax + $t * ($b->[0] - $ax);
	$output->[1] = $ay + $t * ($b->[1] - $ay);
	$output->[2] = $az + $t * ($b->[2] - $az);
	return $output;
}

=head2 C<Vec3::max(\@output, \@a, \@b)>

Returns the maximum of two vec3's
@returns {vec3} out

Parameters:

=over

=item \@output

/@param {vec3} out the receiving vector

=item \@a

/@param {vec3} a the first operand

=item \@b

/@param {vec3} b the second operand

=back

=cut

sub max($$$) {
	my ($output, $a, $b) = @_;
	$output->[0] = Math::max($a->[0], $b->[0]);
	$output->[1] = Math::max($a->[1], $b->[1]);
	$output->[2] = Math::max($a->[2], $b->[2]);
	return $output;
}

=head2 C<Vec3::min(\@output, \@a, \@b)>

Returns the minimum of two vec3's
@returns {vec3} out

Parameters:

=over

=item \@output

/@param {vec3} out the receiving vector

=item \@a

/@param {vec3} a the first operand

=item \@b

/@param {vec3} b the second operand

=back

=cut

sub min($$$) {
	my ($output, $a, $b) = @_;
	$output->[0] = Math::min($a->[0], $b->[0]);
	$output->[1] = Math::min($a->[1], $b->[1]);
	$output->[2] = Math::min($a->[2], $b->[2]);
	return $output;
}

=head2 C<Vec3::mul(\@output, \@a, \@b)>

Alias for {@link vec3.multiply}

=cut

sub mul($$$) {
	my ($output, $a, $b) = @_;
	return Vec3::multiply($output, $a, $b);
}

=head2 C<Vec3::multiply(\@output, \@a, \@b)>

Multiplies two vec3's
@returns {vec3} out

Parameters:

=over

=item \@output

/@param {vec3} out the receiving vector

=item \@a

/@param {vec3} a the first operand

=item \@b

/@param {vec3} b the second operand

=back

=cut

sub multiply($$$) {
	my ($output, $a, $b) = @_;
	$output->[0] = $a->[0] * $b->[0];
	$output->[1] = $a->[1] * $b->[1];
	$output->[2] = $a->[2] * $b->[2];
	return $output;
}

=head2 C<Vec3::negate(\@output, \@a)>

Negates the components of a vec3
@returns {vec3} out

Parameters:

=over

=item \@output

/@param {vec3} out the receiving vector

=item \@a

/@param {vec3} a vector to negate

=back

=cut

sub negate($$) {
	my ($output, $a) = @_;
	$output->[0] = 0 - $a->[0];
	$output->[1] = 0 - $a->[1];
	$output->[2] = 0 - $a->[2];
	return $output;
}

=head2 C<Vec3::normalize(\@output, \@a)>

Normalize a vec3
@returns {vec3} out

Parameters:

=over

=item \@output

/@param {vec3} out the receiving vector

=item \@a

/@param {vec3} a vector to normalize

=back

=cut

sub normalize($$) {
	my ($output, $a) = @_;
	my $x = $a->[0];
	my $y = $a->[1];
	my $z = $a->[2];
	my $len = $x * $x + $y * $y + $z * $z;
	if ($len > 0) {
		my $one = 1;
		$len = $one / Platform::sqrt($len);
		$output->[0] = $a->[0] * $len;
		$output->[1] = $a->[1] * $len;
		$output->[2] = $a->[2] * $len;
	}
	return $output;
}

=head2 C<Vec3::random(\@output, $scale)>

Generates a random vector with the given scale
@returns {vec3} out

Parameters:

=over

=item \@output

/@param {vec3} out the receiving vector

=item $scale

/@param {Number} [scale] Length of the resulting vector. If ommitted, a unit vector will be returned

=back

=cut

sub random($$) {
	my ($output, $scale) = @_;
	my $one = 1;
	my $two = 2;
	my $r = Platform::random() * $two * Math::p_i();
	my $z = Platform::random() * $two - $one;
	my $zScale = Platform::sqrt($one - $z * $z) * $scale;
	$output->[0] = Platform::cos($r) * $zScale;
	$output->[1] = Platform::sin($r) * $zScale;
	$output->[2] = $z * $scale;
	return $output;
}

=head2 C<Vec3::scale(\@output, \@a, $b)>

Scales a vec3 by a scalar number
@returns {vec3} out

Parameters:

=over

=item \@output

/@param {vec3} out the receiving vector

=item \@a

/@param {vec3} a the vector to scale

=item $b

/@param {Number} b amount to scale the vector by

=back

=cut

sub scale($$$) {
	my ($output, $a, $b) = @_;
	$output->[0] = $a->[0] * $b;
	$output->[1] = $a->[1] * $b;
	$output->[2] = $a->[2] * $b;
	return $output;
}

=head2 C<Vec3::scale_and_add(\@output, \@a, \@b, $scale)>

Adds two vec3's after scaling the second operand by a scalar value
@returns {vec3} out

Parameters:

=over

=item \@output

/@param {vec3} out the receiving vector

=item \@a

/@param {vec3} a the first operand

=item \@b

/@param {vec3} b the second operand

=item $scale

/@param {Number} scale the amount to scale b by before adding

=back

=cut

sub scale_and_add($$$$) {
	my ($output, $a, $b, $scale) = @_;
	$output->[0] = $a->[0] + $b->[0] * $scale;
	$output->[1] = $a->[1] + $b->[1] * $scale;
	$output->[2] = $a->[2] + $b->[2] * $scale;
	return $output;
}

=head2 C<Vec3::set(\@output, $x, $y, $z)>

Set the components of a vec3 to the given values
@returns {vec3} out

Parameters:

=over

=item \@output

/@param {vec3} out the receiving vector

=item $x

/@param {Number} x X component

=item $y

/@param {Number} y Y component

=item $z

/@param {Number} z Z component

=back

=cut

sub set($$$$) {
	my ($output, $x, $y, $z) = @_;
	$output->[0] = $x;
	$output->[1] = $y;
	$output->[2] = $z;
	return $output;
}

=head2 C<Vec3::sqr_dist(\@a, \@b)>

Alias for {@link vec3.squaredDistance}
@function

=cut

sub sqr_dist($$) {
	my ($a, $b) = @_;
	return Vec3::squared_distance($a, $b);
}

=head2 C<Vec3::sqr_len(\@a)>

Alias for {@link vec3.squaredLength}

=cut

sub sqr_len($) {
	my ($a) = @_;
	return Vec3::squared_length($a);
}

=head2 C<Vec3::squared_distance(\@a, \@b)>

Calculates the squared euclidian distance between two vec3's
@returns {Number} squared distance between a and b

Parameters:

=over

=item \@a

/@param {vec3} a the first operand

=item \@b

/@param {vec3} b the second operand

=back

=cut

sub squared_distance($$) {
	my ($a, $b) = @_;
	my $x = $b->[0] - $a->[0];
	my $y = $b->[1] - $a->[1];
	my $z = $b->[2] - $a->[2];
	return $x * $x + $y * $y + $z * $z;
}

=head2 C<Vec3::squared_length(\@a)>

Calculates the squared length of a vec3
@returns {Number} squared length of a

Parameters:

=over

=item \@a

/@param {vec3} a vector to calculate squared length of

=back

=cut

sub squared_length($) {
	my ($a) = @_;
	my $x = $a->[0];
	my $y = $a->[1];
	my $z = $a->[2];
	return $x * $x + $y * $y + $z * $z;
}

=head2 C<Vec3::sub(\@output, \@a, \@b)>

Alias for {@link vec3.subtract}
@function

=cut

sub sub($$$) {
	my ($output, $a, $b) = @_;
	return Vec3::substract($output, $a, $b);
}

=head2 C<Vec3::substract(\@output, \@a, \@b)>

Subtracts vector b from vector a
@returns {vec3} out

Parameters:

=over

=item \@output

/@param {vec3} out the receiving vector

=item \@a

/@param {vec3} a the first operand

=item \@b

/@param {vec3} b the second operand

=back

=cut

sub substract($$$) {
	my ($output, $a, $b) = @_;
	$output->[0] = $a->[0] - $b->[0];
	$output->[1] = $a->[1] - $b->[1];
	$output->[2] = $a->[2] - $b->[2];
	return $output;
}

=head2 C<Vec3::transform_mat3(\@output, \@a, \@m)>

Transforms the vec3 with a mat3.

Parameters:

=over

=item \@output

/@param {vec3} out the receiving vector

=item \@a

/@param {vec3} a the vector to transform

=item \@m

/@param {mat4} m the 3x3 matrix to transform with

=back

=cut

sub transform_mat3($$$) {
	my ($output, $a, $m) = @_;
	my $x = $a->[0];
	my $y = $a->[1];
	my $z = $a->[2];
	$output->[0] = $x * $m->[0] + $y * $m->[3] + $z * $m->[6];
	$output->[1] = $x * $m->[1] + $y * $m->[4] + $z * $m->[7];
	$output->[2] = $x * $m->[2] + $y * $m->[5] + $z * $m->[8];
	return $output;
}

=head2 C<$vec3-E<gt>transform_mat4(\@output, \@a, \@m)>

/Transforms the vec3 with a mat4.

Parameters:

=over

=item \@output

/@param {vec3} out the receiving vector

=item \@a

/@param {vec3} a the vector to transform

=item \@m

/@param {mat4} m matrix to transform with

=back

=cut

sub transform_mat4($$$$) {
	my ($self, $output, $a, $m) = @_;
	my $x = $a->[0];
	my $y = $a->[1];
	my $z = $a->[2];
	$output->[0] = $m->[0] * $x + $m->[4] * $y + $m->[8] * $z + $m->[12];
	$output->[1] = $m->[1] * $x + $m->[5] * $y + $m->[9] * $z + $m->[13];
	$output->[2] = $m->[2] * $x + $m->[6] * $y + $m->[10] * $z + $m->[14];
	return $output;
}

=head2 C<Vec3::transform_quat(\@output, \@a, \@q)>

Transforms the vec3 with a quat
@returns {vec3} out

Parameters:

=over

=item \@output

/@param {vec3} out the receiving vector

=item \@a

/@param {vec3} a the vector to transform

=item \@q

/@param {quat} q quaternion to transform with

=back

=cut

sub transform_quat($$$) {
	my ($output, $a, $q) = @_;
	my $x = $a->[0];
	my $y = $a->[1];
	my $z = $a->[2];
	my $qx = $q->[0];
	my $qy = $q->[1];
	my $qz = $q->[2];
	my $qw = $q->[3];
	my $ix = $qw * $x + $qy * $z - $qz * $y;
	my $iy = $qw * $y + $qz * $x - $qx * $z;
	my $iz = $qw * $z + $qx * $y - $qy * $x;
	my $iw = (0 - $qx) * $x - $qy * $y - $qz * $z;
	$output->[0] = $ix * $qw + $iw * (0 - $qx) + $iy * (0 - $qz) - $iz * (0 - $qy);
	$output->[1] = $iy * $qw + $iw * (0 - $qy) + $iz * (0 - $qx) - $ix * (0 - $qz);
	$output->[2] = $iz * $qw + $iw * (0 - $qz) + $ix * (0 - $qy) - $iy * (0 - $qx);
	return $output;
}

=head2 C<Vec3::str(\@a)>

/Perform some operation over an array of vec3s.

=cut

sub str($) {
	my ($a) = @_;
	return "";
}

=head1 Class Vec4

=cut

package Vec4;

=head2 C<$vec4 = Vec4-E<gt>new()>

=cut

sub new($) {
	my $self = bless {}, shift;
	return $self;
}

sub f($) {
	my ($self) = @_;
}

1;
