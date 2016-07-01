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

filetype plugin indent on
syn on se title
set expandtab
set smartindent
set shiftwidth=2
set tabstop=2
set noswapfile

" ctrlp
let g:ctrlp_by_filename = 1
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:1000'
let g:ctrlp_switch_buffer = 'Et'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_clear_cache_on_exit = 1
let g:ctrlp_open_new_file = 'r'
let g:ctrlp_open_multiple_files = 'i'
let g:ctrlp_arg_map = 1
let g:ctrlp_lazy_update = 100
let g:ctrlp_show_hidden = 1

let g:ctrlp_abbrev = {
  \ 'gmode': 't',
  \ 'abbrevs': [
    \ {
      \ 'pattern': 'ta2',
      \ 'expanded': 'allocator_v2',
      \ 'mode': '',
    \ },
    \ ]
  \ }

map <Leader>R :CtrlPMRU<CR>
map <Leader>TA :CtrlPBufTagAll<CR>
map <Leader>TT :CtrlPBufTag<CR>
map <Leader>b :CtrlPBuffer<CR>

let g:ctrlp_extensions = [ 'buffertag', 'quickfix']
hi statusline guibg=blue

if exists("g:ctrlp_user_command")
  unlet g:ctrlp_user_command
endif

if executable('ag')
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command =
    \ 'ag %s --files-with-matches -g "" --ignore "\.git$\|\.hg$\|\.svn$"'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 1
else
  " Fall back to using git ls-files if Ag is not available
  let g:ctrlp_user_command = ['.hg', 'hg --cwd %s locate -f -I .']
endif

" airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme = "simple"

" fswitch
nmap <silent> <Leader>fs :FSHere<cr>
nmap <silent> <Leader>fr :FSRight<cr>
nmap <silent> <Leader>fcr :FSSplitRight<cr>
nmap <silent> <Leader>fl :FSLeft<cr>
nmap <silent> <Leader>fcl :FSSplitLeft<cr>

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
let g:ycm_autoclose_preview_window_after_completion = 1

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
nnoremap <leader><space> :nohl<CR>

source ~/dotfiles-fb/fb-vimrc
