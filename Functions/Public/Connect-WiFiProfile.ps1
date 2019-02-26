function Connect-WiFiProfile {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string] $ProfileName
      , [string] $SSID
      , [string] $Interface
    )

    $Command = 'netsh wlan connect name="{0}"' -f $ProfileName

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