#
# Module manifest for module 'MyNumber'
#


@{

    RootModule           = 'MyNumber.psm1'
    ModuleVersion        = '1.4.1'
    CompatiblePSEditions = @('Desktop', 'Core')
    GUID                 = 'a89d3d2b-3e70-4f24-98e1-debd98ec289c'
    Author               = 'Jeff Hicks'
    CompanyName          = 'JDH Information Technology Solutions, Inc.'
    Copyright            = '(c) 2017-2023 JDH Information Technology Solutions, Inc.'
    Description          = 'A demonstration class-based PowerShell module that creates a number object. This module is intended as a teaching tool for scripting with PowerShell and using PowerShell classes.'
    PowerShellVersion    = '5.1'
    FunctionsToExport    = 'Convert-MyNumber', 'New-MyNumber', 'Set-MyNumber'
    FormatsToProcess     = 'formats\mynumber.format.ps1xml'
    TypesToProcess       = 'types\mynumber.types.ps1xml'
    CmdletsToExport      = ''
    # VariablesToExport = '*'
    AliasesToExport      = ''
    PrivateData          = @{
        PSData = @{
            Tags       = @('classes', 'math', 'tutorial', 'demo')
            LicenseUri = 'https://github.com/jdhitsolutions/MyNumber/blob/master/License.txt'
            ProjectUri = 'https://github.com/jdhitsolutions/MyNumber'
            # IconUri = ''
            # ReleaseNotes = ''

        } # End of PSData hashtable

    } # End of PrivateData hashtable

}

