#
# History
#

HISTFILE=${ZDOTDIR:-$HOME}/.zhistory
HISTSIZE=10000
SAVEHIST=10000

setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_SAVE_NO_DUPS
setopt HIST_VERIFY

#
# Prompt
#

eval "$(starship init zsh)"

