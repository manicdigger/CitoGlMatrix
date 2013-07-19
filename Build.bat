del /q /s Output
del /q /s OutputTests

mkdir Output
mkdir Output\C
mkdir Output\C99
mkdir Output\Java
mkdir Output\Cs
mkdir Output\Js
mkdir Output\JsTa
mkdir Output\As
mkdir Output\D
mkdir Output\Pm
mkdir Output\Pm510
mkdir Output\Php

cito -D CITO -D C -l c -o Output\C\CitoGlMatrix.c CitoGlMatrix\GlMatrix.ci.cs
cito -D CITO -D C99 -l c99 -o Output\C99\CitoGlMatrix.c CitoGlMatrix\GlMatrix.ci.cs
cito -D CITO -D JAVA -l java -o Output\Java\CitoGlMatrix.java -n CitoGlMatrix.lib  CitoGlMatrix\GlMatrix.ci.cs
cito -D CITO -D CS -l cs -o Output\Cs\CitoGlMatrix.cs CitoGlMatrix\GlMatrix.ci.cs
cito -D CITO -D JS -l js -o Output\Js\CitoGlMatrix.js CitoGlMatrix\GlMatrix.ci.cs
cito -D CITO -D JSTA -l js-ta -o Output\JsTa\CitoGlMatrixTa.js CitoGlMatrix\GlMatrix.ci.cs
cito -D CITO -D AS -l as -o Output\As\CitoGlMatrix.as CitoGlMatrix\GlMatrix.ci.cs
cito -D CITO -D D -l d -o Output\D\CitoGlMatrix.d CitoGlMatrix\GlMatrix.ci.cs
cito -D CITO -D PM -l pm -o Output\Pm\CitoGlMatrix.pm CitoGlMatrix\GlMatrix.ci.cs
cito -D CITO -D PM510 -l pm510 -o Output\Pm510\CitoGlMatrix.pm CitoGlMatrix\GlMatrix.ci.cs
cito -D CITO -D PHP -l php -o Output\Php\CitoGlMatrix.php CitoGlMatrix\GlMatrix.ci.cs

mkdir OutputTests
mkdir OutputTests\C
mkdir OutputTests\C99
mkdir OutputTests\Java
mkdir OutputTests\Cs
mkdir OutputTests\Js
mkdir OutputTests\JsTa
mkdir OutputTests\As
mkdir OutputTests\D
mkdir OutputTests\Pm
mkdir OutputTests\Pm510
mkdir OutputTests\Php

cito -D CITO -D TESTS -D C -l c -o OutputTests\C\CitoGlMatrix.c CitoGlMatrix\GlMatrix.ci.cs
cito -D CITO -D TESTS -D C99 -l c99 -o OutputTests\C99\CitoGlMatrix.c CitoGlMatrix\GlMatrix.ci.cs
cito -D CITO -D TESTS -D JAVA -l java -o OutputTests\Java\CitoGlMatrix.java -n CitoGlMatrix.lib  CitoGlMatrix\GlMatrix.ci.cs
cito -D CITO -D TESTS -D CS -l cs -o OutputTests\Cs\CitoGlMatrix.cs CitoGlMatrix\GlMatrix.ci.cs
cito -D CITO -D TESTS -D JS -l js -o OutputTests\Js\CitoGlMatrix.js CitoGlMatrix\GlMatrix.ci.cs
cito -D CITO -D TESTS -D JSTA -l js-ta -o OutputTests\JsTa\CitoGlMatrixTa.js CitoGlMatrix\GlMatrix.ci.cs
cito -D CITO -D TESTS -D AS -l as -o OutputTests\As\CitoGlMatrix.as CitoGlMatrix\GlMatrix.ci.cs
cito -D CITO -D TESTS -D D -l d -o OutputTests\D\CitoGlMatrix.d CitoGlMatrix\GlMatrix.ci.cs
cito -D CITO -D TESTS -D PM -l pm -o OutputTests\Pm\CitoGlMatrix.pm CitoGlMatrix\GlMatrix.ci.cs
cito -D CITO -D TESTS -D PM510 -l pm510 -o OutputTests\Pm510\CitoGlMatrix.pm CitoGlMatrix\GlMatrix.ci.cs
cito -D CITO -D TESTS -D PHP -l php -o OutputTests\Php\CitoGlMatrix.php CitoGlMatrix\GlMatrix.ci.cs