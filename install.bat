@echo off
CD /d %~dp0

echo.
echo Microsoft Visual C++ All-In-One Runtimes by W1zzard @ TechPowerUp
echo This script modifed by Arashigakuru
echo https://www.techpowerup.com/download/visual-c-redistributable-runtime-package-all-in-one/
echo Modifed version: https://github.com/SakuraSakuraro/microsoft_vcredist_vista
echo.
echo Please choose the installation option:
echo 1 - Install all packages and combined packages Microsoft Visual C++ 2015-2019 Redistributable
echo 2 - Install all packages and split packages Microsoft Visual C++ 2015 and 2017 Redistributable
set /p choice="Enter your choice (1 or 2): "

if "%choice%"=="1" goto OPTION1
if "%choice%"=="2" goto OPTION2

echo Invalid choice! Exiting...
pause
exit

:OPTION1

set IS_X64=0 && if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set IS_X64=1) else (if "%PROCESSOR_ARCHITEW6432%"=="AMD64" (set IS_X64=1))

if "%IS_X64%" == "1" goto X64_1

echo 2005...
start /wait vcredist2005_x86.exe /q

echo 2008...
start /wait vcredist2008_x86.exe /qb

echo 2010...
start /wait vcredist2010_x86.exe /passive /norestart

echo 2012...
start /wait vcredist2012_x86.exe /passive /norestart

echo 2013...
start /wait vcredist2013_x86.exe /passive /norestart

echo Installing combined package for 2015-2019...

echo 2015 - 2019...
start /wait vcredist2015_2017_2019_x86.exe /passive /norestart

goto END

:X64_1
echo 2005...
start /wait vcredist2005_x86.exe /q
start /wait vcredist2005_x64.exe /q

echo 2008...
start /wait vcredist2008_x86.exe /qb
start /wait vcredist2008_x64.exe /qb

echo 2010...
start /wait vcredist2010_x86.exe /passive /norestart
start /wait vcredist2010_x64.exe /passive /norestart

echo 2012...
start /wait vcredist2012_x86.exe /passive /norestart
start /wait vcredist2012_x64.exe /passive /norestart

echo 2013...
start /wait vcredist2013_x86.exe /passive /norestart
start /wait vcredist2013_x64.exe /passive /norestart

echo Installing combined package for 2015-2019...

echo 2015 - 2019...
start /wait vcredist2015_2017_2019_x86.exe /passive /norestart
start /wait vcredist2015_2017_2019_x64.exe /passive /norestart

goto END

:OPTION2

set IS_X64=0 && if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set IS_X64=1) else (if "%PROCESSOR_ARCHITEW6432%"=="AMD64" (set IS_X64=1))

if "%IS_X64%" == "1" goto X64_2

echo 2005...
start /wait vcredist2005_x86.exe /q

echo 2008...
start /wait vcredist2008_x86.exe /qb

echo 2010...
start /wait vcredist2010_x86.exe /passive /norestart

echo 2012...
start /wait vcredist2012_x86.exe /passive /norestart

echo 2013...
start /wait vcredist2013_x86.exe /passive /norestart

echo Installing split packages for 2015 and 2017...

echo 2015...
start /wait optional/vcredist2015_x86.exe /passive /norestart

echo 2017...
start /wait optional/vcredist2017_x86.exe /passive /norestart

goto END

:X64_2
echo 2005...
start /wait vcredist2005_x86.exe /q
start /wait vcredist2005_x64.exe /q

echo 2008...
start /wait vcredist2008_x86.exe /qb
start /wait vcredist2008_x64.exe /qb

echo 2010...
start /wait vcredist2010_x86.exe /passive /norestart
start /wait vcredist2010_x64.exe /passive /norestart

echo 2012...
start /wait vcredist2012_x86.exe /passive /norestart
start /wait vcredist2012_x64.exe /passive /norestart

echo 2013...
start /wait vcredist2013_x86.exe /passive /norestart
start /wait vcredist2013_x64.exe /passive /norestart

echo Installing split packages for 2015 and 2017...

echo 2015...
start /wait optional/vcredist2015_x86.exe /passive /norestart
start /wait optional/vcredist2015_x64.exe /passive /norestart

echo 2017...
start /wait optional/vcredist2017_x86.exe /passive /norestart
start /wait optional/vcredist2017_x64.exe /passive /norestart

goto END

:END
echo.
echo Installation completed successfully
pause
exit
