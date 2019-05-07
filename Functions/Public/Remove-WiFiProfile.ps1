function Remove-WiFiProfile {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string] $Name
    )

    $Command = 'netsh wlan delete profile name="{0}"' -f $Name
    Invoke-Expression -Command $Command
}