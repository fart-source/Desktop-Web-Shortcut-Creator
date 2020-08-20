@echo off
color 02
title "Desktop Web Shortcut Creator"

:check1

cls
echo URL:
set /p WebAddress=">"
if "%WebAddress%"=="" goto :check1

:check2

cls
echo NAME:
set /p ShortCutName=">"
if "%ShortCutName%"=="" goto :check2

echo @echo off>>Temporary_Shortcut.txt
echo color 02>>Temporary_Shortcut.txt
echo start "microsoft edge" %WebAddress%>>Temporary_Shortcut.txt
echo exit>>Temporary_Shortcut.txt
ren "Temporary_Shortcut.txt" "%ShortCutName%.bat"
exit
