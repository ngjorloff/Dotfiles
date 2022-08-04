# PowerShell profile
Copy-Item -Path "$env:USERPROFILE\Documents\Powershell\Microsoft.PowerShell_profile.ps1" -Destination ".\PowerShell\"

# VS Code JSON settings
Copy-Item -Path "$env:APPDATA\Code\User\settings.json" -Destination ".\VSCode\"

# Windows Terminal JSON settings
$packagesDirectoryPath = "$env:LOCALAPPDATA\Packages\"
$windowsTerminalDirectory = Get-ChildItem "$packagesDirectoryPath\" "*WindowsTerminal*" -Directory -Name
Copy-Item -Path "$packagesDirectoryPath\$windowsTerminalDirectory\LocalState\settings.json" -Destination ".\Windows Terminal\"
