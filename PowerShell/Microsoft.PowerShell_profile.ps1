# Neovim

Set-Alias v nvim.exe
# Set-Alias vg nvim-qt.exe

# Oh my Posh

$ompDirectoryPath = "$env:LOCALAPPDATA\Programs\oh-my-posh\themes"
$ompName = "darkplus"
$ompTheme = "$ompDirectoryPath\$ompName.omp.json"

oh-my-posh --init --shell pwsh --config "$ompTheme" | Invoke-Expression

# PowerShell completion

# Set-PSReadLineOption -PredictionSource HistoryAndPlugin
# Set-PSReadLineOption -PredictionViewStyle ListView

# GitHub cli completion

Invoke-Expression -Command $(gh completion -s powershell | Out-String)

function repos {
    Set-Location "$env:USERPROFILE\source\repos"
}

# Configs

function nvimconf {
    nvim "$env:LOCALAPPDATA\nvim\init.lua"
}

function psp {
    nvim $PROFILE
}

# Git aliases

function gst {
    & git status
}

function gsts {
    & git status -s
}

function gca {
    & git commit -a
}

function vg {
    nvim -c "G"
}

# Checkout branch

function co {
    param(
        [Parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [ArgumentCompleter({
                param($pCmd, $pParam, $pWord, $pAst, $pFakes)

                $branchList = (git branch --format='%(refname:short)')

                if ([string]::IsNullOrWhiteSpace($pWord)) {
                    return $branchList;
                }

                $branchList | Select-String "$pWord"
            })]
        [string] $branch
    )

    git switch $branch;
}
