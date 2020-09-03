## Note: if you get an error you might need to change the execution policy (i.e. enable Powershell) with
Set-ExecutionPolicy RemoteSigned -scope CurrentUser

## NOTE: install to specified folder 'c:\scoop'
## https://techformist.com/install-scoop-for-command-line-nirvana/
$env:SCOOP='c:\scoop'
[environment]::setEnvironmentVariable('SCOOP',$env:SCOOP,'User')
iex (new-object net.webclient).downloadstring('https://get.scoop.sh')

scoop install git

# make Symlinks in Windows available
## https://stackoverflow.com/questions/32847697/windows-specific-git-configuration-settings-where-are-they-set/32849199#32849199
## https://www.joshkel.com/2018/01/18/symlinks-in-windows/
[environment]::setEnvironmentVariable('MSYS','winsymlinks:nativestrict','User')

## add scoop bucket

scoop bucket add java
scoop bucket add extras
scoop bucket add jazzwang https://github.com/jazzwang/scoop-bucket

scoop install wget

## Install Chrome

scoop install googlechrome

### make google chrome as default browser
chrome.exe --make-default-browser

## Install Java
# scoop install ojdkbuild8-full

## Install Python Embedded and PIP

scoop install python-embed

## Configure Time Zone to Taipei (GMT+8)

Get-TimeZone -Name "*Taipei*"
Set-TimeZone -Name "Taipei Standard Time"

## IE trusted site
## https://tdea.my.webex.com
## https://idbroker-b-us.webex.com
## https://stackoverflow.com/questions/27359636/change-internet-explorer-security-settings-for-trusted-domains-using-powershell

#Setting IExplorer settings
Write-Verbose "Now configuring IE"
#Add http://website.com as a trusted Site/Domain
#Navigate to the domains folder in the registry
set-location "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings"
set-location ZoneMap\Domains

#Create a new folder with the website name
new-item webex.com/ -Force
set-location webex.com/
new-itemproperty . -Name * -Value 2 -Type DWORD -Force
new-itemproperty . -Name http -Value 2 -Type DWORD -Force
new-itemproperty . -Name https -Value 2 -Type DWORD -Force

## Install WebEx
# https://stackoverflow.com/questions/47110728/powershell-download-and-run-exe-file/47111562
$url = "https://akamaicdn.webex.com/client/WBXclient-40.8.9-15/webexapp.msi"
$outpath = "webexapp.msi"
Invoke-WebRequest -Uri $url -OutFile $outpath
Start-Process -Filepath "webexapp.msi"
