@echo off
echo ================================================
echo       PULIZIA AVANZATA DEL SISTEMA WINDOWS      
echo ================================================
echo.
echo Pulizia dei file temporanei in corso...
echo.

:: Cancella i file temporanei dell'utente
del /s /q "%TEMP%\*.*"
for /d %%x in ("%TEMP%\*") do rd /s /q "%%x"

:: Cancella i file temporanei di sistema
del /s /q "C:\Windows\Temp\*.*"
for /d %%x in ("C:\Windows\Temp\*") do rd /s /q "%%x"

echo.
echo Pulizia del DNS Cache...
ipconfig /flushdns

echo.
echo Controllo integrità file di sistema (sfc)...
sfc /scannow

echo.
echo Pulizia completata. Riavvia il PC per completare l'operazione.
pause
