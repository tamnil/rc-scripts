# zmodload zsh/zprof
LANG=en_US.UTF-8
LANGUAGE=en_US



# if [[ -r ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
#     source ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
# fi
#

# fix: problemna com autocmplete do systemctl enable
_systemctl_unit_state() {
  typeset -gA _sys_unit_state
  _sys_unit_state=( $(__systemctl list-unit-files "$PREFIX*" | awk '{print $1, $2}') ) }


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
# ZSH_THEME="lukerandall"
ZSH_THEME="tamnil"
# ZSH_THEME="flazz"

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

ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_AUTOSTART_ONCE=false
ZSH_TMUX_AUTOCONNECT=false



# plugins=(git  tmux tmuxinator laravel5 pep8 virtualenv grunt gulp laravel npm pip python ruby)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

export ANDROID_HOME=/home/tamnil/Android/Sdk
# export PATH=$PATH:/home/tamnil/Android/Sdk/tools
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
### Added by the Heroku Tool belt
export PATH="/usr/local/heroku/bin:$PATH"
# export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
# export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$PATH:/usr/local/cuda/bin"
export PATH="$PATH:/opt/flutter/flutter/bin"

export PATH="$PATH:$HOME/.gem/ruby/2.6.0/bin"

# fix: complete not found on asdf
. $HOME/.asdf/asdf.sh
fpath=(${ASDF_DIR}/completions $fpath)
autoload -Uz compinit && compinit

plugins=(git git-flow vi-mode tmux tmuxinator docker docker-compose virtualenv grunt yarn gulp npm pip python asdf  tamnil composer ansible git-prompt adb flutter laravel ruby )
# plugins=(git vi-mode tmux tmuxinator docker docker-compose virtualenv grunt yarn gulp npm pip python zsh-docker-abbreviation tamnil )
source $ZSH/oh-my-zsh.sh


################################### git-prompt

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_SEPARATOR="|"
ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg_bold[magenta]%}"
ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[red]%}%{*%}%{%G%}"
ZSH_THEME_GIT_PROMPT_CONFLICTS="%{$fg[red]%}%{x%}%{%G%}"
ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[blue]%}%{+%}%{%G%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%{↓%}%{%G%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{↑%}%{%G%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{…%G%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}%{=%}%{%G%}"

RPROMPT='$(git_super_status)'


alias ssh='TERM=xterm ssh'
alias mux='tmuxinator'
alias ccat='pygmentize -O style=monokai -f terminal -g'
alias myip='dig +short myip.opendns.com @resolver1.opendns.com'
alias gv='gvim'
# alias novnc='/var/www/noVNC/utils/launch.sh'
alias ctags-init='ctags -R -f ./.git/tags --tag-relative=yes'
# le status dos arquivos de subdiretorios contendo repositorios
alias php-inter="php -a -d auto_prepend_file="

alias gitflow="git flow"
alias aptupdate="sudo apt update && sudo apt upgrade"
# alias tma='tmux attach -d -t'
# alias git-tmux='tmux new -s $(basename $(pwd))'
#
export ACKRC=".ackrc"

# ignore duplicate history:
setopt HIST_IGNORE_DUPS


# Webasm emcc
export PATH=$PATH:/opt/emsdk:/opt/emsdk/fastcomp/emscripten:/opt/emsdk/node/10.16.3_64bit/bin


zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache
zstyle ':completion:*' hosts off                    #disable autocompletion of hosts file
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}
# eval "$(rbenv init -)"
export ANDROID_EMULATOR_USE_SYSTEM_LIBS=1

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh




# export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda/lib64"
# export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/opt/TensorRT-3.0.4/lib"
export TMP="/tmp"

alias openvpn-tamnil='echo "\n**** Opening openVPN in tamnil.com ****\n " ;sudo openvpn --config /home/tamnil/.openvpn/tamnil.ovpn'
alias wakizashi-synergy='ssh wakizashi synergy-ssh-local'
alias vim='/home/tamnil/.asdf/shims/nvim'

export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64/
export PATH=$PATH:$JAVA_HOME/bin
export IDF_PATH=$HOME/esp/esp-idf
export PATH="$PATH:$HOME/esp/xtensa-esp32-elf/bin"
export PATH="$PATH:$HOME/esp/esp-idf/tools"

# deno
export DENO_INSTALL="/home/tamnil/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"



# zprof


export DOCKER_HOST_IP=172.17.0.1


eval "$(direnv hook zsh)"

alias conda-init='eval "$(/home/tamnil/miniconda3/bin/conda shell.zsh hook)"'

