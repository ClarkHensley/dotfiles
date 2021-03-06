# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000000
SAVEHIST=1000000000
unsetopt autocd beep extendedglob nomatch notify
bindkey -v

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/clark/.zshrc'

autoload -Uz compinit promptinit vcs_info
compinit
promptinit
# End of lines added by compinstall

# User Additions
#
[[ -f "$HOME/.zshenv" ]] && source "$HOME/.zshenv"

HISTFILESIZE=1000000000
HISTCONTROL=ingoredups:erasedups
#setopt -s histappend ???

alias redo="sudo \"$SHELL\" -c \"$(history -p !!)\""
alias ls="exa -l"
alias la="exa -laa"
alias :q="exit"
alias getip="curl ifconfig.me && echo \"\""
alias ssh-server="ssh -p 22222 clark@146.70.57.12"
alias ssh-pluto="ssh ch3136@pluto.cse.msstate.edu"
alias rcon-vanilla="mcrcon -H 146.70.57.12 -p minecontrol"
alias cat="bat"
alias pacall="pacman -Qi | grep -E \"Name*\" | awk '{print \$3}'"

export SHELL=$(which zsh)
export EDITOR=$(which nvim)
#export PATH=$PATH:~/.cargo/bin
#export PATH=$PATH:~/.config/node_modules
export PATH=$PATH:~/.local/bin:~/.bin
export GRIM_DEFAULT_DIR=$HOME/Screenshots
export XDG_SCREENSHOTS_DIR=$HOME/Screenshots
export XDG_CURRENT_DESKTOP=sway

precmd() { vcs_info }
zstyle ':vcs_info:*' formats ' %s(%F{magenta}%b%f)' # git(branch)
setopt prompt_subst


PS1='%F{green}<%F{white}%n@%m%f %F{red}%/%f${vcs_info_msg_0_}%F{green}> %F{green}%%%F{lime} ' # name@machine /dir git(branch) %
RPS1='%F{magenta} %D{%r, %A, %B %e, %Y}'

