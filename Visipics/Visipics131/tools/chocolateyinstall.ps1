$ErrorActionPreference = 'Stop';
$realdownloadurl           = Get-UrlFromFosshub 'http://www.fosshub.com/genLink/VisiPics/VisiPics-1-31.exe'
$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe' 
  url           = $realdownloadurl
  
  silentArgs    = "/verysilent /l*v `"$env:TEMP\chocolatey\$($packageName)\$($packageName).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
  softwareName  = 'visipics*'

}
Install-ChocolateyPackage @packageArgs
