$ErrorActionPreference = 'Stop';


$packageName= 'fsviewer'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://www.faststonesoft.net/DN/FSViewerSetup61.exe'


$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  silentArgs    = "/S"
  validExitCodes= @(0)

  softwareName  = 'FastStone Image Viewer'

  checksum      = '1b4446136a7c84f55fc5a563206d4cf53b9a65a993861b21323a3484029c5a12'
  checksumType  = 'sha256'
  

}

Install-ChocolateyPackage @packageArgs







