$ErrorActionPreference = 'Stop'; # stop on all errors

$url        = 'https://download.bitcomet.com/achive/BitComet_1.73_setup.exe'
$packageArgs = @{
  softwareName  = 'BitComet*'
  packageName   = $env:ChocolateyPackageName
  fileType      = 'EXE'
  url           = $url

  checksum      = '7a043849e07849e5255f8019ee6e21d89cb5182406211f6dabf21915ebe4aef3'
  checksumType  = 'sha256'

  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
