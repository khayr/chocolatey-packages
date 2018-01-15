#try {
  $downUrl = 'https://download.bitcomet.com/achive/BitComet_1.47_setup.exe'
  # installer, will assert administrative rights
  Install-ChocolateyPackage 'bzeditor' 'EXE' '/S' "$downUrl" -validExitCodes @(0)
  
  # the following is all part of error handling
  #Write-ChocolateySuccess 'bzeditor'
#} catch {
  #Write-ChocolateyFailure 'bzeditor' "$($_.Exception.Message)"
  #throw 
#}