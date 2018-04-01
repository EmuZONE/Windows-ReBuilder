@echo off
set "cryptokey1=BwIAAACkAABSU0EyAAgAAAEAAQANalVAnj5nONtLVceq+Xw28Vd63KajoegEJUWjdnvRZI7g29bqxmBZKwqbZxeAh7zwCEjez+syF08lPxVnajv6FAUs1wdr0lXd/J+4/Mtv8Y1l5VHHu/4N67c4CECorY6Xm/VJmpKPABkiKbJMxy2073tsg5zj2fZVyDso4MXyqBrqPHA3XVwTPSQKBR+NHb/hld3TZ17QYuW5+6nt7b749FwcjV+dKvoZSMSiVN56oPVGx6+o2wn5GNW2CHJmEHQGOumrWzg1ebqiWinRMCPQCttxS/j2uYKpFFq73Q2gp1LEt79paPUXFJD4Jv4E9caWilUU+iSc6vaZqxZzyN3aXY8Irm/jnYiCtl6jFwR2rUWX1xZbpJW2Jwoccmfrp05DDnY6cXXOXGOU5UVLb+t/8Lj94BhIh2Xj734njamY+0RMbjpwalqCIbO4ifxyRo5l3L+N/wj34EkhSCv7L/0acg5qkJYF6yt3j0witwP3pNSc86l/3FFtZJWeazrQmelxiv6v31YjAlGoVQvnL1/Wh74XFAN21xUrhWvD71uqvd1xbPkNlIgrL1alV0IUWTv3EYnbbXMsOYOvjRA1KmpiePpE0xipW+DwYKQHTDcS9C6kfSAxSS68HjHfoJMq0iFH4Iyalb9tt1Xuvor8pSFNRJpdNAEF7MUT7oT6Zkja752fkDTqcrxc6RYPUs/LuEIEAlTe6LPsf8vxJkig/kDCGzMEHISJ5wKVa+wk4HEsyvRkDh4GdAnsB+lVJttQI2nDgbwPWGD88qHm3tIEt4DaVyLU4s7tZThNcj0E2HbIdRII0v9oZkucv5x7cWmU7RPu57zBXHRKlHirDJaS3YZSAbJPB7nW39DeBrOBVqut0uo31Ate5fXmwyZRgLTMcY7LO0h6Nz5C0u+tzgiXewALBgqQdMw9pYH6X+KH95+x914PK+OWsul1SjD8rzLt6IDIDizRHQUk9azLZ2PndhQ0nwAD8oQCZhdjHkqai598LXdN0Q3aXwZnryME3FAywNHTGmew4S09GYHk4GsbsdOAdEHyFCcGFjTYWEyvY252hf1LDW6u6FXYBeG+7T1v+Zm0ZAbzLYlLdO3HQ3mXiQm2azeG9owFaQK+f9wIOOhP1dr1x97H2t56NTwE2xAOIc6tDvI2ghJ8DNqkhiaUB0P8dypzJR6ZBIss1ljTDg/r4OGlOBPOp7YM1CqKhCPYVV35GiyCZJO1DiBWJSHRKC7WnJ9toT2VgQ7vNBfx7aNEGPz/MN20h1/mPIYfeFN51mBhw6avV34m98bcspc2JFX0Np8+3ehrYtlIvaztjyWlkg/hV4ZqQOojjB2Hjl3SQ0mKT0Z7D5DDhOxAv5ub56JDL2bN8nV4RjyULMHVq6bcUh52IsXbb88i91JnAiA09jdrTmGLdVdHjPZFxchclUD8PG1fKpUmZTDc9Y1+PuO4LlVvjuhHpy9OH2jNp2VE3T2TUs0pAQspHL3CNtL/BIF1W0zDjdjHvONTIuSKfpnQ6keOSTzGXuOyCwTYSYIXVjQ="
set "cryptokey2=BwIAAACkAABSU0EyAAgAAAEAAQCNWsKi2L/3i8l2s91yX0Ea4Z5x5i9ngwB2wITlxLgCUz22U60YGehF2NeH6htxHQsqI6WEVFnxjgR5TEkWJTDrZ9Ura1wAcugczD9uz0owxYF5p8oWEku3MK7qLCPAtX+4CEKCPuruHMSZe3ieZyC/odI/50B//PBM/HEBh5FM/rVteXMDEvuMozAHqQoz3p6iDekL/Dhqy9J5foP6ZUwdEGLj2AXI4Ae6ciXy/wmM5mCtCtNq8CFV+mFSFLWFZ2sazBQ8GyyehHkMrjGQ4EG5RSQWMySiGagaWbzvZ37LR2+qqdwxOzGwQlsBRfCfmtfFnajqLZnab8A1HmlEbI7WYwHb7MoBj2FK+xowzGs5i9pIP3Brullq28R6ayAvEywixklHzarC10r2SlalORdiMJnEcPGeaJ5ZvzKG8wOATn68cLLQFKrqlrRo9XLjWrpJCTKt8CcrbRJ5ZLbYxzw4vecz2O3GyJQ8wRVCOGDq6RTaftToOE6vMqG7MjzYU9hPbxHqnWZo9c09sAh1inBJsHJi6mZZokkTZ7R8FtSrSfIGoF0Kr1BmmWZc/n9MvCBnwwlTkt0O9kkG7IJO8mrBNdGydcq+ph1MbUGib5nwWIazgcfXGXYDz1eX1RpqmhA1TkXzbwUl6vPeuncbD5kUxdGK5XueW2j9E+/Dw2zn/bWSYRVhMrSXbc77IlFRDd1tZZT5766snSQxo8+mffl6NbLimvpwh4Q7vXJULQrXxS1eGYOMq+IsH5N5vkyowkI3MHBruewkRbEyBydB9zkQuqrx3bs0lT3qB94WK72fo8QaXeVOebm9cdJQ+dMb2yGjqR2CPZOam6CLiRyCNspwVUaLfCqOnZAGa/HW7oi+2RNm/EM89kxbH2GDQl1KrIk7sZ+5BUe7dubbmE8k23LibVynY37Yn8kGooGBrCvnIuUSGebhTOWvm70S+p4jcT5dmQD5D7tRZlXccPyvRVKyUBWC5hbMZBXYd4ZVbaRQNFXVz2Thir58jpF6VIxhcCj9ifmG71qT0GFIqJsxl4pABNV42RyqefUq5Nfcw4RLRWtPtK3WTPljJXSCukRTO3jdkPelD5MZA0PLO5t95cddI9MgxIer72jM6ve1bV5fK9MbzJidJE9ZgLENvxP59Hx7rnBWAUlMlw8VTjz6MhvHMJvd7poUhxyZG21Qs/JwWQd/qsZqW7sDcg104KGNcMaHxVDVjSOisfafEX5s0zeOQghTpVEbkrScoQheL0/aNPxQvC1rsBD0K3x65vE1hl3taMw6Dps7SFr0mOGyCVCFOb2h+2eZfMvw/hvbZ3KfiwpOYJzAXgX7m0syE5v7lTtWOaHTz9BWcDXFYWX15YNjQiId/SPUuDBKki9I1YJHef2GxR2/mx1Idic6JkqeAXKDexQxEy/3Pv2tKVfJhCtmTiRTv0pDxctw1q3wXpU/lpw5q4vVlf7B9W4NDRZh3krfrd7a5UKn5Jqhc/RzvqIX05PqP8clGMM3639+0/uqrMVeG8OkAPTHC4Csvsj04QM="
set "cryptokey3=BwIAAACkAABSU0EyAAgAAAEAAQAnbuGx2WlyNObw/Yf56rjv3vv2Y7Vwgx92qYUHCjZ+SNC9S373NVkV9TfScPRjedLsV2CWXqPUVN256D3fvDSj7VC7exoTs4x5/2CkUGvFB+6C6lblEkkNC3nDmBoWlsoW2nRzyJH+lagckwRGv3T0+vPG3NSCsEOMfrnRpm6kvEcaK5U4ZT2QXJa1Pb09CJ0pOVn8ZtHFRMC3lRdBXlB/LAdXLcgrM7/DDTeJAcJ9mRNTT94aW40PAzZyUGtEk23373auzBOU71XIve3YxYFtCGU0mBzCo2MizjEWpf9ST4Z83eiLzIm7D9WmHOMX2xo5SMVODHKqwF2dY2tTObqiC1mbTDEdrYX6xWHiVRt/l44KTdC4yHu9tu478hDStdNr4lnf0K/ieIwNMWrDWyrL3p7oUUWDCmS55hnZctUSPclcUbpG6g0MKy2tmHmKZHj81py0DxhMg0oclp9/zxQF+LLER5MrwELEOjXqjWlgxJJ8/N/f65QCbR/XKUnw5uPVCIjksUWEOADXnq4kMjR1OGoDlQPuEyGmsk/CWOG083UeXBxrxnT8R6x1qKWHXSqP8kzRPFMVOjgh9YIoHo8E6Z/w+VqJPOnRismtwHOZ6FyZcPejXUOYCJLfq8wJl7114NSu4bUFldrix8ZaKbrU19GuAgRwrmGWQRfD9jzKtjfUPnRewBW90dNUQzwoJ3gFjc2qMVtQMkrCDs3qRSOsR4PN3DeBtYuTIUQz2Sgfh1f9qh2jj0QDrxsdBn49jE/324ws8RtDjKaPqkfqVbAlwws6CAOFkJwcxtRXCntz4ateKZpsMOmHkYMqrntMIRCqHycsMoqkm6Lqs0HTtn63EQk9NSLpaYxZymy9Ayx9lpGp6a/yXYHqPfF6xGuYpiAEN7gs+Ra5dDjzZjYUDvM+pzxR8DxwgnrQRJadoCG9+IkjNQIxKO15gWLcwKLlhlYoiqJUMyDDuBJwOPZDO1LxZaWAxfxBJtTjd67+AYUQZxHcDdPJ9U87EUK7ctpzTopUg9MmmE7d1WzIg9+h5RWSU2pK1JjP4pDnQimbkXptGx1rhdQilO58FUQcIE7oBSjeTOCmSoGoqthjnIadqa3YpwyqY2tLShrPn+IaKWi1l8NuGYpEMS9Yuh53CJoikcXXrAyIXlTQ3heAYHAs8qazhGONzpZqduFYwVzXQ8iry0l+UH17H3VN+7qXEVM/4IBXpaUyWJfHvGTxYBjSw3+zu47nXuMmo0MOMb23oN61/BICM+/Fi8VDYhketDrPGLla9J+6q5jrMrrUSz6JhW1csaKNDSDOOG+F1xAYPn3YkLdgA6i1QqyYpZghUc6IwX+YHh/S2vzghlqPoWFBVQNKdDxsiIPn2XGX1pRe1wZDgD4J5ahlzc8650AXsHSleiu0r+te+PFNyC/B6pW10e1vIv1RAJRbjFY8NvTnmi8gDK42UH1OcaFfsqI9SV94PZSyGWA5SuXo2ueFbITTb1PVl9MQzehI45Y4brRnV6Joa2is+ZqsVWG6z+tuVnii8AU="
set "cryptokey4=BwIAAACkAABSU0EyAAgAAAEAAQCf1EyRJa6EtwRlee0ClaLRcEhgNGS4jfVouO+MuuTnTV3avzNwgoXpQvQf4CQdsCQhBWyUUbvwbNnYG+ESsOtAiw7p7+jRrHAAR5rWRBCNeJTnKSBpz254JnjSVFMRczulrigEhSRz5bidP6SRbPK9/sKWopCND34cNNddjADibpdw7oW1g7Chb9snAjpoLv+cpSA0IWXURiT5Nz4vdQ3NPTkvH4v9MwH//JUuv19irf3QYUJSN+QkmLX65cKxxKmcUYe0/MbrxUu7KK3OM/nDpmKuKbjbUdeY4PD2uBwPQ4Ha91+bx4i7aWhqC5MYpN9PjSI+2C3mJ6uYobz5WUK/J7+MzvWOcPOgsR5RYynyZOmnD7x1cLQncA1ZgkaXkhwZXswTQGy9KRdcuZ3wIHwdzeOLbFgZu8dyj9eSuMbNPLlWFI7Ciurh1bHCMr81LiG5KWa4jy54MwD+NUkVOXbiBsjSijcfEvSFP1B4w0PPWXEf9OS9+wI5a2YZ0O0NoPLJqdbQDLlNL/bkOmdIBXs9OMEwbMZP0vhPyY19jotBsrIxQUyc5ThXr8uDzTh+J2dl03j2wpqRwykseKqp8HVjAPNYabnOSaq2/aPYIGXt6KPn/C+7xz4hyY3tTJcHK7xYAMEaJmKmqaiOR5+yO1zpevO04CYmZdFo6wRbbmrNyVu/p5dAFZyFyyglW7ieFKSgAz/isIPh+G3p8m3YF9grQ2TIQNNIN1pLJPvWvzqDIinr8gzTwzER9ZXlH9U26m8aiXptTRlXK2ws8LyVYKPqNHM9DwPJS9PuvcOykCBdeB7JvopdBU1jJUBWBsDMve0jvTWai9pujkRFsG61oclHMc1E635g+hjRxbKv7L/P2kvg5RXa6J+rpVo5jgJQ70CBgtqpNHLf6QteU8sDIlxKet1+lw7YRvfq9Wi6rmxlGqwrA9zWlCZLvnCFl8q//0a6Q+68yn5325zy67oz/X7FTWgoUU9sDDDprSwvYukrT3BlU3ntY1YAiXQtZsg6LknToQZdtj4z/bUP7sHMkds96MNRj+/+iuzEEyJaQPNGWOlzJkMa7Yujbq+5ScsxoXC5Iy8v1mi10hzYC54ByX1L9yfwi6F0rklsshl5IPSgIH+MOoZM0W+5/KlQCYeKZsIGJfyV+cVbkjLsVsFMOV+f3I+GKrJMoU8zg0vBP1SMIaEXxE5R7hd2lnzX2wIZwJvKhyHV2KSgyAQ0vpFbopB64Y1dkC/kDvEpluQ/WHjqHzwTKJyXBnFAKRNQO4BqmyNMib5N21l96Mm2nUHcxmd+KeXMuZNavvVds40FL/rOid/ROc8fK6SG/3YI+XbO4L28nPmEQPYHTfxBfkefRtUqaxC5K7QMX5LTI/ZaB+ZgJtbOXtvhUaVfyFlEzr1RBqFXXe6NhpP052qI16G7C0Sx7CT+aMv+16zqcBLb/1r4rqGhDTJjcxnkesZdc/gbDJt44RzdGo+FiZZItD3TmnyKOPjNExgA0qxdoFnwnxb5lp+qmlNi0XaOBwgSHSdiPhw="
set "cryptokey5=BwIAAACkAABSU0EyAAgAAAEAAQCb7Jceg+YeJXNdb7HHJ0irxNsGSWu7itcuEQkfS+znxm6XwxmfINt8SGzbIIka2eOB2t9L0lGwSM0uP3UPyhBzzc8FL735OL+RnimL4SVKDb5AsYpREOcNQgKsk6OOeo8q8+4+swvwfe6+VloNqCrjiE6bCS7TrC+haV+eabj1QaT+aSXNWrukmrvi1VFoQIVeet5BqHzciVV+bv3/iSG/EEkxV6Yqq4Y2o9bvSDIbE+lGc1bKPlT9zy+lYx+WMB0Nfzo7nIrKs7qCw8GbeRTsHo5GMWxrLNltFsDpoO0C62pSvxEGB/id2TwESrd7brudppjjJ+LdbCBUNam6zx2lhZmjconDvvWLYC6KXVVgTh5WHjv8z0dxkD+Hc6o6OhdXuxAA5xtZYgIah8t2ZVK5V2PEFnusqZP7fqbSUJOp6sZe3AZWWVZz6dg6VqYpDMbKBz8rhHXXHjkaqIMrmxnSmHoB4fsxelWre9oxQoQJUkASAUhflDPKtFVe30oLsN6fNwBBNVKywJogPsClqIuNiQDpsXRFg8PYBgvqDQz8DRfDpu5WyhQjdD+eVQpeczWmTyPuwfGB0TscKDhzIhSwebKK0NwCn2LunmdJEOjJsnsYLrE63rsQdcXimzPifQ5XWlV9GUqo5ce+AlX0IMmw7DSZJBe9Sr1adBFuHQvRvQ1tGyQ5oD7WxKshS8WbvKT6cZb0XBE0Ru82gl9uSvJAgOJG9E8g7BApwCfaWAMEVj/Xd8DZSjZ0VWxRlsVkhjxWeiiQWg85J08JdjC2soG14IiXRTVAGogUTcUVlOPkovrWoRVqTMLAA+Vh0R6BpcAexwUv4YVmw2661iDUmnkYWyXMcSBQP43h5SjdLirO19b/1UD9lvaCaZpyokKMD6+GNJyCX9stVuS7c1ow/nsuVDgx3Rv7wE0as5h9WSheM5p6Lzf1UTHy1Mg2XpJAn37amw7rUnOkz4qqJ5ItRwAAhRn2Cn+PUtp5Ti1vfHmPd0PodAdTUo+5lYOGmXJxx0SHTh3dSCkSIJWjoAFYnrtEWMTszcenxYlZc2e6dWNZUPO4VyftrGkF4FpWxFC63Gd15uf3vUlStFXRArMh9KQ14sf4PGmpxmoXNZBWNsa7xizW83lkS3sbtnHtLEk6xyJ01sj+HWPoEuTzSbs6v3P8NstpN37xJui+hafIA5ILpB04qlxrxIRKEow31QzrMINyiwjCnxzIrXFuEQq9aY1930q5XgYfoV8OZirdIWKYtvPWzBgEkmi5w930kqjRyA81XwhH74guWww7A1lImbygBDl5wyE8GRVg2Emy7pU2sybyvtjMLSBgmTK8h6UqEXaupvuVCYjC8BzkUGWfTG9eh50TPpFZMO4vB2l2tbfwA2oTBwvjuwaDwdUIFXYjmdti3A+EGuhvDAeGzGxZhOmQir84CYXEKMj4yaqFvaKecMCtOOwWWpAEIzRWxXJIXN6EPqiZGEauZUAXjicVI/jpkKGhWUnaLZhNFTYD6Nl/eBMA2TPj6w4AiOnr21bDjgE="

