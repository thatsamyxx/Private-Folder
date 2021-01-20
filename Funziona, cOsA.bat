@ECHO OFF
goto START
:START
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto FAILED
:UNLOCK
echo Enter password to Unlock Your Secure Folder
set/p "pass=>"
if NOT %pass%== 1415926535897932384626433832 goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Private
echo Folder Unlocked successfully, you have now access to the file for 15 seconds
timeout /t 15 >nul
goto LOCK
:FAIL
echo Invalid password
goto UNLOCK
:LOCK
ren Private "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Session expired
timeout /t 1 >nul
goto End
:FAILED
echo Fatal error, run config.bat twice first!
timeout /t 3 >nul
goto end
:End
