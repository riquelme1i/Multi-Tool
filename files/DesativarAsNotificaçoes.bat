@echo off
color 5
title Desativar Notificações - Made By Crazy

:: Verificar se o script está sendo executado como administrador
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Este script precisa ser executado como administrador.
    echo.
    echo Reiniciando o script com privilégios de administrador...
    echo.
    powershell -Command "Start-Process cmd -ArgumentList '/c %~f0' -Verb runAs"
exit
)

echo Desativando as notificações...

:: Desabilitar notificações de aplicativos
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_TOASTS_ENABLED" /t REG_DWORD /d 0 /f

REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\PushNotifications" /v "ToastEnabled" /t REG_DWORD /d 0 /f

REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_BANNER_ENABLED" /t REG_DWORD /d 0 /f

echo Notificações desativadas com sucesso.
exit