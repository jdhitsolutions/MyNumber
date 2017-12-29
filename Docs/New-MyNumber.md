---
external help file: MyNumber-help.xml
Module Name: MyNumber
online version: 
schema: 2.0.0
---

# New-MyNumber

## SYNOPSIS
Create a MyNumber object

## SYNTAX

```
New-MyNumber [-Number] <Double[]> [<CommonParameters>]
```

## DESCRIPTION
This command will create a MyNumber object based on the numeric value.

## EXAMPLES

### Example 1
```
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
```
### Example 2
```
PS C:\> 1..10 | New-MyNumber | Where IsEven | Select Number,Square,Cube

Number Square Cube
------ ------ ----
     2      4    8
     4     16   64
     6     36  216
     8     64  512
    10    100 1000
```
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.Double[]

## OUTPUTS

### MyNumber

## NOTES

## RELATED LINKS
[Set-MyNumber]()
