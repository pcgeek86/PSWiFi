# Purpose: Publishes the PowerShell module to the PowerShell Gallery.

Publish-Module -NuGetApiKey (Read-Host -Prompt 'Please enter NuGet API key') -Path $PSScriptRoot