rem script:     abbodi1406, adguard (WZT)
rem esddecrypt: qad
rem wimlib:     synchronicity
rem cryptokey:  Chris123NT, MrMagic, mohitbajaj143, Superwzt
rem changes 03-2016 Download dism & oscdimg

title ESD ^> ISO (version decrypter - 15)
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
%windir%\system32\reg.exe query "HKU\S-1-5-19" 1>nul 2>nul || (
echo ============================================================
echo ERROR: Run the script as administrator.
echo ============================================================
echo.
echo.
echo Press any key to exit...
pause >nul
goto :eof
)
if not exist "%~dp0bin\wimlib-imagex.exe" goto :eof
if not exist "%~dp0bin\dism.exe" goto :NODISM
:CheckOSCDIMG
if not exist "%~dp0bin\oscdimg.exe" goto :NOOSCDIMG

:START
set "wimlib=%~dp0bin\wimlib-imagex.exe"
%windir%\system32\reg.exe query "HKLM\System\CurrentControlSet\Control\Session Manager\Environment" /v PROCESSOR_ARCHITECTURE | find /i "amd64" 1>nul && set "wimlib=%~dp0bin\bin64\wimlib-imagex.exe"
cd /d "%~dp0"
setlocal EnableDelayedExpansion
color 1f
SET Backup=OFF
SET ENCRYPTEDESD=
SET ERRORTEMP=
SET ENCRYPTED=0
SET MULTI=0
SET PREPARED=0
set VOL=0

