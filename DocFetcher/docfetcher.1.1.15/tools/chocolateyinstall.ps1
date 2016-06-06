$ErrorActionPreference = 'Stop';
$packageName = 'DocFetcher' # arbitrary name for the package, used in messages
$registryUninstallerKeyName = 'DocFetcher' #ensure this is the value in the registry
$installerType = 'EXE' #only one of these: exe, msi, msu
$url = 'http://sourceforge.net/projects/docfetcher/files/docfetcher/1.1.15/docfetcher_1.1.15_win32_setup.exe/download' # download url
$silentArgs = '/S' 
$validExitCodes = @(0) 
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Stop-Process -Name docfetcher-daemon-windows.exe -Confirm -Debug -ErrorAction SilentlyContinue
Stop-Process -Name DocFetcher.exe -Confirm -Debug -ErrorAction SilentlyContinue
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"
