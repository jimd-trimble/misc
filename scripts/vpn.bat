@echo off
SET	viscPath="C:\Program Files\Viscosity\Viscosity.exe"
SET viscCmd=connect
SET viscPrms="primary test"

IF "%1" == "t" GOTO No1
IF "%1" == "p" GOTO No2
IF "%1" == "d" (GOTO No3) ELSE (GOTO help1)
GOTO End1

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
CALL %viscPath% %viscCmd% %viscPrms%
GOTO End1

:help1
echo "Parameters are 't' for test, 'p' for prod, or 'd' to disconnect."

:End1