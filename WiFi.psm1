$PrivateFunctionList = Get-ChildItem -Path $PSScriptRoot/Functions/Private
foreach ($File in $PrivateFunctionList) {
    . $File.FullName
}

$PublicFunctionList = Get-ChildItem -Path $PSScriptRoot/Functions/Public
foreach ($File in $PublicFunctionList) {
    . $File.FullName
}

