@echo off
SET cmd=@start cmd /
SET bld= 
:parse
IF "%~1"=="" GOTO external
IF "%~1"=="-i" GOTO internal
IF "%~1"=="-n" GOTO newtab
IF "%~1"=="-b" GOTO working
SHIFT
GOTO parse

:external
GOTO runsite

:newtab
GOTO runsite

:internal
%cmd%= 
GOTO runsite

:build
%bld%= @buildcf &
GOTO runsite

:runsite
%cmd%%bld% "C:\Program Files (x86)\IIS Express\iisexpress.exe" /config:C:\dev\TrimbleAg\connected-farm\.vs\config\applicationhost.config /site:ConnectedFarm

:working
@buildcf & "C:\Program Files (x86)\IIS Express\iisexpress.exe" /config:C:\dev\TrimbleAg\connected-farm\.vs\config\applicationhost.config /site:ConnectedFarm