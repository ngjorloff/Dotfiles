Set-Alias v nvim.exe
Set-Alias vg nvim-qt.exe

$ompPath = "$env:LOCALAPPDATA\Programs\oh-my-posh\themes"
$ompTheme = "$ompPath\gruvboxlight.omp.json"

oh-my-posh --init --shell pwsh --config "$ompTheme" | Invoke-Expression

function repos {
    Set-Location "$env:USERPROFILE\source\repos"
}

function nvimconf {
    Set-Location "$env:LOCALAPPDATA\nvim"
}

function psconf {
    nvim "$env:USERPROFILE\Documents\Powershell\MicroSoft.PowerShell_profile.ps1"
}
