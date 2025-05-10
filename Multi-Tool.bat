@echo off
title Multi-Tool - Made By Crazy!
@echo. Pack De Otimização Para O Pc!
@echo 
chcp 65001 >nul
color 5
:start of loop
cls

echo Data: %date%
echo Hora: %time%
echo.
echo.
echo             ███╗   ███╗██╗   ██╗██╗  ████████╗██╗       ██████╗██████╗  █████╗ ███████╗██╗   ██╗
echo             ████╗ ████║██║   ██║██║  ╚══██╔══╝██║      ██╔════╝██╔══██╗██╔══██╗╚══███╔╝╚██╗ ██╔╝
echo             ██╔████╔██║██║   ██║██║     ██║   ██║█████╗██║     ██████╔╝███████║  ███╔╝  ╚████╔╝ 
echo             ██║╚██╔╝██║██║   ██║██║     ██║   ██║╚════╝██║     ██╔══██╗██╔══██║ ███╔╝    ╚██╔╝  
echo             ██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║      ╚██████╗██║  ██║██║  ██║███████╗   ██║   
echo             ╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝       ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝   ╚═╝
echo.
echo.

cd files
echo 1) Multi Roblox!
echo 2) Limpar Arquivos Temporarios!
echo 3) Limpeza Mais Completa!
echo 4) Diminuir Processos Do Windows!
echo 5) Desativar Xbox Game Bar!
echo 6) Desativar Modo De Jogo!
echo 7) Aplicativo Para Otimização De Rede!
echo 8) Outro aplicativo para Otimização de rede e mais!
echo 9) Plano De Energia Melhorada!
echo 10) Limpeza Do Windows!
echo 11) Msconfig
echo 12) Ferramenta Do Windows Para Remoção De Vírus!

set /p input=Insira A Opção:%BS%
if /I %input% EQU 1 start Roblox\Roblox.exe
if /I %input% EQU 2 start Clean.bat
if /I %input% EQU 3 start MultiClean.bat
if /I %input% EQU 4 start Diminuir.reg
if /I %input% EQU 5 start DesativarBarraDeJogo.bat
if /I %input% EQU 6 start DesativarModoDeJogo.bat
if /I %input% EQU 7 start DnsJumper.exe
if /I %input% EQU 8 start TCPOptimizer.exe
if /I %input% EQU 9 start Energia.bat
if /I %input% EQU 10 start cleanmgr
if /I %input% EQU 11 start msconfig
if /I %input% EQU 12 start mrt
if /I %input% EQU 12 start 
if /I %input% EQU 12 start 
if /I %input% EQU 12 start 

goto :start of loop
pause