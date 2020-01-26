@echo off 
chcp 65001 >nul
title Batchtastic Music Player>nul
Mode con cols=80 lines=11 >nul



set wersja=9.2.3.7
set nazwakompilacji=Raptrix
set kompilacji=BATAST_837
set appdata=%temp%\AbduktionStudios\BatchtasticMusicPlayer
set log=%appdata%\resources\log\BATASLOG-%DATE%.wind
set download=%appdata%\resources\download

if exist "%temp%\AbduktionStudios\BatchtasticMusicPlayer\" goto :launcher
md "%temp%\AbduktionStudios\BatchtasticMusicPlayer"
if exist "%appdata%\resources\log\" goto :launcher
md "%appdata%\resources\log"
if exist "%appdata%\config\" goto :launcher
md "%appdata%\config"
if exist "%appdata%\config\user\" goto :launcher
md "%appdata%\config\user"

if exist "%appdata%\resources\download\" goto :launcher
md "%appdata%\resources\download\"

:launcher
if exist %appdata%\config\user\LightModeEnabled (color 70) else (color 07) >nul
if exist %appdata%\config\user\LightModeEnabled (set kolor=70) else (set kolor=07) >nul
if exist %appdata%\config\user\LightModeEnabled (set kolor=70) else (echo true >>%appdata%\config\user\DarkModeEnabled) >nul
echo.

cls
setlocal enableDelayedExpansion>nul
set /a size=80-1 &
echo  -------- Welcome to Batchtastic %wersja% (%nazwakompilacji%)^! -------->>%log%
echo [BATCHTASTIC LAUNCHER at %TIME%] Batchtastic script initiated by %USERNAME% >>%log%
echo.
echo.
echo.
echo.
echo.
set s=Hello world^^!
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Starting Batchtastic...
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=[    ]
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
ping localhost -n 1.5 >nul
cls
echo [BATCHTASTIC LAUNCHER at %TIME%] Loading startup sound... >>%log%
echo.
echo.
echo.
echo.
echo.
set s=Hello world^^!
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Starting Batchtastic...
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=[-   ]
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
ping localhost -n 2 >nul
cls
Set startsound=resources\scripts\StartSound.vbs >nul
set exitsound=resources\scripts\ExitSound.vbs >nul
Set StartURL=resources\sounds\startsound.wav>nul
set ExitURL=resources\sounds\exitsound.wav>nul
echo [BATCHTASTIC LAUNCHER at %TIME%] Initiated startup sound.>>%log%
echo.
echo.
echo.
echo.
echo.
set s=Hello world^^!
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Starting Batchtastic...
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=[--  ]
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
ping localhost -n 2 >nul
cls
echo.
echo.
echo.
echo.
echo.
set s=Hello world^^!
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Starting Batchtastic...
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=[--- ]
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
ping localhost -n 1.5 >nul
cls
echo.
echo.
echo.
echo.
echo.
set s=Hello world^^!
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Starting Batchtastic...
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=[----]
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
ping localhost -n 2 >nul
echo.
if exist resources\scripts\StartSound.vbs (goto :playstartsound) else goto :createstartsound
:createstartsound
echo Play "%StartURL%" >>%startsound%
echo Sub Play(URL^) >>%startsound%
echo    Dim Sound >>%startsound%
echo    Set Sound = CreateObject("WMPlayer.OCX"^) >>%startsound%
echo    Sound.URL = URL >>%startsound%
echo    Sound.settings.volume = 100 >>%startsound%
echo    Sound.Controls.play >>%startsound%
echo    do while Sound.currentmedia.duration = 0 >>%startsound%
echo        wscript.sleep 100 >>%startsound%
echo    loop >>%startsound%
echo    wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000 >>%startsound%
echo End Sub >>%startsound%

