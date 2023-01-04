$ErrorActionPreference = 'Stop';
$packageName = 'DocFetcher' 
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$registryUninstallerKeyName = 'DocFetcher' 
$installerType = 'EXE' 
$url32 = 'https://sourceforge.net/projects/docfetcher/files/docfetcher/1.1.25/docfetcher_1.1.25_win32_setup.exe/download' 
$silentArgs = '/S' 
$validExitCodes = @(0) 
$checksum32 = '7c2aee6bc3498363767274271b0c14c5288184f3a5fd27fd904f2b4315b53bf5'
$checksumType  = 'sha256'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url32
  silentArgs    = $silentArgs 
  validExitCodes= @(0)
  checksum      = $checksum32
  checksumType  = $checksumType
  softwareName  = $packageName
}



Stop-Process -Name docfetcher-daemon-windows.exe -Confirm -Debug -ErrorAction SilentlyContinue
Stop-Process -Name DocFetcher.exe -Confirm -Debug -ErrorAction SilentlyContinue
Install-ChocolateyPackage @packageArgs

