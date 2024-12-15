echo off
title Fixer

::The   character is the ctrl-G character. It plays the bell sound.
::That character is replaced with a space when opened on windows 11.
::I don't have a windows 10 machine with me right now :')

::This section determines if the file is running as an administrator and in the C drive.

cd | find "C:" || goto notC
cd | find "Windows" || goto notAdmin

::This is where the selection menu begins

set one=DISABLED
set two=DISABLED
set three=DISABLED
set four=DISABLED
set five=DISABLED
set six=DISABLED
set Apps=Not Selected
set Audio=Not Selected
set BITS=Not Selected
set Bluetooth=Not Selected
set Device=Not Selected
set DeviceCenter=Not Selected
set IEBrowserWeb=Not Selected
set IESecurity=Not Selected
set Keyboard=Not Selected
set Networking=Not Selected
set PCW=Not Selected
set Power=Not Selected
set Printer=Not Selected
set Search=Not Selected
set Speech=Not Selected
set Video=Not Selected
set WMPC=Not Selected
set WMPL=Not Selected
set WMPD=Not Selected
set WindowsUpdate=Not Selected
set Maintenance=Not Selected

:Administrator
cls
echo ----
echo Windows Tools:
echo ----
echo Please select what you^'d like to do:
echo (1) Basic Scan (%one%)
echo (2) Defrag (%two%)
echo (3) Temporary File Cleanup (%three%)
echo (4) Check Disk (%four%)
echo (5) Quick Security Scan (%five%)
echo (6) Full Security Scan (%six%)
echo (T) Troubleshoot Systems (Separate Menu)
echo (S) Start
echo (E) Exit
echo ----
echo #Please note that the security scan uses the default Window's Security program.
echo #This feature will not work if this is disabled.
echo ----

choice /C 123456TSE /N /M "> "

if %ERRORLEVEL% == 1 if %one%==ENABLED set one=DISABLED& goto administrator
if %ERRORLEVEL% == 1 if %one%==DISABLED set one=ENABLED& goto administrator
if %ERRORLEVEL% == 2 if %two%==ENABLED set two=DISABLED& goto administrator
if %ERRORLEVEL% == 2 if %two%==DISABLED set two=ENABLED& goto administrator
if %ERRORLEVEL% == 3 if %three%==ENABLED set three=DISABLED& goto administrator
if %ERRORLEVEL% == 3 if %three%==DISABLED set three=ENABLED& goto administrator
if %ERRORLEVEL% == 4 if %four%==ENABLED set four=DISABLED& goto administrator
if %ERRORLEVEL% == 4 if %four%==DISABLED set four=ENABLED& goto administrator
if %ERRORLEVEL% == 5 if %five%==ENABLED set five=DISABLED& goto administrator
if %ERRORLEVEL% == 5 if %five%==DISABLED set five=ENABLED& goto administrator
if %ERRORLEVEL% == 6 if %six%==ENABLED set six=DISABLED& goto administrator
if %ERRORLEVEL% == 6 if %six%==DISABLED set six=ENABLED& goto administrator
if %ERRORLEVEL% == 7 goto troubleshooting
if %ERRORLEVEL% == 8 goto start
if %ERRORLEVEL% == 9 exit
goto administrator

:troubleshooting
cls
echo ----
echo Troubleshooters:
echo ----
echo Please select what you^'d like to do:
echo (1) Apps (%Apps%)
echo (2) Audio (%Audio%)
echo (3) BITS (%BITS%)
echo (4) Bluetooth (%Bluetooth%)
echo (5) Device (%Device%)
echo (6) DeviceCenter (%DeviceCenter%)
echo (7) IEBrowserWeb (%IEBrowserWeb%)
echo (8) IESecurity (%IESecurity%)
echo (9) Keyboard (%Keyboard%)
echo (0) Networking (%Networking%)
echo (Q) PCW (%PCW%)
echo (W) Power (%Power%)
echo (E) Printer (%Printer%)
echo (R) Search (%Search%)
echo (T) Speech (%Speech%)
echo (Y) Video (%Video%)
echo (U) Windows Media Player Config. (%WMPC%)
echo (I) Windows Media Player Library (%WMPL%)
echo (O) Windows Media Player DVD (%WMPD%)
echo (P) Windows Update (%WindowsUpdate%)
echo (A) Maintenance (%Maintenance%)
echo (B) Go Back (First Menu)
echo (S) Start
echo ----

choice /C 1234567890QWERTYUIOPABS /N /M "> "

