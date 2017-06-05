alias "ll=ls -lGh $@ -a"
alias "pd=pushd"
alias "nd=popd"
alias "..=cd .."
alias "...=cd ../.."
alias "c=clear"
alias "h=cd ~"

function git_checkout_and_merge() {
	from=$1
	to=$2
	git push origin ${from} && git checkout ${to} && git pull && git merge origin/${from} && git push origin ${to} && git checkout ${from}
}
alias co-merge=git_checkout_and_merge
source ~/.git-prompt.sh

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export PROMPT_COMMAND='echo -ne "\033]0;$PWD\007"'
export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '

bind '"M-d": backward-kill-word'
