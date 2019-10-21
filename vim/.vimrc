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
Plug 'tpope/vim-sensible'
" Plug 'rhysd/vim-grammarous'
" Plug 'tpope/vim-markdown'
Plug 'raimondi/delimitmate'
Plug 'vim-syntastic/syntastic'
" Plug 'plasticboy/vim-markdown'
Plug 'ycm-core/YouCompleteMe'
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
call plug#end()

" Colorscheme
colorscheme wal
hi StatusLine ctermbg=none cterm=bold
hi! link Conceal Special
hi! link Operator Normal

" Cursor

let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

" Sensible plugin
set scrolloff=10
set list
set listchars=tab:\ \ ,trail:·,nbsp:_

" Syntastic recomends
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_r_lintr_checker = 1
let g:syntastic_r_checkers = ['lintr']

" Spelling {{{
set spelllang=fr
set spellsuggest=best,10
map ,s :setlocal spell!<CR>

hi clear SpellBad
hi SpellBad cterm=underline ctermfg=red
hi clear SpellRare
hi SpellRare cterm=underline,bold ctermfg=red
hi clear SpellCap
hi SpellCap cterm=underline ctermfg=blue
hi clear SpellLocal
hi SpellLocal cterm=underline ctermfg=green
" set spellfile=$HOME/Nextcloud/Backups/vim/en.utf-8.add
" }}}

" Markdown 

autocmd BufRead,BufNewFile *.rmd set filetype=markdown

" Markdown plugin

autocmd BufWritePost *sxhkdrc !pkill -USR1 sxhkd
autocmd BufWritePost *polybar/config !pkill -USR1 polybar

" vimrc

autocmd BufWritePost .vimrc :source %

" Shortcuts
let mapleader = ","

nmap <leader>c :w! \| !compiler <c-r>%<CR><CR>
nmap <leader>o :w! \| !open	<c-r>% &<CR><CR>

" markdown shortcuts

autocmd filetype *rmd nmap <Space><Space> /<++><Esc>d4l
autocmd filetype *rmd nmap <leader>` a```{<++>}<CR><++><CR>```<Esc><Space><Space>
autocmd filetype *rmd nmap <leader>$ a$$<Esc>i
autocmd filetype *rmd nmap <leader>f a\frac{}{<++>}<Esc>6hi
autocmd filetype *rmd nmap <leader>l a\lim_{<++> \to <++>} <++><Esc><Space><Space>
autocmd filetype *rmd nmap <leader>t a\to<Esc>
autocmd filetype *rmd nmap <leader>d a\delta <Esc>
autocmd filetype *rmd nmap <leader>D a\Delta <Esc>
autocmd filetype *rmd nmap <leader>ra a\rightarrow <Esc>
autocmd filetype *rmd nmap <leader>la a\leftarrow <Esc>
autocmd filetype *rmd nmap <leader>lra a\leftrightarrow <Esc>

autocmd filetype *rmd nmap <leader>Ra a\Rightarrow <Esc>
autocmd filetype *rmd nmap <leader>La a\Leftarrow <Esc>
autocmd filetype *rmd nmap <leader>Lra a\Leftrightarrow <Esc>

autocmd filetype *rmd nmap <leader>i a\infty
autocmd filetype *rmd nmap <leader>R a\mathbb{R} <Esc>
autocmd filetype *rmd nmap <leader>N a\mathbb{N} <Esc>
autocmd filetype *rmd nmap <leader>C a\mathbb{C} <Esc>


autocmd filetype *rmd nmap <leader>e o\begin{equation}<CR><++><CR>\end{equation}<ESC><Space><Space>


autocmd filetype *rmd nmap <leader>v2 o\begin{pmatrix}<CR><++>\\<CR><++><CR>\end{pmatrix}<Esc><Space><Space>


