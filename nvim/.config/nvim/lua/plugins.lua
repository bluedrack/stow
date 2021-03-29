return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'tpope/vim-surround'
	use 'tpope/vim-commentary'
	use 'tpope/vim-repeat'
	use 'tpope/vim-sensible'
	use {
		'junegunn/fzf.vim',
		requires = {
			'junegunn/fzf',
			run = 'cd ~/.fzf && ./install --all',
		}
	}
	use 'neovim/nvim-lspconfig'
	use 'glepnir/lspsaga.nvim'
	use 'onsails/lspkind-nvim'
	use 'kosayoda/nvim-lightbulb'
	-- use 'mfussenegger/nvim-jdtls'
	use 'kabouzeid/nvim-lspinstall'
	use 'mfussenegger/nvim-jdtls'
	use 'hrsh7th/nvim-compe'
	use 'mattn/emmet-vim'   
	use 'hrsh7th/vim-vsnip'
	use 'hrsh7th/vim-vsnip-integ'
	use 'ChristianChiarulli/java-snippets'
	use 'mfussenegger/nvim-dap'
	use 'microsoft/vscode-java-test'
	use {  'nvim-telescope/telescope.nvim',
	requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
	}

	use 'nvim-treesitter/nvim-treesitter'
end)
