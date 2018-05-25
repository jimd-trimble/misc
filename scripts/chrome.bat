@echo off
pushd %programfiles(x86)%\Google\Chrome\Application
start chrome.exe
start chrome.exe --new-window mail.google.com calendar.google.com drive.google.com  sonarqube intranet.trimble.com webmail.aplus.net jira.trimble.tools/secure/dashboard.jspa?selectpageid=169600 na33.salesforce.com/home/home.jsp ci.trimbleag.team aga-jenkins-master.aga-dev.sandbox.farm:8080
popd