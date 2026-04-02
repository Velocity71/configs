" /home/parkervannah/.vimrc
" Vi Improved Text Editor configuration file

" Look and Feel {{{

syntax enable " enable syntax highlighting

set number " add numbers on the left-hand side of each line
set ruler " show cursor position in status bar

set showcmd
set showmode " show the current mode in the status bar

set scrolloff=10 " amount of lines padded above/below the cursor when scrolling


" edit fold marker color
highlight Folded term=standout ctermfg=223 ctermbg=NONE

" }}}

" Formatting {{{

set shiftwidth=4 " set automatic text indentation width
set tabstop=4 " set tab width
set expandtab " tabs are made of spaces
set textwidth=80 " set maximum text width to default for a terminal
set wrapmargin=0
set formatoptions+=t
set linebreak
set colorcolumn=80 " visual marker of maximum text width

" }}}

" Search {{{

set incsearch
set ignorecase
set smartcase
set showmatch
set hlsearch

" }}}

set nocompatible " disable compatibility with Vi

" Folding {{{

set foldmethod=marker
set foldmarker={{{,}}}
set foldlevel=99

" }}}

" Filetype {{{

filetype on " enable file detection
"filetype plugin on " enable and load filetype plugins
filetype indent on " load filetype indentation file

" }}}
