title Otimização Completa no Pc!
@echo. Made By - Crazy!

color 5

Del /S /F /Q %temp%
Del /S /F /Q %Windir%\Temp
Del /S /F /Q C:\WINDOWS\Prefetch
echo Limpando a pasta TEMP...
Del /S /F /Q %temp% >nul 2>&1
rd /s /q %temp% >nul 2>&1
takeown /f %Windir%\Temp /r /d y
icacls %Windir%\Temp /grant Administrators:F /t
Del /s /f /q %Windir%\Temp\*.* >nul 2>&1
rd /s /q %Windir%\Temp >nul 2>&1
takeown /f C:\Windows\Prefetch /r /d y
icacls C:\Windows\Prefetch /grant Administrators:F /t
Del /s /f /q C:\Windows\Prefetch\*.* >nul 2>&1
rd /s /q C:\Windows\Prefetch >nul 2>&1
Del /S /F /Q C:\Windows\Logs
Del /S /F /Q C:\Windows\System32\winevt\Logs
Del /S /F /Q C:\Users\CRAZY\AppData\Local\Temp
Del /S /F /Q C:\Windows\System32\DriverStore\FileRepository