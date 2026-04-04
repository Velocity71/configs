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

# >>> conda initialize >>> {{{
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<< }}}

