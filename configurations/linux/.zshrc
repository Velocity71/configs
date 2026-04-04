# .zshrc
# zsh (Z Shell) configuration file

autoload -U colors && colors

PS1="%F{196}%n%F{214}@%F{221}%M%f %F{112}%~%f %F{27}%#%f> " # command prompt

# Aliases {{{

alias ls="eza -a --icons=always" # better ls with color and icons
alias tree="ls --tree" # recurse into directories (use --level=x) to limit
alias lsrepo="ls --git-ignore" # ignore files in .gitignore (if applicable)
alias treerepo="lsrepo --tree"
alias cat="vimcat" # cat with vim-style colored output
alias diff="diff --color --side-by-side" # diff with illustrated differences

# }}}
