cd /d %~dp0
call UCPD-fix.cmd
UCPD-fix.exe setupapi,InstallHinfSection DefaultInstall 128 ./WinEU.inf
pause
