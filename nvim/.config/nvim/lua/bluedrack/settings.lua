
vim.opt.relativenumber = true
vim.opt.nu = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.cache/vim/undo"
vim.opt.undofile = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
-- vim.cmd([[
-- set nocompatible
-- set encoding=utf-8
-- set relativenumber
-- set number
-- syntax on
-- filetype plugin on
-- set shiftwidth=2
-- set expandtab
-- set softtabstop=0 noexpandtab
-- set tabstop=2
-- set smartindent
-- set incsearch
-- set smartcase
-- set noswapfile
-- set nobackup
-- set undodir=~/.cache/vim/undo
-- set undofile
-- set noshowmode
-- set hidden
-- set nobackup
-- set nowritebackup
-- set clipboard=unnamed
-- set shortmess+=c
-- let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'java']
-- ]])
