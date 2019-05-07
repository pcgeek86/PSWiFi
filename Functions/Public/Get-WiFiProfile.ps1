function Get-WiFiProfile {
    <#
    .SYNOPSIS
    Retrieves a list of configured WiFi profiles.
    #>
    [CmdletBinding()]
    param ()

    $ProfileList = Invoke-Expression -Command 'netsh wlan show profile'
    $ProfileList | ForEach-Object -Process {
        $matches = $null
        $null = $PSItem -match ': (?<ProfileName>.*)$'
        if ($matches) {
            $matches.ProfileName
        }
    }
}