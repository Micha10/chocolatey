$ErrorActionPreference = 'Stop';
$realdownloadurl           = Get-UrlFromFosshub https://www.fosshub.com/VisiPics.html/VisiPics-1-31.exe
$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe' 
  url           = $realdownloadurl
  checksum      = 'C8F927015C6FCDBBA3863B4E65C8B4C18670923D85F11E91118BE0AE6CACCE01'
  checksumType  = 'sha256'
  
  silentArgs    = "/verysilent /l*v `"$env:TEMP\chocolatey\$($packageName)\$($packageName).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
  softwareName  = 'visipics*'

}
Install-ChocolateyPackage @packageArgs