echo.
if exist resources\scripts\ExitSound.vbs (goto :playstartsound) else goto :createexitsound
:createexitsound
echo Play "%ExitURL%" >>%exitsound%
echo Play "%ExitURL%" >>%exitsound%
echo Sub Play(URL^) >>%exitsound%
echo    Dim Sound >>%exitsound%
echo    Set Sound = CreateObject("WMPlayer.OCX"^) >>%exitsound%
echo    Sound.URL = URL >>%exitsound%
echo    Sound.settings.volume = 100 >>%exitsound%
echo    Sound.Controls.play >>%exitsound%
echo    do while Sound.currentmedia.duration = 0 >>%exitsound%
echo        wscript.sleep 100 >>%exitsound%
echo    loop >>%exitsound%
echo    wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000 >>%exitsound%
echo End Sub >>%exitsound%

:playstartsound
Start %startsound% >nul
ping localhost -n 5 >nul


:LogReaderSetup
echo [BATCHTASTIC LAUNCHER at %TIME%] Setting up the Log Viewer...>>%log%

del %appdata%\LogViewer.bat >nul
echo @echo off >>%appdata%\LogViewer.bat
echo title [Activity Log] - Batchtastic Reader >>%appdata%\LogViewer.bat
echo Mode con cols=200 lines=40>>%appdata%\LogViewer.bat
echo color %kolor%>>%appdata%\LogViewer.bat
echo cls>>%appdata%\LogViewer.bat
echo type %log%>>%appdata%\LogViewer.bat
echo echo.>>%appdata%\LogViewer.bat
echo echo -Viewer Commands->>%appdata%\LogViewer.bat
echo echo [1] Open log file in system editor>>%appdata%\LogViewer.bat
echo echo [x] Exit Log Viewer>>%appdata%\LogViewer.bat
echo echo. >>resources\LogViewer.bat
echo set /p opcja= ">">>%appdata%\LogViewer.bat
echo if "%opcja%"=="1" goto :notepad>>%appdata%\LogViewer.bat
 echo if "%opcja%"=="x" goto :quit>>%appdata%\LogViewer.bat
 echo :notepad>>%appdata%\LogViewer.bat
 echo start notepad.exe %log%>>%appdata%\LogViewer.bat
echo :quit>>%appdata%\LogViewer.bat
echo exit>>%appdata%\LogViewer.bat




echo [BATCHTASTIC NETWORK INTERFACER at %TIME%] Ensuring internet connectivity:>>%log%
Ping www.windywindows.wordpress.com -n 1 -w 1000 >> %log%
echo - >>%log%
if errorlevel 1 (start resources\scripts\NoInternetNotify.vbs) else (goto :start) 
if errorlevel 1 (echo [BATCHTASTIC NETWORK INTERFACER at %TIME%] An internet connection could not be established.>>%log%) else (echo [BATCHTASTIC NETWORK INTERFACER at %TIME%] Connection established.>>%log%) 






:start
echo [BATCHTASTIC LAUNCHER at %TIME%] Displaying the Soundboard...>>%log%
set status=The player is currently idle.
set filestatus=NO FILE IS LOADED.
set alternatestatus=The player is currently idle.
cls
ping localhost -n 0.5>nul
goto :menu

:menu
cls
Mode con cols=80 lines=11 >nul
setlocal enableDelayedExpansion>nul
set /a size=80-1 &
set s=Batchtastic Music Player
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!

set s=-SOUNDBOARD-
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
echo ================================================================================
 echo Welcome, %USERNAME%^^! It is %DATE%.
 echo ================================== STATUS ======================================
set /a size=80-1 &

set s=%status%
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!

set s=%filestatus%
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!

echo ________________________________________________________________________________
echo  [/] Open   [-] Stop         ║  ------------- ║        [?] Settings   [X] Close
echo.
set /p opcja= ">"
if "%opcja%"=="/" goto :openaudio
 if "%opcja%"=="-" goto :stopaudio
 if "%opcja%"=="?" goto :config
 if "%opcja%"=="x" goto :x
