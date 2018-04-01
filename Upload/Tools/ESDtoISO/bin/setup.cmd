@echo off
setlocal enabledelayedexpansion
SET DD=sources
SET IN=NI
for %%I in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
set IP=%%I:\!DD!
dir /d !IP!\install.wim&&set IN=!IP!\install.wim
dir /d !IP!\install.esd&&set IN=!IP!\install.esd
IF !IN! NEQ NI goto :INST
)
IF %IN% EQU NI (
echo ERROR - COULD NOT FIND INSTALL.WIM(ESD,SWM) in %DD% folder!
pause
pause
goto:RBT
)
:INST
echo %IP%
if exist X:\sources\unattend.xml SET UN=/unattend:X:\sources\unattend.xml
if exist %IP%\unattend.xml SET UN=/unattend:%IP%\unattend.xml
if exist %IP%\_unattend.xml SET UN=/unattend:%IP%\_unattend.xml
if exist %IP%\OEM\nul SET OEM=/m:%IP%\OEM
if exist %IP%\$OEM$\nul SET OEM=/m:%IP%\$OEM$
set ST=X:\Setup.exe
if exist %IP%\Setup.exe set ST=%IP%\Setup.exe
if not exist %ST% goto :BAD
cd /d %IP%
%ST% /installfrom:%IN% %OEM% %UN%
goto :RBT
:BAD
dir X:\ /b
echo Cannot find %ST% !
echo.
:RBT
exit
@echo Press a key to reboot now...
pause
wpeutil reboot
pause

:QUIT
exit