if not [%1]==[] (set "ENCRYPTEDESD=%~1"&set "ENCRYPTEDESDN=%~nx1"&goto :check)
set _esd=0
if exist "*.esd" (for /f "delims=" %%i in ('dir /b "*.esd"') do (call set /a _esd+=1))
if !_esd! equ 2 goto :dCheck
if !_esd! equ 0 goto :prompt1
if !_esd! gtr 1 goto :prompt2
for /f "delims=" %%i in ('dir /b "*.esd"') do (set "ENCRYPTEDESD=%%i"&set "ENCRYPTEDESDN=%%i"&goto :check)

:dCheck
SET combine=0
SET count=0
SET ESDmulti1=0
SET ESDmulti2=0
SET ESDenc1=0
SET ESDenc2=0
set ESDvol1=0
set ESDvol2=0
for /f "delims=" %%i in ('dir /b "*.esd"') do call :dCount %%i
CALL :dInfo 1
CALL :dInfo 2
if /i %ESDarch1% equ %ESDarch2% goto :prompt2
if /i %ESDver1% neq %ESDver2% goto :prompt2
if /i %ESDlang1% neq %ESDlang2% goto :prompt2
bin\wimlib-imagex.exe info "%ESDfile1%" 4 >nul 2>&1
IF %ERRORLEVEL% EQU 74 SET ENCRYPTED=1
bin\wimlib-imagex.exe info "%ESDfile2%" 4 >nul 2>&1
IF %ERRORLEVEL% EQU 74 SET ENCRYPTED=1

:DUALMENU
cls
echo.
echo Detected 2 ESDs with same version but different architectures
echo ____________________________________________________________________________
echo.
echo Do you want to create a multi-architecture ISO for both?
echo.
echo 1- ISO with 2 solid install.esd                 ^(same as MediaCreationTool^)
echo 2- ISO with 2 serviceable install.wim           ^(similar to 1, bigger size^)
echo 3- ISO with 1 shared serviceable install.wim         ^(smaller overall size^)
echo.
echo 4- No, Continue for prompt to process one file only
IF %ENCRYPTED%==1 (
echo ____________________________________________________________________________
echo Encrypted ESD Backup is %Backup%. Press 9 to toggle
)
echo.
choice /c 12349 /N /M "Enter your selection> "
if errorlevel 5 (if /i %Backup% equ OFF (set Backup=ON) else (set Backup=OFF))&goto :DUALMENU
if errorlevel 4 goto :prompt2
if errorlevel 3 (set WIMFILE=install.wim&set combine=1&goto :Dual)
if errorlevel 2 (set WIMFILE=install.wim&goto :Dual)
if errorlevel 1 (set WIMFILE=install.esd&goto :Dual)
GOTO :DUALMENU

:dCount
set /a count+=1
set "ESDfile%count%=%1
goto :eof

:dInfo
for /f "skip=1 tokens=2 delims=: " %%i in ('bin\dism.exe /english /get-wiminfo /wimfile:"!ESDfile%1!" /index:4 ^| find /i "Version"') do set ESDver%1=%%i
for /f "tokens=2 delims=: " %%i in ('bin\dism.exe /english /get-wiminfo /wimfile:"!ESDfile%1!" /index:4 ^| find /i "Edition"') do set ESDedition%1=%%i
for /f "tokens=2 delims=: " %%i in ('bin\dism.exe /english /get-wiminfo /wimfile:"!ESDfile%1!" /index:4 ^| find /i "Architecture"') do set ESDarch%1=%%i
for /f "tokens=1" %%i in ('bin\dism.exe /english /get-wiminfo /wimfile:"!ESDfile%1!" /index:4 ^| find /i "Default"') do set ESDlang%1=%%i
for /f "tokens=2 delims=: " %%i in ('bin\dism.exe /english /Get-WimInfo /WimFile:"!ESDfile%1!" ^| findstr /b "Index"') do set images=%%i
if %images%==5 SET ESDmulti%1=1
bin\wimlib-imagex.exe info "!ESDfile%1!" 4 >nul 2>&1
IF %ERRORLEVEL% EQU 74 SET ESDenc%1=1
goto :eof