echo [BATCHTASTIC LAUNCHER at %TIME%] The Soundboard was displayed. >>%log%

                                           
:openaudio
echo [BATCHTASTIC USER INTERFACE at %TIME%] Displayed Open Audio File menu.>>%log%
cls
echo.
echo.
echo.
set s=[Open Audio File]
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!

set s=Please input the location of the media file, then press Enter. 
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
                          
set s=Audio and MIDI files stored locally or on the internet can be played.
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!

set s=Right click to insert a copied address from your computer's clipboard.
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
echo. 
set /p lokalizacja-utworu=" -> "
cls
echo.
echo.
echo.
echo.
echo.
set s=Please wait.
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Starting audio stream...
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=[    ]
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
ping localhost -n 1.5 >nul
cls
echo.
echo.
echo.
echo.
echo.
set s=Please wait.
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Starting audio stream...
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=[-   ]
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
ping localhost -n 1.5 >nul
cls
echo.
echo.
echo.
echo.
echo.
set s=Please wait.
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Starting audio stream...
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=[--  ]
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
ping localhost -n 1.5 >nul
cls
echo.
echo.
echo.
echo.
echo.
set s=Please wait.
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Starting audio stream...
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=[--- ]
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
ping localhost -n 1.5 >nul
cls
echo.
echo.
echo.
echo.
echo.
set s=Please wait.
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Starting audio stream...
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=[----]
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
ping localhost -n 2 >nul

echo [BATCHTASTIC MUSIC PLAYER at %TIME%] Stopping wscript...>>%log%
Taskkill /IM "wscript.exe" /F 2>nul
echo [BATCHTASTIC MUSIC PLAYER at %TIME%] Streaming audio from %lokalizacja-utworu%.>>%log%

if exist resources\scripts\PlayMusic.vbs (del resources\scripts\PlayMusic.vbs) else goto :Play
:Play
(
echo Play "%lokalizacja-utworu%"
echo Sub Play(URL^)
echo    Dim Sound
echo    Set Sound = CreateObject("WMPlayer.OCX"^)
echo    Sound.URL = URL
echo    Sound.settings.volume = 100
echo    Sound.Controls.play
echo    do while Sound.currentmedia.duration = 0
echo        wscript.sleep 100
echo    loop
echo    wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000
echo End Sub
)>resources\scripts\PlayMusic.vbs
Start resources\scripts\PlayMusic.vbs
Set filename=%lokalizacja-utworu%
For %%A in ("%filename%") do (
    Set folder=%%~dpA
    Set nazwa=%%~nxA
)
set status=Playing audio.
set filestatus=%nazwa%
set alternatestatus=CURRENTLY PLAYING: "%nazwa%"
goto :menu

:stopaudio
cls
set status=The player is currently idle.
set filestatus=NO FILE IS LOADED.
set alternatestatus=The player is currently idle.
echo [BATCHTASTIC MUSIC PLAYER at %TIME%] Stopping wscript...>>%log%
echo.
echo.
echo.
echo.
echo.
set s=Please wait.
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Stopping audio stream...
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=[    ]
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
ping localhost -n 1.5 >nul
cls
echo.
echo.
echo.
echo.
echo.
set s=Please wait.
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Stopping audio stream...
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=[-   ]
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
ping localhost -n 1.5 >nul
cls
echo.
echo.
echo.
echo.
echo.
set s=Please wait.
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Stopping audio stream...
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=[--  ]
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
ping localhost -n 1.5 >nul
cls
echo.
echo.
echo.
echo.
echo.
set s=Please wait.
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Stopping audio stream...
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=[--- ]
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
ping localhost -n 1.5 >nul
cls
echo.
echo.
echo.
echo.
echo.
set s=Please wait.
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Stopping audio stream...
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=[----]
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
ping localhost -n 2 >nul
echo [BATCHTASTIC MUSIC PLAYER at %TIME%] Stopping wscript...>>%log%
Taskkill /IM "wscript.exe" /F >nul
TimeOut /T 1 /NoBreak>>nul
echo [BATCHTASTIC MUSIC PLAYER at %TIME%] Completed; all audio has been stopped.>>%log%
title Batchtastic Music Player
goto :menu

