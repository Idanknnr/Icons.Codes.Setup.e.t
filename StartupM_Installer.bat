@echo off
Title Download Command
echo Here is the Download info: File Path Code: Startup Message File.zip\Startup Message File\
echo there are two files: Startup Message.bat (the Code) and Startup Message Setup.md (the setup Read-Me)
echo Please confirm that you want to start the Download...
:Choice_Main
choice /m "Do you want to continue, Y = Yes, N = No"
if errorlevel 2 goto :No
if errorlevel 1 goto :Yes

:Yes
echo Continuing
pause
goto Download

:No
echo Download Canceled. Closing Terminal.
pause
exit

:Download
echo Starting Download

curl -L -O https://www.dropbox.com/scl/fi/ftifufp6ntwtlyzhq3p2p/Startup-Message-File.zip?rlkey=qqq7f6yiooub7s8pc52228nl6&st=3333am2m&dl=1
echo Downloading Zip Code...
TIMEOUT /T 5 /nobreak >nul
echo Downloaded Info: Success Download, Please Read The "Startup Message Setup.md" File.
echo Please wait for the file to load.
TIMEOUT /T 5 /nobreak >nul
echo Continue
pause
echo Closing Terminal
exit
