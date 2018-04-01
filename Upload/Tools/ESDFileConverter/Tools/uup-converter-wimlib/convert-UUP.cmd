@echo off

rem script:	   abbodi1406, @rgadguard
rem wimlib:	   synchronicity
rem Thanks to: @Ratiborus58, @NecrosoftCore, @DiamondMonday, @WzorNET

SET RefESD=0

set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )

title UUP -^> ISO
if not exist "%~dp0bin\wimlib-imagex.exe" goto :eof
IF /I "%PROCESSOR_ARCHITECTURE%" EQU "AMD64" (SET "wimlib=%~dp0bin\bin64\wimlib-imagex.exe") ELSE (SET "wimlib=%~dp0bin\wimlib-imagex.exe")
cd /d "%~dp0"
setlocal EnableExtensions
setlocal EnableDelayedExpansion
color 1f
SET UUP=
SET ERRORTEMP=
SET PREPARED=0
SET VOL=0
SET EXPRESS=0
SET AIO=0
SET uups_esd_num=0
IF %RefESD%==1 (SET level=maximum) else (SET level=fast)
IF EXIST bin\temp\ rmdir /s /q bin\temp\
IF EXIST temp\ rmdir /s /q temp\
mkdir bin\temp
mkdir temp

if exist "%CD%\UUPs\*.esd" set "UUP=%CD%\UUPs"&goto :check

:prompt
cls
set UUP=
echo.
echo ============================================================
echo Enter / Paste the path to UUP files directory
echo ============================================================
echo.
set /p UUP=
if [%UUP%]==[] goto :QUIT
goto :check

:check
dir /b /ad "%UUP%\*Package*" 1>nul 2>nul && set EXPRESS=1
del temp\uups_esd.txt 1>nul 2>nul
for /d %%A in (Starter,Core,CoreCountrySpecific,CoreSingleLanguage,Professional,ProfessionalEducation,Education,Enterprise,EnterpriseG,Cloud,StarterN,CoreN,ProfessionalN,ProfessionalEducationN,EducationN,EnterpriseN,EnterpriseGN,CloudN,PPIPro,ProfessionalCountrySpecific,ProfessionalSingleLanguage,ProfessionalWorkstation,ProfessionalWorkstationN) do (
dir /b %UUP%\%%A_*.esd>>temp\uups_esd.txt 2>nul
)
for /f "tokens=3 delims=: " %%i in ('find /v /n /c "" temp\uups_esd.txt') do set uups_esd_num=%%i
if %uups_esd_num% equ 0 (
echo.
echo ============================================================
echo ERROR: UUP Edition file is not found in specified directory
echo ============================================================
echo.
echo Press any key to exit.
pause >nul
goto :QUIT
)
if %uups_esd_num% gtr 1 (
for /L %%i in (1, 1, %uups_esd_num%) do call :uups_esd %%i
goto :MULTIMENU
)
call :uups_esd 1
set "MetadataESD=%UUP%\%uups_esd1%"&set "arch=%arch1%"&set "editionid=%edition1%"&set "langid=%langid1%"
goto :MAINMENU

:MULTIMENU
cls
set userinp=
echo ============================================================
echo       UUP directory contains multiple editions files:
echo ============================================================
echo.
for /L %%i in (1, 1, %uups_esd_num%) do (
echo %%i. !name%%i!
)
echo.
echo ============================================================
echo Enter edition number to create, or zero '0' to create AIO
echo ============================================================
set /p userinp= ^> Enter your option and press "Enter": 
if [%userinp%]==[] goto :QUIT
set userinp=%userinp:~0,2%
if %userinp%==0 goto :AIOMENU
for /L %%i in (1, 1, %uups_esd_num%) do (
if %userinp%==%%i set "MetadataESD=%UUP%\!uups_esd%%i!"&set "arch=!arch%%i!"&set "editionid=!edition%%i!"&set "langid=!langid%%i!"&goto :MAINMENU
)
goto :MULTIMENU

:MAINMENU
cls
set userinp=
echo ============================================================
echo.
echo.       1 - Create ISO with Standard install.wim
echo.       2 - Create Standard install.wim
echo.       3 - UUP Edition info
echo.
echo ============================================================
set /p userinp= ^> Enter your option and press "Enter": 
if [%userinp%]==[] goto :QUIT
set userinp=%userinp:~0,1%
if %userinp%==0 goto :QUIT
if %userinp%==3 goto :INFO
if %userinp%==2 goto :Single
if %userinp%==1 goto :ISO
GOTO :MAINMENU