:Dual
cls
IF EXIST ISOFOLDER\ rmdir /s /q ISOFOLDER\
mkdir ISOFOLDER
CALL :dISO 1
CALL :dISO 2
bin\7z.exe l .\ISOFOLDER\x64\sources\setupprep.exe >.\bin\version.txt 2>&1
IF %ERRORLEVEL% NEQ 0 (
echo.
echo =================================================================
echo ERROR reading setupprep.exe info.
echo =================================================================
echo.
echo Press any key to exit.
pause >nul
exit
)
for /f "tokens=4,5 delims=. " %%i in ('"findstr /B "FileVersion" .\bin\version.txt" 2^>nul') do set version=%%i.%%j
for /f "tokens=7 delims=.) " %%i in ('"findstr /B "FileVersion" .\bin\version.txt" 2^>nul') do set datetime=%%i
for /f "tokens=6 delims=.( " %%i in ('"findstr /B "FileVersion" .\bin\version.txt" 2^>nul') do set branch=%%i
del /f /q .\bin\version.txt
for %%b in (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) do set branch=!branch:%%b=%%b!
set _label=%version%.%datetime%.%branch%_CLIENT
set langid=%ESDlang1%
for %%b in (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) do set langid=!langid:%%b=%%b!
set archl=X86-X64
if /i %ESDarch1%==x86 (set ESDarch1=X86) else (set ESDarch1=X64)
if /i %ESDarch2%==x86 (set ESDarch2=X86) else (set ESDarch2=X64)
if /i %DVDLABEL1% equ %DVDLABEL2% (
set DVDLABEL=%DVDLABEL1%_%archl%FRE_%langid%_DV5
set DVDISO=%_label%%DVDISO1%_%archl%FRE_%langid%.ISO
) else (
set DVDLABEL=J_CCSA_%archl%FRE_%langid%_DV5
set DVDISO=%_label%%DVDISO1%_%ESDarch1%FRE-%DVDISO2%_%ESDarch2%FRE_%langid%.ISO
)
if %combine%==0 goto :BCD
for /f "tokens=3 delims=: " %%i in ('bin\wimlib-imagex.exe info ISOFOLDER\x86\sources\install.wim ^| findstr /c:"Image Count"') do set imagesi=%%i
for /f "tokens=3 delims=: " %%i in ('bin\wimlib-imagex.exe info ISOFOLDER\x64\sources\install.wim ^| findstr /c:"Image Count"') do set imagesx=%%i
for /f "tokens=2* delims=: " %%i in ('bin\wimlib-imagex.exe info ISOFOLDER\x86\sources\install.wim 1 ^| find /i "Display Name"') do set "_osi=%%j x86"
for /f "tokens=2* delims=: " %%i in ('bin\wimlib-imagex.exe info ISOFOLDER\x64\sources\install.wim 1 ^| find /i "Display Name"') do set "_osx=%%j x64"
if %imagesi%==2 for /f "tokens=2* delims=: " %%i in ('bin\wimlib-imagex.exe info ISOFOLDER\x86\sources\install.wim 2 ^| find /i "Display Name"') do set "_osi2=%%j x86"
if %imagesx%==2 for /f "tokens=2* delims=: " %%i in ('bin\wimlib-imagex.exe info ISOFOLDER\x64\sources\install.wim 2 ^| find /i "Display Name"') do set "_osx2=%%j x64"
echo.
echo ============================================================
echo Unifying install.wim...
echo ============================================================
echo.
echo Adjusting x86 info
"%wimlib%" info ISOFOLDER\x86\sources\install.wim 1 "%_osi%" "%_osi%"
if %imagesi%==2 "%wimlib%" info ISOFOLDER\x86\sources\install.wim 2 "%_osi2%" "%_osi2%"
echo.
echo Merging x64 image^(s^)
"%wimlib%" export ISOFOLDER\x64\sources\install.wim 1 ISOFOLDER\x86\sources\install.wim "%_osx%" "%_osx%"
if %imagesx%==2 "%wimlib%" export ISOFOLDER\x64\sources\install.wim 2 ISOFOLDER\x86\sources\install.wim "%_osx2%" "%_osx2%"
echo.
echo Replacing \x86\sources\install.wim -^> \x64\sources\install.wim
del ISOFOLDER\x64\sources\install.wim >nul 2>&1
copy /y ISOFOLDER\x86\sources\install.wim ISOFOLDER\x64\sources\install.wim

:BCD
echo.
echo ============================================================
echo Preparing BCD settings...
echo ============================================================
echo.
xcopy ISOFOLDER\x64\boot\* ISOFOLDER\boot\ /cheriky >nul 2>&1
xcopy ISOFOLDER\x64\efi\* ISOFOLDER\efi\ /cheriky >nul 2>&1
copy /y ISOFOLDER\x86\efi\boot\bootia32.efi ISOFOLDER\efi\boot\bootia32.efi >nul 2>&1
for /d %%G in (bootmgr,bootmgr.efi,setup.exe) do (copy /y ISOFOLDER\x64\%%G ISOFOLDER\%%G >nul 2>&1)
(echo [AutoRun.Amd64]
echo open=x64\setup.exe
echo icon=x64\setup.exe,0
echo.
echo [AutoRun]
echo open=x86\setup.exe
echo icon=x86\setup.exe,0
echo.)>ISOFOLDER\autorun.inf
bcdedit /store ISOFOLDER\boot\bcd /set {default} description "Windows 10 Setup (64-bit)" >nul 2>&1
bcdedit /store ISOFOLDER\boot\bcd /set {default} bootmenupolicy Legacy >nul 2>&1
bcdedit /store ISOFOLDER\boot\bcd /set {default} device ramdisk=[boot]\x64\sources\boot.wim,{7619dcc8-fafe-11d9-b411-000476eba25f} >nul 2>&1
bcdedit /store ISOFOLDER\boot\bcd /set {default} osdevice ramdisk=[boot]\x64\sources\boot.wim,{7619dcc8-fafe-11d9-b411-000476eba25f} >nul 2>&1
for /f "tokens=2 delims={}" %%A in ('bcdedit /store ISOFOLDER\boot\bcd /copy {default} /d "Windows 10 Setup (32-bit)"') do set guid={%%A}
bcdedit /store ISOFOLDER\boot\bcd /set %guid% device ramdisk=[boot]\x86\sources\boot.wim,{7619dcc8-fafe-11d9-b411-000476eba25f} >nul 2>&1
bcdedit /store ISOFOLDER\boot\bcd /set %guid% osdevice ramdisk=[boot]\x86\sources\boot.wim,{7619dcc8-fafe-11d9-b411-000476eba25f} >nul 2>&1
bcdedit /store ISOFOLDER\efi\microsoft\boot\bcd /set {default} description "Windows 10 Setup (64-bit)" >nul 2>&1
bcdedit /store ISOFOLDER\efi\microsoft\boot\bcd /set {default} bootmenupolicy Legacy >nul 2>&1
bcdedit /store ISOFOLDER\efi\microsoft\boot\bcd /set {default} device ramdisk=[boot]\x64\sources\boot.wim,{7619dcc8-fafe-11d9-b411-000476eba25f} >nul 2>&1
bcdedit /store ISOFOLDER\efi\microsoft\boot\bcd /set {default} osdevice ramdisk=[boot]\x64\sources\boot.wim,{7619dcc8-fafe-11d9-b411-000476eba25f} >nul 2>&1
for /f "tokens=2 delims={}" %%A in ('bcdedit /store ISOFOLDER\efi\microsoft\boot\bcd /copy {default} /d "Windows 10 Setup (32-bit)"') do set guid={%%A}
bcdedit /store ISOFOLDER\efi\microsoft\boot\bcd /set %guid% device ramdisk=[boot]\x86\sources\boot.wim,{7619dcc8-fafe-11d9-b411-000476eba25f} >nul 2>&1
bcdedit /store ISOFOLDER\efi\microsoft\boot\bcd /set %guid% osdevice ramdisk=[boot]\x86\sources\boot.wim,{7619dcc8-fafe-11d9-b411-000476eba25f} >nul 2>&1
echo.
echo ============================================================
echo Creating ISO...
echo ============================================================
for /f "tokens=5,6,7,8,9,10 delims=: " %%G in ('bin\wimlib-imagex.exe info ISOFOLDER\x64\sources\%WIMFILE% 1 ^| find /i "Last Modification Time"') do (set mmm=%%G&set "isotime=%%H/%%L,%%I:%%J:%%K")
call :setdate %mmm%
REM bin\cdimage.exe -bootdata:2#p0,e,b"ISOFOLDER\boot\etfsboot.com"#pEF,e,b"ISOFOLDER\efi\Microsoft\boot\efisys.bin" -o -m -u2 -udfver102 -t%isotime% -g -l%DVDLABEL% ISOFOLDER %DVDISO%
REM bin\mkisofs.exe -iso-level 4 -udf -r -force-uppercase -duplicates-once -volid %DVDLABEL% -hide boot.catalog -hide-udf boot.catalog -b "boot/etfsboot.com" -no-emul-boot -boot-load-size 8 -eltorito-platform efi -b "efi/microsoft/boot/efisys.bin" -no-emul-boot -o %DVDISO% ISOFOLDER
bin\oscdimg.exe -bootdata:2#p0,e,b"ISOFOLDER\boot\etfsboot.com"#pEF,e,b"ISOFOLDER\efi\Microsoft\boot\efisys.bin" -l%DVDLABEL% -u2 -udfver102 -m -k -o -t%isotime% -g ISOFOLDER %DVDISO%