if %ERRORLEVEL% == 1 if "%Apps%"=="Not Selected" set Apps=Selected& goto troubleshooting
if %ERRORLEVEL% == 1 if "%Apps%"=="Selected" set Apps=Not Selected& goto troubleshooting
if %ERRORLEVEL% == 2 if "%Audio%"=="Not Selected" set Audio=Selected& goto troubleshooting
if %ERRORLEVEL% == 2 if "%Audio%"=="Selected" set Audio=Not Selected& goto troubleshooting
if %ERRORLEVEL% == 3 if "%BITS%"=="Not Selected" set BITS=Selected& goto troubleshooting
if %ERRORLEVEL% == 3 if "%BITS%"=="Selected" set BITS=Not Selected& goto troubleshooting
if %ERRORLEVEL% == 4 if "%Bluetooth%"=="Not Selected" set Bluetooth=Selected& goto troubleshooting
if %ERRORLEVEL% == 4 if "%Bluetooth%"=="Selected" set Bluetooth=Not Selected& goto troubleshooting
if %ERRORLEVEL% == 5 if "%Device%"=="Not Selected" set Device=Selected& goto troubleshooting
if %ERRORLEVEL% == 5 if "%Device%"=="Selected" set Device=Not Selected& goto troubleshooting
if %ERRORLEVEL% == 6 if "%DeviceCenter%"=="Not Selected" set DeviceCenter=Selected& goto troubleshooting
if %ERRORLEVEL% == 6 if "%DeviceCenter%"=="Selected" set DeviceCenter=Not Selected& goto troubleshooting
if %ERRORLEVEL% == 7 if "%IEBrowserWeb%"=="Not Selected" set IEBrowserWeb=Selected& goto troubleshooting
if %ERRORLEVEL% == 7 if "%IEBrowserWeb%"=="Selected" set IEBrowserWeb=Not Selected& goto troubleshooting
if %ERRORLEVEL% == 8 if "%IESecurity%"=="Not Selected" set IESecurity=Selected& goto troubleshooting
if %ERRORLEVEL% == 8 if "%IESecurity%"=="Selected" set IESecurity=Not Selected& goto troubleshooting
if %ERRORLEVEL% == 9 if "%Keyboard%"=="Not Selected" set Keyboard=Selected& goto troubleshooting
if %ERRORLEVEL% == 9 if "%Keyboard%"=="Selected" set Keyboard=Not Selected& goto troubleshooting
if %ERRORLEVEL% == 10 if "%Networking%"=="Not Selected" set Networking=Selected& goto troubleshooting
if %ERRORLEVEL% == 10 if "%Networking%"=="Selected" set Networking=Not Selected& goto troubleshooting
if %ERRORLEVEL% == 11 if "%PCW%"=="Not Selected" set PCW=Selected& goto troubleshooting
if %ERRORLEVEL% == 11 if "%PCW%"=="Selected" set PCW=Not Selected& goto troubleshooting
if %ERRORLEVEL% == 12 if "%Power%"=="Not Selected" set Power=Selected& goto troubleshooting
if %ERRORLEVEL% == 12 if "%Power%"=="Selected" set Power=Not Selected& goto troubleshooting
if %ERRORLEVEL% == 13 if "%Printer%"=="Not Selected" set Printer=Selected& goto troubleshooting
if %ERRORLEVEL% == 13 if "%Printer%"=="Selected" set Printer=Not Selected& goto troubleshooting
if %ERRORLEVEL% == 14 if "%Search%"=="Not Selected" set Search=Selected& goto troubleshooting
if %ERRORLEVEL% == 14 if "%Search%"=="Selected" set Search=Not Selected& goto troubleshooting
if %ERRORLEVEL% == 15 if "%Speech%"=="Not Selected" set Speech=Selected& goto troubleshooting
if %ERRORLEVEL% == 15 if "%Speech%"=="Selected" set Speech=Not Selected& goto troubleshooting
if %ERRORLEVEL% == 16 if "%Video%"=="Not Selected" set Video=Selected& goto troubleshooting
if %ERRORLEVEL% == 16 if "%Video%"=="Selected" set Video=Not Selected& goto troubleshooting
if %ERRORLEVEL% == 17 if "%WMPC%"=="Not Selected" set WMPC=Selected& goto troubleshooting
if %ERRORLEVEL% == 17 if "%WMPC%"=="Selected" set WMPC=Not Selected& goto troubleshooting
if %ERRORLEVEL% == 18 if "%WMPL%"=="Not Selected" set WMPL=Selected& goto troubleshooting
if %ERRORLEVEL% == 18 if "%WMPL%"=="Selected" set WMPL=Not Selected& goto troubleshooting
if %ERRORLEVEL% == 19 if "%WMPD%"=="Not Selected" set WMPD=Selected& goto troubleshooting
if %ERRORLEVEL% == 19 if "%WMPD%"=="Selected" set WMPD=Not Selected& goto troubleshooting
if %ERRORLEVEL% == 20 if "%WindowsUpdate%"=="Not Selected" set WindowsUpdate=Selected& goto troubleshooting
if %ERRORLEVEL% == 20 if "%WindowsUpdate%"=="Selected" set WindowsUpdate=Not Selected& goto troubleshooting
if %ERRORLEVEL% == 21 if "%Maintenance%"=="Not Selected" set Maintenance=Selected& goto troubleshooting
if %ERRORLEVEL% == 21 if "%Maintenance%"=="Selected" set Maintenance=Not Selected& goto troubleshooting
if %ERRORLEVEL% == 22 goto Administrator
if %ERRORLEVEL% == 23 goto start

