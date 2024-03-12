
call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'EdenEast/nightfox.nvim'
Plug 'rebelot/kanagawa.nvim'
Plug 'lervag/vimtex'

"Options
syntax on
set relativenumber
set autowrite
filetype on
set autoread
filetype plugin on
filetype indent on
set nocompatible
set clipboard+=unnamedplus
set path+=**
set wildmenu

" Zathura
let g:vimtex_view_method = 'zathura'
let g:vimtex_compiler_method = 'latexrun'

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
