Function Set-MyNumber {
    [CmdletBinding(SupportsShouldProcess, DefaultParameterSetName = 'value')]
    [OutputType('MyNumber')]

    Param(
        [Parameter(Position = 0, ValueFromPipeline, Mandatory)]
        [MyNumber]$Number,
        [Parameter(Position = 1, Mandatory, ParameterSetName = 'Value')]
        [double]$Value,
        [Parameter(ParameterSetName = 'script')]
        [scriptblock]$CustomScriptBlock
    )
    Begin {}
    Process {
        switch ($PSCmdlet.ParameterSetName) {
            'value' {
                if ($PSCmdlet.ShouldProcess('MyNumber', "Set number to $value")) {
                    $number.number = $Value
                    $number.refresh()
                }
            } #value
            'script' {
                if ($PSCmdlet.ShouldProcess('MyNumber', "Set custom script to $CustomScriptblock")) {
                    $number.CustomScriptBlock = $CustomScriptBlock
                    $number.refresh()
                }
            }
        }
    }
    End {}
}