:start
cls
if %one% == ENABLED call :one
if %two% == ENABLED call :two
if %three% == ENABLED call :three
if %four% == ENABLED call :four
if %five% == ENABLED call :five
if %six% == ENABLED call :six
call :troubleshooters
echo:
echo ----
echo Program Complete
echo ----
pause
exit

:one
echo:
echo Beginning Basic Scan:
sfc /scannow
echo ----
exit /B

:two
echo:
echo Beginning Defrag:
defrag C: /U /V
exit /B

:three
echo:
echo Deleting log files in "%tmp%"
echo:
del "%tmp%\*.log"
echo:
echo Beginning Temp. File Clean:
echo:
echo The program will ask you to select which files you'd like to remove. All options are temporary files and aren't critical to Windows processes.
pause
cleanmgr /d C:
echo ----
exit /B

:four
echo:
echo ----
echo Running chkdsk Program:
chkdsk /f C:
echo ----
exit /B

:five
echo:
echo ----
echo There is no progression bar for security scan. This may take a moment to complete.
echo ----
"%ProgramFiles%\Windows Defender\MpCmdRun.exe" -Scan -ScanType 1
call :update
exit /B

:six
echo:
echo ----
echo There is no progression bar for security scan. This may take up to a few hours to complete.
echo ----
"%ProgramFiles%\Windows Defender\MpCmdRun.exe" -Scan -ScanType 2
call :update
exit /B

:update
echo ----
echo Would you like to update Windows Security Defender? (You must be connected to wifi!) (Y/N): 
choice /C yn /N /M "> "
echo ----
if %ERRORLEVEL% == 1 echo Updating...
if %ERRORLEVEL% == 2 exit /B
echo ----
"%ProgramFiles%\Windows Defender\MpCmdRun.exe" -RemoveDefinitions -All
"%ProgramFiles%\Windows Defender\MpCmdRun.exe" -SignatureUpdate
exit /B

:troubleshooters

if "%Apps%"=="Selected" echo: & echo ---- & echo: & echo Starting Apps Troubleshooter: & powershell "Get-TroubleshootingPack -Path 'C:\Windows\diagnostics\system\Apps' | Invoke-Troubleshootingpack"

if "%Audio%"=="Selected" echo: & echo ---- & echo: & echo Starting Audio Troubleshooter: & powershell "Get-TroubleshootingPack -Path 'C:\Windows\diagnostics\system\Audio' | Invoke-Troubleshootingpack"

if "%BITS%"=="Selected" echo: & echo ---- & echo: & echo Starting BITS Troubleshooter: & powershell "Get-TroubleshootingPack -Path 'C:\Windows\diagnostics\system\BITS' | Invoke-Troubleshootingpack"

if "%Bluetooth%"=="Selected" echo: & echo ---- & echo: & echo Starting Bluetooth Troubleshooter: & powershell "Get-TroubleshootingPack -Path 'C:\Windows\diagnostics\system\Bluetooth' | Invoke-Troubleshootingpack"

if "%Device%"=="Selected" echo: & echo ---- & echo: & echo Starting Device Troubleshooter: & powershell "Get-TroubleshootingPack -Path 'C:\Windows\diagnostics\system\Device' | Invoke-Troubleshootingpack"

