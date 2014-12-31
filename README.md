CitoGlMatrix
============

Port of [glMatrix library](https://github.com/toji/gl-matrix) to [Cito programming language](http://cito.sourceforge.net/).

CitoGlMatrix is automatically translated to the following languages:
* C89 (partially tested)
* C99 (partially tested)
* Java (partially tested)
* C# (partially tested)
* JavaScript (partially tested)
* JavaScript with Typed Arrays (partially tested)
* ActionScript 3 (partially tested)
* D (partially tested)
* Perl 5 Module (not tested)
* Perl 5.10+ Module (not tested)
* PHP (partially tested)

**Be careful when using it! It's not fully tested yet.**

**C target leaks memory in Quat.RotationTo and Quat.SetAxes**

### Download
https://github.com/manicdigger/CitoGlMatrix-builds

### Usage

See http://glmatrix.net/ for documentation.

### Compilation
Cito currently doesn't support floating point variables, so a modified version is required: (https://github.com/uilbcvnj/CitoMod).

### TODO
* Port missing unit tests
* Benchmark
* Double precision
