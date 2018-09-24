---
external help file: MyNumber-help.xml
Module Name: MyNumber
online version:
schema: 2.0.0
---

# New-MyNumber

## SYNOPSIS

Create a MyNumber object.

## SYNTAX

```yaml
New-MyNumber [-Number] <Double[]> [-CustomScriptBlock <ScriptBlock>] [<CommonParameters>]
```

## DESCRIPTION

This command will create a MyNumber object based on the numeric value.

## EXAMPLES

### Example 1

```powershell
PS C:\> New-MyNumber 123

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
```

Note that the CircleArea value is calculated assuming that your number is the radius.

### Example 2

```powershell
PS C:\> 1..10 | New-MyNumber | Where IsEven | Select Number,Square,Cube

Number Square Cube
------ ------ ----
     2      4    8
     4     16   64
     6     36  216
     8     64  512
    10    100 1000
```

### Example 3

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

Here is an example using a custom scriptblock. You should include a parameter in your scriptblock for the number value.

## PARAMETERS

### -Number

Enter a numeric value.

```yaml
Type: Double[]
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -CustomScriptBlock

You can specify a custom scriptblock that can be used to calculate a custom value. You should use a scriptblock with a parameter indicating the current number. When the scriptblock is executed the number value is passed as an argument. See examples.

```yaml
Type: ScriptBlock
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.Double[]

## OUTPUTS

### MyNumber

## NOTES

Learn more about PowerShell: http://jdhitsolutions.com/blog/essential-powershell-resources/

## RELATED LINKS

[Set-MyNumber](Set-MyNumber.md)
