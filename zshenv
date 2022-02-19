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
export PATH=$PATH:~/.local/share/gem/ruby/3.0.0/bin


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

alias ls='ls --color=auto --group-directories-first'
alias l='ls -1A'         # Lists in one column, hidden files.
alias ll='ls -lh'
alias la='ll -A'         # Lists human readable sizes, hidden files.

alias gaa='git add --all'
alias gcm='git commit -m'
alias gpo='git push origin'
alias gst='git status'
alias gdf='git diff'

alias protorun="STEAM_COMPAT_CLIENT_INSTALL_PATH=~/.local/share/Steam/ STEAM_COMPAT_DATA_PATH=~/.proton ~/.steam/steam/steamapps/common/Proton\ 6.3/proton"

alias sctl='systemctl'
alias uctl='systemctl --user'

alias taskc='task context'
alias t=task

alias em='em --no-copy'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#
#
#

export ANDROID_SDK_ROOT='/opt/android-sdk'
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools/
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin/
export PATH=$PATH:$ANDROID_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin

