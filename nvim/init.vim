
call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'EdenEast/nightfox.nvim'
Plug 'rebelot/kanagawa.nvim'
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

"Plug 'nvim-lua/plenary.nvim'
"Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

"Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons
"Plug 'nvim-tree/nvim-tree.lua'
"Plug 'vimwiki/vimwiki'
"Plug 'phaazon/hop.nvim'

"Options
syntax on
set relativenumber
set autowrite
set filetype
set autoread
filetype plugin on
set nocompatible
set clipboard+=unnamedplus
set path+=**
set wildmenu

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
