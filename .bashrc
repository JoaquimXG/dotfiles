#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

PS1='┌─[\e[34m\]\A\e[31m\]|\e[33m\]\u\e[31m\]@\e[32m\]\W'
PS1+='\e[0m\]]\n└─╼ '


# quick quide
# \e stands for escape
# \[somevalue\] allows for non printed characters to be input
# these are used along with the linux console codes for colour, and more
# \u = usernmae
# \h = hsotname
# \w = working directory
# \A = time in am:pm format 
# \j = number of jobs currently under this shells remit

set -o vi


