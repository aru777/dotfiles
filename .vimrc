" pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

set rnu        " relative numbers
set nu         " show the line number

" solarized
syntax on
let g:solarized_termcolors=256
set background=light
colorscheme solarized