:config
Mode con cols=80 lines=13>nul
cls
set s=Batchtastic Music Player
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!

set s=-CONFIGURATION PANEL-
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
echo ================================================================================
echo %alternatestatus%
 echo ================================== SETTINGS ====================================
 echo                         [1] Check for software updates
 echo                         [2] Open working directory
 echo                         [3] View the activity log
 echo                         [4] Change user interface theme
echo ________________________________________________________________________________
echo  [n] Next page   [-] Return  ║  ------------- ║                       [X] Close
echo.
echo [BATCHTASTIC USER INTERFACE at %TIME%] Displayed Settings menu. >>%log%
set /p opcja= ">"
if "%opcja%"=="1" goto :aktualizacja
 if "%opcja%"=="2" goto :katalog
 if "%opcja%"=="3" goto :log
 if "%opcja%"=="4" goto :temat
 if "%opcja%"=="n" goto :suppinfo
   if "%opcja%"=="-" goto :menu
  if "%opcja%"=="x" goto :x

:suppinfo
Mode con cols=80 lines=13>nul
cls
set s=Batchtastic Music Player
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!

set s=-CONFIGURATION PANEL-
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
echo ================================================================================
echo %alternatestatus%
 echo ===========================INFORMATION AND SUPPORT==============================
echo                          [*] Read EULA and licence documentation
echo                          [:] Visit official website
echo                          [@] Contact developer
echo                          [i] About Batchtastic
echo ________________________________________________________________________________
echo  [l] Last page   [-] Return  ║  ------------- ║                       [X] Close
echo.
echo [BATCHTASTIC USER INTERFACE at %TIME%] Displayed Information and Support menu. >>%log%
set /p opcja= ">"
if "%opcja%"=="l" goto :config
 if "%opcja%"=="*" goto :eula
 if "%opcja%"==":" goto :windywindows
 if "%opcja%"=="@" goto :kontakt
 if "%opcja%"=="i" goto :informacje
 if "%opcja%"=="-" goto :menu
 if "%opcja%"=="x" goto :x
 

:aktualizacja
Mode con cols=80 lines=11 >nul
echo [BATCHTASTIC USER INTERFACE at %TIME%] User %USERNAME% requested an update scan.>>%log%
cls
echo [BATCHTASTIC SOFTWARE UPDATER at %TIME%] Downloading update information from database...>>%log%
echo.
echo.
echo.
echo.
echo.
set s=Please wait.
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Checking for updates...
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=[    ]
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
ping localhost -n 1.5 >nul
cls
echo.
echo.
echo.
echo.
echo.
set s=Please wait.
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Checking for updates...
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=[-   ]
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
ping localhost -n 1.5 >nul
cls
echo.
echo.
echo.
echo.
echo.
set s=Please wait.
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Checking for updates...
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=[--  ]
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
bitsadmin /transfer myDownloadJob /download /priority high https://windywindowsfiles.000webhostapp.com/files/software/batchtastic/database/updates/BATASv9237.png %download%\BATASTUPD.akt >>%log%
ping localhost -n 1.5 >nul
cls
echo.
echo.
echo.
echo.
echo.
set s=Please wait.
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Checking for updates...
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=[--- ]
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
ping localhost -n 1.5 >nul
cls
echo.
echo.
echo.
echo.
echo.
set s=Please wait.
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Checking for updates...
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=[----]
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
ping localhost -n 2 >nul
if exist %download%\BATASTUPD.akt (start resources\scripts\NoUpdateNotify.vbs) else (goto :UpdateFound) 2>nul
echo [BATCHTASTIC SOFTWARE UPDATER at %TIME%] No updates have been found. >>%log%
goto :config
cls





