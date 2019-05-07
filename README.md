# PSWiFi Module

A PowerShell module to manage WiFi capabilities on the Windows operating system.

## Installation

```
Install-Module -Name WiFi -Scope CurrentUser -Force
```

## Usage

```
Get-Command -Module WiFi
```

### List Configured WiFi Profiles

```
Get-WiFiProfile
```

### Connect to a WiFi Profile

```
Connect-WiFiProfile -Name MyWiFiNetwork
```

**NOTE**: You can use tab-completion on the `-Name` parameter.

### List Networks

```
Find-WiFiNetwork
```

