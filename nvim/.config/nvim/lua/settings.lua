vim.cmd([[

set nocompatible
set encoding=utf-8
set relativenumber
set number
syntax on
filetype plugin on
set shiftwidth=4
set expandtab
set softtabstop=0 noexpandtab
set tabstop=4
set smartindent
set incsearch
set smartcase
set noswapfile
set nobackup
set undodir=~/.cache/vim/undo
set undofile
set noshowmode
set hidden
set nobackup
set nowritebackup
set clipboard=unnamed
set shortmess+=c
]])

require'nvim-treesitter.configs'.setup {
	ensure_installed = "maintained",
	ignore = "javascript",
	highlight = {
		enable = true,
	},

}



