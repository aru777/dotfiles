runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" syntax on
filetype plugin indent on
set nu
set rnu
set cursorline

" solarized stuff
syntax enable
set background=dark
colorscheme solarized
let g:solarized_contrast="high" " figure out if this really needed
