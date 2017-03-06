$ErrorActionPreference = 'Stop';


$packageName= 'fsviewer'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://www.faststonesoft.net/DN/FSViewerSetup62.exe'


$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  silentArgs    = "/S"
  validExitCodes= @(0)

  softwareName  = 'FastStone Image Viewer'

  checksum      = '93b050760130f0324e06a907491702d97d8f6d68dca79cc955ebbacf0da47037'
  checksumType  = 'sha256'
  

}

Install-ChocolateyPackage @packageArgs







