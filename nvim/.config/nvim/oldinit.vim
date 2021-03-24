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
set smartindent
set incsearch
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set noshowmode

vnoremap > >gv
vnoremap < <gv


nnoremap <TAB> :bnext<CR>
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords
let mapleader = " "
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline_section_b = ''
let g:airline_section_c = ''
let g:airline_section_x = ''
let g:airline_section_y = ''
let g:airline_section_z = ''
let g:airline_section_error = ''
let g:airline_section_warning = ''
let g:airline#extensions#tabline#buffers_label = ''

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-p> :Files<cr> 

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'dylanaraps/wal.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-sensible'
Plug 'raimondi/delimitmate'
Plug 'honza/vim-snippets'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neovimhaskell/haskell-vim'
Plug 'nelsyeung/twig.vim'
call plug#end()

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
" set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>


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

"" Syntastic recomends
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
""let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_enable_r_lintr_checker = 1
"let g:syntastic_r_checkers = ['lintr']

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
autocmd BufRead,BufNewFile *.tex set filetype=tex

" Markdown plugin

autocmd BufWritePost *sxhkdrc silent! !pkill -USR1 sxhkd
autocmd BufWritePost *bspwmrc silent! !% 1> /dev/null 2> /dev/null
autocmd BufWritePost *polybar/config silent! !pkill -USR1 polybar

" vimrc
autocmd bufwritepost init.vim source % 
" Shortcuts

" nmap <c-h> :tabp<CR>
" nmap <c-l> :tabn<CR>
" nmap <c-TAB> :tabn<CR>
" nmap <c-c> :tabclose<CR>
" nmap <c-f> :FZF<CR>
" nmap <c-t> :NERDTreeToggle<CR>
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
