FPATH=$HOME/bin/completion:$FPATH

export AUTO_TITLE_SCREENS="NO"

export PROMPT="
%{$fg[white]%}(%D %*) <%?> [%~] $program %{$fg[default]%}
%{$fg[cyan]%}%m %#%{$fg[default]%} "

export RPROMPT=

set-title() {
    echo -e "\e]0;$*\007"
}

ssh() {
    set-title $*;
    /usr/bin/ssh -2 $*;
    set-title $HOST;
}

alias openssl=/usr/bin/openssl

alias gis='git status'
alias gil='git ls'
alias gid='git diff'

function gic(){
    local branch="${1:-mainline}"
    git checkout "${branch}"
}

_git
compdef _git-checkout gic

autoload -U edit-command-line
zle -N edit-command-line
bindkey "^X" edit-command-line
bindkey '^[[1;9D' emacs-backward-word
bindkey '^[[1;9C' emacs-forward-word

autoload -U compinit && compinit -u
for f in $HOME/.dotfiles/*; do
  source $f
done
source /home/rishbhar/.syntax-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
