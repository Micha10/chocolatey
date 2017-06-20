$ErrorActionPreference = 'Stop';
$url = 'http://www.pc-magazin.de/filedownload/documents/118522912/mp3dc223.exe'
$packageName= 'mp3directcut'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  silentArgs    = "/S"
  validExitCodes= @(0)
  softwareName  = 'mp3directcut*'
  checksum      = '48dc1088db3e5896ab520b30ed75fb1185212658ae789bb818d122b2982a0965'
  checksumType  = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs
