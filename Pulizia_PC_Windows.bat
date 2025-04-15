@echo off
title PULIZIA PC WINDOWS - By MySenza1
color 1F

echo ================================
echo  PULIZIA AVANZATA IN CORSO...
echo ================================

cleanmgr /sagerun:1
del /s /f /q %temp%\*.*
del /s /f /q C:\Windows\Temp\*.*
del /s /f /q C:\Windows\Prefetch\*.*

sfc /scannow
DISM /Online /Cleanup-Image /RestoreHealth
chkdsk C: /f /r
ipconfig /flushdns

echo ================================
echo  COMPLETATO! RIAVVIA IL PC.
echo ================================
pause
