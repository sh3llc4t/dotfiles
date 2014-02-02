autoload -U compinit promptinit
compinit
promptinit
export PROMPT=""
# More useful 
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion:*:descriptions' format '%U%B%d%b%u' 
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'
