#requires -version 5.0

#region Main

#define class

Class MyNumber {

    <#
if ($Custom) {
       $hash.Add("Custom",(Invoke-Command -ScriptBlock $custom -ArgumentList $N))
    }
#>
    [double]$Number
    [double]$Square
    [double]$Cube
    [double]$Sqrt
    [double]$Log
    [double]$Sine
    [double]$Cosine
    [double]$Tangent
    [double]$CircleArea
    [double]$Inverse
    [boolean]$IsEven
    [boolean]$IsPrime
    [double]$Exp
    [double]$Factorial
    [double[]]$Factors

    #methods

    [mynumber] Refresh() {

        $this.Square = ($this.number * $this.number)
        $this.Cube = [math]::Pow($this.number, 3)
        $this.Sqrt = [math]::Sqrt($this.number)
        $this.Log = [math]::Log($this.number)
        $this.Sine = [math]::Sin($this.number)
        $this.Cosine = [math]::Cos($this.number)
        $this.Tangent = [math]::Tan($this.number)
        $this.CircleArea = [math]::PI * ($this.number * $this.number)
        $this.Inverse = 1 / $this.number
        $this.Exp = [math]::Exp($this.number)
        $this.Factorial = (1..$this.number | foreach-object -begin {$r = 1} -process {$r *= $_} -end {$r})
        $this.Factors = (1..$($this.number) | where-object {-Not ($this.number % $_)})
        $this.IsEven = $this.TestIsEven()
        $this.IsPrime = $this.TestIsPrime()
        Return $this

    }

    [boolean]TestIsPrime() {
        if ($this.factors.count -eq 2) {
            return $True

        }
        else {
            return $False
        }
    }

    [boolean]TestIsEven() {
        if ($this.number % 2 -eq 0) {
            Return $True
        }
        else {
            Return $False
        }
    }
    [string]ToBinary() {
        $r = [convert]::ToString($this.Number, 2)
        Return $r
    }

    [string]ToOctal() {
        $r = [convert]::ToString($this.Number, 8)
        Return $r
    }

    [string]ToHex() {
        $r = [convert]::ToString($this.Number, 16)
        Return $r
    }

    #constructor
    MyNumber([double]$Number) {

        $this.Number = $Number
        $this.Refresh()

    }

}
#endregion

Function New-MyNumber {
    [CmdletBinding()]
    [OutputType([MyNumber])]
    Param(
        [Parameter(Position = 0, Mandatory, HelpMessage = "Enter a numeric value.", ValueFromPipeline)]    
        [double[]]$Number
    )
    Process {
        Foreach ($n in $Number) {
            Write-Verbose "Creating a myNumber object for $n"
            New-Object -TypeName MyNumber -ArgumentList $n
        }
    }
}   

Function Convert-MyNumber {
    [CmdletBinding(defaultparametersetname = 'binary')]
    [OutputType([System.String])]
    Param(
        [Parameter(Position = 0, ValueFromPipelineByPropertyName, ValueFromPipeline,Mandatory)]
        [Double]$Number,
        [Parameter(ParameterSetName = "binary")]
        [Switch]$ToBinary,
        [Parameter(ParameterSetName = "hex")]
        [Switch]$ToHex,
        [Parameter(ParameterSetName = "octal")]
        [Switch]$ToOctal
    )

    Begin { }
    Process {
        Write-Verbose "Processing $number"
        Switch ($PSCmdlet.ParameterSetName) {
            "binary" {
                [convert]::ToString($Number, 2)
            }
            "hex" {
                [convert]::ToString($Number, 16)
            }
            "octal" {
                [convert]::ToString($Number, 8)
            }
        }
    }
    End {}
}

Function Set-MyNumber {
    [cmdletbinding()]
    [OutputType([MyNumber])]
    Param(
        [Parameter(Position = 0, ValueFromPipeline, Mandatory)]
        [MyNumber]$Number,
        [Parameter(Position = 1, Mandatory)]
        [double]$Value
    )
    Begin {}
    Process {
        $number.number = $Value
        $number.refresh()
    }
    End {}
}

Export-ModuleMember -function New-MyNumber, Convert-MyNumber, Set-MyNumber