:UpdateFound
cls
setlocal disabledelayedexpansion >nul
echo [BATCHTASTIC SOFTWARE UPDATER at %TIME%] A new version of Batchtastic has been found. >>%log%
start resources\scripts\UpdateNotify.vbs
setlocal enabledelayedexpansion >nul
goto :config

:katalog
Mode con cols=80 lines=11 >nul
cls
echo.
echo.
echo.
echo.
echo.
set s=Please wait.
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Opening directory...
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=[----]
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
start explorer.exe "%cd%"
goto :config

:eula
Mode con cols=80 lines=18 >nul
echo [BATCHTASTIC USER INTERFACE at %TIME%] Displayed Licencing menu. >>%log%
cls
set s=Batchtastic Music Player
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=-LICENCING AND DISTRUBITION INFORMATION-
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
echo ================================================================================
set s=The EULA and GPL
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=The EULA and GPL describe what rights and responsibilites both the user and
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Abduktion Studios have in regards to the usage and availability of 
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Batchtastic and its source code.
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
echo.
set s=Creative Commons
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=This describes how one can modify and/or redistribute Batchtastic
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=and the responsibilites that follow through with that.
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
echo.


set s=Type the respective command to read the EULA or view the 
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Creative Commons licence for this software.
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
echo ________________________________________________________________________________
echo  [e] Read EULA  [c] View Creative Commons  [-] Return
echo.
 set /p opcja= ">"
 if "%opcja%"=="e" goto :licencja
 if "%opcja%"=="c" goto :creativecommons
 if "%opcja%"=="-" goto :suppinfo

 :creativecommons
cls
echo [BATCHTASTIC WEBSITE LAUNCHER at %TIME%] Directing user to https://creativecommons.org/licenses/by-nc-sa/4.0/>>%log%
 start https://creativecommons.org/licenses/by-nc-sa/4.0/
 goto :eula

 :licencja
 echo [BATCHTASTIC EULA VIEWER at %TIME%] Searching for EULA file...>>%log%
if exist resources\docs\EULA.txt (start resources\docs\EULA.txt) else (goto :DownloadEULA)
echo [BATCHTASTIC EULA VIEWER at %TIME%] EULA file located at \Program Files (x86)\Batchtastic\resources\docs\EULA.txt >>%log%
 echo [BATCHTASTIC EULA VIEWER at %TIME%] Opening EULA in system text editor... >>%log%
goto :eula
 
:DownloadEULA
  echo [BATCHTASTIC EULA VIEWER at %TIME%] Downloading the EULA....>>%log%
Mode con cols=80 lines=11 >nul
cls
echo.
echo.
echo.
echo.
echo.
set s=Please wait.
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Downloading the EULA...
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=[    ]
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
ping localhost -n 1.5 >nul
cls
echo.
echo.
echo.
echo.
echo.
set s=Please wait.
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Downloading the EULA...
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=[-   ]
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
bitsadmin /transfer myDownloadJob /download /priority high https://windywindowsfiles.000webhostapp.com/files/software/batchtastic/documentation/bataseula.txt %download%\EULA.txt >>%log%
ping localhost -n 1.5 >nul
cls
echo.
echo.
echo.
echo.
echo.
set s=Please wait.
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Downloading the EULA...
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=[--  ]
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
ping localhost -n 1.5 >nul
cls
echo.
echo.
echo.
echo.
echo.
set s=Please wait.
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Downloading the EULA...
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=[--- ]
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
ping localhost -n 1.5 >nul
cls
echo.
echo.
echo.
echo.
echo.
set s=Please wait.
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Downloading the EULA...
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=[----]
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
ping localhost -n 2 >nul
cls
if not exist %download%\EULA.txt echo [BATCHTASTIC EULA VIEWER at %TIME%] The EULA file could not be found.>>%log%
if exist %download%\EULA.txt (start %download%\EULA.txt) else (start resources\scripts\NoEULANotify.vbs)
goto :eula

