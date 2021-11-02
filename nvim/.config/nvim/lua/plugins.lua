return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'tpope/vim-surround'
	use 'tpope/vim-commentary'
	use 'tpope/vim-repeat'
	use 'tpope/vim-sensible'
	use 'tpope/vim-fugitive'
	use {
		'junegunn/fzf.vim',
		requires = {
			'junegunn/fzf',
			run = 'cd ~/.fzf && ./install --all',
		}
	}
	use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
	use 'hrsh7th/cmp-nvim-lsp'
	use 'saadparwaiz1/cmp_luasnip'
	use 'L3MON4D3/LuaSnip' -- Snippets plugin}
	-- use 'hrsh7th/cmp-nvim-lsp'
	-- use 'hrsh7th/cmp-buffer'
	-- use 'hrsh7th/nvim-cmp'
	-- use 'hrsh7th/cmp-vsnip'
	-- use 'hrsh7th/vim-vsnip'
	-- use 'hrsh7th/vim-vsnip-integ'
	-- use 'hrsh7th/nvim-compe'
	use 'neovim/nvim-lspconfig'
	-- use 'glepnir/lspsaga.nvim'
	-- use 'onsails/lspkind-nvim'
	use 'kosayoda/nvim-lightbulb'
	-- use 'mfussenegger/nvim-jdtls'
	use 'kabouzeid/nvim-lspinstall'
	-- use 'mfussenegger/nvim-jdtls'
	use 'mattn/emmet-vim'   
	-- use 'hrsh7th/vim-vsnip'
	-- use 'ChristianChiarulli/java-snippets'
	use 'mfussenegger/nvim-dap'
	-- use 'microsoft/vscode-java-test'
	use {  'nvim-telescope/telescope.nvim',
	requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
	}

	use 'nvim-treesitter/nvim-treesitter'
	-- use 'suoto/vim-hdl'
	-- use 'vim-syntastic/syntastic'
	-- use({'scalameta/nvim-metals'})
  	use 'mhinz/vim-signify'	
end)