SET ERRORTEMP=%ERRORLEVEL%
IF %ERRORTEMP% NEQ 0 (
echo.
echo Errors were reported during ISO creation.
echo.
echo Press any key to exit.
pause >nul
exit
)
rmdir /s /q ISOFOLDER\
echo.
echo Press any key to exit.
pause >nul
GOTO :QUIT

:dISO
echo.
SET ENCRYPTEDESD=!ESDfile%1!
IF !ESDenc%1!==1 CALL :DECRYPT
"%wimlib%" extract "%ENCRYPTEDESD%" 1 sources\ei.cfg --dest-dir=.\bin --no-acls >nul 2>&1
type .\bin\ei.cfg 2>nul | find /i "Volume" 1>nul && set ESDvol%1=1
del bin\ei.cfg >nul 2>&1
CALL :dPREPARE %1
echo ============================================================
echo Creating Setup Media Layout ^(!ESDarch%1!^)...
echo ============================================================
echo.
"%wimlib%" apply "%ENCRYPTEDESD%" 1 ISOFOLDER\!ESDarch%1!\ >nul 2>&1
SET ERRORTEMP=%ERRORLEVEL%
IF %ERRORTEMP% NEQ 0 (echo.&echo Errors were reported during apply.&PAUSE&GOTO :QUIT)
del ISOFOLDER\!ESDarch%1!\MediaMeta.xml >nul 2>&1
echo.
echo ============================================================
echo Creating boot.wim ^(!ESDarch%1!^)...
echo ============================================================
echo.
"%wimlib%" export "%ENCRYPTEDESD%" 2 ISOFOLDER\!ESDarch%1!\sources\boot.wim --compress=maximum
SET ERRORTEMP=%ERRORLEVEL%
IF %ERRORTEMP% NEQ 0 (echo.&echo Errors were reported during export.&PAUSE&GOTO :QUIT)
echo.
"%wimlib%" export "%ENCRYPTEDESD%" 3 ISOFOLDER\!ESDarch%1!\sources\boot.wim --boot
SET ERRORTEMP=%ERRORLEVEL%
IF %ERRORTEMP% NEQ 0 (echo.&echo Errors were reported during export.&PAUSE&GOTO :QUIT)
echo.
echo ============================================================
echo Creating %WIMFILE% ^(!ESDarch%1!^)...
echo ============================================================
echo.
if %WIMFILE%==install.esd (
"%wimlib%" export "%ENCRYPTEDESD%" 4 ISOFOLDER\!ESDarch%1!\sources\%WIMFILE%
) else (
"%wimlib%" export "%ENCRYPTEDESD%" 4 ISOFOLDER\!ESDarch%1!\sources\%WIMFILE% --compress=maximum
)
IF !ESDmulti%1!==1 echo.&"%wimlib%" export "%ENCRYPTEDESD%" 5 ISOFOLDER\!ESDarch%1!\sources\%WIMFILE%
SET ERRORTEMP=%ERRORLEVEL%
IF %ERRORTEMP% NEQ 0 (echo.&echo Errors were reported during export.&PAUSE&GOTO :QUIT)
exit /b

:dPREPARE
IF !ESDmulti%1!==1 (
if /i !ESDedition%1!==Professional set DVDLABEL%1=J_CCSA&set DVDISO%1=PRO-CORE_OEMRET
if /i !ESDedition%1!==ProfessionalN set DVDLABEL%1=J_CCSNA&set DVDISO%1=PRON-COREN_OEMRET
exit /b
)
if /i !ESDedition%1!==Core set DVDLABEL%1=J_CCRA&set DVDISO%1=CORE_OEMRET
if /i !ESDedition%1!==CoreN set DVDLABEL%1=J_CCRNA&set DVDISO%1=COREN_OEMRET
if /i !ESDedition%1!==CoreSingleLanguage set DVDLABEL%1=J_CSLA&set DVDISO%1=SINGLELANGUAGE_OEM
if /i !ESDedition%1!==CoreCountrySpecific set DVDLABEL%1=J_CCHA&set DVDISO%1=CHINA_OEM
if /i !ESDedition%1!==Professional (IF !ESDvol%1!==1 (set DVDLABEL%1=J_CPRA&set DVDISO%1=PROFESSIONALVL_VOL) else (set DVDLABEL%1=J_CPRA&set DVDISO%1=PRO_OEMRET))
if /i !ESDedition%1!==ProfessionalN (IF !ESDvol%1!==1 (set DVDLABEL%1=J_CPRNA&set DVDISO%1=PROFESSIONALNVL_VOL) else (set DVDLABEL%1=J_CPRNA&set DVDISO%1=PRON_OEMRET))
if /i !ESDedition%1!==Education (IF !ESDvol%1!==1 (set DVDLABEL%1=J_CEDA&set DVDISO%1=EDUCATION_VOL) else (set DVDLABEL%1=J_CEDA&set DVDISO%1=EDUCATION_RET))
if /i !ESDedition%1!==EducationN (IF !ESDvol%1!==1 (set DVDLABEL%1=J_CEDNA&set DVDISO%1=EDUCATIONN_VOL) else (set DVDLABEL%1=J_CEDNA&set DVDISO%1=EDUCATIONN_RET))
if /i !ESDedition%1!==Enterprise set DVDLABEL%1=J_CENA&set DVDISO%1=ENTERPRISE_VOL
if /i !ESDedition%1!==EnterpriseN set DVDLABEL%1=J_CENNA&set DVDISO%1=ENTERPRISEN_VOL
if /i !ESDedition%1!==EnterpriseS set DVDLABEL%1=J_CES&set DVDISO%1=ENTERPRISES_VOL
if /i !ESDedition%1!==EnterpriseSN set DVDLABEL%1=J_CESN&set DVDISO%1=ENTERPRISESN_VOL
exit /b

:prompt1
cls
echo.
echo ============================================================
echo Enter / Paste the complete path to the ESD file
echo ^(without quotes marks "" even if the path contains spaces^)
echo ============================================================
echo.
set /p ENCRYPTEDESD=
if [%ENCRYPTEDESD%]==[] goto :QUIT
call :setvar "%ENCRYPTEDESD%"
goto :check

:setvar
SET ENCRYPTEDESDN=%~nx1
goto :eof

:prompt2
cls
echo.
echo ============================================================
echo Found more than one ESD file in the current directory
echo Enter the name of the desired file to process
echo You may use "Tab" button to ease the selection
echo ============================================================
echo.
set /p ENCRYPTEDESD=
if [%ENCRYPTEDESD%]==[] goto :QUIT
SET ENCRYPTEDESDN=%ENCRYPTEDESD%

