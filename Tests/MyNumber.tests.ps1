
#this is an incomplete Pester test

Import-Module $PSScriptRoot\..\MyNumber.psd1 -Force

Describe New-MyNumber {
    $Test = @(
        @{Property = 'Cube'; Type = 'double' }
        @{Property = 'Sine'; Type = 'double' }
        @{Property = 'Sqrt'; Type = 'double' }
        @{Property = 'Inverse'; Type = 'double' }
        @{Property = 'IsPrime'; Type = 'bool' }
        @{Property = 'CircleArea'; Type = 'double' }
        @{Property = 'Cosine'; Type = 'double' }
        @{Property = 'Square'; Type = 'double' }
        @{Property = 'Log'; Type = 'double' }
        @{Property = 'Tangent'; Type = 'double' }
        @{Property = 'IsEven'; Type = 'bool' }
        @{Property = 'Number'; Type = 'double' }
        @{Property = 'Factors'; Type = 'double[]' }
        @{Property = 'Factorial'; Type = 'double' }
        @{Property = 'Exp'; Type = 'double' }
    )

    BeforeAll {
        $n = New-MyNumber 1
    }

    It 'Should run without error' {
        { New-MyNumber -Number 1 } | Should -Not -Throw
    }
    It 'Should create a MyNumber object type' {
        $n.GetType().Name | Should -Be 'MyNumber'
    }


    It 'Should have a property called <Property> with a type of <Type>' -ForEach $Test {

        $n.PSObject.Properties[$Property].TypeNameOfValue | Should -Be ($Type -As [Type]).FullName
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
