$ErrorActionPreference = 'Stop';
$packageName = 'DocFetcher' 
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$registryUninstallerKeyName = 'DocFetcher' 
$installerType = 'EXE' 
$url = 'http://sourceforge.net/projects/docfetcher/files/docfetcher/1.1.18/docfetcher_1.1.18_win32_setup.exe/download' 
$silentArgs = '/S' 
$validExitCodes = @(0) 
$checksum      = '550F97E9F92ADE4D28A3AB272DA5A3F3B746E3586955175F0B21A7F48746B6C8'
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

