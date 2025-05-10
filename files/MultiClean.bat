@echo off
title MultiClean - Made By Crazy
color 5
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
@echo Iniciando a Limpeza Avançada...
@echo.

color 5

:: Registrar a data e hora de início
echo Limpeza iniciada em: %DATE% %TIME% > cleanup_log.txt

:: Limpeza de arquivos de log do Windows
echo Limpando arquivos de log do Windows...
Del /S /F /Q C:\Windows\Logs
Del /S /F /Q C:\Windows\System32\winevt\Logs
Del /S /F /Q C:\Users\CRAZY\AppData\Local\Temp
echo Limpando a Lixeira...
echo Y | Del /F /Q %systemdrive%\$Recycle.bin\
echo Limpando o DriverStore...
Del /S /F /Q C:\Windows\System32\DriverStore\FileRepository
echo.
echo Limpeza Concluída!
@echo.
exit