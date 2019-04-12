$ErrorActionPreference = 'Stop';
$url = 'http://www.winsoftware.de/Startedownload39417'
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
  checksum      = 'b008b361470455fde4686de5482622b4616165e8d42b7a5984553cba3cca5f86'
  checksumType  = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs
