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
	use 'mfussenegger/nvim-jdtls'
	use 'hrsh7th/nvim-compe'
end)

