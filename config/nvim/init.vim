set number
syntax on
set tabstop=2

set relativenumber
set guicursor=
set nohlsearch
set hidden
set nowrap
set noerrorbells
set incsearch
set signcolumn=yes
set colorcolumn=80
set signcolumn=yes
set mouse=a

call plug#begin()

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'ayu-theme/ayu-vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

call plug#end()

set termguicolors     " enable true colors support
let ayucolor="mirage" " for mirage version of theme
colorscheme ayu