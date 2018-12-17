@echo off
pushd %programfiles(x86)%\Google\Chrome\Application
start chrome.exe
start chrome.exe --new-window mail.google.com calendar.google.com drive.google.com  https://bitbucket.trimble.tools/projects/TABS/repos/datacenter/pull-requests?state=OPEN&author=Jim_Dillon@Trimble.com intranet.trimble.com webmail.aplus.net jira.trimble.tools/secure/dashboard.jspa?selectpageid=169600 https://na33.salesforce.com/500?fcf=00B39000008fdjW ci.trimbleag.team
popd