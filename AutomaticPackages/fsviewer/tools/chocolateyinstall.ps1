$ErrorActionPreference = 'Stop';


$packageName= 'fsviewer'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://www.faststonesoft.net/DN/FSViewerSetup70.exe'
$checksum32 = '22f51942ec275fafd6e20c1a42458471f2d2e34765fbc0399b998232c99edb38'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  silentArgs    = "/S"
  validExitCodes= @(0)

  softwareName  = 'FastStone Image Viewer'

  checksum      = $checksum32
  checksumType  = 'sha256'
  

}

Install-ChocolateyPackage @packageArgs







