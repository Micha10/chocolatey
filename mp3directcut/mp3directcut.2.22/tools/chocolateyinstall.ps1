$ErrorActionPreference = 'Stop';
$fossurl = Get-UrlFromFosshub http://www.fosshub.com/genLink/mp3DirectCut/mp3DC222.exe
$packageName= 'mp3directcut'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = $fossurl
$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  softwareName  = 'mp3directcut*'
}
Install-ChocolateyZipPackage @packageArgs
