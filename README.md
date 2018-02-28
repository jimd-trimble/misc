# Jim's Misc Files

This is a collection of settings, scripts, commands, etc. that I use to help reduce friction in my development process. They're designed with my personal workflows in mind so they may not translate to yours but hopefully you can at least find some useful starting points to make your life a little better. I like using  terminal commands because it helps keep me in the IDE as much as possible. Also, I've tried to avoid using Visual Studio for quick re/building or running an API that I don't need to debug.

Feel free to fork this or submit improvements as pull requests. I'm no command line guru so feedback is welcome.

## The Big Idea(s)

### Build and run commands:
**buildcf** - builds ConnectedFarm using MSBuild.exe.
		**buildcf-n** same as buildcf but in a new window.
**builddc** - builds DataCenter using MSBuild.exe.
		**builddc-n** - same as builddc but in a new window.
**runcf** - will run ConnectedFarm in an IIS Express instance.
**rundc** - will run DataCenter in an IIS Express instance.
**debcf** - will call runcf and then open it in a Chrome window with DevTools open (requires [AutoIt](https://www.autoitscript.com/site/autoit/downloads)).

###Terminal directory shortcuts:
These assume you have a main development directory that houses the various repositories you work on. In the following example, the dev.bat script would point to TrimbleAg. You need to edit dev.bat to point to your equivalent of this directory in order for the other pointers and commands to work.
```
TrimbleAg
+-- agri-data
+-- connected-farm
|   +-- ConnectedFarm
|		+-- app
|   +-- ConnectedFarm.sln
+-- datacenter
|	+-- DataCenter
|		+-- DataCenter.sln
+-- reseller-portal
|   +-- ResellerWebsite.sln
```
**dev** - changes to your main development directory.
**cf** - changes to the ConnectedFarm directory.
**dc** - changes to the DataCenter directory.
**ad** - changes to the AgriData directory.
**rp** - changes to the Reseller Portal directory.

There are also git aliases for most of these commands in aliases.sh, syncing the git command line with CMD. So if your IDE has an integrated console you can run these commands directly in the IDE.

There are also vim dotfiles and vscode settings to check out if you're interested.

## Get it running
- Change dev.bat to point to your local development directory (see above).
- Add this parent directory to your path ("misc" or whatever you want to call it).
- Add the MSBuild.exe to your path. (MSBuild may need to be run as admin, so you might have to run your IDE as admin.)
- Create symbolic links for gitbash files or copy them to the right places.
	- I create a "symbolic link" shortcut to the aliases.sh file. That way all my gitbash scripts are in one place. A simple shortcut won't work.
		- https://www.howtogeek.com/howto/16226/complete-guide-to-symbolic-links-symlinks-on-windows-or-linux/
		- Open a cmd window with "Run as administrator", navigate to the profile.d directory, and execute the following command, replacing the path to the misc\\scripts directory.

			C:\\Program Files\\Git\\etc\\profile.d>mklink aliases.sh 					C:\\Users\\username\\misc\\scripts\\aliases.sh

	- If that's too much just copy this to your Gitbash profile (C:\Program Files\Git\etc\profile.d\)
		- Rename the original as a backup.
	- This will make the terminal shortcuts and commands available to gitbash. 
	- Also includes 'b' = 'npm run build', 'w' = 'npm run watch'. Don't judge me.
	- gitbash.bat - Ensures that Gitbash starts up with your profile, so that you have access to the aliases.sh you just copied over. 
	- bash.bashrc - Points to your $Home.ssh directory for consistency.
		- Belongs in C:\Program Files\Git\etc

### Example Workflow:
- Open the ConnectedFarm front end (/app) in your IDE.
- Open the integrated terminal.
- buildcf to build the API.
- b to build the front-end and copy to /dist.
- runcf (once buildcf has completed) to run the API in a new IISExpress window.
	- Or debcf to run the API and open the site in a new Chrome window.
- w to watch the front-end files you're editing.