#
# .zlogin - executes commands at login after .zshrc
#

# Print a random, hopefully interesting, adage.
(( $+commands[fortune] )) && fortune -a
