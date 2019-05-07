$PrivateFunctionList = Get-ChildItem -Path $PSScriptRoot/Functions/Private -Filter *.ps1
foreach ($File in $PrivateFunctionList) {
    . $File.FullName
}

$PublicFunctionList = Get-ChildItem -Path $PSScriptRoot/Functions/Public -Filter *.ps1
foreach ($File in $PublicFunctionList) {
    . $File.FullName
}

$CompleterList = Get-ChildItem -Path $PSScriptRoot/Completers -Filter *.ps1
foreach ($File in $CompleterList) {
    . $File.FullName
}
