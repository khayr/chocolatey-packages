$ErrorActionPreference = 'Stop'; # stop on all errors

$url        = 'https://download.bitcomet.com/achive/BitComet_1.77_setup.exe'
$packageArgs = @{
  softwareName  = 'BitComet*'
  packageName   = $env:ChocolateyPackageName
  fileType      = 'EXE'
  url           = $url

  checksum      = '22375f20f7bc52cfc139f363607319c00b10c75d84a8b3f3764e1edc84183ebf'
  checksumType  = 'sha256'

  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