:AIOMENU
SET AIO=1
cls
set userinp=
echo ============================================================
echo.
echo.       1 - Create AIO ISO with install.wim
echo.       2 - Create AIO install.wim
echo.       3 - UUP Editions info
echo.
echo ============================================================
set /p userinp= ^> Enter your option and press "Enter": 
if [%userinp%]==[] goto :QUIT
set userinp=%userinp:~0,1%
if %userinp%==0 goto :QUIT
if %userinp%==3 goto :INFOAIO
if %userinp%==2 goto :Single
if %userinp%==1 goto :ISO
goto :AIOMENU

:ISO
cls
IF %PREPARED%==0 CALL :PREPARE
CALL :uups_ref
echo.
echo ============================================================
echo Creating Setup Media Layout . . .
echo ============================================================
IF EXIST ISOFOLDER\ rmdir /s /q ISOFOLDER\
mkdir ISOFOLDER
echo.
"%wimlib%" apply "%MetadataESD%" 1 ISOFOLDER\ >nul 2>&1
SET ERRORTEMP=%ERRORLEVEL%
IF %ERRORTEMP% NEQ 0 (echo.&echo Errors were reported during apply.&echo.&echo Press any key to exit.&pause >nul&GOTO :QUIT)
del ISOFOLDER\MediaMeta.xml >nul 2>&1
IF %AIO%==1 del ISOFOLDER\sources\ei.cfg >nul 2>&1
echo.
echo ============================================================
echo Creating boot.wim . . .
echo ============================================================
echo.
"%wimlib%" export "%MetadataESD%" 2 ISOFOLDER\sources\boot.wim --compress=LZX:15 --boot
SET ERRORTEMP=%ERRORLEVEL%
IF %ERRORTEMP% NEQ 0 (echo.&echo Errors were reported during export.&echo.&echo Press any key to exit.&pause >nul&GOTO :QUIT)
copy /y ISOFOLDER\sources\boot.wim temp\winre.wim >nul
"%wimlib%" info ISOFOLDER\sources\boot.wim 1 --image-property FLAGS=9 1>nul 2>nul
for /f "tokens=6 delims=[]. " %%G in ('ver') do set winbuild=%%G
if %winbuild% GEQ 10240 (call :BootWIM) else (copy /y .\bin\reagent.xml .\ISOFOLDER\sources >nul 2>&1)
echo.
echo ============================================================
echo Creating install.wim . . .
echo ============================================================
echo.
for /f "tokens=5,6,7,8,9,10 delims=: " %%G in ('bin\wimlib-imagex info "%MetadataESD%" 3 ^| find /i "Last Modification Time"') do (set mmm=%%G&set "isotime=%%H/%%L,%%I:%%J:%%K")
call :setdate %mmm%
if exist "temp\*.ESD" (
  "%wimlib%" export "%MetadataESD%" 3 ISOFOLDER\sources\install.wim --ref="%UUP%\*.esd" --ref="temp\*.esd" --compress=maximum
) else (
  "%wimlib%" export "%MetadataESD%" 3 ISOFOLDER\sources\install.wim --ref="%UUP%\*.esd" --compress=maximum
)
SET ERRORTEMP=%ERRORLEVEL%
IF %ERRORTEMP% NEQ 0 (echo.&echo Errors were reported during export.&echo.&echo Press any key to exit.&pause >nul&GOTO :QUIT)
IF %AIO%==1 for /L %%i in (2, 1, %uups_esd_num%) do (
if exist "temp\*.ESD" (
  "%wimlib%" export "%UUP%\!uups_esd%%i!" 3 ISOFOLDER\sources\install.wim --ref="%UUP%\*.esd" --ref="temp\*.esd" --compress=maximum
) else (
  "%wimlib%" export "%UUP%\!uups_esd%%i!" 3 ISOFOLDER\sources\install.wim --ref="%UUP%\*.esd" --compress=maximum
)
)
SET ERRORTEMP=%ERRORLEVEL%
IF %ERRORTEMP% NEQ 0 (echo.&echo Errors were reported during export.&echo.&echo Press any key to exit.&pause >nul&GOTO :QUIT)
echo.
echo ============================================================
echo Adding winre.wim to install.wim . . .
echo ============================================================
echo.
"%wimlib%" update ISOFOLDER\sources\install.wim 1 --command="add 'temp\winre.wim' '\windows\system32\recovery\winre.wim'" 1>nul 2>nul
IF %AIO%==1 for /L %%i in (2, 1, %uups_esd_num%) do (
"%wimlib%" update ISOFOLDER\sources\install.wim %%i --command="add 'temp\winre.wim' '\windows\system32\recovery\winre.wim'" 1>nul 2>nul
)
echo.
echo ============================================================
echo Creating ISO . . .
echo ============================================================
bin\cdimage -bootdata:2#p0,e,b"ISOFOLDER\boot\etfsboot.com"#pEF,e,b"ISOFOLDER\efi\Microsoft\boot\efisys.bin" -o -m -u2 -udfver102 -t%isotime% -g -l%DVDLABEL% ISOFOLDER %DVDISO%
SET ERRORTEMP=%ERRORLEVEL%
IF %ERRORTEMP% NEQ 0 (
echo.
echo Errors were reported during ISO creation.
echo.
echo Press any key to exit.
IF %RefESD%==1 call :uups_backup
rmdir /s /q bin\temp\ 1>nul 2>nul
rmdir /s /q temp\ 1>nul 2>nul
pause >nul
exit
)
IF %RefESD%==1 call :uups_backup
echo.
echo Press any key to exit.
pause >nul
GOTO :QUIT

