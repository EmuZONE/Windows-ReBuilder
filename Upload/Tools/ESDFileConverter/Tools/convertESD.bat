@echo off
SET DISM=%1
SET ESD=%2
SET WIM=%3

if ""%1""=="""" goto error
if ""%2""=="""" goto errnoesd
if ""%3""=="""" goto errnowim

echo,
echo Starte %DISM%
echo Bitte warten...

%DISM% /Export-Image /SourceImageFile:%ESD% /SourceIndex:1 /DestinationImageFile:%WIM% /Compress:recovery

if exists %WIM% goto success
goto errnowimnotfound

:errnowimnotfound
echo.
echo Fehler: WIM-Datei wurde nicht erstellt.
echo.
pause
goto end

:error
echo.
echo Fehler: DISM.exe nicht gefunden/angegeben.
echo.
pause
goto end

:errnoesd
echo.
echo Fehler: Pfad zur ESD-Datei fehlt.
echo.
pause
goto end


:errnowim

echo.
echo Fehler: Pfad zur WIM-Datei fehlt.
echo.
pause
goto end

:success
echo.
echo Erfolg: WIM-Datei erstellt.
pause
:end
