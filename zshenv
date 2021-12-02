#
# Environment
#

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export EDITOR=nvim
export PATH=$PATH:~/.bin
export PATH=$PATH:~/.npm-packages/bin
export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/go/bin
export PATH=$PATH:~/.cargo/bin
export PATH=$PATH:~/.local/share/gem/ruby/3.0.0/bin
export NIX_PATH=$HOME/.nix-defexpr/channels${NIX_PATH:+:}$NIX_PATH

#
# Wayland
#
export XDG_CURRENT_DESKTOP=sway
export QT_QPA_PLATFORM=wayland

if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
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

alias ls='ls --color=auto --group-directories-first'
alias l='ls -1A'         # Lists in one column, hidden files.
alias ll='ls -lh'
alias la='ll -A'         # Lists human readable sizes, hidden files.

alias gaa='git add --all'
alias gcm='git commit -m'
alias gpo='git push origin'
alias gst='git status'
alias gdf='git diff'

alias protorun="STEAM_COMPAT_DATA_PATH=/games/.proton_files /games/SteamLibrary/steamapps/common/Proton\ 5.0/proton"

alias sctl='systemctl'
alias uctl='systemctl --user'

alias taskc='task context'
alias t=task

alias em='em --no-copy'
