
# if [[ -r ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
#     source ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
# fi
#

if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /usr/share/powerline/bindings/zsh/powerline.zsh
fi

# Path to your oh-my-zsh installation.
export ZSH=/home/tamnil/.oh-my-zsh
export EDITOR='vim'
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="lukerandall"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="TRUE"

# UNCOMMENT THE FOLLOWING LINE TO DISPLAY RED DOTS WHILST WAITING FOR COMPLETION.
# COMPLETION_WAITING_DOTS="TRUE"

# UNCOMMENT THE FOLLOWING LINE IF YOU WANT TO DISABLE MARKING UNTRACKED FILES
# UNDER VCS AS DIRTY. THIS MAKES REPOSITORY STATUS CHECK FOR LARGE REPOSITORIES
# MUCH, MUCH FASTER.
# DISABLE_UNTRACKED_FILES_DIRTY="TRUE"

# UNCOMMENT THE FOLLOWING LINE IF YOU WANT TO CHANGE THE COMMAND EXECUTION TIME
# STAMP SHOWN IN THE HISTORY COMMAND OUTPUT.
# THE OPTIONAL THREE FORMATS: "MM/DD/YYYY"|"DD.MM.YYYY"|"YYYY-MM-DD"
# HIST_STAMPS="MM/DD/YYYY"

# WOULD YOU LIKE TO USE ANOTHER CUSTOM FOLDER THAN $ZSH/CUSTOM?
# ZSH_CUSTOM=/PATH/TO/NEW-CUSTOM-FOLDER

# WHICH PLUGINS WOULD YOU LIKE TO LOAD? (PLUGINS CAN BE FOUND IN ~/.OH-MY-ZSH/PLUGINS/*)
# CUSTOM PLUGINS MAY BE ADDED TO ~/.OH-MY-ZSH/CUSTOM/PLUGINS/
# EXAMPLE FORMAT: PLUGINS=(RAILS GIT TEXTMATE RUBY LIGHTHOUSE)
# ADD WISELY, AS TOO MANY PLUGINS SLOW DOWN SHELL STARTUP.

# ZSH_TMUX_AUTOSTART=true
# ZSH_TMUX_AUTOSTART_ONCE=false
# ZSH_TMUX_AUTOCONNECT=true

plugins=(git vi-mode tmux tmuxinator)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

alias ccat='pygmentize -O style=monokai -f terminal -g'
alias myip='dig +short myip.opendns.com @resolver1.opendns.com'
alias gv='gvim'
alias novnc='/var/www/noVNC/utils/launch.sh'
alias ctags-init='ctags -R -f ./.git/tags --tag-relative=yes'
# le status dos arquivos de subdiretorios contendo repositorios
alias php-inter="php -a -d auto_prepend_file="
alias git-ls-status="find . -maxdepth 1 -mindepth 1 -type d -exec sh -c '(echo {} && cd {} && git status -s && echo)' \;"
alias aptupdate="sudo apt update && sudo apt upgrade"
alias vim-clean-swp="rm ~/.config/nvim/tmp/swp/*"
# alias tma='tmux attach -d -t'
# alias git-tmux='tmux new -s $(basename $(pwd))'
#
export ACKRC=".ackrc"

# ignore duplicate history:
setopt HIST_IGNORE_DUPS

### Added by the Heroku Tool belt
export PATH="/usr/local/heroku/bin:$PATH"

export ANDROID_HOME=/home/tamnil/Android/Sdk
export PATH=$PATH:/home/tamnil/Android/Sdk/tools

bindkey '^U' backward-kill-line
bindkey '^Y' yank

# bind keys for up/down search (vi mode)
#tmux
bindkey '^[OA' up-line-or-beginning-search
bindkey '^[OB' down-line-or-beginning-search
#notmux
bindkey '^[[A' up-line-or-beginning-search
bindkey '^[[B' down-line-or-beginning-search

bindkey '^P' up-line-or-beginning-search
bindkey '^N' down-line-or-beginning-search

bindkey '^R' history-incremental-pattern-search-backward

#transpose words
bindkey '^T' transpose-words

bindkey '^f' forward-char
bindkey '^b' backward-char

bindkey '^[[1;5C' forward-word                        # [Ctrl-RightArrow] - move forward one word
bindkey '^[l' forward-word                        # [Alt-l] - move forward one word
bindkey '^[[1;5D' backward-word                       # [Ctrl-LeftArrow] - move backward one word
bindkey '^[h' backward-word                       # [Ctrl-h] - move backward one word

# bindkey '^[[C' forward-word                        # [Ctrl-RightArrow] - move forward one word
# bindkey '^[[D' backward-word                       # [Ctrl-LeftArrow] - move backward one word

zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache
