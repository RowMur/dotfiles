export PATH="/usr/local/opt/postgresql@15/bin:$PATH"
export GOPATH="$HOME/go"
export PATH=$PATH:$GOPATH/bin

export HOMEBREW_BUNDLE_FILE_GLOBAL=$HOME/Brewfile

eval "$(zoxide init zsh)"
alias cd="z"

alias ls="lsd"
alias lt="lsd --tree --depth 3"

alias brewdump="brew bundle dump -f --file=~/Brewfile"

newbrew() {
  brew ${@}
  brewdump --force
}

alias brew="newbrew"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export AWS_REGION="us-east-1"
export AWS_PROFILE="octopart"

# pnpm
export PNPM_HOME="/Users/rowanmurray/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

eval "$(starship init zsh)"
