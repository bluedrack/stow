return {
	'tpope/vim-surround',
	'tpope/vim-commentary',
	'tpope/vim-repeat',
	'tpope/vim-sensible',

	'tpope/vim-fugitive',
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.6',
		-- or                              , branch = '0.1.x',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
}
