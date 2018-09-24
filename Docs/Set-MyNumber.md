---
external help file: MyNumber-help.xml
Module Name: MyNumber
online version:
schema: 2.0.0
---

# Set-MyNumber

## SYNOPSIS

Modify a MyNumber object.

## SYNTAX

### value (Default)
```
Set-MyNumber [-Number] <MyNumber> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Value
```
Set-MyNumber [-Number] <MyNumber> [-Value] <Double> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### script
```
Set-MyNumber [-Number] <MyNumber> [-CustomScriptBlock <ScriptBlock>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION

Use this command to update a MyNumber object with a new value.

## EXAMPLES

### Example 1

```powershell
PS C:\> $x = New-Mynumber 52
PS C:\> $x


Number     : 52
Square     : 2704
Cube       : 140608
Sqrt       : 7.21110255092798
Log        : 3.95124371858143
Sine       : 0.986627592040485
Cosine     : -0.162990780795705
Tangent    : -6.05327238279284
CircleArea : 8494.8665353068
Inverse    : 0.0192307692307692
IsEven     : True
IsPrime    : False
Exp        : 3.83100800071658E+22
Factorial  : 8.06581751709439E+67
Factors    : {1, 2, 4, 13...}
Custom     : 0

PS C:\> $x  | set-mynumber -value 111


Number     : 111
Square     : 12321
Cube       : 1367631
Sqrt       : 10.5356537528527
Log        : 4.70953020131233
Sine       : -0.864551448610608
Cosine     : -0.502544319145385
Tangent    : 1.72034866513036
CircleArea : 38707.5630848798
Inverse    : 0.00900900900900901
IsEven     : False
IsPrime    : False
Exp        : 1.60948706696152E+48
Factorial  : 1.76295255109024E+180
Factors    : {1, 3, 37, 111}
Custom     : 0
```

Assign a new value to the MyNumber object.

### Example 2

```powershell
PS C:\> $x | Set-MyNumber -CustomScriptBlock {param($x) ($x/365)*100 -as [int]}

Number     : 52
Square     : 2704
Cube       : 140608
Sqrt       : 7.21110255092798
Log        : 3.95124371858143
Sine       : 0.986627592040485
Cosine     : -0.162990780795705
Tangent    : -6.05327238279284
CircleArea : 8494.8665353068
Inverse    : 0.0192307692307692
IsEven     : True
IsPrime    : False
Exp        : 3.83100800071658E+22
Factorial  : 8.06581751709439E+67
Factors    : {1, 2, 4, 13...}
Custom     : 14
```

Set a custom scriptblock. You should include a parameter in your scriptblock for the number value.

## PARAMETERS

### -Number

A MyNumber object.

```yaml
Type: MyNumber
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Value

The new value for the Number value.

```yaml
Type: Double
Parameter Sets: Value
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm

Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf

Shows what would happen if the cmdlet runs. The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CustomScriptBlock

You can specify a custom scriptblock that can be used to calculate a custom value. You should use a scriptblock with a parameter indicating the current number. When the scriptblock is executed the number value is passed as an argument. See examples.

```yaml
Type: ScriptBlock
Parameter Sets: script
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

### MyNumber

## OUTPUTS

### MyNumber

## NOTES

Learn more about PowerShell: http://jdhitsolutions.com/blog/essential-powershell-resources/

## RELATED LINKS

[New-MyNumber](New-MyNumber.md)

[Convert-MyNumber](Convert-MyNumber.md)
