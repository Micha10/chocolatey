$ErrorActionPreference = 'Stop';


$packageName= 'fsviewer'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://www.faststonesoft.net/DN/FSViewerSetup64.exe'


$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  silentArgs    = "/S"
  validExitCodes= @(0)

  softwareName  = 'FastStone Image Viewer'

  checksum      = '19cae1e1b5f068bb74b4a52147b96894af2b3de03caf239b0b8dbd0dc5616143'
  checksumType  = 'sha256'
  

}

Install-ChocolateyPackage @packageArgs