:windywindows
echo [BATCHTASTIC WEBSITE LAUNCHER at %TIME%] Directing user to https://windywindows.wordpress.com>>%log%
start https://windywindows.wordpress.com
goto :suppinfo

:kontakt
setlocal enabledelayedexpansion >nul
echo [BATCHTASTIC USER SUPPORT SERVICE at %TIME%] Opening system default mail client...>>%log%
start mailto:cosmicconsole@gmail.com?subject="Feedback from %USERNAME% - Batchtastic v%wersja% %kompilacji% (%nazwakompilacji%)  - %winver%"
goto :suppinfo

:log
Mode con cols=80 lines=11 >nul
echo [BATCHTASTIC LOG VIEWER at %TIME%] Searching for log file...>>%log%
cls
echo.
echo.
echo.
echo.
echo.
set s=Please wait.
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Opening log file...
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=[----]
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
 if exist %log%  echo [BATCHTASTIC LOG VIEWER at %TIME%] Log file located. Starting Log Viewer...>>%log%
if exist %log% start %appdata%\LogViewer.bat 2>nul
if not exist %log% echo [BATCHTASTIC LOG VIEWER at %TIME%] Log file could not  be located.>>%log%
if not exist %log%  start resources\scripts\NoLogNotify.vbs
goto :config

:temat
Mode con cols=80 lines=11 >nul
echo [BATCHTASTIC USER INTERFACE at %TIME%] Displayed Theme Settings menu.>>%log%
cls
echo.
echo.
echo.
echo.
echo                           [Batchtastic Theme Changer]
echo.
echo                      What theme would you like to enable?
echo                        [l] light theme / [d] dark theme
echo.
set /p opcja= "-> "
echo.
 if "%opcja%"=="l" color 70 & goto :light
 if "%opcja%"=="d" color 07 & goto :dark
 
 :light
cls
echo.
echo.
echo.
echo.
echo.
set s=Enabled the light theme.
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Saving changes...
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=[-   ]
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
ping localhost -n 1.5 >nul
cls
echo.
echo.
echo.
echo.
echo.
set s=Enabled the light theme.
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Saving changes...
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=[--  ]
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
ping localhost -n 1.5 >nul
cls
echo.
echo.
echo.
echo.
echo.
set s=Enabled the light theme.
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Saving changes...
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=[--- ]
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
ping localhost -n 1.5 >nul
cls
echo.
echo.
echo.
echo.
echo.
set s=Enabled the light theme.
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Saving changes...
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=[----]
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
ping localhost -n 3 >nul
if exist %appdata%\config\user\DarkModeEnabled (del %appdata%\config\user\DarkModeEnabled)
echo [BATCHTASTIC USER INTERFACE at %TIME%] Enabled the light theme.>>%log%
echo [BATCHTASTIC USER INTERFACE at %TIME%] Saving setting to disk...>>%log%
set kolor=70
echo true >>%appdata%\config\user\LightModeEnabled
goto :config

 :dark
cls
echo.
echo.
echo.
echo.
echo.
set s=Enabled the dark theme.
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Saving changes...
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=[-   ]
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
ping localhost -n 1.5 >nul
cls
echo.
echo.
echo.
echo.
echo.
set s=Enabled the dark theme.
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Saving changes...
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=[--  ]
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
ping localhost -n 1.5 >nul
cls
echo.
echo.
echo.
echo.
echo.
set s=Enabled the dark theme.
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Saving changes...
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=[--- ]
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
ping localhost -n 1.5 >nul
cls
echo.
echo.
echo.
echo.
echo.
set s=Enabled the dark theme.
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Saving changes...
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=[----]
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
ping localhost -n 3 >nul
if exist %appdata%\config\user\LightModeEnabled (del %appdata%\config\user\LightModeEnabled)
echo [BATCHTASTIC USER INTERFACE at %TIME%] Enabled the dark theme.>>%log%
echo [BATCHTASTIC USER INTERFACE at %TIME%] Saving setting to disk...>>%log%
set kolor=07
echo true >>%appdata%\config\user\DarkModeEnabled
goto :config

