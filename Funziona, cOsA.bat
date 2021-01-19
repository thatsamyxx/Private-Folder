@ECHO OFF
goto UNLOCK
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
:End