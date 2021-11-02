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
set undodir=~/.vim/undodir
set undofile
set noshowmode
set hidden
set nobackup
set nowritebackup
set clipboard=unnamed
set shortmess+=c
]])

-- augroup jdtls_lsp
-- 	autocmd!
-- 	autocmd FileType java lua require'jdtls_setup'.setup()
-- augroup end
-- require'compe'.setup {
-- 	enabled = true;
-- 	autocomplete = true;
-- 	debug = false;
-- 	min_length = 1;
-- 	preselect = 'enable';
-- 	throttle_time = 80;
-- 	source_timeout = 200;
-- 	incomplete_delay = 400;
-- 	max_abbr_width = 100;
-- 	max_kind_width = 100;
-- 	max_menu_width = 100;
-- 	documentation = true;

-- 	source = {
-- 		path = true;
-- 		buffer = true;
-- 		calc = true;
-- 		nvim_lsp = true;
-- 		nvim_lua = true;
-- 		vsnip = true;
-- 	};
-- }
-- vim.o.completeopt = "menuone,noselect"
-- local saga = require 'lspsaga'
-- saga.init_lsp_saga()
-- vim.cmd [[autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()]]


require'nvim-treesitter.configs'.setup {
	ensure_installed = "maintained",
	ignore = "javascript",
	highlight = {
		enable = true,
	},

}



