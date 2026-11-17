<#
.SYNOPSIS
  Prepares Hamtaro: Ham-Ham Heartbreak for the Nokia N-Gage from your own
  cartridge dump.

.DESCRIPTION
  1. Checks that the ROM is the supported one: the European cartridge
     (game code AH3P), SHA-1 B016328E4880F0413B9335C95758BA9C09E53710.
     A .zip holding the .gba is accepted too.
  2. Writes, in the output folder, the layout of the N-Gage's memory card:
       System\Apps\hamtaro\   the game (the same files hamtaro.sis installs)
       hamtaro\hamtaro.gba    your ROM
       hamtaro\hamtaro.ini    settings (zoom, volume, ...)
     Copy the contents of the output folder to the root of the memory card
     (drive E:), or to EKA2L1's data\drives\e folder.

  The output folder must be new or empty. Nothing is written anywhere else
  except a temporary folder for a zipped ROM, removed at the end.

.EXAMPLE
  powershell -ExecutionPolicy Bypass -File install.ps1 -Rom 'D:\ROMs\Hamtaro - Ham-Ham Heartbreak (Europe).gba' -Output 'D:\Hamtaro N-Gage'
#>
param(
    [Parameter(Mandatory = $true)][string]$Rom,
    [Parameter(Mandatory = $true)][string]$Output
)
$ErrorActionPreference = 'Stop'
$here = $PSScriptRoot
$romSha1 = 'B016328E4880F0413B9335C95758BA9C09E53710'
$appFiles = 'game.exe', 'hamtaro.app', 'hamtaro.aif', 'hamtaro.rsc', 'hamtaro_caption.rsc'

foreach ($file in $appFiles + 'hamtaro.ini') {
    if (-not (Test-Path -LiteralPath (Join-Path $here $file))) { throw "$file is missing from $here; unpack the whole installer first." }
}
$src = (Resolve-Path -LiteralPath $Rom).Path
$out = [IO.Path]::GetFullPath($Output)
if ((Test-Path -LiteralPath $out) -and (Get-ChildItem -LiteralPath $out -Force | Select-Object -First 1)) {
    throw "$out is not empty; choose a new folder."
}

$work = $null
try {
    if ([IO.Path]::GetExtension($src) -ieq '.zip') {
        $work = Join-Path ([IO.Path]::GetTempPath()) ('hamtaro-ngage-' + [Guid]::NewGuid().ToString('N'))
        Expand-Archive -LiteralPath $src -DestinationPath $work
        $gba = Get-ChildItem -LiteralPath $work -Recurse -File -Filter '*.gba' | Select-Object -First 1
        if (-not $gba) { throw 'The zip holds no .gba file.' }
        $src = $gba.FullName
    }

    Write-Host 'Checking the ROM...'
    if ((Get-FileHash -LiteralPath $src -Algorithm SHA1).Hash -ne $romSha1) {
        $code = ''
        try {
            $head = New-Object byte[] 0xB0
            $fs = [IO.File]::OpenRead($src); [void]$fs.Read($head, 0, $head.Length); $fs.Close()
            $code = [Text.Encoding]::ASCII.GetString($head, 0xAC, 4)
        } catch { }
        throw "This is not the supported ROM (game code '$code'). The port needs the European cartridge, game code AH3P, SHA-1 $romSha1."
    }

    Write-Host "Writing $out..."
    $apps = Join-Path $out 'System\Apps\hamtaro'
    $data = Join-Path $out 'hamtaro'
    New-Item -ItemType Directory -Force $apps | Out-Null
    New-Item -ItemType Directory -Force $data | Out-Null
    foreach ($file in $appFiles) { Copy-Item -LiteralPath (Join-Path $here $file) -Destination $apps }
    Copy-Item -LiteralPath $src -Destination (Join-Path $data 'hamtaro.gba')
    Copy-Item -LiteralPath (Join-Path $here 'hamtaro.ini') -Destination $data
    Write-Host "Done: copy the contents of $out to the root of the N-Gage's memory card (E:) and start Hamtaro from the menu."
} finally {
    if ($work) { Remove-Item -LiteralPath $work -Recurse -Force -ErrorAction SilentlyContinue }
}
