vim.g.mapleader = ' '

vim.cmd([[
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
:tnoremap <Esc> <C-\><C-n>
]])

-- inoremap <silent><expr> <C-Space> compe#complete()
-- inoremap <silent><expr> <CR>      compe#confirm('<CR>')
-- inoremap <silent><expr> <C-e>     compe#close('<C-e>')
-- inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
-- inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })
-- better indenting
vim.api.nvim_set_keymap('v', '<', '<gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap = true, silent = true})


-- Tab switch buffer
vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-TAB>', ':bprevious<CR>', {noremap = true, silent = true})


vim.api.nvim_set_keymap('n', '<c-p>', ':Files<CR>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<leader>gs', ':Git<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>gc', ':Git commit<CR>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<leader>v', ':vsplit<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>h', ':split<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>t', ':terminal<CR>', {noremap = true, silent = true})
-- vim.api.nvim_set_keymap('n', '<esc>', '<C-\\><C-n>', {tnoremap = true, silent = true})
-- vim.api.nvim_set_keymap('n', '<leader>x', ':<CR>', {noremap = true, silent = true})
-- vim.api.nvim_set_keymap('n', '<c-g>p', ':Git push<CR>', {noremap = true, silent = true})
