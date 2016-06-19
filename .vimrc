" pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" misc vim settings
set rnu        " relative numbers
set nu         " show the line number
let mapleader = ","

syntax on
set background=dark
colorscheme solarized

" kernel
filetype plugin indent on
syn on se title
set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab

" ctrlp
let g:ctrlp_show_hidden = 1
nnoremap <leader>T :CtrlPBufTag<CR>
nnoremap <leader>R ::CtrlPMRUFiles<CR>

