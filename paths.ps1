# PowerShell profile
$powerShellProfile = "$env:USERPROFILE\Documents\Powershell\Microsoft.PowerShell_profile.ps1"

# VS Code
$vsCodeSettings = "$env:APPDATA\Code\User\settings.json"

# Windows Terminal
$packagesDirectoryPath = "$env:LOCALAPPDATA\Packages\"
$windowsTerminalDirectory = Get-ChildItem "$packagesDirectoryPath\" "*WindowsTerminal*" -Directory -Name
$windowsTerminalSettings = "$packagesDirectoryPath\$windowsTerminalDirectory\LocalState\settings.json"