:informacje
Mode con cols=80 lines=18 >nul
echo [BATCHTASTIC USER INTERFACE at %TIME%] Displayed About Page 1 menu.>>%log%
cls
set s=Batchtastic Music Player
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!

set s=-TECHNICAL INFORMATION-
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
echo ================================================================================
set s=Software Version
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!

set s=v%wersja% "%nazwakompilacji%"
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
echo.
set s=Software Build
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!

set s=%kompilacji%
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
echo.
set s=Working Directory
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!

set s=%CD%
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
echo.
set s=File Information
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!

set s=Filename: %~n0%~x0
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
echo ________________________________________________________________________________
echo  [n] Next page   [-] Return  ║  ------------- ║
echo.
 set /p opcja= ">"
 if "%opcja%"=="n" goto :informacje2
  if "%opcja%"=="-" goto :suppinfo
  
:informacje2
echo [BATCHTASTIC USER INTERFACE at %TIME%] Displayed About Page 2 menu.>>%log%
cls
set s=Batchtastic Music Player
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!

set s=-ACKNOWLEDGMENTS-
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
echo ================================================================================
set s=Fine Print
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!

set s=Batchtastic comes with ABSOLUTELY NO WARRANTY.
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!

set s=This is free software, and you are welcome to redistribute 
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!

set s=it under certain conditions. For more details, visit the
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!

set s="Read EULA and licence documentation" submenu in the Configuration Panel.
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
echo.
set s=Credits
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!

set s=Windy Windows: programming, development, composing music
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!

set s=%USERNAME%: the current user, and a wonderful person^^!
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
echo.
set s=Programmed in Żyrardów, Poland with love. Thank you for using Batchtastic^^!
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!

set s=COPYRIGHT 2015-2020 Abduktion Studios
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
echo ________________________________________________________________________________
echo  [l] Last page   [-] Return  ║  ------------- ║
echo.
 set /p opcja= ">"
 if "%opcja%"=="l" goto :informacje
  if "%opcja%"=="-" goto :suppinfo
  
 :x
echo [BATCHTASTIC MUSIC PLAYER at %TIME%] Stopping wscript...>>%log%
taskkill /IM wscript.exe /F >nul 2>&1
cls
echo [BATCHTASTIC EXIT at %TIME%] Closing Batchtastic...>>%log%
Mode con cols=80 lines=11>nul
Start %exitsound% >nul
setlocal enableDelayedExpansion
cls
echo.
echo.
echo.
echo.
echo.
set s=Farewell^^!
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Closing Batchtastic...
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=[    ]
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
ping localhost -n 2 >nul
cls
echo.
echo.
echo.
echo.
echo.
set s=Farewell^^!
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Closing Batchtastic...
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=[-   ]
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
ping localhost -n 2 >nul
cls
echo.
echo.
echo.
echo.
echo.
set s=Farewell^^!
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Closing Batchtastic...
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=[--  ]
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
ping localhost -n 2 >nul
cls
echo.
echo.
echo.
echo.
echo.
set s=Farewell^^!
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Closing Batchtastic...
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=[--- ]
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
ping localhost -n 2 >nul
cls
echo.
echo.
echo.
echo.
echo.
set s=Farewell^^!
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=Closing Batchtastic...
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
set s=[----]
for /L %%# in (1,2,!size!) do if "!s:~%size%,1!" == "" set "s= !s! "
set s=!s:~1,%size%!& echo(!s!
ping localhost -n 5 >nul
taskkill /IM wscript.exe /F >nul 2>&1
echo THE APPLICATION PROCESS WAS TERMINATED.>>%log%
