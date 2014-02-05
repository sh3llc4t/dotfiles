# Track history.
HISTFILE=$HOME/.histfile
HISTSIZE=1000
SAVEHIST=1000
# Get that delicious prompt and autocomplete goodness.
autoload -U compinit promptinit
compinit
promptinit
# Autoload zsh functions.
fpath=(~/.zsh/functions $fpath)
autoload -U ~/.zsh/functions/*(:t)
# Load aliases
source $HOME/.zsh/aliases
# Load rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
source <(rbenv init -)
#load git-prompt
source /home/vagrant/.zsh/functions/git-prompt.sh
# Prompt Setup
local usratbox="%F{164}%n%F{239}@%F{90}%m%f"
local lastret="%?"
local histnum="%!"
local fullwd="%F{75}%/%f"
local currwd="%F{75}%1/%f"
local newl="
"
local datestring="%F{63}%D{%Y}%F{68}%D{%m}%F{99}%D{%d}%f"
local timestring="T%F{69}%D{%H}%F{63}%D{%m}%F{57}%D{%S}%F{56}%D{%Z}%f"
local unixtime="%F{128}%D{%s}%f"
local promptchar="%F{15}%#%f"
local gitstate='$(git_super_status)'
PROMPT="[$lastret|$usratbox|$fullwd|$histnum|$datestring$timestring|$unixtime$gitstate]$newl$currwd$promptchar "
RPROMPT="${datestring}T${timestring}($unixtime)"
TMOUT=1
TRAPALRM() {
    zle reset-prompt
}
# More useful directory colors
eval $(dircolors $HOME/dircolors.256dark)
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion:*:descriptions' format '%U%B%d%b%u' 
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'
