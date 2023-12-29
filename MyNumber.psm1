#region Main

#define class
Class MyNumber {
    #properties
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
    [PSObject]$Custom
    #store the custom scriptblock in a hidden property which can be managed through a module function
    hidden [scriptblock]$CustomScriptBlock

    #methods
    [MyNumber] Refresh() {
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
        $this.Factorial = (1..$this.number | ForEach-Object -Begin { $r = 1 } -Process { $r *= $_ } -End { $r })
        $this.Factors = (1..$($this.number) | Where-Object { -Not ($this.number % $_) })
        $this.IsEven = $this.TestIsEven()
        $this.IsPrime = $this.TestIsPrime()
        if ($this.CustomScriptBlock) {
            $CustomResult = Invoke-Command -ScriptBlock $this.CustomScriptBlock -ArgumentList $this.Number
        }
        else {
            $CustomResult = 0
        }
        $this.Custom = $CustomResult
        #class methods require the Return keyword
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
    [String]ToBinary() {
        $r = [convert]::ToString($this.Number, 2)
        Return $r
    }

    [String]ToOctal() {
        $r = [convert]::ToString($this.Number, 8)
        Return $r
    }

    [String]ToHex() {
        $r = [convert]::ToString($this.Number, 16)
        Return $r
    }

    #constructor
    MyNumber([double]$Number) {
        $this.Number = $Number
        $this.Refresh()
    }

}

#extend the class with custom type extensions

Update-TypeData -TypeName MyNumber -MemberType ScriptProperty -MemberName Computername -Value {[System.Environment]::MachineName} -Force

Update-TypeData -TypeName MyNumber -MemberType AliasProperty -MemberName Value -Value Number -Force

#endregion

#dot source module functions
Get-ChildItem -Path $PSScriptRoot\functions\*.ps1 | ForEach-Object -Process { . $_.FullName }