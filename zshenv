#
# Environment
#

export GOROOT=~/.go
export NIX_PATH=$HOME/.nix-defexpr/channels${NIX_PATH:+:}$NIX_PATH
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export EDITOR=nvim

export PATH=$PATH:~/.bin
export PATH=$PATH:~/.yarn/bin
export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/go/bin
export PATH=$PATH:~/.cargo/bin

export PATH="$PATH:$HOME/.rvm/bin"

#
# Wayland
#
export XDG_CURRENT_DESKTOP=sway
export QT_QPA_PLATFORM=xcb

if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi

#
# aliases
#

alias sp="sudo pacman"
alias p="pacman"

alias sv="sudo nvim"
alias vim=nvim
alias v=nvim

alias sudo='sudo -E'

alias cat=bat
alias ls=exa
alias la="exa -lah"
alias l="exa -1"

alias gcm='git commit -m'
alias gpo='git push origin'
alias gst='git status'
alias gdf='git diff'

alias protorun="STEAM_COMPAT_CLIENT_INSTALL_PATH=~/.local/share/Steam/ STEAM_COMPAT_DATA_PATH=~/.proton ~/.steam/steam/steamapps/common/Proton\ 6.3/proton"

alias sctl='systemctl'
alias uctl='systemctl --user'
