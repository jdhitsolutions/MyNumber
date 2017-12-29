---
external help file: MyNumber-help.xml
Module Name: MyNumber
online version: 
schema: 2.0.0
---

# Convert-MyNumber

## SYNOPSIS
Convert a numeric value

## SYNTAX

### binary (Default)
```
Convert-MyNumber [-Number] <Double> [-ToBinary] [<CommonParameters>]
```

### hex
```
Convert-MyNumber [-Number] <Double> [-ToHex] [<CommonParameters>]
```

### octal
```
Convert-MyNumber [-Number] <Double> [-ToOctal] [<CommonParameters>]
```

## DESCRIPTION
Convert a numeric value to the specified format. The result will be a string.

## EXAMPLES

### Example 1
```
PS C:\> convert-mynumber 123
1111011
```

The default behavior is to convert to binary.

### Example 2
```
PS C:\> 1024678 | convert-mynumber -ToHex
fa2a6
```

### Example 2
```
PS C:\> 1024678 | convert-mynumber -ToOctal
3721246

```
## PARAMETERS

### -Number
A numeric value

```yaml
Type: Double
Parameter Sets: (All)
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -ToBinary
Convert to a binary string

```yaml
Type: SwitchParameter
Parameter Sets: binary
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ToHex
Convert to a Hex string

```yaml
Type: SwitchParameter
Parameter Sets: hex
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ToOctal
Convert to an Octal string

```yaml
Type: SwitchParameter
Parameter Sets: octal
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

### System.Double

## OUTPUTS

### System.String

## NOTES

## RELATED LINKS

