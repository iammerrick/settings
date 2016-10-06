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
alias work="cd ~/Developer/Domo/DomoWeb/DomoWeb/mobile-web"
export EDITOR="mvim"
export DOMOVMDIR="$HOME/Developer/Domo/domovm"
export PATH="/Users/Merrick/.stack/programs/x86_64-osx/ghc-7.10.3/bin:/Users/Merrick/.local/bin/:/Users/Merrick/.bin:/Users/Merrick/.bin/play-1.2.7.2:.:/usr/local/sbin:/usr/local/bin:/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH:$DOMOVMDIR/bin" # Add RVM to PATH for scripting
