# .zshrc
# zsh (Z Shell) configuration file

autoload -U colors && colors

PS1="%F{196}%n%F{214}@%F{221}%M%f %F{112}%~%f %F{27}%#%f> " # command prompt

# Aliases {{{

alias ls="eza -a --icons=always" # better ls with color and icons
alias cat="vimcat" # cat with vim-style colored output

# }}}
