# Builds the N-Gage app with an ngage-toolchain checkout.
#
#   powershell -ExecutionPolicy Bypass -File build-ngage.ps1
#   powershell -ExecutionPolicy Bypass -File build-ngage.ps1 -Toolchain C:\path\to\ngage-toolchain
#   powershell -ExecutionPolicy Bypass -File build-ngage.ps1 -NoBluetooth
#
# Without -Toolchain it tries $env:NGAGESDK, %USERPROFILE%\Downloads\ngage-toolchain
# and ..\toolchain.  Run it from a normal x64 Windows terminal: the SDK's
# 2002-era binutils do not run under x86 emulation on ARM64 Windows.
param(
    [string]$Toolchain = "",
    [switch]$NoBluetooth
)
$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $MyInvocation.MyCommand.Path

function Test-Toolchain([string]$Path) {
    return ($Path -and (Test-Path (Join-Path $Path "cmake\ngage-toolchain.cmake")))
}

$tc = $null
if ($Toolchain) {
    $resolved = $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath($Toolchain)
    if (-not (Test-Toolchain $resolved)) {
        Write-Host "Not an ngage-toolchain checkout: $resolved (expected cmake\ngage-toolchain.cmake inside)"
        exit 2
    }
    $tc = (Resolve-Path $resolved).Path
} else {
    foreach ($c in @($env:NGAGESDK, "$env:USERPROFILE\Downloads\ngage-toolchain", (Join-Path (Split-Path -Parent $root) "toolchain"))) {
        if (Test-Toolchain $c) { $tc = (Resolve-Path $c).Path; break }
    }
}
if (-not $tc) {
    Write-Host "No ngage-toolchain found; pass -Toolchain <path> (https://github.com/ngagesdk/ngage-toolchain)"
    exit 2
}
if (-not (Test-Path (Join-Path $tc "sdk\sdk\6.1\Shared\EPOC32\ngagesdk\bin\arm-epoc-pe-gcc.exe"))) {
    Write-Host "Toolchain SDK is not populated: run its setup first (cmake -P setup/setup.cmake)"
    exit 2
}

$env:NGAGESDK = $tc.Replace('\', '/')
$env:PATH = "$tc\sdk\sdk\6.1\Shared\EPOC32\gcc\bin;$tc\sdk\sdk\6.1\Shared\EPOC32\ngagesdk\bin;$env:PATH"
$bt = if ($NoBluetooth) { "OFF" } else { "ON" }

Write-Host "toolchain: $tc   bluetooth: $bt"
cmake -S $root -B "$root\build\ngage" -G Ninja `
      -DCMAKE_TOOLCHAIN_FILE="$env:NGAGESDK/cmake/ngage-toolchain.cmake" `
      -DCMAKE_PREFIX_PATH="$env:NGAGESDK/sdk/extras/lib/cmake" `
      -DCMAKE_C_COMPILER_WORKS=TRUE -DCMAKE_C_COMPILER_FORCED=TRUE `
      -DHAMTARO_BLUETOOTH=$bt
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
cmake --build "$root\build\ngage"
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

Get-ChildItem "$root\build\ngage" -Include hamtaro.app, hamtaro.sis -Recurse |
    ForEach-Object { Write-Host "built: $($_.FullName) ($($_.Length) bytes)" }
