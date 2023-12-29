
Import-Module $PSScriptRoot\..\MyNumber.psd1 -Force

Describe New-MyNumber {
    It 'Should run without error' {
        { New-MyNumber 1 } | Should -Not Throw
    }
    It 'Should create a MyNumber object type' {
        $n = New-MyNumber 1
        $n.GetType().Name | Should -Be 'MyNumber'
    }

    $PropHash = @{
        Log        = [double]
        Number     = [double]
        Sqrt       = [double]
        IsEven     = [bool]
        IsPrime    = [bool]
        Cosine     = [double]
        Factorial  = [double]
        Exp        = [double]
        Inverse    = [double]
        Sine       = [double]
        Square     = [double]
        CircleArea = [double]
        Tangent    = [double]
        Factors    = [double[]]
        Cube       = [double]
    }
    $PropHash.GetEnumerator() | ForEach-Object -Begin { $n = New-MyNumber 2 } -Process {
        It "Should have a property called $($_.key) of type $($_.value)" {
            $n.$($_.key) -is $_.value | Should -Be $True
        }
    }
    It 'Should create a new object with pipeline input' {
        (1..5 | New-MyNumber).count | Should -Be 5
    }

    It 'Should determine prime numbers' {
        (2, 3, 5, 67, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71 | New-MyNumber | Where-Object IsPrime).Count | Should -be 20
    }

    It 'Should determine even numbers' {
        (1..10 | New-MyNumber | Where-Object IsEven).count | Should -Be 5
    }
}
