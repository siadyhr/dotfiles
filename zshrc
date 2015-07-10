# Lines configured by zsh-newuser-install
cd $HOME
HISTFILE=~/.histfile
HISTSIZE=1000000
#LC_ALL=en_US.UTF-8
SAVEHIST=1000000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ned/.zshrc'

setopt INC_APPEND_HISTORY
autoload -Uz compinit
compinit
# End of lines added by compinstall

#28 feb. 2014: brug .bash_aliases til at have aliaser i
source $HOME/.aliases
setopt HIST_IGNORE_DUPS #19. apr: ikke dobbelte linier i histfile
#gennemsigtig xterm, 04 may 2014
[ -n "$XTERM_VERSION" ] && transset-df -a >/dev/null
MANPATH="/home/ned/.local/share/man/man1:"
PATH=$PATH:~/bin:$HOME/.gem/ruby/2.1.0/bin
PATH="`ruby -e 'print Gem.user_dir'`/bin:$PATH"

EDITOR=vim
set -o noclobber
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

pb () { curl -F "c=@${1:--}" https://ptpb.pw/ }


autoload -U promptinit
promptinit

autoload -U colors
colors
prompt bart

PROMPT="%F{red}🐧 %F{blue}\o%d %F{red}%#%F{gray} "

#perl ~/tmp/fil.perl&


#PAGER="/bin/vimpager"


## Oh-my-zsh
#ZSH_THEME="agnoster"
#plugins=(archlinux)
#export ZSH=$HOME/.oh-my-zsh
#plugins=(git)
#source $ZSH/oh-my-zsh.sh
#ZSH_THEME=agnoster

