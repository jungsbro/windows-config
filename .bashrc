#!/bin/sh

# tmux autostart ===============================================================
#if [ -z "$TMUX" ] && [ -n "$SSH_TTY" ] && [[ $- =~ i ]]; then
#    tmux attach-session -t ssh || tmux new-session -s ssh
#    exit
#fi

#if [[ -z "$TMUX" ]]; then
#    if tmux has-session 2>/dev/null; then
#        exec tmux attach
#    else
#        exec tmux
#    fi
#fi
# ==============================================================================

# PATH =========================================================================
#PATH=${PATH}:/c/msys64/usr/bin
# ==============================================================================

# proxy settings ===============================================================
export PROXY_SERVER_IP=192.168.0.0:3128
export http_proxy=http://${PROXY_SERVER_IP}
export https_proxy=${http_proxy}
export ftp_proxy=${http_proxy}
export no_proxy=localhost
# ==============================================================================

# Alias & Menu =================================================================
# Interactive operation...
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
#
# Default to human readable figures
alias df='df -h'
alias du='du -h'
#
# Misc :)
alias less='less -r'                          # raw control characters
alias whence='type -a'                        # where, of a sort
alias grep='grep --color'                     # show differences in colour
alias egrep='egrep --color=auto'              # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour
#
# Some shortcuts for different directory listings
alias ls='ls -hF --color=tty'                 # classify files in colour
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias ll='ls -l'                              # long list
alias la='ls -A'                              # all but . and ..
alias l='ls -CF'                              #
alias vi='/usr/bin/vim'

# ranger
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

# Pipeline
isCore="/o/cgcore"
if [[ -e ${isCore} ]]; then
    source /o/cgcore/msys/ENV/init_alias.sh
    source /o/cgcore/msys/ENV/init_menu.sh
fi
# ==============================================================================

# Starting at Home =============================================================
#cd ~
# ==============================================================================