:Single
cls
IF EXIST "%CD%\install.wim" (
echo.
echo ============================================================
echo An install.wim file is already present in the current folder
echo ============================================================
echo.
echo Press any key to exit.
pause >nul
GOTO :QUIT
)
CALL :uups_ref
echo.
echo ============================================================
echo Creating install.wim . . .
echo ============================================================
echo.
IF %AIO%==1 set "MetadataESD=%UUP%\%uups_esd1%"
if exist "temp\*.ESD" (
  "%wimlib%" export "%MetadataESD%" 3 install.wim --ref="%UUP%\*.esd" --ref="temp\*.esd" --compress=maximum
) else (
  "%wimlib%" export "%MetadataESD%" 3 install.wim --ref="%UUP%\*.esd" --compress=maximum
)
SET ERRORTEMP=%ERRORLEVEL%
IF %ERRORTEMP% NEQ 0 (echo.&echo Errors were reported during export.&echo.&echo Press any key to exit.&pause >nul&GOTO :QUIT)
IF %AIO%==1 for /L %%i in (2, 1, %uups_esd_num%) do (
if exist "temp\*.ESD" (
  "%wimlib%" export "%UUP%\!uups_esd%%i!" 3 install.wim --ref="%UUP%\*.esd" --ref="temp\*.esd" --compress=maximum
) else (
  "%wimlib%" export "%UUP%\!uups_esd%%i!" 3 install.wim --ref="%UUP%\*.esd" --compress=maximum
)
)
SET ERRORTEMP=%ERRORLEVEL%
IF %ERRORTEMP% NEQ 0 (echo.&echo Errors were reported during export.&echo.&echo Press any key to exit.&pause >nul&GOTO :QUIT)
echo.
echo ============================================================
echo Creating winre.wim . . .
echo ============================================================
echo.
"%wimlib%" export "%MetadataESD%" 2 temp\winre.wim --compress=maximum
echo.
echo ============================================================
echo Adding winre.wim to install.wim . . .
echo ============================================================
echo.
"%wimlib%" update install.wim 1 --command="add 'temp\winre.wim' '\windows\system32\recovery\winre.wim'" 1>nul 2>nul
IF %AIO%==1 for /L %%i in (2, 1, %uups_esd_num%) do (
"%wimlib%" update install.wim %%i --command="add 'temp\winre.wim' '\windows\system32\recovery\winre.wim'" 1>nul 2>nul
)
IF %RefESD%==1 call :uups_backup
echo.
echo Done.
echo.
echo Press any key to exit.
pause >nul
GOTO :QUIT

:INFO
IF %PREPARED%==0 CALL :PREPARE
cls
echo ============================================================
echo                     UUP Contents Info
echo ============================================================
echo.
echo        OS: %_os%
echo      Arch: %arch%
echo  Language: %langid%
echo   Version: %ver1%.%ver2%.%build%.%svcbuild%
echo    Branch: %branch%
echo.
echo Press any key to continue . . .
pause >nul
GOTO :MAINMENU

