. ./paths.ps1

# PowerShell profile
Copy-Item -Path ".\PowerShell\Microsoft.PowerShell_profile.ps1" -Destination "$powerShellProfile" -Confirm

# VS Code JSON settings
Copy-Item -Path ".\VSCode\settings.json" -Destination "$vsCodeSettings" -Confirm

# Windows Terminal JSON settings
Copy-Item -Path ".\Windows Terminal\settings.json" -Destination "$windowsTerminalSettings" -Confirm
