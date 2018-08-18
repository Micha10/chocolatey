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
  checksum      = 'be0ed367c8d94f816481daf6af979c1679ce14fb10296c6b3008f4b5cde4c915'
  checksumType  = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs
