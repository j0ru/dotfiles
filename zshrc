#
# Prompt
#

eval "$(starship init zsh)"

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
# Completions
#

fpath+=(/usr/share/zsh/site-functions)
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

#
# Plugins
#

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#
# Misc
#

setopt NO_CASE_GLOB
setopt AUTO_CD
setopt CORRECT
setopt CORRECT_ALL

eval "$(zoxide init zsh)"
