Function Convert-MyNumber {
    [CmdletBinding(DefaultParameterSetName = 'binary')]
    [OutputType([System.String])]

    Param(
        [Parameter(Position = 0, ValueFromPipelineByPropertyName, ValueFromPipeline, Mandatory)]
        [Double]$Number,
        [Parameter(ParameterSetName = 'binary')]
        [Switch]$ToBinary,
        [Parameter(ParameterSetName = 'hex')]
        [Switch]$ToHex,
        [Parameter(ParameterSetName = 'octal')]
        [Switch]$ToOctal
    )

    Begin { }
    Process {
        Write-Verbose "Processing $number"
        Switch ($PSCmdlet.ParameterSetName) {
            'binary' {
                [convert]::ToString($Number, 2)
            }
            'hex' {
                [convert]::ToString($Number, 16)
            }
            'octal' {
                [convert]::ToString($Number, 8)
            }
        }
    }
    End {}
}
