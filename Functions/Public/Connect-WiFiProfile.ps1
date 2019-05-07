function Connect-WiFiProfile {
    <#
    .Synopsis
    Connects to a configured WiFi connection profile.

    .Parameter Name
    The name of the WiFi profile that you would like to connect to.
    Use the Get-WiFiProfile command to discover existing profiles.

    .Parameter SSID
    Specify the SSID to connect to, within the given WiFi profile.
    This parameter is mandatory if the WiFi profile, specified in the -Name parameter, contains multiple SSIDs.

    .Parameter Interface
    The network interface that you would like to connect to the WiFi profile.

    .Example
    Connect to an existing WiFi profile:

      Connect-WiFiProfile -Name MyProfileName

    #>
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string] $Name
      , [string] $SSID
      , [string] $Interface
    )

    $Command = 'netsh wlan connect name="{0}"' -f $Name

    switch ($true) {
        $SSID {
            $Command += ' ssid="{0}"' -f $SSID
            Write-Verbose -Message 'Adding SSID parameter'
        }
        $Interface {
            $Command += ' interface="{0}"' -f $Interface
            Write-Verbose -Message 'Adding interface parameter'
        }
    }

    Invoke-Expression -Command $Command
}