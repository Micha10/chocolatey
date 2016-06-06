﻿# stop on all errors
$ErrorActionPreference = 'Stop';
$packageName = 'DocFetcher'
$registryUninstallerKeyName = 'DocFetcher' #ensure this is the value in the registry
$installerType = 'EXE'
$silentArgs = '/S'
$validExitCodes = @(0)

$osBitness = Get-ProcessorBits
 
if ($osBitness -eq 64) {
  $file = (Get-ItemProperty -Path "hklm:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\$registryUninstallerKeyName").UninstallString
} else {
  $file = (Get-ItemProperty -Path "hklm:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$registryUninstallerKeyName").UninstallString
} 
	
Uninstall-ChocolateyPackage -PackageName $packageName -FileType $installerType -SilentArgs $silentArgs -validExitCodes $validExitCodes -File $file
