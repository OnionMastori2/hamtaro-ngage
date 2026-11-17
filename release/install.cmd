@echo off
rem Hamtaro: Ham-Ham Heartbreak for the Nokia N-Gage: prepares the game from
rem your own cartridge dump (see install.ps1).
rem   install.cmd <your ROM> <new output folder>
if "%~2"=="" (
  echo usage: install.cmd ^<your ROM .gba or .zip^> ^<new output folder^>
  exit /b 2
)
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0install.ps1" -Rom "%~1" -Output "%~2"
