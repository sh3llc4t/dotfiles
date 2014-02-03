# Get that delicious prompt and autocomplete goodness.
autoload -U compinit promptinit
compinit
promptinit
prompt gentoo
# Load aliases
source $HOME/.zsh/aliases
# More useful directory colors
eval $(dircolors $HOME/dircolors.256dark)
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion:*:descriptions' format '%U%B%d%b%u' 
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'
