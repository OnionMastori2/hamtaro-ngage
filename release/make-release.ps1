<#
.SYNOPSIS
  Builds the release download (hamtaro-ngage-v<Version>.zip) from an N-Gage
  build of this project.

.DESCRIPTION
  Copies the built game (game.exe, hamtaro.app, hamtaro.aif, hamtaro.rsc,
  hamtaro_caption.rsc, hamtaro.sis) from the build folder, and the
  installer (install.cmd, install.ps1, README.txt, hamtaro.ini) from this
  folder, into hamtaro-ngage-v<Version>\ and zips it.  The download holds
  no game files: the installer takes them from the user's own ROM.

.EXAMPLE
  powershell -ExecutionPolicy Bypass -File release\make-release.ps1 -Version 0.2.0 -Build build\ngage
#>
param(
    [Parameter(Mandatory = $true)][string]$Version,
    [Parameter(Mandatory = $true)][string]$Build,
    [string]$Output = '.'
)
$ErrorActionPreference = 'Stop'
$here = $PSScriptRoot
$build = (Resolve-Path -LiteralPath $Build).Path
$name = "hamtaro-ngage-v$Version"
$out = Join-Path ([IO.Path]::GetFullPath($Output)) $name
$zip = "$out.zip"

$gameFiles = 'game.exe', 'hamtaro.app', 'hamtaro.aif', 'hamtaro.rsc', 'hamtaro_caption.rsc', 'hamtaro.sis'
$kitFiles = 'install.cmd', 'install.ps1', 'README.txt', 'hamtaro.ini'
foreach ($f in $gameFiles) { if (-not (Test-Path -LiteralPath (Join-Path $build $f))) { throw "$f is missing from $build; build the project first." } }
foreach ($f in $kitFiles) { if (-not (Test-Path -LiteralPath (Join-Path $here $f))) { throw "$f is missing from $here." } }
if ((Get-Content -LiteralPath (Join-Path $here 'README.txt') -Raw) -notmatch [regex]::Escape("Changes in $Version")) {
    Write-Warning "README.txt has no 'Changes in $Version' section."
}

if (Test-Path -LiteralPath $out) { Remove-Item -LiteralPath $out -Recurse -Force }
if (Test-Path -LiteralPath $zip) { Remove-Item -LiteralPath $zip -Force }
New-Item -ItemType Directory -Force $out | Out-Null
foreach ($f in $gameFiles) { Copy-Item -LiteralPath (Join-Path $build $f) -Destination $out }
foreach ($f in $kitFiles) { Copy-Item -LiteralPath (Join-Path $here $f) -Destination $out }
Compress-Archive -Path $out -DestinationPath $zip
Remove-Item -LiteralPath $out -Recurse -Force
Write-Host "Done: $zip"