:INFOAIO
IF %PREPARED%==0 CALL :PREPARE
cls
echo ============================================================
echo                     UUP Contents Info
echo ============================================================
echo.
echo   Version: %ver1%.%ver2%.%build%.%svcbuild%
echo    Branch: %branch%
echo  Editions:
echo.
for /L %%i in (1, 1, %uups_esd_num%) do (
echo %%i. !name%%i!
)
echo.
echo Press any key to continue . . .
pause >nul
goto :AIOMENU

:PREPARE
cls
echo ============================================================
echo Checking UUP Info...
echo ============================================================
SET PREPARED=1
IF %AIO%==1 set "MetadataESD=%UUP%\%uups_esd1%"&set "arch=%arch1%"&set "langid=%langid1%"
for /f "tokens=1* delims=: " %%i in ('bin\wimlib-imagex info "%MetadataESD%" 3 ^| findstr /b "Name"') do set "_os=%%j"
for /f "tokens=4 delims=: " %%i in ('bin\wimlib-imagex info "%MetadataESD%" 3 ^| find /i "Service Pack Build"') do set svcbuild=%%i
for /f "tokens=2 delims=: " %%i in ('bin\wimlib-imagex info "%MetadataESD%" 3 ^| findstr /b "Build"') do set build=%%i
for /f "tokens=3 delims=: " %%i in ('bin\wimlib-imagex info "%MetadataESD%" 3 ^| find /i "Major"') do set ver1=%%i
for /f "tokens=3 delims=: " %%i in ('bin\wimlib-imagex info "%MetadataESD%" 3 ^| find /i "Minor"') do set ver2=%%i
"%wimlib%" extract "%MetadataESD%" 1 sources\ei.cfg --dest-dir=.\bin\temp --no-acls >nul 2>&1
type .\bin\temp\ei.cfg 2>nul | find /i "Volume" 1>nul && set VOL=1
"%wimlib%" extract "%MetadataESD%" 1 sources\SetupPlatform.dll --dest-dir=.\bin\temp --no-acls >nul 2>&1
bin\7z.exe l .\bin\temp\SetupPlatform.dll >.\bin\temp\version.txt 2>&1
for /f "tokens=4,5 delims=. " %%i in ('"findstr /B "FileVersion" .\bin\temp\version.txt" 2^>nul') do set version=%%i.%%j
for /f "tokens=7 delims=.) " %%i in ('"findstr /B "FileVersion" .\bin\temp\version.txt" 2^>nul') do set datetime=%%i
for /f "tokens=6 delims=.( " %%i in ('"findstr /B "FileVersion" .\bin\temp\version.txt" 2^>nul') do set branch=%%i
if /i %arch%==x86 (set _ss=x86) else (set _ss=amd64)
"%wimlib%" extract "%MetadataESD%" 3 Windows\WinSxS\Manifests\%_ss%_microsoft-windows-coreos-revision* --dest-dir=.\bin\temp --no-acls >nul 2>&1
for /f "tokens=6,7 delims=_." %%i in ('dir /b .\bin\temp\*.manifest') do set revision=%%i.%%j
if not %version%==%revision% (
set version=%revision%
for /f "tokens=5,6,7,8,9,10 delims=: " %%G in ('bin\wimlib-imagex.exe info "%MetadataESD%" 3 ^| find /i "Last Modification Time"') do (set mmm=%%G&set yyy=%%L&set ddd=%%H-%%I%%J)
call :setmmm !mmm!
)
set _label2=
if /i %branch%==WinBuild (
"%wimlib%" extract "%MetadataESD%" 3 \Windows\System32\config\SOFTWARE --dest-dir=.\bin\temp --no-acls >nul
reg load HKLM\TEMP .\bin\temp\SOFTWARE >nul 2>&1
for /f "skip=2 tokens=3,4,5,6,7 delims=. " %%i in ('"reg query "HKLM\TEMP\Microsoft\Windows NT\CurrentVersion" /v BuildLabEx" 2^>nul') do if not errorlevel 1 set _label2=%%i.%%j.%%m.%%l_CLIENT
for /f "skip=2 tokens=3 delims= " %%i in ('reg query "HKLM\TEMP\Microsoft\Windows NT\CurrentVersion" /v BuildBranch') do if not errorlevel 1 set branch=%%i
reg unload HKLM\TEMP >nul 2>&1
)
if defined _label2 (set _label=%_label2%) else (set _label=%version%.%datetime%.%branch%_CLIENT)
rmdir /s /q .\bin\temp

