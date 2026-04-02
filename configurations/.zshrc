# /home/parkervannah/.zshrc
# Z Shell configuration file

autoload -U colors && colors

PS1="%F{98}%n%f@%F{210}%M%f %~ %#> " # command prompt

# Aliases {{{

alias ls="eza -a --icons=always" # better ls with color and icons
alias cat="vimcat" # cat with vim-style colored output

# }}}
