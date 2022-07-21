oh-my-posh.exe init pwsh --config "C:\Users\AGSTR\.dotfiles\oh-my-posh\mojada.omp.json" | Invoke-Expression

Set-Alias -name net -value get-netadapter
Set-Alias -name v -value nvim
Set-Alias -name ff -value winfetch
Set-Alias -name neofetch -value winfetch
Set-Alias -name c -value clear
Set-Alias -name x -value explorer

function vp {
  v $profile
}

function cdmysql {
	cd d:\xampp\mysql\bin\
  ls mysql.exe
  echo "`nExecute fullname of mysql binary"
}

function dotfiles {
	cd c:\users\AGSTR\.dotfiles\
}

function cn {
	cd c:\Users\AGSTR\.config\nvim
}

function cnl {
	cd c:\Users\AGSTR\AppData\Local\nvim
}

function cdhtdocs {
	cd d:\xampp\htdocs\
}

function cdd {
	cd 'd:\'
}

function cdh {
  cd C:\Users\AGSTR\
}

function cdc {
	cd 'c:\'
}

function cdpictures {
	cd "c:\Users\AGSTR\Pictures"
}

function cddownloads {
	cd "c:\Users\AGSTR\Downloads"
}

function cdmusic {
	cd "d:\Music"
}

function cddocuments {
	cd "C:\Users\AGSTR\Documents"
}

function cddesktop {
	cd "c:\Users\AGSTR\Desktop"
}

function cpnvim {
	x C:\Users\AGSTR\.config\nvim\
	x C:\Users\AGSTR\AppData\Local\nvim\
  echo "match it (????????)"
}

function cptodotfiles {
	Copy-Item "C:\Users\AGSTR\AppData\Roaming\mpv\mpv.conf" -Destination C:\Users\AGSTR\.dotfiles\mpv
	Copy-Item "C:\Users\AGSTR\.config\nvim\init.vim" -Destination C:\Users\AGSTR\.dotfiles\nvim
	Copy-Item "C:\Users\AGSTR\OneDrive\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1" -Destination C:\Users\AGSTR\.dotfiles\WindowsPowerShell\ 
	Copy-Item "C:\Users\AGSTR\AppData\Roaming\Code\User\settings.json" -Destination C:\Users\AGSTR\.dotfiles\vscode 
  echo "Ready to Push!"
}

# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
