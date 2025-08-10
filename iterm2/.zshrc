export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export COMPLETION_WAITING_DOTS='false'
export EDITOR=nvim
export GIT_EDITOR=nvim

# Path to your oh-my-zsh installation.
export ZSH="/Users/ben/.oh-my-zsh"

ZSH_THEME=""
DISABLE_AUTO_TITLE=true

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias stopmongo="brew services stop mongodb-community"
alias enablefastbackup="sudo sysctl debug.lowpri\\_throttle_enabled=0"
alias disablefastbackup="sudo sysctl debug.lowpri\\_throttle_enabled=1"

export HOMEBREW_NO_AUTO_UPDATE=1
export GOPATH="$HOME/dev/go"
export PATH="$PATH:/users/ben/dev/installations/flutter/bin:$GOPATH/bin"

# bonsai.sh -n -L 30 -g 35,20 > ~/.my_bonsai_art.txt
# neofetch --ascii ~/.my_bonsai_art.txt --ascii_colors 11 3 10 2 0
if [ -z "$TMUX" ]  && [ -z "$VIM" ]; then
    neofetch --kitty ~/Pictures/termpics
fi
# neofetch --image ~/Pictures/termpics

#
# prompt stuff
#

function MYPROMPT {
  local COLOR_RED="%{\033[0;31m%}"
  local COLOR_YELLOW="%{\033[0;33m%}"
  local COLOR_ORANGE="%{\033[0;93m%}"
  local COLOR_GREEN="%{\033[0;32m%}"
  local COLOR_PURPLE="%{\033[0;35m%}"
  local COLOR_BLUE="%{\033[0;34m%}"
  local COLOR_WHITE="%{\033[0;37m%}"
  local COLOR_RESET="%{\033[0m%}"
  local COLOR_GRAY="%{\033[0;37m%}"
  local PAREN_COLOR=$COLOR_ORANGE
  # if git repo print usual stuff then (branch) $coloredlambda $promptchar 
  # if git repo
  git status &>/dev/null && {
    # get the head or ref name
    local branch_name=$(git symbolic-ref --short -q HEAD || git rev-parse --short HEAD);

    local git_modified_color=${COLOR_GREEN};
    local git_status=$(git status 2>/dev/null | grep "Your branch is ahead" &>/dev/null)
    if [ "$git_status" != "" ]
    then
        git_modified_color=${COLOR_YELLOW}
    fi
    local git_status=$(git status --porcelain 2>/dev/null)
    if [ "$git_status" != "" ]
    then
        git_modified_color=${COLOR_RED}
    fi
    print "%n%f %~ %u%f${PAREN_COLOR}(${COLOR_GRAY}${branch_name}${PAREN_COLOR})%f ${git_modified_color}%{\e[1m%}\U03bb %{\e[0;94m%}\U276f%f "
  } || {
    print "%n %~ %u%{\e[0;94m%}\U276f%f "
  }
}

setopt prompt_subst
PROMPT='$(MYPROMPT)'

export GEM_HOME="$HOME/.gem"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# bun completions
[ -s "/Users/ben/.bun/_bun" ] && source "/Users/ben/.bun/_bun"

# bun
export BUN_INSTALL="/Users/ben/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH=/opt/homebrew/bin:$PATH
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@3)"
eval "$(rbenv init - zsh)"
export PATH=$PATH:$GEM_HOME/bin

alias python=python3
alias py=python3
alias pip=pip3
alias lg=lazygit

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

eval "$(zoxide init zsh)"

fancy-ctrl-z () {
    if [[ $#BUFFER -eq 0 ]]; then
        BUFFER="fg"
        zle accept-line
    else
        zle push-input
        zle clear-screen
    fi
}
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z