for %%b in (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) do (
set _label=!_label:%%b=%%b!
set branch=!branch:%%b=%%b!
set langid=!langid:%%b=%%b!
set editionid=!editionid:%%b=%%b!
)

if /i %arch%==x86 set archl=X86
if /i %arch%==x64 set archl=X64
if /i %arch%==x86_64 set arch=x64&set archl=X64

IF %AIO%==1 set DVDLABEL=CCSA_%archl%FRE_%langid%_DV5&set DVDISO=%_label%COMBINED_UUP_%archl%FRE_%langid%.ISO&exit /b

set DVDLABEL=CCSA_%archl%FRE_%langid%_DV5&set DVDISO=%_label%%editionid%_RET_%archl%FRE_%langid%.ISO
if /i %editionid%==CoreSingleLanguage set DVDLABEL=CSLA_%archl%FREO_%langid%_DV5&set DVDISO=%_label%SINGLELANGUAGE_OEM_%archl%FRE_%langid%.ISO
if /i %editionid%==CoreCountrySpecific set DVDLABEL=CCHA_%archl%FREO_%langid%_DV5&set DVDISO=%_label%CHINA_OEM_%archl%FRE_%langid%.ISO
if /i %editionid%==Core set DVDLABEL=CCRA_%archl%FRE_%langid%_DV5&set DVDISO=%_label%CORE_OEMRET_%archl%FRE_%langid%.ISO
if /i %editionid%==CoreN set DVDLABEL=CCRNA_%archl%FRE_%langid%_DV5&set DVDISO=%_label%COREN_OEMRET_%archl%FRE_%langid%.ISO
if /i %editionid%==Cloud set DVDLABEL=CCLA_%archl%FRE_%langid%_DV5&set DVDISO=%_label%CLOUD_OEMRET_%archl%FRE_%langid%.ISO
if /i %editionid%==CloudN set DVDLABEL=CCLNA_%archl%FRE_%langid%_DV5&set DVDISO=%_label%CLOUDN_OEMRET_%archl%FRE_%langid%.ISO
if /i %editionid%==Professional (IF %VOL%==1 (set DVDLABEL=CPRA_%archl%FREV_%langid%_DV5&set DVDISO=%_label%PROFESSIONALVL_VOL_%archl%FRE_%langid%.ISO) else (set DVDLABEL=CPRA_%archl%FRE_%langid%_DV5&set DVDISO=%_label%PRO_OEMRET_%archl%FRE_%langid%.ISO))
if /i %editionid%==ProfessionalN (IF %VOL%==1 (set DVDLABEL=CPRNA_%archl%FREV_%langid%_DV5&set DVDISO=%_label%PROFESSIONALNVL_VOL_%archl%FRE_%langid%.ISO) else (set DVDLABEL=CPRNA_%archl%FRE_%langid%_DV5&set DVDISO=%_label%PRON_OEMRET_%archl%FRE_%langid%.ISO))
if /i %editionid%==Education (IF %VOL%==1 (set DVDLABEL=CEDA_%archl%FREV_%langid%_DV5&set DVDISO=%_label%EDUCATION_VOL_%archl%FRE_%langid%.ISO) else (set DVDLABEL=CEDA_%archl%FRE_%langid%_DV5&set DVDISO=%_label%EDUCATION_RET_%archl%FRE_%langid%.ISO))
if /i %editionid%==EducationN (IF %VOL%==1 (set DVDLABEL=CEDNA_%archl%FREV_%langid%_DV5&set DVDISO=%_label%EDUCATIONN_VOL_%archl%FRE_%langid%.ISO) else (set DVDLABEL=CEDNA_%archl%FRE_%langid%_DV5&set DVDISO=%_label%EDUCATIONN_RET_%archl%FRE_%langid%.ISO))
if /i %editionid%==Enterprise set DVDLABEL=CENA_%archl%FREV_%langid%_DV5&set DVDISO=%_label%ENTERPRISE_VOL_%archl%FRE_%langid%.ISO
if /i %editionid%==EnterpriseN set DVDLABEL=CENNA_%archl%FREV_%langid%_DV5&set DVDISO=%_label%ENTERPRISEN_VOL_%archl%FRE_%langid%.ISO
if /i %editionid%==EnterpriseG set DVDLABEL=CEGA_%archl%FREV_%langid%_DV5&set DVDISO=%_label%ENTERPRISEG_VOL_%archl%FRE_%langid%.ISO
if /i %editionid%==EnterpriseGN set DVDLABEL=CEGNA_%archl%FREV_%langid%_DV5&set DVDISO=%_label%ENTERPRISEGN_VOL_%archl%FRE_%langid%.ISO
if /i %editionid%==PPIPro set DVDLABEL=CPPIA_%archl%FREO_%langid%_DV5&set DVDISO=%_label%PPIPRO_OEM_%archl%FRE_%langid%.ISO
exit /b

