# Some good standards, which are not used if the user
# creates his/her own .bashrc/.bash_profile

# --show-control-chars: help showing Korean or accented characters
alias ls='ls -F --color=auto --show-control-chars'
alias ll='ls -l'
alias dev='cd C:\\dev\\TrimbleAg'
alias jim='cd C:\\dev\\Jim'
alias dc='dev && cd datacenter'
alias as='dev && cd advisor-services'
alias dcc='dc && cd DataCenter\\DataServices\\MongoDBScripts && cmd //c ChangeEnvironment.bat'
alias cf='dev && cd connected-farm'
alias cfa='dev && cd connected-farm\\ConnectedFarm\\app'
alias cfc='cf && cd ConnectedFarm && cmd //c ChangeEnvironment.bat'
alias ad='dev && cd agri-data'
alias rp='dev && cd reseller-portal'
alias dl='dev && cd device-licensing'
alias ms='cd C:\\Users\\jdillon\\misc'
alias runcf='runcf.bat'
alias rundc='rundc.bat'
alias runrp='runrp.bat'
alias debcf='debcf.bat'
alias buildcf='buildcf-n.bat'
alias builddc='builddc-n.bat'
alias cleancf='cleancf-n.bat'
alias cleandc='cleandc-n.bat'
alias vpn='vpn.bat'
alias b='npm run build'
alias w='npm run watch'

case "$TERM" in
xterm*)
	# The following programs are known to require a Win32 Console
	# for interactive usage, therefore let's launch them through winpty
	# when run inside `mintty`.
	for name in node ipython php php5 psql python2.7
	do
		case "$(type -p "$name".exe 2>/dev/null)" in
		''|/usr/bin/*) continue;;
		esac
		alias $name="winpty $name.exe"
	done
	;;
esac
