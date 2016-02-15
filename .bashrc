#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1 fo days
PS1='\e[0;36m\u@\h \W\$\e[m '

# Start tmux if not in tmux
[[ -z "$TMUX" ]] && exec tmux

#Run my shell greeting
~/.scripts/shell_greeting.sh


##########################################
#                 Alias                  #
##########################################
alias ls='ls --color=auto'


##########################################
#            Custom Functions            #
##########################################

function cd {
  builtin cd "$@" && ls;
}