:check
SET ENCRYPTED=0
if /i %ENCRYPTEDESDN%==install.esd (ren %ENCRYPTEDESD% %ENCRYPTEDESDN%.orig&set ENCRYPTEDESD=%ENCRYPTEDESD%.orig)
bin\wimlib-imagex.exe info "%ENCRYPTEDESD%" 5 >nul 2>&1
IF %ERRORLEVEL% EQU 0 SET MULTI=1&GOTO :MAINMENU
bin\wimlib-imagex.exe info "%ENCRYPTEDESD%" 4 >nul 2>&1
IF %ERRORLEVEL% EQU 74 SET ENCRYPTED=1&GOTO :MAINMENU
IF %ERRORLEVEL% EQU 18 (
cls
echo.
echo =================================================================
echo ERROR: ESD file does not have original structure ^(4 or 5 images^).
echo =================================================================
echo.
echo Press any key to exit.
pause >nul
goto :eof
)
IF %ERRORLEVEL% NEQ 0 (
cls
echo.
echo ============================================================
echo ERROR: ESD file is damaged or not found.
echo ============================================================
echo.
echo Press any key to exit.
pause >nul
goto :eof
)

:MAINMENU
cls
echo ============================================================
echo.       1 - Create ISO with Standard install.wim
echo.       2 - Create ISO with Compressed install.esd
echo.       3 - Create Standard install.wim
echo.       4 - Create Compressed install.esd
IF %ENCRYPTED%==1 (
echo.       5 - Decrypt ESD file only
echo ____________________________________________________________
echo Encrypted ESD Backup is %Backup%. Press 9 to toggle
) else (
echo.       5 - ESD file info
)
echo ============================================================
echo.
choice /c 1234590 /n /m "Choose a menu option, or press 0 to quit: "
if errorlevel 7 GOTO :QUIT
if errorlevel 6 (if /i %Backup% equ OFF (set Backup=ON) else (set Backup=OFF))&goto :MAINMENU
if errorlevel 5 (if %ENCRYPTED%==1 (GOTO :DDECRYPT) else (GOTO :INFO))
if errorlevel 4 (set WIMFILE=install.esd&goto :Single)
if errorlevel 3 (set WIMFILE=install.wim&goto :Single)
if errorlevel 2 (set WIMFILE=install.esd&goto :ISO)
if errorlevel 1 (set WIMFILE=install.wim&goto :ISO)
GOTO :MAINMENU

:Single
cls
if %WIMFILE%==install.wim IF EXIST "%CD%\install.wim" (
echo.
echo ============================================================
echo An install.wim file is already present in the current folder
echo ============================================================
echo.
echo Press any key to exit.
pause >nul
GOTO :QUIT
)
echo.
IF %ENCRYPTED%==1 CALL :DECRYPT
bin\wimlib-imagex.exe info "%ENCRYPTEDESD%" 5 1>nul 2>nul && SET MULTI=1
echo ============================================================
echo Creating %WIMFILE% file...
echo ============================================================
echo.
if %WIMFILE%==install.esd (
"%wimlib%" export "%ENCRYPTEDESD%" 4 %WIMFILE%
) else (
"%wimlib%" export "%ENCRYPTEDESD%" 4 %WIMFILE% --compress=maximum
)
IF %MULTI%==1 echo.&"%wimlib%" export "%ENCRYPTEDESD%" 5 %WIMFILE%
SET ERRORTEMP=%ERRORLEVEL%
IF %ERRORTEMP% NEQ 0 (echo.&echo Errors were reported during export.&PAUSE&GOTO :QUIT)
echo.
echo Done.
echo.
echo Press any key to exit.
pause >nul
GOTO :QUIT

:ISO
cls
echo.
IF %ENCRYPTED%==1 CALL :DECRYPT
IF %PREPARED%==0 CALL :PREPARE
echo ============================================================
echo Creating Setup Media Layout...
echo ============================================================
IF EXIST ISOFOLDER\ rmdir /s /q ISOFOLDER\
mkdir ISOFOLDER
echo.
"%wimlib%" apply "%ENCRYPTEDESD%" 1 ISOFOLDER\ >nul 2>&1
SET ERRORTEMP=%ERRORLEVEL%
IF %ERRORTEMP% NEQ 0 (echo.&echo Errors were reported during apply.&PAUSE&GOTO :QUIT)
del ISOFOLDER\MediaMeta.xml >nul 2>&1
echo.
echo ============================================================
echo Creating boot.wim...
echo ============================================================
echo.
"%wimlib%" export "%ENCRYPTEDESD%" 2 ISOFOLDER\sources\boot.wim --compress=maximum
SET ERRORTEMP=%ERRORLEVEL%
IF %ERRORTEMP% NEQ 0 (echo.&echo Errors were reported during export.&PAUSE&GOTO :QUIT)
echo.
"%wimlib%" export "%ENCRYPTEDESD%" 3 ISOFOLDER\sources\boot.wim --boot
SET ERRORTEMP=%ERRORLEVEL%
IF %ERRORTEMP% NEQ 0 (echo.&echo Errors were reported during export.&PAUSE&GOTO :QUIT)
"%wimlib%" update ISOFOLDER\sources\boot.wim 2 <bin\wim-update.txt 1>nul 2>nul
echo.
echo ============================================================
echo Creating %WIMFILE%...
echo ============================================================
echo.
if %WIMFILE%==install.esd (
"%wimlib%" export "%ENCRYPTEDESD%" 4 ISOFOLDER\sources\%WIMFILE%
) else (
"%wimlib%" export "%ENCRYPTEDESD%" 4 ISOFOLDER\sources\%WIMFILE% --compress=maximum
)
IF %MULTI%==1 echo.&"%wimlib%" export "%ENCRYPTEDESD%" 5 ISOFOLDER\sources\%WIMFILE%
SET ERRORTEMP=%ERRORLEVEL%
IF %ERRORTEMP% NEQ 0 (echo.&echo Errors were reported during export.&PAUSE&GOTO :QUIT)
echo.
echo ============================================================
echo Creating ISO...
echo ============================================================
IF %MULTI%==1 (
for /f "tokens=5,6,7,8,9,10 delims=: " %%G in ('bin\wimlib-imagex.exe info ISOFOLDER\sources\%WIMFILE% 2 ^| find /i "Last Modification Time"') do (set mmm=%%G&set "isotime=%%H/%%L,%%I:%%J:%%K")
) else (
for /f "tokens=5,6,7,8,9,10 delims=: " %%G in ('bin\wimlib-imagex.exe info ISOFOLDER\sources\%WIMFILE% 1 ^| find /i "Last Modification Time"') do (set mmm=%%G&set "isotime=%%H/%%L,%%I:%%J:%%K")
)
call :setdate %mmm%
REM bin\cdimage.exe -bootdata:2#p0,e,b"ISOFOLDER\boot\etfsboot.com"#pEF,e,b"ISOFOLDER\efi\Microsoft\boot\efisys.bin" -o -m -u2 -udfver102 -t%isotime% -g -l%DVDLABEL% ISOFOLDER %DVDISO%
REM bin\mkisofs.exe -iso-level 4 -udf -r -force-uppercase -duplicates-once -volid %DVDLABEL% -hide boot.catalog -hide-udf boot.catalog -b "boot/etfsboot.com" -no-emul-boot -boot-load-size 8 -eltorito-platform efi -b "efi/microsoft/boot/efisys.bin" -no-emul-boot -o %DVDISO% ISOFOLDER
bin\oscdimg.exe -bootdata:2#p0,e,b"ISOFOLDER\boot\etfsboot.com"#pEF,e,b"ISOFOLDER\efi\Microsoft\boot\efisys.bin" -l%DVDLABEL% -u2 -udfver102 -m -k -o -t%isotime% -g ISOFOLDER %DVDISO%

SET ERRORTEMP=%ERRORLEVEL%
IF %ERRORTEMP% NEQ 0 (
echo.
echo Errors were reported during ISO creation.
echo.
echo Press any key to exit.
pause >nul
IF EXIST "%ENCRYPTEDESD%.bak" (
del /f /q "%ENCRYPTEDESD%" >nul 2>&1
ren "%ENCRYPTEDESD%.bak" %ENCRYPTEDESDN%
)
exit
)
rmdir /s /q ISOFOLDER\
echo.
echo Press any key to exit.
pause >nul
GOTO :QUIT

