@echo off
goto check_Permissions

:check_Permissions
  net session >nul 2>&1
  if %errorLevel% == 0 (
    echo Admin
  ) else (
    echo Not Admin
  )
