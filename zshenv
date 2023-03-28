#
# Environment
#

export GOPATH=~/go
export NIX_PATH=$HOME/.nix-defexpr/channels${NIX_PATH:+:}$NIX_PATH
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export EDITOR=vim

export PATH=~/.bin:$PATH
export PATH=~/.yarn/bin:$PATH
export PATH=~/.npm-packages/bin:$PATH
export PATH=~/.local/bin:$PATH
export PATH=~/go/bin:$PATH
export PATH=~/.cargo/bin:$PATH

export PATH="$PATH:$HOME/.rvm/bin"
export CHROOT="$HOME/chroot"
export GPG_TTY=$(tty)

#
# Wayland
#
export XDG_CURRENT_DESKTOP=sway
export QT_QPA_PLATFORM=wayland
export _JAVA_AWT_WM_NONREPARENTING=1
export MOZ_ENABLE_WAYLAND=1

if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi

#
# Aliases
#

. ~/.zsh_aliases
