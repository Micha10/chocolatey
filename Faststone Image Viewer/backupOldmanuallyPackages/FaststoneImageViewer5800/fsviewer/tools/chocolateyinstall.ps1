$ErrorActionPreference = 'Stop';
$packageName= 'fsviewer'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://www.faststonesoft.net/DN/FSViewerSetup58.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  silentArgs    = "/S"
  validExitCodes= @(0)
  checksum      = '767046EDBECFA37AFFFDC96D786CD27D1FEF4D499BE3B0223B3E2CB9C447FB08'
  checksumType  = 'sha256' #default is md5, can also be sha1, sha256 or sha512

  softwareName  = 'FastStone Image Viewer'
}

Install-ChocolateyPackage @packageArgs
