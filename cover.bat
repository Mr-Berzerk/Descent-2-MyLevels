@echo off
echo Descent 2: Cover Up Music Installer
echo Copyright 2001 The Reactor Core
echo.

if not exist cover.sng goto error
if not exist ..\descent2.hog goto error

if exist ..\descent.sng goto uninstall

echo Installing the Descent 2: Cover Up music. Please wait.
echo. 
echo To unistall run this file again. (If you don't, there will not be any
echo music every 5th and 6th level in any of your other levels!!)
echo.
copy cover.sng ..\descent.sng > nul
echo Soundtrack has been installed successfully.
goto end

:uninstall
echo Uninstalling the music for Descent 2: Cover Up
echo.
echo.
del ..\descent.sng > nul
echo Cover Up Music has been uninstalled.
goto end

:error
echo Error: you are eithor not in the descent2 missions dir,
echo or you are missing some of the files for D2 Cover Up!!!
goto end

:end 