:INFO
IF %PREPARED%==0 CALL :PREPARE
for /f "tokens=2* delims=: " %%i in ('bin\wimlib-imagex.exe info "%ENCRYPTEDESD%" 4 ^| find /i "Display Name"') do set _os=%%j
IF %MULTI%==1 for /f "tokens=2* delims=: " %%i in ('bin\wimlib-imagex.exe info "%ENCRYPTEDESD%" 5 ^| find /i "Display Name"') do set _os2=%%j
for /f "tokens=3 delims=: " %%i in ('bin\wimlib-imagex.exe info "%ENCRYPTEDESD%" 4 ^| find /i "Major"') do set _ver1=%%i
for /f "tokens=3 delims=: " %%i in ('bin\wimlib-imagex.exe info "%ENCRYPTEDESD%" 4 ^| find /i "Minor"') do set _ver2=%%i
set _ver=%_ver1%.%_ver2%.%build%
cls
echo ============================================================
echo                     ESD Contents Info
echo ============================================================
echo.
IF %MULTI%==1 (
echo      OS 1: %_os%
echo      OS 2: %_os2%
) else (
echo        OS: %_os%
)
echo      Arch: %arch%
echo  Language: %langid%
echo   Version: %_ver%.%svcbuild%
if defined branch echo    Branch: %branch%
echo.
echo Press any key to continue...
pause >nul
GOTO :MAINMENU

:PREPARE
SET PREPARED=1
for /f "tokens=2 delims=: " %%i in ('bin\wimlib-imagex.exe info "%ENCRYPTEDESD%" 4 ^| findstr /b "Build"') do set build=%%i
if %build% LEQ 9600 (
cls
echo.
echo ============================================================
echo ERROR: The script supports Windows 10 ESDs only.
echo you may use older version to convert Windows 8.1 ESDs.
echo ============================================================
echo.
echo Press any key to exit.
pause >nul
goto :QUIT
)
bin\wimlib-imagex.exe info "%ENCRYPTEDESD%" 5 1>nul 2>nul && SET MULTI=1
for /f "tokens=2 delims=: " %%i in ('bin\wimlib-imagex.exe info "%ENCRYPTEDESD%" 4 ^| find /i "Architecture"') do set arch=%%i
for /f "tokens=3 delims=: " %%i in ('bin\wimlib-imagex.exe info "%ENCRYPTEDESD%" 4 ^| find /i "Edition"') do set editionid=%%i
for /f "tokens=3 delims=: " %%i in ('bin\wimlib-imagex.exe info "%ENCRYPTEDESD%" 4 ^| find /i "Default"') do set langid=%%i
for /f "tokens=4 delims=: " %%i in ('bin\wimlib-imagex.exe info "%ENCRYPTEDESD%" 4 ^| find /i "Service Pack Build"') do set svcbuild=%%i
"%wimlib%" extract "%ENCRYPTEDESD%" 1 sources\ei.cfg --dest-dir=.\bin\temp --no-acls >nul 2>&1
type .\bin\temp\ei.cfg 2>nul | find /i "Volume" 1>nul && set VOL=1
"%wimlib%" extract "%ENCRYPTEDESD%" 1 sources\setupprep.exe --dest-dir=.\bin\temp --no-acls >nul 2>&1
bin\7z.exe l .\bin\temp\setupprep.exe >.\bin\temp\version.txt 2>&1
for /f "tokens=4,5 delims=. " %%i in ('"findstr /B "FileVersion" .\bin\temp\version.txt" 2^>nul') do set version=%%i.%%j
for /f "tokens=7 delims=.) " %%i in ('"findstr /B "FileVersion" .\bin\temp\version.txt" 2^>nul') do set datetime=%%i
for /f "tokens=6 delims=.( " %%i in ('"findstr /B "FileVersion" .\bin\temp\version.txt" 2^>nul') do set branch=%%i
if defined branch for %%b in (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) do set branch=!branch:%%b=%%b!
if defined branch set _label=%version%.%datetime%.%branch%_CLIENT
rd /s /q .\bin\temp

set lang=%langid:~0,2%
if /i %langid%==en-gb set lang=en-gb
if /i %langid%==es-mx set lang=es-mx
if /i %langid%==fr-ca set lang=fr-ca
if /i %langid%==pt-pt set lang=pp
if /i %langid%==sr-latn-rs set lang=sr-latn
if /i %langid%==zh-cn set lang=cn
if /i %langid%==zh-tw set lang=tw
if /i %langid%==zh-hk set lang=hk
for %%b in (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) do set langid=!langid:%%b=%%b!

if /i %arch%==x86 set archl=X86
if /i %arch%==x86_64 set arch=x64&set archl=X64

IF %MULTI%==1 (
if /i %editionid%==Professional set DVDLABEL=J_CCSA_%archl%FRE_%langid%_DV5&set DVDISO=%_label%PRO-CORE_OEMRET_%archl%FRE_%langid%.ISO
if /i %editionid%==ProfessionalN set DVDLABEL=J_CCSNA_%archl%FRE_%langid%_DV5&set DVDISO=%_label%PRON-COREN_OEMRET_%archl%FRE_%langid%.ISO
if defined branch exit /b
)
if /i %editionid%==Core set DVDLABEL=J_CCRA_%archl%FRE_%langid%_DV5&set DVDISO=%_label%CORE_OEMRET_%archl%FRE_%langid%.ISO
if /i %editionid%==CoreN set DVDLABEL=J_CCRNA_%archl%FRE_%langid%_DV5&set DVDISO=%_label%COREN_OEMRET_%archl%FRE_%langid%.ISO
if /i %editionid%==CoreSingleLanguage set DVDLABEL=J_CSLA_%archl%FRE_%langid%_DV5&set DVDISO=%_label%SINGLELANGUAGE_OEM_%archl%FRE_%langid%.ISO
if /i %editionid%==CoreCountrySpecific set DVDLABEL=J_CCHA_%archl%FRE_%langid%_DV5&set DVDISO=%_label%CHINA_OEM_%archl%FRE_%langid%.ISO
if /i %editionid%==Professional (IF %VOL%==1 (set DVDLABEL=J_CPRA_%archl%FREV_%langid%_DV5&set DVDISO=%_label%PROFESSIONALVL_VOL_%archl%FRE_%langid%.ISO) else (set DVDLABEL=J_CPRA_%archl%FRE_%langid%_DV5&set DVDISO=%_label%PRO_OEMRET_%archl%FRE_%langid%.ISO))
if /i %editionid%==ProfessionalN (IF %VOL%==1 (set DVDLABEL=J_CPRNA_%archl%FREV_%langid%_DV5&set DVDISO=%_label%PROFESSIONALNVL_VOL_%archl%FRE_%langid%.ISO) else (set DVDLABEL=J_CPRNA_%archl%FRE_%langid%_DV5&set DVDISO=%_label%PRON_OEMRET_%archl%FRE_%langid%.ISO))
if /i %editionid%==Education (IF %VOL%==1 (set DVDLABEL=J_CEDA_%archl%FREV_%langid%_DV5&set DVDISO=%_label%EDUCATION_VOL_%archl%FRE_%langid%.ISO) else (set DVDLABEL=J_CEDA_%archl%FRE_%langid%_DV5&set DVDISO=%_label%EDUCATION_RET_%archl%FRE_%langid%.ISO))
if /i %editionid%==EducationN (IF %VOL%==1 (set DVDLABEL=J_CEDNA_%archl%FREV_%langid%_DV5&set DVDISO=%_label%EDUCATIONN_VOL_%archl%FRE_%langid%.ISO) else (set DVDLABEL=J_CEDNA_%archl%FRE_%langid%_DV5&set DVDISO=%_label%EDUCATIONN_RET_%archl%FRE_%langid%.ISO))
if /i %editionid%==Enterprise set DVDLABEL=J_CENA_%archl%FREV_%langid%_DV5&set DVDISO=%_label%ENTERPRISE_VOL_%archl%FRE_%langid%.ISO
if /i %editionid%==EnterpriseN set DVDLABEL=J_CENNA_%archl%FREV_%langid%_DV5&set DVDISO=%_label%ENTERPRISEN_VOL_%archl%FRE_%langid%.ISO
if /i %editionid%==EnterpriseS set DVDLABEL=J_CES_%archl%FREV_%langid%_DV5&set DVDISO=%_label%ENTERPRISES_VOL_%archl%FRE_%langid%.ISO
if /i %editionid%==EnterpriseSN set DVDLABEL=J_CESN_%archl%FREV_%langid%_DV5&set DVDISO=%_label%ENTERPRISESN_VOL_%archl%FRE_%langid%.ISO
if defined branch exit /b

