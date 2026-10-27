<#
.SYNOPSIS
  Runs one build step and, if it fails, reports the end of its output as a GitHub annotation
  (shown on the run's summary page and readable through the checks API without the logs).

.EXAMPLE
  pwsh .github/hawkeye/run.ps1 'Build installer' 'pwsh packaging/windows/package.ps1 -Arch x64'
#>
param(
  [Parameter(Mandatory)] [string] $Title,
  [Parameter(Mandatory)] [string] $Command
)
$ErrorActionPreference = 'Continue'
$log = Join-Path ([IO.Path]::GetTempPath()) ("step-" + [guid]::NewGuid().ToString('N') + ".log")
$code = 1
try {
  & pwsh -NoProfile -Command "`$ErrorActionPreference = 'Stop'; $Command; exit `$LASTEXITCODE" 2>&1 | Tee-Object -FilePath $log
  $code = $LASTEXITCODE
} catch {
  $_ | Out-String | Tee-Object -FilePath $log -Append
  $code = 1
}
if ($code -ne 0) {
  $tail = @(Get-Content $log -Tail 60 -ErrorAction SilentlyContinue) -join "`n"
  # Annotation messages encode newlines as %0A (and % itself as %25).
  $msg = $tail.Replace('%', '%25').Replace("`r", '').Replace("`n", '%0A')
  Write-Output "::error title=$Title failed (exit $code)::$msg"
  exit $code
}
