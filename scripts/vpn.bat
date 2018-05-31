@echo off

REM ************************READ ME!**************************************************
REM Create a "scripts" folder somewhere without access restrictions. C:\users\<username>\scripts is fine.
REM Copy your scripts (even this one) into that directory.
REM Check the directory's security so that Administrators & System have full control.
REM 	- You'll want these scripts available for when you "Run As Administrator". 
REM Copy that path!
REM Add the path to your system's "Path" variable:
REM 	- search for "environment variables" in the search box to the right of the Start menu.
REM 	- click on the "Edit the system environment variables" match.
REM 	- A "System Properties" window will open. Click the "Environment Variables..." button at the bottom.
REM 	- This will open another window with user variables on top and system variables on the bottome.
REM 		- We need the SYSTEM VARIABLES.
REM 	- Scroll down the system variables panel and double-click on "Path".
REM 	- Click the "New" button and paste in the scripts directory path.
REM 	- Click OK, OK, OK.
REM Now anything in that scripts directory will be available from the terminal no matter which directory you're in!
REM
REM Install Viscosity if you haven't. It's a good VPN tool and has command line options.
REM Add/import your VPN connection profiles. I named mine "primary test" and "primary prod". 
REM 	- Extra step below if you choose to name yours differently. No big deal. 
REM In this script:
REM 	- Set "viscPath" to where you installed Viscosity. No need to put it in your PATH.
REM 	- Set the "viscPrms" initializer and "SET viscPrms="primary prod" in ":No2".
REM 	- Save your changes!
REM
REM Test it out!
REM 	- open a new admin terminal (search "cmd", right-click, Run as Admin if you haven't created an admin terminal shortcut).
REM 		- FYI: whenever changes are made to scripts in your system Path, the terminal must be closed/opened again to refresh.
REM 	- Make sure you're somewhere in C:\ but NOT in \scripts. You *should* be in C:\Windows\system32.
REM 	-type "vpn t", you should see a notification that Viscosity is trying to connect.
REM 	- type "vpd d", you should see a notification that Viscosity is disconnecting.
REM WHOOOHOOO!
REM **********************************************************************************

SET	viscPath="C:\Program Files\Viscosity\Viscosity.exe"
SET viscCmd=connect

SET viscPrms="primary test"

IF "%1" == "t" GOTO No1
IF "%1" == "p" GOTO No2
IF "%1" == "d" (GOTO No3) ELSE (GOTO help1)
GOTO End1

REM How to prompt for user input
REM SET /p inpt="Enter t, p, or d: "
REM echo %inpt%
REM IF %inpt%==t GOTO No1
REM IF %inpt%==p GOTO No2
REM IF %inpt%==d (GOTO No3) ELSE (GOTO help1)

:No1
echo connecting to TEST
GOTO Run1

:No2
echo connecting to PROD
SET viscPrms="primary prod"
GOTO Run1

:No3
echo disconnecting all
SET viscCmd=disconnect
set viscPrms=all
set viscExit=disconnected
GOTO Run1

:Run1
START /b "Viscosity" %viscPath% %viscCmd% %viscPrms%
GOTO End1

:help1
echo "Parameters are 't' for test, 'p' for prod, or 'd' to disconnect."

:End1