:BootWIM
"%wimlib%" info ISOFOLDER\sources\boot.wim 1 "Microsoft Windows PE (%arch%)" "Microsoft Windows PE (%arch%)" 1>nul 2>nul
"%wimlib%" update ISOFOLDER\sources\boot.wim 1 --command="delete '\Windows\system32\winpeshl.ini'" 1>nul 2>nul
md .\bin\temp\mount
dism /Quiet /Mount-Wim /Wimfile:ISOFOLDER\sources\boot.wim /Index:1 /MountDir:"%~dp0bin\temp\mount"
dism /Quiet /Image:"%~dp0bin\temp\mount" /Set-TargetPath:X:\$windows.~bt\
dism /Quiet /Unmount-Wim /MountDir:"%~dp0bin\temp\mount" /Commit
rmdir /s /q .\bin\temp\mount
"%wimlib%" extract ISOFOLDER\sources\install.wim 1 Windows\system32\xmllite.dll --dest-dir=ISOFOLDER\sources --no-acls >nul 2>&1
echo delete '^\Windows^\system32^\winpeshl.ini'>bin\boot-wim.txt
echo add 'ISOFOLDER^\setup.exe' '^\setup.exe'>>bin\boot-wim.txt
echo add 'ISOFOLDER^\sources^\inf^\setup.cfg' '^\sources^\inf^\setup.cfg'>>bin\boot-wim.txt
echo add 'ISOFOLDER^\sources^\background_cli.bmp' '^\sources^\background.bmp'>>bin\boot-wim.txt
for %%A in (
alert.gif
api-ms-win-core-apiquery-l1-1-0.dll
api-ms-win-downlevel-advapi32-l1-1-0.dll
api-ms-win-downlevel-advapi32-l1-1-1.dll
api-ms-win-downlevel-advapi32-l2-1-0.dll
api-ms-win-downlevel-advapi32-l2-1-1.dll
api-ms-win-downlevel-advapi32-l3-1-0.dll
api-ms-win-downlevel-advapi32-l4-1-0.dll
api-ms-win-downlevel-kernel32-l1-1-0.dll
api-ms-win-downlevel-kernel32-l2-1-0.dll
api-ms-win-downlevel-ole32-l1-1-0.dll
api-ms-win-downlevel-ole32-l1-1-1.dll
api-ms-win-downlevel-shlwapi-l1-1-0.dll
api-ms-win-downlevel-shlwapi-l1-1-1.dll
api-ms-win-downlevel-user32-l1-1-0.dll
api-ms-win-downlevel-user32-l1-1-1.dll
api-ms-win-downlevel-version-l1-1-0.dll
appcompat.xsl
appcompat_bidi.xsl
appcompat_detailed_bidi_txt.xsl
appcompat_detailed_txt.xsl
appraiser.dll
ARUNIMG.dll
arunres.dll
autorun.dll
cmisetup.dll
compatctrl.dll
compatprovider.dll
cryptosetup.dll
diager.dll
diagnostic.dll
diagtrack.dll
diagtrackrunner.exe
dism.exe
dismapi.dll
dismcore.dll
dismcoreps.dll
dismprov.dll
ext-ms-win-advapi32-encryptedfile-l1-1-0.dll
folderprovider.dll
hwcompat.dll
hwcompat.txt
hwexclude.txt
idwbinfo.txt
imagingprovider.dll
input.dll
lang.ini
locale.nls
logprovider.dll
MediaSetupUIMgr.dll
ndiscompl.dll
nlsbres.dll
ntdsupg.dll
offline.xml
pnpibs.dll
reagent.admx
reagent.dll
reagent.xml
rollback.exe
schema.dat
segoeui.ttf
setup.exe
setupcompat.dll
SetupCore.dll
SetupHost.exe
SetupMgr.dll
SetupPlatform.cfg
SetupPlatform.dll
SetupPlatform.exe
SetupPrep.exe
SmiEngine.dll
spflvrnt.dll
spprgrss.dll
spwizeng.dll
spwizimg.dll
spwizres.dll
sqmapi.dll
testplugin.dll
unattend.dll
unbcl.dll
upgloader.dll
upgrade_frmwrk.xml
uxlib.dll
uxlibres.dll
vhdprovider.dll
w32uiimg.dll
w32uires.dll
warning.gif
wdsclient.dll
wdsclientapi.dll
wdscore.dll
wdscsl.dll
wdsimage.dll
wdstptc.dll
wdsutil.dll
wimprovider.dll
win32ui.dll
WinDlp.dll
winsetup.dll
wpx.dll
xmllite.dll
) do (
if exist "ISOFOLDER\sources\%%A" echo add 'ISOFOLDER^\sources^\%%A' '^\sources^\%%A'>>bin\boot-wim.txt
)
for %%A in (
appraiser.dll.mui
arunres.dll.mui
cmisetup.dll.mui
compatctrl.dll.mui
compatprovider.dll.mui
dism.exe.mui
dismapi.dll.mui
dismcore.dll.mui
dismprov.dll.mui
folderprovider.dll.mui
imagingprovider.dll.mui
input.dll.mui
logprovider.dll.mui
MediaSetupUIMgr.dll.mui
nlsbres.dll.mui
pnpibs.dll.mui
reagent.adml
reagent.dll.mui
rollback.exe.mui
setup.exe.mui
setup_help_upgrade_or_custom.rtf
setupcompat.dll.mui
SetupCore.dll.mui
setupplatform.exe.mui
SetupPrep.exe.mui
smiengine.dll.mui
spwizres.dll.mui
upgloader.dll.mui
uxlibres.dll.mui
vhdprovider.dll.mui
vofflps.rtf
w32uires.dll.mui
wdsclient.dll.mui
wdsimage.dll.mui
wimprovider.dll.mui
WinDlp.dll.mui
winsetup.dll.mui
) do (
if exist "ISOFOLDER\sources\%langid%\%%A" echo add 'ISOFOLDER^\sources^\%langid%^\%%A' '^\sources^\%langid%^\%%A'>>bin\boot-wim.txt
)
"%wimlib%" export "%MetadataESD%" 2 ISOFOLDER\sources\boot.wim "Microsoft Windows Setup (%arch%)" "Microsoft Windows Setup (%arch%)" --boot
"%wimlib%" update ISOFOLDER\sources\boot.wim 2 < bin\boot-wim.txt 1>nul 2>nul
"%wimlib%" info ISOFOLDER\sources\boot.wim 2 --image-property FLAGS=2 1>nul 2>nul
"%wimlib%" optimize ISOFOLDER\sources\boot.wim
del bin\boot-wim.txt >nul 2>&1
del ISOFOLDER\sources\xmllite.dll >nul 2>&1
goto :eof

