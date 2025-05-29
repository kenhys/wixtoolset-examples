@echo on
title Fluent-package post toast script
if exist "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" (
  if exist "%~dp0..\bin\fluent-package-post-toast.ps1" (
    echo "Execute powershell script to show toast"
    "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" "%~dp0..\bin\fluent-package-post-toast.ps1"
  ) else (
    echo "No toast script: %~dp0..\bin\fluent-package-post-toast.ps1"
  )
) else (
  echo "No powershell runtime: C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe"
)
