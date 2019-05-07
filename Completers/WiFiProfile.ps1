$ScriptBlock = {
    param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)
    
    Get-WiFiProfile
}

$Completer = @{
    CommandName = @(
        'Connect-WiFiProfile'
        'Remove-WiFiProfile'
    )
    ParameterName = 'Name'
    ScriptBlock = $ScriptBlock
}
Register-ArgumentCompleter @Completer