function Find-WifiNetwork {
    [CmdletBinding()]
    param ()

    Disconnect-WiFi
    Start-Sleep -Seconds 1
    
    $Command = 'netsh wlan show networks'
    $Result = Invoke-Expression -Command $Command

    #($Result -join '') -match '(?<result>SSID.*?)(?=SSID)'
    $NetworkRegex = '(?<=: )(?<SSID>.*?)\W+Network.*?: (?<Type>.*?)\W.*: (?<Authentication>.*?)\W.*?: (?<Encryption>.*?)\W'
    $Regex = [regex]'(?<result>SSID.*?)(?=SSID)'
    $MatchList = $Regex.Matches(($Result -join ''))
    foreach ($Match in $MatchList) {
        Write-Debug -Message $match.Value
        if ($Match.Value -match $NetworkRegex) {
            [PSCustomObject]@{
                SSID = $matches.SSID
                Encryption = $matches.Encryption
                Authentication = $matches.Authentication
                NetworkType = $matches.Type
            }
        }
    }
}