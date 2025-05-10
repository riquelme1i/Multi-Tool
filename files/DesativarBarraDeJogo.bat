@echo off
color 5
title Desativar Game Bar e Game DVR - Made By Crazy
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Este script precisa ser executado como administrador.
    echo.
    echo Reiniciando o script com privilégios de administrador...
    echo.
    powershell -Command "Start-Process cmd -ArgumentList '/c %~f0' -Verb runAs"
exit
)
echo Desativando Game Bar e Game DVR...
REG ADD "HKCU\Software\Microsoft\GameBar" /v "Enabled" /t REG_DWORD /d 0 /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "GameDVR_Enabled" /t REG_DWORD /d 0 /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d 0 /f
REG ADD "HKCU\Software\Policies\Microsoft\Windows\GameDVR" /v "AllowGameBar" /t REG_DWORD /d 0 /f
REG ADD "HKCU\Software\Policies\Microsoft\Windows\GameDVR" /v "AllowGameDVR" /t REG_DWORD /d 0 /f
REG ADD "HKCU\Software\Microsoft\GameBar" /v "UseNexusForGameBarEnabled" /t REG_DWORD /d 0 /f

echo Game Bar e Game DVR desabilitados com sucesso.
exit