if "%DeviceCenter%"=="Selected" echo: & echo ---- & echo: & echo Starting DeviceCenter Troubleshooter: & powershell "Get-TroubleshootingPack -Path 'C:\Windows\diagnostics\system\DeviceCenter' | Invoke-Troubleshootingpack"

if "%IEBrowserWeb%"=="Selected" echo: & echo ---- & echo: & echo Starting IEBrowserWeb Troubleshooter: & powershell "Get-TroubleshootingPack -Path 'C:\Windows\diagnostics\system\IEBrowseWeb' | Invoke-Troubleshootingpack"

if "%IESecurity%"=="Selected" echo: & echo ---- & echo: & echo Starting IESecurity Troubleshooter: & powershell "Get-TroubleshootingPack -Path 'C:\Windows\diagnostics\system\IESecurity' | Invoke-Troubleshootingpack"

if "%Keyboard%"=="Selected" echo: & echo ---- & echo: & echo Starting Keyboard Troubleshooter: & powershell "Get-TroubleshootingPack -Path 'C:\Windows\diagnostics\system\Keyboard' | Invoke-Troubleshootingpack"

if "%Networking%"=="Selected" echo: & echo ---- & echo: & echo Starting Networking Troubleshooter: & powershell "Get-TroubleshootingPack -Path 'C:\Windows\diagnostics\system\Networking' | Invoke-Troubleshootingpack"

if "%PCW%"=="Selected" echo: & echo ---- & echo: & echo Starting PCW Troubleshooter: & powershell "Get-TroubleshootingPack -Path 'C:\Windows\diagnostics\system\PCW' | Invoke-Troubleshootingpack"

if "%Power%"=="Selected" echo: & echo ---- & echo: & echo Starting Power Troubleshooter: & powershell "Get-TroubleshootingPack -Path 'C:\Windows\diagnostics\system\Power' | Invoke-Troubleshootingpack"

if "%Printer%"=="Selected" echo: & echo ---- & echo: & echo Starting Printer Troubleshooter: & powershell "Get-TroubleshootingPack -Path 'C:\Windows\diagnostics\system\Printer' | Invoke-Troubleshootingpack"

if "%Search%"=="Selected" echo: & echo ---- & echo: & echo Starting Search Troubleshooter: & powershell "Get-TroubleshootingPack -Path 'C:\Windows\diagnostics\system\Search' | Invoke-Troubleshootingpack"

if "%Speech%"=="Selected" echo: & echo ---- & echo: & echo Starting Speech Troubleshooter: & powershell "Get-TroubleshootingPack -Path 'C:\Windows\diagnostics\system\Speech' | Invoke-Troubleshootingpack"

if "%Video%"=="Selected" echo: & echo ---- & echo: & echo Starting Video Troubleshooter: & powershell "Get-TroubleshootingPack -Path 'C:\Windows\diagnostics\system\Video' | Invoke-Troubleshootingpack"

if "%WMPC%"=="Selected" echo: & echo ---- & echo: & echo Starting Windows Media Playeer Configuration Troubleshooter: & powershell "Get-TroubleshootingPack -Path 'C:\Windows\diagnostics\system\WindowsMediaPlayerConfiguration' | Invoke-Troubleshootingpack"

if "%WMPL%"=="Selected" echo: & echo ---- & echo: & echo Starting Windows Meadia Player Library Troubleshooter: & powershell "Get-TroubleshootingPack -Path 'C:\Windows\diagnostics\system\WindowsMediaPlayerMediaLibrary' | Invoke-Troubleshootingpack"

if "%WMPD%"=="Selected" echo: & echo ---- & echo: & echo Starting Windows Media Player DVD Troubleshooter: & powershell "Get-TroubleshootingPack -Path 'C:\Windows\diagnostics\system\WindowsMediaPlayerPlayDVD' | Invoke-Troubleshootingpack"

if "%WindowsUpdate%"=="Selected" echo: & echo ---- & echo: & echo Starting Windows Update Troubleshooter: & powershell "Get-TroubleshootingPack -Path 'C:\Windows\diagnostics\system\WindowsUpdate' | Invoke-Troubleshootingpack"

if "%Maintenance%"=="Selected" echo: & echo ---- & echo: & echo Starting Maintenance Troubleshooter: &  powershell "Get-TroubleshootingPack -Path 'C:\Windows\diagnostics\scheduled\Maintenance' | Invoke-Troubleshootingpack"

exit /B

:notC
cls
echo:
echo Please move the file to C drive.
echo:
pause
exit

:notAdmin
cls
echo:
echo Please run the program as administrator.
echo:
pause
exit
