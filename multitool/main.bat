@echo off
Avalanche multitool V2 - by Finder,sega,ace
chcp 65001 >nul
cd files
color 5
start /wait cmd /c "cls & call :banner & goto start" /min
exit /b

:start
call :menu

:menu
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A
echo.
echo.
echo [38;2;255;255;0m        ╔═(1) Wireshark[0m
echo [38;2;255;255;0m        ║[0m
echo [38;2;255;255;0m        ╠══(2) Nmap[0m
echo [38;2;255;255;0m        ║[0m
echo [38;2;255;255;0m        ╠═══(3) Aircrack-ng[0m
echo [38;2;255;255;0m        ║[0m
echo [38;2;255;255;0m        ╚╦═══(4) John the Ripper[0m
echo [38;2;255;255;0m         ║[0m
set /p input=.%BS% [38;2;255;255;0m        ╚══════^>[0m
if /I %input% EQU 1 start wireshark.lnk
if /I %input% EQU 2 start nmap.lnk
if /I %input% EQU 3 start aircrack-ng.lnk
if /I %input% EQU 4 start john.lnk
cls
goto start

:banner
echo.
echo.
echo                     [38;2;255;0;0m ████████╗ ██████╗  ██████╗ ██╗  ██╗████████╗ ██████╗  ██████╗ ██╗[0m
echo                     [38;2;255;51;0m ██╔════╝██╔═══██╗██╔═══██╗██║  ╚══██╔══╝██╔═══██╗██╔═══██╗██║      [0m
echo                     [38;2;255;102;0m███████╗██║   ██║██║   ██║██║     ██║   ██║   ██║██║   ██║██║      [0m
echo                     [38;2;255;153;0m██╔═══██║██║   ██║██║   ██║██║     ██║   ██║   ██║██║   ██║██║      [0m
echo                     [38;2;255;204;0m███████║╚██████╔╝╚██████╔╝███████╗██║   ██║   ╚██████╔╝╚██████╔╝███████╗[0m
echo                     [38;2;255;255;0m╚══════╝ ╚═════╝  ╚═════╝  ╚══════╝╚═╝   ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝[0m
echo.
echo [30;47m              Press any key to continue...  [0m
pause >nul
cls
goto start
