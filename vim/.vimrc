" Basic config
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

" Plugins
call plug#begin('~/.vim/plugged')
	Plug 'dylanaraps/wal.vim'
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	Plug 'junegunn/fzf.vim'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-commentary'
	Plug 'scrooloose/nerdtree'
	" Plug 'ntpeters/vim-better-whitespace'
	Plug 'junegunn/goyo.vim'
	Plug 'rhysd/vim-grammarous'
	Plug 'tpope/vim-sensible'
call plug#end()

" Colorscheme

colorscheme wal
hi StatusLine ctermbg=none cterm=bold
hi! link Conceal Special
hi! link Operator Normal

" Sensible plugin
set scrolloff=10
set list
set listchars=tab:\ \ ,trail:·,nbsp:_

" Markdown plugin

autocmd BufWritePost *sxhkdrc !pkill -USR1 sxhkd
autocmd BufWritePost *polybar/config !pkill -USR1 polybar

" Shortcuts
let mapleader = ","

nmap <leader>c :w! \| !compiler <c-r>%<CR><CR>
nmap <leader>o :w! \| !open	<c-r>%<CR><CR>
" markdown shortcuts
autocmd filetype *rmd nmap <Space><Space> /<++><Esc>d4li
autocmd filetype *rmd nmap <leader>` a```{<++>}<CR><++><CR>```<Esc><Space><Space>
autocmd filetype *rmd nmap <leader>$ a$$<Esc>i
autocmd filetype *rmd nmap <leader>f a\frac{}{<++>}<Esc>6hi
autocmd filetype *rmd nmap <leader>l a\lim_{<++> \to <++>} <++><Esc><Space><Space>
autocmd filetype *rmd nmap <leader>-> a\to<Esc>
autocmd filetype *rmd nmap <leader>d a\delta <Esc>
autocmd filetype *rmd nmap <leader>D a\Delta <Esc>




