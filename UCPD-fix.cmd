SETLOCAL

REM Specify the fully-qualified path of vmware-dem-fta-stub.dll ("%~dp0vmware-..." expects the DLL in the same folder as this script)
SET fta-stub-dll=%~dp0vmware-dem-fta-stub.dll

REM Specify the fully-qualified name of the RunDLL32.exe copy
SET host-process=%~dp0UCPD-fix.exe

REM Modify in case of non-English OS
SET language=en-US

CALL :Parse-host-process "%host-process%"
IF NOT EXIST "%host-process-mui-path%" MKDIR "%host-process-mui-path%"
IF NOT EXIST "%host-process%" COPY /Y "%WINDIR%\System32\RunDLL32.exe" "%host-process%"
IF NOT EXIST "%host-process-mui-path%\%host-process-filename%.mui" COPY /Y "%WINDIR%\System32\%language%\RunDLL32.exe.mui" "%host-process-mui-path%\%host-process-filename%.mui"

"%WINDIR%\System32\reg.exe" ADD HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce /v "DEM Default Applications" /t REG_SZ /d "\"%host-process%\" \"%fta-stub-dll%\",UCPD" /f
GOTO :EOF

:Parse-host-process
SET host-process-mui-path=%~dp1%language%
SET host-process-filename=%~nx1
GOTO :EOF
