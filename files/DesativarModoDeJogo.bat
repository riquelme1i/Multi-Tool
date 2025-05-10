@echo off
color 5
title Desativar Modo De Jogo - Made By Crazy
@echo Made Crazy

REG ADD "HKCU\Software\Microsoft\GameBar" /v "GameModeEnabled" /t REG_DWORD /d 0 /f
REG ADD "HKCU\Software\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d 0 /f
REG ADD "HKCU\Software\Policies\Microsoft\Windows\Gaming" /v "GameModeEnabled" /t REG_DWORD /d 0 /f
echo Modo de Jogo desativado com sucesso.
exit
