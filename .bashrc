#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompt setup
color_prompt=yes
if [ "$color_prompt" = yes ]; then
    PS1='\n\[\033[0;37m\]--[\t]--\n\u in \[\033[01;32m\]\w\[\033[0;37m\]\$\[\033[0;00m\] '
else
    PS1='[\u@\h \W]\$ '
fi
unset color_prompt

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"

    alias l='ls -l --color=auto'
    alias ls='ls --color=auto' 
    alias la='ls -la --color=auto'
    alias grep='grep --color=auto'

    alias battery='upower -i /org/freedesktop/UPower/devices/battery_BAT0'

    alias v='vim'
    alias s='sudo'
    alias p='pacman'

    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Cautious deletion by default
alias rm='rm -i'

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

fcd() {
  cd "$(find -type d | fzf --preview 'tree -C {} | head -200' --preview-window 'up:60%')"
}

# Set color scheme based on wallpaper (set by i3/feh)
wal -Rneq

# Set visibility of my custom scripts
export PATH=$PATH:/home/slime/Scripts

# Created by `pipx` on 2024-09-02 22:36:15
export PATH="$PATH:/home/slime/.local/bin"
