# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"
DEFAULT_USER=`whoami`

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git vi-mode)

eval `dircolors ~/.dircolors`
source $ZSH/oh-my-zsh.sh
unsetopt correct_all
# Customize to your needs...
alias ls='ls --color=auto'
alias grepr='grep -rni'
alias poweroff='sudo shutdown -h now'
alias reboot='sudo shutdown -r now'
alias grepc='grep -rn'
alias chef='g++ -o a.out --std=c++11 -pipe -O2 -lm -s -fomit-frame-pointer'
alias v='vim'
unalias gbs
unalias gdt
alias gdt='git difftool'
setopt no_sharehistory
bindkey -M viins 'jk' vi-cmd-mode
export PATH=$PATH:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/opt/qt/5.1.1/gcc_64/bin/:/usr/local/java/bin
export PYTHONPATH=$PYTHONPATH:/usr/lib/python3.4/site-packages/

export P4PORT=106.120.130.174:1888
export P4USER=j.borowski
export P4CLIENT=DEV-TTWCUV_elm-j.borowski
