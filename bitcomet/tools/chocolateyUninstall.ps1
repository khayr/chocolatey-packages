try {
  $unpath = "${Env:ProgramFiles}\BitComet\uninst.exe"
  
  Uninstall-ChocolateyPackage 'bitcomet' 'EXE' '/S' "$unpath" -validExitCodes @(0)
  
  # the following is all part of error handling
  Write-ChocolateySuccess 'bitcomet'
} catch {
  Write-ChocolateyFailure 'bitcomet' "$($_.Exception.Message)"
  throw 
}