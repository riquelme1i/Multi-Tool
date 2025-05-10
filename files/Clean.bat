@echo off
color 5
title Clean - Made By Crazy!
@echo Made Crazy
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Este script precisa ser executado como administrador.
    echo.
    echo Reiniciando o script com privilégios de administrador...
    echo.
    powershell -Command "Start-Process cmd -ArgumentList '/c %~f0' -Verb runAs"
exit
)
@echo.
@echo Delete All Temporary Files?
@echo.

color 5

Del /S /F /Q %temp%
Del /S /F /Q %Windir%\Temp
Del /S /F /Q C:\WINDOWS\Prefetch
echo Limpando a pasta TEMP...
Del /S /F /Q %temp% >nul 2>&1
rd /s /q %temp% >nul 2>&1

echo Limpando a pasta TEMP do Windows...
takeown /f %Windir%\Temp /r /d y
icacls %Windir%\Temp /grant Administrators:F /t
Del /s /f /q %Windir%\Temp\*.* >nul 2>&1
rd /s /q %Windir%\Temp >nul 2>&1

echo Limpando o Prefetch...
takeown /f C:\Windows\Prefetch /r /d y
icacls C:\Windows\Prefetch /grant Administrators:F /t
Del /s /f /q C:\Windows\Prefetch\*.* >nul 2>&1
rd /s /q C:\Windows\Prefetch >nul 2>&1
@echo.
@echo All Temporary Files Sucessfully Deleted!
@echo.
exit