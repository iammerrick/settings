source "${HOME}/.zgen/zgen.zsh"

if ! zgen saved; then
    echo "Creating a zgen save"

    zgen oh-my-zsh

    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/command-not-found
    zgen load zsh-users/zsh-syntax-highlighting

    zgen loadall <<EOPLUGINS
        zsh-users/zsh-history-substring-search
EOPLUGINS

    zgen load zsh-users/zsh-completions src
    zgen oh-my-zsh themes/lambda

    zgen save
fi

# completions
fpath=(/usr/local/share/zsh-completions $fpath)

# Editor
export EDITOR="vim"

export N_PREFIX="$HOME/.n"
# vi mode
bindkey -v

# FZF
export FZF_DEFAULT_OPTS='--color=16'
export FZF_DEFAULT_COMMAND="rg --files-with-matches --no-messages -F ''"
export FZF_CTRL_T_COMMAND="rg --files-with-matches --no-messages --hidden -F '' | grep -v .git/"

export PATH="$HOME/.bin:$PATH:$HOME/.n/bin"
export PATH=$PATH:/usr/local/opt/go/libexec/bin:$HOME/go/bin

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
