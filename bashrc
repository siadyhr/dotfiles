#
# ~/.bashrc
#

export PATH=$PATH:~/bin/

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#Så sudo autocompleter 12 feb 2014
complete -cf sudo

#gennemsigtig xterm, 04 may 2014
[ -n "$XTERM_VERSION" ] && transset-df -a >/dev/null

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#Burde få ~/.bash_aliases til at virke:
#Redigeret 28. feb 2014 til bare at v�re .aliases da jeg installerede zsh
if [ -f ~/.aliases ]; then
. ~/.aliases
fi

PS1="\[\033[01;37m\]\$? \$(if [[ \$? == 0 ]]; then echo \"\[\033[01;32m\]\342\234\223\"; else echo \"\[\033[01;31m\]\342\234\227\"; fi) $(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]\h'; else echo 
'\[\033[01;32m\]\u@\h'; fi)\[\033[01;34m\] \w \$\[\033[00m\] "
