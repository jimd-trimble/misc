#include <WinAPI.au3>
#include <Constants.au3>
;AutoItSetOption("WinTitleMatchMode", $OPT_MATCHANY) ;2
;WinActivate("[TITLE: - Google Chrome;CLASS:Chrome_WidgetWin_1]")
ShellExecute("chrome.exe", "--new-window https://localhost:44307 ","","")
Sleep(1000)
Send("{F12}")