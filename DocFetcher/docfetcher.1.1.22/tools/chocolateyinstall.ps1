$ErrorActionPreference = 'Stop';
$packageName = 'DocFetcher' 
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$registryUninstallerKeyName = 'DocFetcher' 
$installerType = 'EXE' 
$url32 = 'https://sourceforge.net/projects/docfetcher/files/docfetcher/1.1.22/docfetcher_1.1.22_win32_setup.exe/download' 
$silentArgs = '/S' 
$validExitCodes = @(0) 
$checksum32 = 'cd2c647ca05cb5000b1d9b07d6dfa04e6c3d6441ba09bdf05bc2acecbf78d9d4'
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

