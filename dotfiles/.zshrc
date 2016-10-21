source "${HOME}/Developer/zsh/zgen/zgen.zsh"

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


# vi mode
bindkey -v

# alias
export EDITOR="vim"
export DOMOVMDIR="$HOME/Developer/Domo/domovm"
export PATH="/Users/Merrick/.stack/programs/x86_64-osx/ghc-7.10.3/bin:/Users/Merrick/.local/bin/:/Users/Merrick/.bin:/Users/Merrick/.bin/play-1.2.7.2:.:/usr/local/sbin:/usr/local/bin:/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH:$DOMOVMDIR/bin:$HOME/.yarn/bin" # Add RVM to PATH for scripting

# OPAM configuration
. /Users/Merrick/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
eval $(opam config env)
