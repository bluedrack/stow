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
	use 'neovim/nvim-lspconfig'
	use 'kosayoda/nvim-lightbulb'
	use 'kabouzeid/nvim-lspinstall'
	use 'mattn/emmet-vim'   
	use 'mfussenegger/nvim-dap'
	use {  'nvim-telescope/telescope.nvim',
	requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
	}

	use 'nvim-treesitter/nvim-treesitter'
  	use 'mhinz/vim-signify'
	-- use 'jiangmiao/auto-pairs'
	-- use {
	-- 	'nvim-lualine/lualine.nvim',
	-- 	requires = {'kyazdani42/nvim-web-devicons', opt = true}
	-- }
	use 'nelsyeung/twig.vim'
end)

