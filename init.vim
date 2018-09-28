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

"tab naviagtion crl + left/right
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

"settin font
set guifont=Monospace\ 18

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
