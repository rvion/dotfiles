" plugin manager
execute pathogen#infect()

set number
set mouse="a"
set tabstop=4
set shiftwidth=4
set expandtab

filetype plugin indent on
syntax enable

" color scheme
set t_Co=256
set background=dark
colorscheme solarized

" file explorer
let g:NERDTreeDirArrows=0
map <C-k><C-b> :NERDTreeToggle<CR>

" Fuzzy finding
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

" Modeline
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Syntax Cheking (https://github.com/scrooloose/syntastic)
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Multi cursors
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