IF %MULTI%==1 (
if /i %editionid%==Professional set DVDLABEL=J_CCSA_%archl%FRE_%langid%_DV5&set DVDISO=%lang%_windows_10_multiple_editions_%build%.%svcbuild%_%arch%_dvd.iso
if /i %editionid%==ProfessionalN set DVDLABEL=J_CCSNA_%archl%FRE_%langid%_DV5&set DVDISO=%lang%_windows_10_n_multiple_editions_%build%.%svcbuild%_%arch%_dvd.iso
exit /b
)
if /i %editionid%==Core set DVDLABEL=J_CCRA_%archl%FRE_%langid%_DV5&set DVDISO=%lang%_windows_10_home_%build%.%svcbuild%_%arch%_dvd.iso
if /i %editionid%==CoreN set DVDLABEL=J_CCRNA_%archl%FRE_%langid%_DV5&set DVDISO=%lang%_windows_10_home_n_%build%.%svcbuild%_%arch%_dvd.iso
if /i %editionid%==CoreSingleLanguage set DVDLABEL=J_CSLA_%archl%FRE_%langid%_DV5&set DVDISO=%lang%_windows_10_home_singlelanguage_%build%.%svcbuild%_%arch%_dvd.iso
if /i %editionid%==CoreCountrySpecific set DVDLABEL=J_CCHA_%archl%FRE_%langid%_DV5&set DVDISO=%lang%_windows_10_home_china_%build%.%svcbuild%_%arch%_dvd.iso
if /i %editionid%==Professional (IF %VOL%==1 (set DVDLABEL=J_CPRA_%archl%FREV_%langid%_DV5&set DVDISO=%lang%_windows_10_professional_vl_%build%.%svcbuild%_%arch%_dvd.iso) else (set DVDLABEL=J_CPRA_%archl%FRE_%langid%_DV5&set DVDISO=%lang%_windows_10_pro_%build%.%svcbuild%_%arch%_dvd.iso))
if /i %editionid%==ProfessionalN (IF %VOL%==1 (set DVDLABEL=J_CPRNA_%archl%FREV_%langid%_DV5&set DVDISO=%lang%_windows_10_professional_n_vl_%build%.%svcbuild%_%arch%_dvd.iso) else (set DVDLABEL=J_CPRNA_%archl%FRE_%langid%_DV5&set DVDISO=%lang%_windows_10_pro_n_%build%.%svcbuild%_%arch%_dvd.iso))
if /i %editionid%==Education (IF %VOL%==1 (set DVDLABEL=J_CEDA_%archl%FREV_%langid%_DV5&set DVDISO=%lang%_windows_10_education_vl_%build%.%svcbuild%_%arch%_dvd.iso) else (set DVDLABEL=J_CEDA_%archl%FRE_%langid%_DV5&set DVDISO=%lang%_windows_10_education_%build%.%svcbuild%_%arch%_dvd.iso))
if /i %editionid%==EducationN (IF %VOL%==1 (set DVDLABEL=J_CEDNA_%archl%FREV_%langid%_DV5&set DVDISO=%lang%_windows_10_education_n_vl_%build%.%svcbuild%_%arch%_dvd.iso) else (set DVDLABEL=J_CEDNA_%archl%FRE_%langid%_DV5&set DVDISO=%lang%_windows_10_education_n_%build%.%svcbuild%_%arch%_dvd.iso))
if /i %editionid%==Enterprise set DVDLABEL=J_CENA_%archl%FREV_%langid%_DV5&set DVDISO=%lang%_windows_10_enterprise_%build%.%svcbuild%_%arch%_dvd.iso
if /i %editionid%==EnterpriseN set DVDLABEL=J_CENNA_%archl%FREV_%langid%_DV5&set DVDISO=%lang%_windows_10_enterprise_n_%build%.%svcbuild%_%arch%_dvd.iso
if /i %editionid%==EnterpriseS set DVDLABEL=J_CES_%archl%FREV_%langid%_DV5&set DVDISO=%lang%_windows_10_enterprise_2016_ltsb_%build%.%svcbuild%_%arch%_dvd.iso
if /i %editionid%==EnterpriseSN set DVDLABEL=J_CESNN_%archl%FREV_%langid%_DV5&set DVDISO=%lang%_windows_10_enterprise_2016_ltsb_n_%build%.%svcbuild%_%arch%_dvd.iso
exit /b

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

:DDECRYPT
cls
CALL :DECRYPT
ren "%ENCRYPTEDESD%" Decrypted-%ENCRYPTEDESDN%
echo.
echo Done.
echo.
echo Press any key to exit.
pause >nul
GOTO :QUIT

:DECRYPT
if /i %Backup%==ON (
echo ============================================================
echo Backing up encrypted esd file...
echo ============================================================
copy /y "%ENCRYPTEDESD%" "%ENCRYPTEDESD%.bak" >nul
)
echo.
echo ============================================================
echo Running Decryption program...
echo ============================================================
echo.
bin\esddecrypt.exe "%ENCRYPTEDESD%" 2>nul&&exit /b
bin\esddecrypt.exe "%ENCRYPTEDESD%" %cryptokey1% 2>nul&&exit /b
bin\esddecrypt.exe "%ENCRYPTEDESD%" %cryptokey2% 2>nul&&exit /b
bin\esddecrypt.exe "%ENCRYPTEDESD%" %cryptokey3% 2>nul&&exit /b
bin\esddecrypt.exe "%ENCRYPTEDESD%" %cryptokey4% 2>nul&&exit /b
bin\esddecrypt.exe "%ENCRYPTEDESD%" %cryptokey5% &&exit /b
echo.
echo Errors were reported during ESD decryption.
echo.
echo Press any key to exit.
pause >nul
GOTO :QUIT

:QUIT
IF EXIST ISOFOLDER\ rmdir /s /q ISOFOLDER\
IF EXIST "%ENCRYPTEDESD%.bak" (
del /f /q "%ENCRYPTEDESD%" >nul 2>&1
ren "%ENCRYPTEDESD%.bak" %ENCRYPTEDESDN%
)
goto :done


:done
echo.
echo done
echo.
goto :eof

:NOOSCDIMG
echo.
echo Download ADK-Tools...
echo.
"%~dp0bin\GetWaikTools.exe" -silent -win10 -folder:%~dp0bin
xcopy %~dp0bin\ADK_6\x86\Oscdimg\oscdimg.exe %~dp0bin\ /cheriky >nul 2>&1
IF EXIST bin\ADK_6 rd /s /q bin\ADK_6\
if not exist "%~dp0bin\oscdimg.exe" goto :OSCDERROR
goto :Start

:OSCDERROR
echo.
echo Win10 ADK download failed
goto :eof

:NODISM
echo.
echo Download dism...
echo.
"%~dp0bin\GetWaikTools.exe" -silent -win10dism -folder:%~dp0bin
xcopy %~dp0bin\ADK_6\x86\Dism\* %~dp0bin\ /cheriky >nul 2>&1
IF EXIST bin\ADK_6 rd /s /q bin\ADK_6\
if not exist "%~dp0bin\dism.exe" goto :DISMERROR
goto :ALLOK
:DISMERROR
echo.
echo Dism download failed
goto :eof

:ALLOK
echo.
echo DISM OK
echo.
goto :CheckOSCDIMG

REM exit