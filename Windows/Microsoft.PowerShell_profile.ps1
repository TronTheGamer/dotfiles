
# Ctrl + d で Exit
Import-Module PSReadLine
Set-PSReadlineKeyHandler -Key ctrl+d -Function DeleteCharOrExit

# bash風のtab補完
Set-PSReadLineKeyHandler -Key Tab -Function Complete

# PowerShellでPowerLineを適用するための設定
# Import-Module posh-git
# Import-Module oh-my-posh
# Set-PoshPrompt -Theme Paradox
oh-my-posh init pwsh | Invoke-Expression
oh-my-posh init pwsh --config "$env:DOT_CONF\oh-my-posh\multiverse-neon.omp.json" | Invoke-Expression

# gsudo
# Import-Module gsudoModule
# ALIASES
Set-Alias "code" "D:\software\installed\scoop_apps\apps\vscode-insiders\current\Code - Insiders.exe"
Set-Alias "MAS" "D:\software\Scripts\MAS.ps1"
Set-Alias "su" "sudo run"
Set-Alias "ocwd" "$env:USER_SCRIPT\ocwd.ps1"
# $CustomVariables = Import-Clixml -Path "C:\Users\yadu1\AppData\Local\OneCommander\Resources\KPC\Export\\CusPSVars.xml"
# $CustomVariables.GetEnumerator() | ForEach-Object -Process { New-Variable -Name $_.Name -Value $_.Value -Option AllScope -Scope Global -Force }

#34de4b3d-13a8-4540-b76d-b9e8d3851756 PowerToys CommandNotFound module

# Import-Module "C:\Program Files\PowerToys\WinUI3Apps\..\WinGetCommandNotFound.psd1"
#34de4b3d-13a8-4540-b76d-b9e8d3851756

#############################################################
#  ALIAS
#############################################################

set-Alias "code" "D:\software\installed\scoop_apps\apps\vscode-dev\current\Code - Insiders.exe"
set-Alias "subl" "D:\software\installed\scoop_apps\apps\sublime-text\current\subl.exe"
# set-Alias "em" "D:\software\installed\scoop_apps\apps\emacs\current\bin\runemacs.exe --with-profile 'default'"

# BUG: Fix the problem with $emprof in the following
# function em {
#     param (
#         # Parameter help description
#         [Parameter] $emprof = "default",
#         [Parameter] $loc  = "."
#     )
#     iex "& "$env:SCOOP_GLOBAL\apps\emacs\current\bin\runemacs.exe" --with-profile $emprof $loc"
# }
function em {
    param (
        # Parameter help description
        [Parameter()]
        [string] $emprof = "default",
        
        [Parameter()]
        [string] $loc = "."
    )
    iex "& `"$env:SCOOP_GLOBAL\apps\emacs\current\bin\runemacs.exe`" --with-profile $emprof $loc"
}

function yasb {
    
    iex "& pythonw 'D:\software\installed\YASB\src\main.py'"
    
}