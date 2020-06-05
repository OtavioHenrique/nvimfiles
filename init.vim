colorscheme ir_black

"Line spacing
set linespace=3

set history=1000

set nocompatible

set number

"Toggle nerdtree with ctrl + n
let g:NERDTreeWinPos="left"
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"clipboard with OS / To work properly install xclip
if system('uname -s') == "Darwin\n"
  set clipboard=unnamed "OSX
  set clipboard+=unnamedplus
else
  set clipboard+=unnamedplus
  set clipboard=unnamedplus "Linux
endif

map <Leader>y "*y
map <Leader>p "*p

"load pathogen managed plugins
call pathogen#infect()
call pathogen#helptags()

"1ms, default normally is 4ms
set updatetime=100

"tab naviagtion crl + left/right
nnoremap <S-Left> :tabprevious<CR>
nnoremap <S-Right> :tabnext<CR>

"settin font
set guifont=Monospace\ 12

set autoindent

"necessary on some Linux distros for pathogen to properly load bundles
filetype on

"turn on syntax highlighting
syntax on
filetype plugin indent on

"setting tab to use spaces
:set expandtab

filetype detect

"Easy navigation betwewen splits from: https://robots.thoughtbot.com/vim-splits-move-faster-and-more-naturally
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

"airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_theme='badwolf'

"vim hardmode, adding to stop using arrow keys on insert mode
let g:hardtime_default_on = 1
let g:list_of_normal_keys = []
let g:list_of_visual_keys = []
let g:list_of_insert_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_disabled_keys = []

":sp
":vsp
"https://robots.thoughtbot.com/running-specs-from-vim
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"always checking text
let g:ale_lint_on_text_changed = 'always'

"removing trailing spaces
autocmd BufWritePre *.* %s/\s\+$//e
