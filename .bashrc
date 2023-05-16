#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/kanielv/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/kanielv/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/kanielv/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/kanielv/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'


# bash completion
source /usr/share/bash-completion/completions/git
__git_complete config __git_main

