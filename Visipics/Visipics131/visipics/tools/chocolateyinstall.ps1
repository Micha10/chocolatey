
$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe' 
  url           = Get-UrlFromFosshub 'http://www.fosshub.com/VisiPics.html/VisiPics-1-31.exe'
  
  silentArgs    = "/qn /norestart /l*v `"$env:TEMP\chocolatey\$($packageName)\$($packageName).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
  softwareName  = 'visipics*'

}

Install-ChocolateyPackage @packageArgs