:uups_ref
echo.
echo ============================================================
echo Preparing Reference ESDs . . .
echo ============================================================
echo.
if exist "%UUP%\*.xml.cab" if exist "%UUP%\Metadata\*" move /y "%UUP%\*.xml.cab" "%UUP%\Metadata\" 1>nul 2>nul
if exist "%UUP%\*.cab" (
for /f "delims=" %%i in ('dir /b "%UUP%\*.cab"') do (
	del temp\update.mum 1>nul 2>nul
	expand.exe -f:update.mum "%UUP%\%%i" .\temp 1>nul 2>nul
	if exist "temp\update.mum" call :uups_cab %%i
	)
)
IF %EXPRESS%==1 (
for /f "delims=" %%i in ('dir /b /a:d /o:-n "%UUP%\"') do call :uups_dir %%i
)
if exist "%UUP%\Metadata\*.xml.cab" copy /y "%UUP%\Metadata\*.xml.cab" "%UUP%\" 1>nul 2>nul
goto :eof

:uups_dir
if /i [%1]==[Metadata] goto :eof
echo %1 | find /i "RetailDemo" 1>nul && goto :eof
for /f "tokens=2 delims=_~" %%i in ('echo %1') do set pack=%%i
if exist "%CD%\temp\%pack%.ESD" goto :eof
echo DIR-^>ESD: %pack%
rmdir /s /q "%UUP%\%1\$dpx$.tmp" 1>nul 2>nul
"%wimlib%" capture "%UUP%\%1" "temp\%pack%.ESD" --compress=%level% --check --no-acls --norpfix "%pack%" "%pack%" >nul
goto :eof

