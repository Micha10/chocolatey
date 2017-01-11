$ErrorActionPreference = 'Stop';
$packageName = 'DocFetcher' 
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$registryUninstallerKeyName = 'DocFetcher' 
$installerType = 'EXE' 
$url = 'http://sourceforge.net/projects/docfetcher/files/docfetcher/1.1.19/docfetcher_1.1.19_win32_setup.exe/download' 
$silentArgs = '/S' 
$validExitCodes = @(0) 
$checksum      = '29e4a583898c55bf3e6d72e475038cb18471e506b74b2b657406d444f529fea6'
$checksumType  = 'sha256'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  silentArgs    = $silentArgs 
  validExitCodes= @(0)
  checksum      = $checksum
  checksumType  = $checksumType
  softwareName  = $packageName
}



Stop-Process -Name docfetcher-daemon-windows.exe -Confirm -Debug -ErrorAction SilentlyContinue
Stop-Process -Name DocFetcher.exe -Confirm -Debug -ErrorAction SilentlyContinue
Install-ChocolateyPackage @packageArgs

