@echo off
title VRC File Cleaner
cls
net session >nul 2>&1
if %errorlevel% NEQ 0 (
    echo This script needs to be executed with administrative permissions^!
    pause >nul
    exit
)
rmdir /s /q "%LocalAppData%\Temp\VRChat" 
rmdir /s /q "%UserProfile%\LocalLow\VRChat"
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\VRChat" /f
pause
exit
