@ECHO OFF
echo Made by Thatsamyxx on GitHub
goto START
:START
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST Private goto CREATEFOLDER
if EXIST Private goto HIDE
:UNLOCK
echo Enter password to unlock your folder
set/p "pass=>"
rem ////////////////////////////////////////////////////////////////////////////////////////
rem ///////////////////////////  SET YOUR PASSWORD DOWN HERE!  /////////////////////////////
rem ////////////////////////////////////////////////////////////////////////////////////////
rem ////////  REPLACE *HERE* WITH THE PASSWORD YOU WANT TO USE TO UNLOCK THE FOLDER  ///////
rem ////////////////////////////////////////////////////////////////////////////////////////
if NOT %pass%== *HERE* goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Private
echo Folder Unlocked successfully, you have now access to the file for 15 seconds
ping 192.0.2.2 -n 1 -w 15000 > nul
goto LOCK
:FAIL
echo Invalid password
goto UNLOCK
:LOCK
ren Private "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Session expired
timeout /t 3 >nul
goto END
:CREATEFOLDER
md Private
echo I've just created a new folder named 'Private', now put all your sEcReT stuff in there, then open this file again
timeout /t 7 >nul
:HIDE
echo Hiding folder...
ren Private "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ping 192.0.2.2 -n 1 -w 1000 > nul
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ping 192.0.2.2 -n 1 -w 4000 > nul
echo Folder hidden! Now set a password by right-clicking this file, and choosing 'Edit'
ping 192.0.2.2 -n 1 -w 6000 > nul
echo Don't worry, you will not mess anything up.
timeout /t 7 >nul
:END
