$ErrorActionPreference = 'Stop';
$packageName = 'DocFetcher' 
$registryUninstallerKeyName = 'DocFetcher' 
$installerType = 'EXE' 
$url = 'http://sourceforge.net/projects/docfetcher/files/docfetcher/1.1.18/docfetcher_1.1.18_win32_setup.exe/download' 
$silentArgs = '/S' 
$validExitCodes = @(0) 
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Stop-Process -Name docfetcher-daemon-windows.exe -Confirm -Debug -ErrorAction SilentlyContinue
Stop-Process -Name DocFetcher.exe -Confirm -Debug -ErrorAction SilentlyContinue
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"
