# Some good standards, which are not used if the user
# creates his/her own .bashrc/.bash_profile

# --show-control-chars: help showing Korean or accented characters
alias ls='ls -F --color=auto --show-control-chars'
alias ll='ls -l'
alias dev='cd C:\\dev\\TrimbleAg'
alias dc='dev && cd datacenter'
alias cf='dev && cd connected-farm'
alias ad='dev && cd agri-data'
alias rp='dev && cd reseller-portal'
alias ms='cd C:\\Users\\jdillon\\misc'
alias runcf='C:\\Users\\jdillon\\misc\\scripts\\runcf.bat'
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