:uups_cab
echo %1 | find /i "RetailDemo" 1>nul && goto :eof
set pack=%~n1
if exist "%CD%\temp\%pack%.ESD" goto :eof
echo CAB-^>ESD: %pack%
md temp\%pack%
expand.exe -f:* "%UUP%\%pack%.cab" temp\%pack%\ >nul
"%wimlib%" capture "temp\%pack%" "temp\%pack%.ESD" --compress=%level% --check --no-acls --norpfix "%pack%" "%pack%" >nul
rmdir /s /q temp\%pack%
goto :eof

:uups_esd
for /f "usebackq  delims=" %%b in (`find /n /v "" temp\uups_esd.txt ^| find "[%1]"`) do set uups_esd=%%b
if %1 GEQ 1 set uups_esd=%uups_esd:~3%
if %1 GEQ 10 set uups_esd=%uups_esd:~1%
if %1 GEQ 100 set uups_esd=%uups_esd:~1%
set "uups_esd%1=%uups_esd%"
for /f "tokens=1* delims=: " %%i in ('bin\wimlib-imagex info %UUP%\%uups_esd% 3 ^| findstr /b "Name"') do set "name=%%j"
for /f "tokens=3 delims=: " %%i in ('bin\wimlib-imagex info %UUP%\%uups_esd% 3 ^| findstr /b "Edition"') do set "edition%1=%%i"
for /f "tokens=3 delims=: " %%i in ('bin\wimlib-imagex info %UUP%\%uups_esd% 3 ^| find /i "Default"') do set "langid%1=%%i"
for /f "tokens=2 delims=: " %%i in ('bin\wimlib-imagex info %UUP%\%uups_esd% 3 ^| find /i "Architecture"') do set "arch%1=%%i"
if /i !arch%1!==x86_64 set "arch%1=x64"
set "name%1=!name! (!arch%1! / !langid%1!)"
goto :eof

:uups_backup
echo.
echo ============================================================
echo Backing up Reference ESDs . . .
echo ============================================================
echo.
IF %EXPRESS%==1 (
mkdir "%CD%\CanonicalUUP" >nul 2>&1
move /y "%CD%\temp\*.ESD" "%CD%\CanonicalUUP\" >nul 2>&1
for /L %%i in (1, 1, %uups_esd_num%) do (copy /y "%UUP%\!uups_esd%%i!" "%CD%\CanonicalUUP\" >nul 2>&1)
) else (
move /y "%CD%\temp\*.ESD" "%UUP%\" >nul 2>&1
)
goto :eof

:setdate
if /i %1==Jan set "isotime=01/%isotime%"
if /i %1==Feb set "isotime=02/%isotime%"
if /i %1==Mar set "isotime=03/%isotime%"
if /i %1==Apr set "isotime=04/%isotime%"
if /i %1==May set "isotime=05/%isotime%"
if /i %1==Jun set "isotime=06/%isotime%"
if /i %1==Jul set "isotime=07/%isotime%"
if /i %1==Aug set "isotime=08/%isotime%"
if /i %1==Sep set "isotime=09/%isotime%"
if /i %1==Oct set "isotime=10/%isotime%"
if /i %1==Nov set "isotime=11/%isotime%"
if /i %1==Dec set "isotime=12/%isotime%"
exit /b

:setmmm
if /i %1==Jan set "datetime=%yyy:~2%01%ddd%"
if /i %1==Feb set "datetime=%yyy:~2%02%ddd%"
if /i %1==Mar set "datetime=%yyy:~2%03%ddd%"
if /i %1==Apr set "datetime=%yyy:~2%04%ddd%"
if /i %1==May set "datetime=%yyy:~2%05%ddd%"
if /i %1==Jun set "datetime=%yyy:~2%06%ddd%"
if /i %1==Jul set "datetime=%yyy:~2%07%ddd%"
if /i %1==Aug set "datetime=%yyy:~2%08%ddd%"
if /i %1==Sep set "datetime=%yyy:~2%09%ddd%"
if /i %1==Oct set "datetime=%yyy:~2%10%ddd%"
if /i %1==Nov set "datetime=%yyy:~2%11%ddd%"
if /i %1==Dec set "datetime=%yyy:~2%12%ddd%"
exit /b

:QUIT
IF EXIST ISOFOLDER\ rmdir /s /q ISOFOLDER\
IF EXIST bin\temp\ rmdir /s /q bin\temp\
IF EXIST temp\ rmdir /s /q temp\
exit