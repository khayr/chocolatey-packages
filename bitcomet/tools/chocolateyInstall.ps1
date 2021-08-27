$ErrorActionPreference = 'Stop';

$url        = 'https://download.bitcomet.com/achive/BitComet_1.78_setup.exe'
$packageArgs = @{
  softwareName  = 'BitComet*'
  packageName   = $env:ChocolateyPackageName
  fileType      = 'EXE'
  url           = $url

  checksum      = '352b5e32d2f585d81eebc778329bc37f76e5a9ef1c194eda54ed77f9918d545c'
  checksumType  = 'sha256'

  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
