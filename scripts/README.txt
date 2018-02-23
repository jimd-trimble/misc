Drop these in a directory that is in your PATH, or add this directory to PATH so that these commands will be available anywhere.

***** CHANGE dev.bat FIRST!
dev - Shortcut to your local main 'dev' directory where all other repos live. Change this 1st.
*****

ad - Shortcut to local AgriData repo.
cf - Shortcut to local ConnectedFarm repo.
dc - Shortcut to local DataCenter repo.

***** Build scripts requre MSBuild.exe to be in your PATH.
***** VS 2015: %ProgramFiles(x86)%\MSBuild\14.0\Bin or C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSBuild.exe
***** Be aware that these scripts will build using the ROGUE config.
***** Ability to switch configs on build is on the roadmap.
buildcf - Builds ConnectedFarm.
builddc - Builds DataCenter.

***** Are you using Visual Studio to run the backend? STOP.
runcf - will run ConnectedFarm in an IIS Express instance.
rundc - will run DataCenter in an IIS Express instance.

***** Using Gitbash?
aliases.sh 
	- I create a "symbolic link" shortcut to the file in my scripts directory. That way all my scripts are in one place. A simple shortcut won't work.
		https://www.howtogeek.com/howto/16226/complete-guide-to-symbolic-links-symlinks-on-windows-or-linux/
	- If that's too much just copy this to your Gitbash profile (C:\Program Files\Git\etc\profile.d\)
	- Rename the original as a backup.
	- This will make the terminal shortcuts and commands available to gitbash. Also includes 'b' = 'npm run build', 'w' = 'npm run watch'. Don't judge me.
gitbash.bat - Ensures that Gitbash starts up with your profile, so that you have access to the aliases.sh you just copied over. 
bash.bashrc - Points to your $Home.ssh directory for consistency. Belongs in C:\Program Files\Git\etc\

***** Random utility
ntp = Will open any text file in Notepad++.

Between buildcf and runcf you shouldn't need to keep ConnectedFarm solution open.
I'm working on melding buildcf and runcf together with some options. Stay tuned.
Ping me if you have any questions or if you're missing anything.