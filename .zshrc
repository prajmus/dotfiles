# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

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

source $ZSH/oh-my-zsh.sh
unsetopt correct_all
# Customize to your needs...
alias ls='ls --color=auto'
alias ll='ls -al'
alias grepr='grep -rni'
alias poweroff='sudo shutdown -h now'
alias reboot='sudo shutdown -r now'
alias grepc='grep -rn'
alias chef='g++ -o a.out --std=c++11 -pipe -O2 -lm -s -fomit-frame-pointer'
alias v='nvim'
alias vv='vim'
alias pyv='source bin/activate'
alias cell='cd ~/Cellepathy/gerrit'
alias tmux='tmux -2'
unalias gbs
unalias gdt
alias gdt='git difftool'
alias f='fg'
alias vmi='vim'
alias gfx_off='sudo tee /proc/acpi/bbswitch <<<OFF'
alias gfx_on='sudo tee /proc/acpi/bbswitch <<<ON'
alias virt='source bin/activate'
hash -d chome=/mnt/c/Users/Jakub/
setopt no_sharehistory
bindkey -M viins 'jk' vi-cmd-mode
export PATH=$PATH:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/opt/qt/5.1.1/gcc_64/bin/:/usr/local/java/bin:/home/prajmus/.local/bin:/home/prajmus/Downloads/gradle/bin
