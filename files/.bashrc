#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ $DISPLAY ]] && shopt -s checkwinsize

# colors
darkgrey="$(tput bold ; tput setaf 0)"
white="$(tput bold ; tput setaf 7)"
blue="$(tput bold; tput setaf 4)"
cyan="$(tput bold; tput setaf 6)"
nc="$(tput sgr0)"

# exports
export PATH="${HOME}/.bin:/usr/bin:/sbin:/usr/sbin:/usr/local/bin:${HOME}/.flutter/bin:${HOME}/.android-studio/bin:"
export PATH="${PATH}/usr/local/sbin:/opt/bin:/usr/bin/core_perl:/usr/games/bin:"
export PS1='\[$darkgrey\] \w \[$white\]\$\[$nc\] '
export HISTSIZE=300
export HISTFILESIZE=300000
export EDITOR="vim"
export ANDROID_SDK_ROOT="${HOME}/.Android/Sdk"
export QT_QPA_PLATFORMTHEME='gtk2'
export XDG_CURRENT_DESKTOP='sway'
export MOZ_ENABLE_WAYLAND=1 
export LIBVA_DRIVER_NAME='radeonsi'
export VDPAU_DRIVER='radeonsi'
export CLASSPATH='/usr/share/tomcat10/lib/*'	
# alias
alias ls="ls --color -h"
alias vi="nvim"
alias vim="nvim"
alias shred="shred -zf"
alias wget="wget -U 'noleak'"
alias curl="curl --user-agent 'noleak'"
alias clns="clear && source ~/.bashrc"

alias clcd="clear && cd"
alias cl="clear"

alias cd..="cd .."
alias cdtw="cd ~/Programming/Mainline/College/8"
alias cdgt="cd ~/Programming/Mainline/College/be_project/"
alias cdfl="cd ~/Programming/Mainline/Internship/int_psl/kvasir-ibmfl"
alias actfl="actconda && conda deactivate && conda activate ibm-fl"
alias cdsl="cd ~/Programming/Sideline"
alias cdml="cd ~/Programming/Mainline"
alias cdpro="cd ~/Programming"
alias cdan="cd ~/Programming/Mainline/Android"

alias xrandrhdmi="xrandr --output HDMI-1 --mode 1920x1080"
alias r="R"
alias open="xdg-open"
alias yay="paru"
alias sl="ls"
alias scmar="systemctl start mariadb"
alias sctom="systemctl start tomcat10"
alias schttp="systemctl start httpd"
alias maria="mariadb -u root -p"
alias gvenv="source ~/.venv/bin/activate"
alias svenv="source ./.venv/bin/activate"
alias deemix-web="source ~/Music/.venv/bin/activate && python ~/Music/deemix-pyweb/deemix-pyweb.py"
alias outage="python ~/Programming/Sideline/Android/Outages/script/outage.py" 
alias stream="/usr/lib/xdg-desktop-portal -r & /usr/lib/xdg-desktop-portal-wlr &"
alias xb3="bluetoothctl power on && bluetoothctl connect 74:45:CE:1E:03:D1"
alias xb="bluetoothctl power on && bluetoothctl connect 14:3F:A6:A7:27:D5"
alias bp="bluetoothctl power off"
alias bd="bluetoothctl disconnect"
[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
actconda(){
__conda_setup="$('/home/flash/.miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/flash/.miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/flash/.miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/flash/.miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
}
# <<< conda initialize <<<

#functions

github(){
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/github 
}
gitlab(){
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/gitlab
}
