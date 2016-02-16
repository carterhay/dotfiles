#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1 fo days
PS1='\e[0;36m\u@\h \W\$\e[m '

#Path
PATH=$PATH:~/.scripts

# Start tmux if not in tmux
[[ -z "$TMUX" ]] && exec tmux


##########################################
#                 Alias                  #
##########################################
alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'
alias ..='cd ..'
alias pacman='sudo pacman'
alias syu='sudo pacman -Syu'
alias unosecure='sudo netctl stop-all && sudo netctl start unosecure > /dev/null'
alias kait='sudo netctl stop-all && sudo netctl start kait > /dev/null'
alias resnetsecure='sudo netctl stop-all && sudo netctl start resnetsecure > /dev/null'
alias x='exit'



##########################################
#            Custom Functions            #
##########################################

function cd {
  builtin cd "$@" && ls;
}

