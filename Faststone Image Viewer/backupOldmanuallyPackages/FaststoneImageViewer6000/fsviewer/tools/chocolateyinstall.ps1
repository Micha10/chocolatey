$ErrorActionPreference = 'Stop';


$packageName= 'fsviewer'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://www.faststonesoft.net/DN/FSViewerSetup60.exe'


$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  silentArgs    = "/S"
  validExitCodes= @(0)

  softwareName  = 'FastStone Image Viewer'

  checksum      = '263FDC4BED80F65E3003854ABAD1E86BEF832250F1E713B8B7FA7EE1B50DD718'
  checksumType  = 'sha256'
  

}

Install-ChocolateyPackage @packageArgs







