function Disconnect-WiFi {
    [CmdletBinding()]
    param (
        [string] $Interface
    )

    $Command = 'netsh wlan disconnect'
    switch ($true) {
        $Interface {
            $Command += ' interface="{0}"' -f $Interface
            Write-Verbose -Message 'Adding interface parameter'
        }
    }
    Invoke-Expression -Command $Command
    Write-Verbose -Message 'Disconnected WiFi'
}