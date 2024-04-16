export PATH="/usr/local/opt/postgresql@15/bin:$PATH"
export GOPATH="$HOME/go"
export PATH=$PATH:$GOPATH/bin

export HOMEBREW_BUNDLE_FILE_GLOBAL=$HOME/Brewfile

eval "$(zoxide init zsh)"
alias cd="z"

alias ls="lsd"
alias lt="lsd --tree --depth 3"

alias brewdump="brew bundle dump -f --file=~/Brewfile"
