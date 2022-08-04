. ./paths.ps1

# PowerShell profile
Copy-Item -Path "$powerShellProfile" -Destination ".\PowerShell\"

# VS Code JSON settings
Copy-Item -Path "$vsCodeSettings" -Destination ".\VSCode\"

# Windows Terminal JSON settings
Copy-Item -Path "$windowsTerminalSettings" -Destination ".\Windows Terminal\"
