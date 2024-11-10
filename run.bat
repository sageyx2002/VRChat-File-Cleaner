@echo off
title VRC File Cleaner
cls
net session >nul 2>&1
if %errorlevel% NEQ 0 (
    echo This script needs to be granted administrative permissions^!
    pause >nul
    exit
)
rmdir /s /q "%LocalAppData%\Temp\VRChat" && echo Deleting Temporary Data... || echo An error occurred and the directory could not be deleted!
rmdir /s /q "%UserProfile%\AppData\LocalLow\VRChat" && echo Deleting Local User Data... || echo An error occurred and the directory could not be deleted!
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\VRChat" /f && echo Deleting Registry Keys... || echo An error occurred and the Registry Keys could not be deleted!
echo.
echo Done!
pause
exit
