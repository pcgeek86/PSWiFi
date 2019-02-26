@{
    # If authoring a script module, the RootModule is the name of your .psm1 file
    RootModule = 'WiFi.psm1'

    Author = 'Trevor Sullivan <trevor@trevorsullivan.net>'

    CompanyName = 'Art of Shell LLC'

    ModuleVersion = '0.1.10'

    # Use the New-Guid command to generate a GUID, and copy/paste into the next line
    GUID = '60098b10-adbc-4831-a331-0f40b67bf40f'

    Copyright = '2019 Copyright Art of Shell LLC'

    Description = 'Manage wireless profiles on the Windows operating system.'

    # Minimum PowerShell version supported by this module (optional, recommended)
    PowerShellVersion = '2.0'

    # Which PowerShell functions are exported from your module? (eg. Get-CoolObject)
    FunctionsToExport = @(
        'Get-WiFiProfile'
        'Connect-WiFiProfile'
        'Disconnect-WiFi'
        'Find-WifiNetwork'
        )

    # Which PowerShell aliases are exported from your module? (eg. gco)
    AliasesToExport = @('')

    # Which PowerShell variables are exported from your module? (eg. Fruits, Vegetables)
    VariablesToExport = @('')

    # PowerShell Gallery: Define your module's metadata
    PrivateData = @{
        PSData = @{
            # What keywords represent your PowerShell module? (eg. cloud, tools, framework, vendor)
            Tags = @('wifi', 'wireless', 'Windows')

            # What software license is your code being released under? (see https://opensource.org/licenses)
            LicenseUri = ''

            # What is the URL to your project's website?
            ProjectUri = ''

            # What is the URI to a custom icon file for your project? (optional)
            IconUri = ''

            # What new features, bug fixes, or deprecated features, are part of this release?
            ReleaseNotes = @'
'@
        }
    }

    # If your module supports updateable help, what is the URI to the help archive? (optional)
    # HelpInfoURI = ''
}