colorscheme orbital

"Line spacing
set linespace=3

set history=1000

set nocompatible

set number

"Toggle nerdtree with ctrl + n
let g:NERDTreeWinPos="left"
map <C-n> :NERDTreeToggle<CR>

"clipboard with OS
set clipboard=unnamedplus

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

"load pathogen managed plugins
call pathogen#infect()
call pathogen#helptags()

"turn on syntax highlighting
syntax on

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
let g:list_of_normal_keys = []
let g:list_of_visual_keys = []
let g:list_of_insert_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_disabled_keys = []
