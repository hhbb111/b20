@echo off
title Infinite Network Reset Loop
color 0A

:START
echo ========================================
echo   Resetting Network Configuration...
echo ========================================
echo.

ipconfig /release
ipconfig /flushdns
ipconfig /renew
netsh int ip reset
netsh winsock reset
netsh advfirewall reset
arp -d *
net stop dnscache
net start dnscache

echo.
echo Network reset complete. Waiting 80 seconds before repeating...
timeout /t 80 /nobreak
goto START
