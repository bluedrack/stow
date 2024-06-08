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
	use { 'nvim-telescope/telescope.nvim',
		requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
	}
	use 'nvim-treesitter/nvim-treesitter'
  use 'mhinz/vim-signify'
	use 'nelsyeung/twig.vim'
	use 'sakhnik/nvim-gdb'
	use "lukas-reineke/lsp-format.nvim"
	use 'github/copilot.vim'
	use 'moll/vim-bbye'
	use 'simrat39/rust-tools.nvim'
	use 'tpope/vim-markdown'
	use {
  'VonHeikemen/lsp-zero.nvim',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'},
    {'saadparwaiz1/cmp_luasnip'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-nvim-lua'},

    -- Snippets
    {'L3MON4D3/LuaSnip'},
    -- Snippet Collection (Optional)
    {'rafamadriz/friendly-snippets'},
  }
	use({'scalameta/nvim-metals', requires = { "nvim-lua/plenary.nvim" }})
	end)
}

