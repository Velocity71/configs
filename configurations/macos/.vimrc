".vimrc
" VIm (Vi Improved) configuration file

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

set autoindent=true " continue indent onto newline
set shiftwidth=4 " set automatic text indentation width
set tabstop=4 " set tab width
set expandtab " tabs are made of spaces
set textwidth=79 " set text width to 1 below standard terminal width (80)
set wrapmargin=0

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
filetype plugin on " enable and load filetype plugins
filetype indent on " load filetype indentation file

" ensuring preferred formatoptions are set for all files; had a problem where
" vimrc would not have formatoption t due to filetype plugins so defined all
" here for all files
augroup customformatoptions
    autocmd!
    autocmd BufEnter,FileType * setlocal formatoptions=tc
augroup END
" }}}
