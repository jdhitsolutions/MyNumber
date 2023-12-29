Function New-MyNumber {
    [CmdletBinding()]
    [OutputType('MyNumber')]

    Param(
        [Parameter(Position = 0, Mandatory, HelpMessage = 'Enter a numeric value.', ValueFromPipeline)]
        [double[]]$Number,
        [scriptblock]$CustomScriptBlock
    )
    Process {
        Foreach ($n in $Number) {
            Write-Verbose "Creating a myNumber object for $n"
            $obj = New-Object -TypeName MyNumber -ArgumentList $n

            if ($CustomScriptBlock) {
                $obj.CustomScriptBlock = $CustomScriptBlock
                $obj.Refresh() | Out-Null
            }
            $obj
        }
    }
}
