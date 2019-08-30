#install chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

#install chocolatey distributed tools
choco install azure-cli -y
choco install azure-data-studio -y
choco install chromium -y
choco install docker-desktop -y
choco install drawio -y
choco install foxitreader -y
choco install git -y
choco install golang -y
choco install hg -y
choco install linqpad -y
choco install microsoftazurestorageexplorer -y
choco install nodejs -y
choco install nswagstudio -y
choco install poshgit -y
choco install postman -y
choco install ServiceBusExplorer -y
choco install slack -y
choco install microsoft-windows-terminal -y
choco install totalcommander -y
choco install visualstudiocode -y
choco install winmerge -y

#configure vs code
code --install-extension DotJoshJohnson.xml
code --install-extension johnpapa.vscode-peacock
code --install-extension ms-vscode.azurecli
code --install-extension ms-vscode.csharp
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension ms-vscode.powershell
code --install-extension ms-vscode-remote.vscode-remote-extensionpack
code --install-extension PeterJausovec.vscode-docker

#extra win features
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
Enable-WindowsOptionalFeature -Online -FeatureName TelnetClient

#wsl distros
#https://docs.microsoft.com/en-us/windows/wsl/install-manual
Invoke-WebRequest -Uri https://aka.ms/wsl-ubuntu-1804 -OutFile ubuntu.appx -UseBasicParsing
Add-AppxPackage .\ubuntu.appx

Invoke-WebRequest -Uri https://aka.ms/wsl-kali-linux -OutFile kali.appx -UseBasicParsing
Add-AppxPackage .\kali.appx

Invoke-WebRequest -Uri https://aka.ms/wsl-debian-gnulinux -OutFile debian.appx -UseBasicParsing
Add-AppxPackage .\debian.appx