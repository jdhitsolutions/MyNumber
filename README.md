# MyNumber #

A demonstration class-based module that creates a number object.

```
PS C:\> $x = new-mynumber 11
PS C:\> $x


Number     : 11
Square     : 121
Cube       : 1331
Sqrt       : 3.3166247903554
Log        : 2.39789527279837
Sine       : -0.999990206550703
Cosine     : 0.00442569798805079
Tangent    : -225.950846454195
CircleArea : 380.132711084365
Inverse    : 0.0909090909090909
IsEven     : False
IsPrime    : True
Exp        : 59874.1417151978
Factorial  : 39916800
Factors    : {1, 11}

PS C:\> $x | Set-mynumber -value 123


Number     : 123
Square     : 15129
Cube       : 1860867
Sqrt       : 11.0905365064094
Log        : 4.81218435537242
Sine       : -0.459903490689591
Cosine     : -0.887968906691855
Tangent    : 0.517927471585655
CircleArea : 47529.15525616
Inverse    : 0.00813008130081301
IsEven     : False
IsPrime    : False
Exp        : 2.61951731874906E+53
Factorial  : 1.21463043670253E+205
Factors    : {1, 3, 41, 123}

PS C:\> $x | convert-mynumber -tohex
7b

PS C:\> convert-mynumber 1024 -ToBinary
10000000000
```
You can only access the class definition through the functions.

_Last updated 29 December, 2017_