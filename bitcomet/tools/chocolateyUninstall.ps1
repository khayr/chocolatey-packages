try {
  $processor = Get-WmiObject Win32_Processor
  $is64bit = $processor.AddressWidth -eq 64
  if ($is64bit) {
    $unpath = "${Env:ProgramFiles(x86)}\BitComet\uninst.exe"
  } else {
    $unpath = "${Env:ProgramFiles}\BitComet\uninst.exe"
  }
  Uninstall-ChocolateyPackage 'bitcomet' 'EXE' '/S' "$unpath" -validExitCodes @(0)
  
  # the following is all part of error handling
  Write-ChocolateySuccess 'bitcomet'
} catch {
  Write-ChocolateyFailure 'bitcomet' "$($_.Exception.Message)"
  throw 
}