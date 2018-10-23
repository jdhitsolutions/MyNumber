# MyNumber

A demonstration class-based module that creates a *number* object. The functionality of the module isn't that practical. But it can serve as a model on how you might build a class-based PowerShell tool.

The module should work on Windows PowerShell and PowerShell Core cross-platform. It is intended for educational purposes.

Install the latest version from the PowerShell Gallery.

```powershell
Install-Module MyNumber
```

In PowerShell Core you'll most likely need to include `-scope currentuser`.

The class is defined in [MyNumber.psm1](mynumber.psm1). Functionality is exposed through a set of functions.

+ [New-MyNumber](./docs/New-MyNumber.md)
+ [Set-MyNumber](./docs/Set-MyNumber.md)
+ [Convert-MyNumber](./docs/Convert-MyNumber.md)

```powershell
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
Custom     : 0

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
Custom     : 0

PS C:\> $x | convert-mynumber -tohex
7b

PS C:\> convert-mynumber 1024 -ToBinary
10000000000
```

You can also create a number with a custom scriptblock.

```powershell
PS C:\> new-mynumber 77 -CustomScriptBlock {Param($x) [char][int]$x }


Number     : 77
Square     : 5929
Cube       : 456533
Sqrt       : 8.77496438739212
Log        : 4.34380542185368
Sine       : 0.999520158580731
Cosine     : -0.0309750317312165
Tangent    : -32.2685757759344
CircleArea : 18626.5028431339
Inverse    : 0.012987012987013
IsEven     : False
IsPrime    : False
Exp        : 2.75851345452317E+33
Factorial  : 1.45183092028286E+113
Factors    : {1, 7, 11, 77}
Custom     : M
```

You should include a parameter in your scriptblock for the number value. It will be passed as an argument when calculating the value.

You can only access the class definition through the functions.

_Last updated 23 October 2018_