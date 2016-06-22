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

" airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme = "simple"

" YCM 
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_error_symbol = 'x'
let g:ycm_warning_symbol = '!'
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'info'
let g:ycm_confirm_extra_conf = 0
let g:ycm_complete_in_comments = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_seed_identifiers_with_syntax = 1

nnoremap <leader>pg :YcmCompleter GoTo<CR>
nnoremap <leader>gi :YcmCompleter GoToImprecise<CR>
nnoremap <leader>pd :YcmCompleter GoToDefinition<CR>
nnoremap <leader>pc :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>t :YcmCompleter GetType<CR>

let g:ycm_key_list_select_completion = ['<C-j>', '<Tab>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<S-Tab>']

" shortcuts
map <leader>ct :checktime<CR>
map <leader>f :sort<CR>

source ~/dotfiles-fb/fb-vimrc
